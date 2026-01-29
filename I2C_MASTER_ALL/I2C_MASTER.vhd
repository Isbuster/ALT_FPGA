LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY I2C_MASTER IS
  PORT(
    -- Clock og reset
    CLK         : IN    STD_LOGIC;
    RST         : IN    STD_LOGIC;

    -- SCL og SDA porter
    SCL         : OUT   STD_LOGIC;
    SDA         : INOUT STD_LOGIC;

    -- Fra I2C_MASTER_REG
    EN : IN STD_LOGIC;
    WR_N : IN STD_LOGIC;
    STOP : IN STD_LOGIC;
    BAUD_RATE : IN STD_LOGIC_VECTOR(7 downto 0);
    WR_BYTE : IN STD_LOGIC_VECTOR(7 downto 0);

    -- Til I2C_MASTER_REG
    IDLE : OUT STD_LOGIC;
    DONE : OUT STD_LOGIC;
    NO_ACK : OUT STD_LOGIC;
    RD_BYTE: OUT STD_LOGIC_VECTOR(7 downto 0)
 
  );
END ENTITY I2C_MASTER;

ARCHITECTURE RTL OF I2C_MASTER IS

  SIGNAL sda_in_sync : STD_LOGIC;

  SIGNAL baud_cnt : integer range 0 to 255 := 0;
  SIGNAL baud_limit : integer range 0 to 255 := 255;
  SIGNAL baud_done : STD_LOGIC;

  SIGNAL stop_internal : STD_LOGIC;

  SIGNAL w_byte : STD_LOGIC_VECTOR(7 downto 0);
  SIGNAL r_byte : STD_LOGIC_VECTOR(7 downto 0);

  SIGNAL ack_n : STD_LOGIC;

  TYPE PHASE_TYPE IS (pFIRST, pMID, pEND);
  TYPE MODE_TYPE IS (mWRITE, mREAD);
  TYPE STATE_TYPE IS (sIDLE, sSTART, sTRANSFER, sACK, sHOLD, sSTOP);

  SIGNAL PHASE : PHASE_TYPE := pFIRST;
  SIGNAL MODE : MODE_TYPE := mWRITE;
  SIGNAL STATE : STATE_TYPE := sSTART;

  component dff_synk
    port(
      data_in, clk : in std_logic;
      data_out : out std_logic
    );
  end component dff_synk;

BEGIN

  p_BAUD: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '0' or baud_done = '1' or STATE = sIDLE then
        baud_cnt <= 0;
      else
        baud_cnt <= baud_cnt + 1;
      end if;
    end if;
  end process p_BAUD;

  baud_done <= '1' when (baud_cnt >= baud_limit) else '0';

  p_STATE_MACHINE: process(CLK)
    VARIABLE bit_cnt : integer range 0 to 7;
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        STATE <= sIDLE;
      else
        case STATE is

          --# sIDLE #--
          when sIDLE =>
            IDLE <= '1';
            if EN = '1' then
              STATE <= sSTART;
              baud_limit <= to_integer(unsigned(BAUD_RATE));
              w_byte <= WR_BYTE;
              if WR_N = '0' then
                MODE <= mWRITE;
              else
                MODE <= mREAD;
              end if;

            end if;

            --# sSTART #--
          when sSTART =>
            case PHASE is

              -- pFIRST
              when pFIRST =>
                SDA <= '1';

                -- pMID
              when pMID =>
                SDA <= '0';

                -- pEND
              when pEND =>
                SDA <= '0';
                if baud_done = '1' then
                  STATE <= sTRANSFER;
                end if;
            end case;

            --# sTRANSFER #--
          when sTRANSFER =>
            case PHASE is

              -- pFIRST
              when pFIRST =>
                case MODE is
                  when mREAD =>
                    SDA <= 'Z';
                  when mWRITE =>
                    SDA <= w_byte(bit_cnt);
                end case;

                -- pMID
              when pMID =>
                case MODE is

                  when mREAD =>
                    if baud_cnt/2 >= baud_limit then
                      r_byte(bit_cnt) <= sda_in_sync;
                    end if;

                  when mWRITE=>
                    SDA <= w_byte(bit_cnt);
                end case;

                -- pEND
              when pEND =>
                if baud_done = '1' and bit_cnt = 7 then
                  STATE <= sACK;
                  bit_cnt := bit_cnt + 1;
                elsif baud_done = '1' then
                  bit_cnt := bit_cnt + 1;
                end if;
            end case;

            --# sACK #--
          when sACK =>
            case PHASE is

              -- pFIRST
              when pFIRST =>
                case MODE is
                  when mWRITE =>
                    SDA <= 'Z';
                  when mREAD =>
                    if stop_internal = '1' then
                      -- setter ack høy så slave forstår at vi er ferdig
                      SDA <= '1';
                    else 
                      SDA <= '0';
                    end if;
                end case;

                -- pMID
              when pMID =>
                case MODE is
                  when mWRITE =>
                    if baud_cnt/2 >= baud_limit then
                      ack_n <= SDA;
                    end if;
                  when mREAD =>
                end case;

                -- pEND
              when pEND =>
                if baud_done = '1' then
                  DONE <= '1';
                  NO_ACK <= ack_n;
                  case MODE is
                    when mWRITE =>
                      -- nothing happens
                    when mREAD =>
                      RD_BYTE <= r_byte;
                  end case;
                  if stop_internal = '1' then
                    STATE <= sSTOP;
                  else
                    STATE <= sHOLD;
                  end if;
                end if;
            end case;

            --# sHOLD #--
          when sHOLD =>
            DONE <= '0';
            if EN = '1' then
              STATE <= sTRANSFER;
              baud_limit <= to_integer(unsigned(BAUD_RATE));
              w_byte <= WR_BYTE;
              if WR_N = '0' then
                MODE <= mWRITE;
              else
                MODE <= mREAD;
              end if;

           end if;

            --# sSTOP #--
          when sSTOP =>
            DONE<= '0';
            case PHASE is
              when pFIRST =>
                SDA <= '0';

              when pMID =>

              when pEND =>
                SDA <= '1';
                if baud_done = '1' then
                  STATE <= sSTART;
                end if;
            end case;

        end case;
        
      end if;
    end if;
  end process p_STATE_MACHINE;

  p_PHASE: process(CLK)
  begin
    if rising_edge(CLK) then
      if RST = '1' then
        PHASE <= pFIRST;
      else
        case PHASE is
          when pFIRST =>
            if STATE = sSTART then
              SCL <= '1';
            else
              SCL <= '0';
            end if;

          when pMID =>
            SCL <= '1';

          when pEND =>
            if STATE = sSTOP then
              SCL <= '1';
            else
              SCL <= '0';
            end if;
        end case;

        if baud_done = '1' then
          case PHASE is
            when pFIRST =>
              PHASE <= pMID;
            when pMID =>
              PHASE <= pEND;
            when pEND =>
              PHASE <= pFIRST;
          end case;
        end if;
      end if;
    end if;
  end process p_PHASE;

  c_dff_synk : dff_synk
    port map(
      data_in => SDA,
      clk => CLK,
      data_out => sda_in_sync
    );

END ARCHITECTURE RTL;


