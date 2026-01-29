LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;


ENTITY usb_tester IS
  PORT ( 
    -- Klokke
    CLOCK_50 : IN  STD_LOGIC;

    -- Testkort inputs
    KEY       : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    SW        : IN STD_LOGIC_VECTOR(17 DOWNTO 0);

    -- Hex display
		HEX0, HEX1, HEX2, HEX3,
		HEX4, HEX5, HEX6, HEX7	: OUT	STD_LOGIC_VECTOR(6 DOWNTO 0);

    -- LEDR
    LEDR      : OUT STD_LOGIC_VECTOR(17 DOWNTO 0) := (others => '0');

    -- CY7C67200 HPI-grensesnitt (Host Port Interface)
    OTG_INT   : IN  STD_LOGIC_VECTOR(1 DOWNTO 0);
    OTG_DATA  : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    OTG_ADDR  : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    OTG_CS_N  : OUT STD_LOGIC := '1';
    OTG_RD_N  : OUT STD_LOGIC := '1';
    OTG_WR_N  : OUT STD_LOGIC := '1';
    OTG_RST_N : OUT STD_LOGIC := '1'
  );


END ENTITY;

ARCHITECTURE RTL OF usb_tester IS
  TYPE array_4_16bit IS ARRAY (3 DOWNTO 0) OF STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL data_from_usb : array_4_16bit;

  SIGNAL addr : STD_LOGIC_VECTOR(1 DOWNTO 0);

  SIGNAl rst_n : STD_LOGIC;
  
  SIGNAL start_pulse : STD_LOGIC;
  SIGNAL wr_start_pulse_n_sync : STD_LOGIC;
  SIGNAL rd_start_pulse_n_sync : STD_LOGIC;

  SIGNAL data_in_ll : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL data_in_hh : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL cs_n : STD_LOGIC := '1';
  SIGNAL rd_n : STD_LOGIC := '1';
  SIGNAL wr_n : STD_LOGIC := '1';

  SIGNAL dff : STD_LOGIC := '0';
	COMPONENT antiprell IS
		PORT(
			clk : IN STD_LOGIC;
			reset_clk : IN STD_LOGIC;
			input : IN STD_LOGIC;
			passering : OUT STD_LOGIC
		);
	END COMPONENT antiprell;

	COMPONENT reset_synchronizer IS
		PORT(
			clk, reset_key3 : IN  STD_LOGIC;
			reset_clk       : OUT STD_LOGIC
    );
	END COMPONENT RESET_SYNCHRONIZER;

	COMPONENT ROM_7_seg IS
		PORT(
			adresse   : IN  std_logic_vector(3 downto 0);
			HEX : OUT std_logic_vector(6 downto 0)); -- gfedcba
	END COMPONENT;

BEGIN
  addr <= SW(17 DOWNTO 16);
  OTG_ADDR <= addr;
  OTG_DATA <= (others => 'Z');
  LEDR(15 DOWNTO 0) <= data_in_hh & data_in_ll; 
  process(CLOCK_50) is
    variable clock_counter : integer range 7 downto 0;
  begin
    if (rising_edge(CLOCK_50)) then 
      if (rst_n = '0') then
        data_from_usb <= (others => (others => '0'));
        clock_counter := 0;
        start_pulse <= '1';
        cs_n <= '1';
        rd_n <= '1';
      else 
        if (rd_start_pulse_n_sync = '0') then
          start_pulse <= '0';
          wr_n <= '1';
          rd_n <= '0';
        elsif (wr_start_pulse_n_sync = '0') then
          start_pulse <= '0';
          wr_n <= '0';
          rd_n <= '1';
          OTG_DATA <= SW(15 downto 0);
        end if;
        if (clock_counter < 7) then
          clock_counter := clock_counter + 1;
        else
          clock_counter := 0;
          if (start_pulse = '0') then
            cs_n <= '0';
            if (rd_n = '0') then
              OTG_DATA <= (others => 'Z');
            end if;
            if (cs_n = '0') then
              OTG_CS_N <= '0';
              if (rd_n = '0') then
                OTG_RD_N <= rd_n;
                OTG_WR_N <= wr_n;
                dff <= '1';
                if (dff = '1') then
                  dff <= '0';
                  start_pulse <= '1';
                  if (rd_n = '0') then
                    data_in_hh <= OTG_DATA(15 DOWNTO 8);
                    data_in_ll <= OTG_DATA(7 DOWNTO 0);
                  end if;
                end if;
              end if;
            end if;
          else
            cs_n <= '1';
            OTG_RD_N <= '1';
            OTG_WR_N <= '1';
            if (cs_n = '1') then
              OTG_CS_N <= '1';
            end if;
          end if;
        end if;
      end if;
    end if;
  END PROCESS;

	wr_start_pulse_antiprell : antiprell
		port map(
			clk => CLOCK_50,
			reset_clk => rst_n,
			input => KEY(1),
			passering => wr_start_pulse_n_sync
		);

	start_pulse_antiprell : antiprell
		port map(
			clk => CLOCK_50,
			reset_clk => rst_n,
			input => KEY(0),
			passering => rd_start_pulse_n_sync
		);

  reset_sync : reset_synchronizer
   port map(
      clk => CLOCK_50,
      reset_key3 => KEY(3),
      reset_clk => rst_n
  );

	tall0 : ROM_7_seg PORT MAP(adresse => data_in_ll(3 downto 0),	HEX => HEX0);
	tall1 : ROM_7_seg PORT MAP(adresse => data_in_ll(7 downto 4),	HEX => HEX1);
	tall2 : ROM_7_seg PORT MAP(adresse => data_in_hh(3 downto 0),	HEX => HEX2);
	tall3 : ROM_7_seg PORT MAP(adresse => data_in_hh(7 downto 4),	HEX => HEX3);

	tall4 : ROM_7_seg PORT MAP(adresse => "00" & addr(1 downto 0),	HEX => HEX4);
	tall5 : ROM_7_seg PORT MAP(adresse => "0000",	HEX => HEX5);
	-- tall6 : ROM_7_seg PORT MAP(adresse => data_in_sw(3 downto 0),	HEX => HEX6);
	-- tall7 : ROM_7_seg PORT MAP(adresse => data_in_sw(7 downto 4),	HEX => HEX7);

END RTL;
