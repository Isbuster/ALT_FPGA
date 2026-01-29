library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_MASTER_REG is
    port(
      CLK : IN STD_LOGIC;
      RST : IN STD_LOGIC;

      -- SBI
      chipselect : in std_logic;
      wr : in std_logic;
      rd : in std_logic;
      address : in std_logic_vector(2 downto 0);
      writedata : in std_logic_vector(31 downto 0);
      readdata : out std_logic_vector(31 downto 0);

      -- Fra I2C_MASTER
      IDLE : IN STD_LOGIC;
      DONE : IN STD_LOGIC;
      NO_ACK : IN STD_LOGIC;
      RD_BYTE: IN STD_LOGIC_VECTOR(7 downto 0);

      -- Fra I2C_MASTER_REG
      EN : OUT STD_LOGIC;
      WR_N : OUT STD_LOGIC;
      STOP : OUT STD_LOGIC;
      BAUD_RATE : OUT STD_LOGIC_VECTOR(7 downto 0);
      WR_BYTE : OUT STD_LOGIC_VECTOR(7 downto 0)
   );
end entity I2C_MASTER_REG;

architecture RTL of I2C_MASTER_REG is
  type FIFO_ARRAY is array (15 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
  signal fifo_tfr_cmd : FIFO_ARRAY := (others => (others => '0'));
  signal fifo_rx_data : FIFO_ARRAY := (others => (others => '0'));

  SIGNAL fifo_tfr_cmd_amnt : std_logic_vector(3 downto 0);
  SIGNAL fifo_rx_data_amnt : std_logic_vector(3 downto 0);

  SIGNAL fifo_tfr_cmd_amnt_before_int : integer range 0 to 15 := 0;
  SIGNAL fifo_tfr_cmd_amnt_int : integer range 0 to 15 := 0;
  SIGNAL fifo_rx_data_amnt_int : integer range 0 to 15 := 0;

  SIGNAL fifo_tfr_cmd_index : std_logic_vector(3 downto 0);
  SIGNAL fifo_rx_data_index : std_logic_vector(3 downto 0);
  
  SIGNAL fifo_tfr_cmd_index_int : integer range 0 to 15;
  SIGNAL fifo_rx_data_index_int : integer range 0 to 15;

  SIGNAL op_cnt : std_logic_vector(15 downto 0);
  SIGNAL op_cnt_int : integer range 0 to 255;

  SIGNAL stop_internal : STD_LOGIC;
  SIGNAL stop_amnts : integer range 0 to 15;

  -- baud rate er delt på 3 siden i2c_master er lagt opp med at den teller gjennom baud_rate 3 ganger før neste periode
  SIGNAL baud_standard_mode : STD_LOGIC_VECTOR(7 downto 0) := "10100111";  
  SIGNAL baud_fast_mode : STD_LOGIC_VECTOR(7 downto 0) := "00101010";
  SIGNAL baud_rate_cstm : STD_LOGIC_VECTOR(7 downto 0) := "10100111"; 
  SIGNAL baud_rate_now : STD_LOGIC_VECTOR(7 downto 0) := "10100111"; 

  SIGNAL standard_mode : STD_LOGIC := '1';
  SIGNAL fast_mode : STD_LOGIC := '0';

  -- mSTATUS
  SIGNAL no_ack_internal : STD_LOGIC := '0';
  SIGNAL done_internal : STD_LOGIC := '0';
  SIGNAL idle_internal : STD_LOGIC := '0';
  SIGNAL errors_tot : std_logic_vector(3 downto 0);
  SIGNAL errors_index : std_logic_vector(3 downto 0);
  SIGNAL errors_tot_int : integer range 0 to 15;
  SIGNAL errors_index_int : integer range 0 to 15;

  TYPE MODE_TYPE IS (mTFR_CMD, mRX_DATA, mCTRL, mSTATUS, mTFR_CMD_FIFO, mRX_DATA_FIFO, mOP_CNT);
  SIGNAL MODE : MODE_TYPE := mTFR_CMD;

  TYPE STATE_TYPE IS (sIDLE, sSETTING, sWAITING, sSTOP);
  SIGNAL STATE : STATE_TYPE := sIDLE;

  SIGNAL wr_n_internal : std_logic := '0';

begin
  p_main: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        fifo_tfr_cmd <= (others => (others => '0'));
        fifo_rx_data <= (others => (others => '0'));
        fifo_tfr_cmd_amnt_int <= 0;
        fifo_rx_data_amnt_int <= 0;
      else
        errors_tot <= std_logic_vector(to_unsigned(errors_tot_int, errors_tot'length));
        errors_index <= std_logic_vector(to_unsigned(errors_index_int, errors_index'length));

        fifo_tfr_cmd_index_int <= to_integer(unsigned(fifo_tfr_cmd_index));
        fifo_rx_data_index_int <= to_integer(unsigned(fifo_rx_data_index));

        fifo_tfr_cmd_amnt <= std_logic_vector(to_unsigned(fifo_tfr_cmd_amnt_int, fifo_tfr_cmd_amnt'length));
        fifo_rx_data_amnt <= std_logic_vector(to_unsigned(fifo_rx_data_amnt_int, fifo_rx_data_amnt'length));

        op_cnt <= std_logic_vector(to_unsigned(op_cnt_int, op_cnt'length));


        if chipselect = '1' then
          if wr = '1' then
            case MODE is
              when mTFR_CMD =>
                if (fifo_rx_data_amnt_int = 0) and (writedata(0) = '1') then
                  -- LIMITATION AV I2C-EN MIN:
                  --  * sender man read med stop vil ikke kun en melding sendes, men to sendes.
                  fifo_tfr_cmd(fifo_tfr_cmd_amnt_int) <= x"000000" & writedata(7 downto 0);
                  fifo_tfr_cmd(fifo_tfr_cmd_amnt_int + 1) <= x"00000" & "001" & writedata(8 downto 0);
                  fifo_tfr_cmd_amnt_int <= fifo_tfr_cmd_amnt_int + 2;
                else
                  fifo_tfr_cmd(fifo_tfr_cmd_amnt_int) <= x"00000" & "000" & writedata(8 downto 0);
                  fifo_tfr_cmd_amnt_int <= fifo_tfr_cmd_index_int + 1;
                end if;

                if writedata(8) = '1' then
                  stop_amnts <= stop_amnts + 1;
                end if;

              when mRX_DATA =>

              when mCTRL =>
                if writedata(31) = '1' then
                  standard_mode <= '1';
                  fast_mode <= '0';
                elsif writedata(8) = '1' then
                  standard_mode <= '1';
                  fast_mode <= '0';
                elsif writedata(9) = '1' then
                  standard_mode <= '0';
                  fast_mode <= '1';
                else
                  baud_rate_cstm <= writedata(7 downto 0);
                end if;

              when mSTATUS =>
                if writedata(31) = '1' then
                  errors_index_int <= 0;
                  errors_tot_int <= 0;
                end if;
                
              when mTFR_CMD_FIFO =>
                if writedata(31) = '1' then
                  fifo_tfr_cmd_amnt_int <= 0;
                  fifo_tfr_cmd_index_int <= 0;
                  fifo_tfr_cmd <= (others => (others => '0'));
                else
                  fifo_tfr_cmd_index <= writedata(3 downto 0);
                end if;
 

              when mRX_DATA_FIFO =>
                if writedata(31) = '1' then
                  fifo_rx_data_amnt_int <= 0;
                  fifo_rx_data_index_int <= 0;
                  fifo_rx_data <= (others => (others => '0'));
                else
                  fifo_rx_data_index <= writedata(3 downto 0);
                end if;

              when mOP_CNT =>
                if writedata(31) = '1' then
                  op_cnt_int <= 0;
                end if;

              when others =>
            end case;
          elsif rd = '1' then
             case MODE is
              when mTFR_CMD =>
                readdata <= fifo_tfr_cmd(fifo_tfr_cmd_amnt_int - 1);

              when mRX_DATA =>
                readdata <= fifo_rx_data(0);
                fifo_rx_data <= x"00000000" & fifo_rx_data(15 downto 1);
                fifo_rx_data_amnt_int <= fifo_rx_data_amnt_int - 1;  

              when mCTRL =>
                readdata <= x"00000" & "00" & fast_mode & standard_mode & baud_rate_now;

              when mSTATUS => 
                readdata <= x"00000" & '0' & no_ack_internal & done_internal & idle_internal & errors_index & errors_tot;

              when mTFR_CMD_FIFO =>
                readdata <= x"00" & fifo_tfr_cmd(fifo_tfr_cmd_index_int)(15 downto 0) & fifo_tfr_cmd_index & fifo_tfr_cmd_amnt;  

              when mRX_DATA_FIFO =>
                readdata <= x"00" & fifo_rx_data(fifo_rx_data_index_int)(15 downto 0) & fifo_rx_data_index & fifo_rx_data_amnt;

              when mOP_CNT =>
                readdata <= x"0000" & op_cnt;

              when others =>
            end case;
          end if;
        else
          done_internal <= DONE;
          idle_internal <= IDLE;
          case STATE is
            when sIDLE =>
              if stop_amnts > 0 then 
                STATE <= sSETTING;
                fifo_tfr_cmd_amnt_before_int <= fifo_tfr_cmd_amnt_int;
              end if;

            when sSETTING =>
                EN <= '1';
                WR_N <= fifo_tfr_cmd(0)(9);
                wr_n_internal <= fifo_tfr_cmd(0)(9);
                STOP <= fifo_tfr_cmd(0)(8);
                stop_internal <= fifo_tfr_cmd(0)(8);
                WR_BYTE <= fifo_tfr_cmd(0)(7 downto 0);
                fifo_tfr_cmd <= x"00000000" & fifo_tfr_cmd(15 downto 1);



                if standard_mode = '1' then
                  BAUD_RATE <= baud_standard_mode;
                  baud_rate_now <= baud_standard_mode;
                elsif fast_mode = '1' then
                  BAUD_RATE <= baud_fast_mode;
                  baud_rate_now <= baud_fast_mode;
                else
                  BAUD_RATE <= baud_rate_cstm;
                  baud_rate_now <= baud_rate_cstm;
                end if;

                STATE <= sWAITING;

            when sWAITING =>
              if DONE = '1' then
                if wr_n_internal = '1' then
                  fifo_rx_data(fifo_rx_data_amnt_int) <= x"000000" & RD_BYTE;
                  fifo_rx_data_amnt_int <= fifo_rx_data_amnt_int + 1;
                end if;

                no_ack_internal <= NO_ACK;

                if NO_ACK = '1' then
                  errors_index_int <= fifo_tfr_cmd_amnt_before_int - fifo_tfr_cmd_amnt_int + 1;
                  errors_tot_int <= errors_tot_int + 1;
                end if;


                if stop_internal = '1' then
                  STATE <= sSTOP;
                else
                  STATE <= sSETTING;
                end if;

              end if;

            when sSTOP =>
              stop_amnts <= stop_amnts - 1;
              STATE <= sIDLE;
          
          end case;
        end if;
      end if;
    end if;
  end process p_main;

  p_mode: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        MODE <= mTFR_CMD_FIFO;
      else
        case address is
          when "000" =>
            MODE <= mTFR_CMD;
          when "001" =>
            MODE <= mRX_DATA;
          when "010" =>
            MODE <= mCTRL;
          when "011" =>
            MODE <= mSTATUS;
          when "100" =>
            MODE <= mTFR_CMD_FIFO;
          when "101" =>
            MODE <= mRX_DATA_FIFO;
          when "110" =>
            MODE <= mOP_CNT;
          when "111" =>
        end case;       
      end if;
    end if;
  end process p_mode;
end architecture RTL;

