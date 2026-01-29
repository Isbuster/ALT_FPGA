LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY bRAM_testbenk IS
  PORT ( 
    CLOCK_50    : IN STD_LOGIC;
    SW          : IN STD_LOGIC_VECTOR(17 DOWNTO 0);
    KEY         : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    LEDR        : OUT STD_LOGIC_VECTOR(17 DOWNTO 0);
    LEDG        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
  );
END ENTITY;

ARCHITECTURE Behavioral OF bRAM_testbenk IS
  -- Input for bRAM
  SIGNAL address  : STD_LOGIC_VECTOR(15 DOWNTO 0);
  SIGNAL reset_n  : STD_LOGIC;
  SIGNAL data_in  : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"69";
  SIGNAL RW       : STD_LOGIC;
  SIGNAL slow_clk : STD_LOGIC := '0'; 

  -- Output for bRAM
  SIGNAL ready    : STD_LOGIC;
  SIGNAL data_out : STD_LOGIC_VECTOR(7 DOWNTO 0) := (others => '0');


  COMPONENT bRAM IS
    PORT(
      clk         : IN STD_LOGIC;
      slow_clk    : IN STD_LOGIC;
      reset_n     : IN STD_LOGIC;
      RW          : IN STD_LOGIC; -- 1 = WRITE, 0 = READ
      ready       : OUT STD_LOGIC;
      address     : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
      data_in     : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      data_out    : OUT STD_LOGIC_VECTOR(7 DOWNTO 0) := "00000000"
    );
  END COMPONENT;

begin

  --address <= SW(15 DOWNTO 8);
  reset_n <= KEY(3);
  --data_in <= SW(7 DOWNTO 0);
  RW <= SW(17);
  LEDG(7 DOWNTO 0) <= data_out;
  LEDR(16) <= ready;


  PROCESS (CLOCK_50) IS
    VARIABLE address_int : INTEGER RANGE 0 TO 63 := 0;
    VARIABLE timer : INTEGER RANGE 0 TO 31 := 0;
  BEGIN
    if rising_edge(CLOCK_50) then
      if reset_n = '0' then
        address_int := 0;
        timer := 0;
      else
        if timer = 0 then
          address_int := address_int + 1;
        end if;
        timer := timer + 1;
      end if;
      address <= STD_LOGIC_VECTOR(to_unsigned(address_int, address'length));
    end if;
  end process;

  bRAM_inst: bRAM
   port map(
    clk => CLOCK_50,
    slow_clk => slow_clk,
    reset_n => reset_n,
    RW => RW,
    ready => ready,
    address => address,
    data_in => data_in,
    data_out => data_out
  );

end Behavioral;
