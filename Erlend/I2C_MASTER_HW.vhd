library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_MASTER_HW is
    port(
        -- inputs
        CLK : in std_logic; -- System klokke
        RST : in std_logic; -- Sync reset aktiv høy

        -- signaler mellom Master og register
        MASTER_START : in std_logic;  -- Enable
        MASTER_STOP : in std_logic;
        WR_N : in std_logic; -- Write = 0, Read = 1
        WR_BYTE : in std_logic_vector(7 downto 0); -- Write byte
        CLOCK_MODE : in std_logic;
        RP_START : in std_logic;

        -- I2C bus
        SDA : inout std_logic; -- I2C data
        SCL : out std_logic; -- I2C klokke

        -- Outputs
        master_DONE : out std_logic; -- I2C Master ferdig
        master_IDLE : out std_logic; -- I2C Master Idle
        NO_ACK : out std_logic; -- Ingen ack fra I2C slave
        RD_BYTE : out std_logic_vector(7 downto 0); -- lese byte
        DATA_RDY : out std_logic;
        DATA_NEW : out std_logic
    );
end entity I2C_MASTER_HW;

architecture RTL of I2C_MASTER_HW is
    -- SIGNAL for SDA linje
    signal SDA_ENABLE : std_logic;
    signal SDA_OUT : std_logic;
    signal SDA_IN : std_logic;
    -- synkronisering av SDA_IN
    signal SDA_SYNC_0, SDA_SYNC_1 : std_logic;


    -- Statemaskin
    type StateM is (IDLE, START0, START1, START2, DATA_SETUP, DATA_HIGH, DATA_HIGH2, DATA_HOLD,
        ACK_SETUP, ACK_HIGH, ACK_HIGH2, ACK_HOLD, STOP1, STOP2, HOLD);
    
    signal STATE : StateM;
    
    -- Klokke
    signal CLOCK_CNT : integer range 0 to 255 := 0;
    signal CLOCK_DONE : std_logic;
    
    --Telling av antall bit og bytes
    signal BIT_CNT : integer range 0 to 7; -- 1 byte melding
    -- Signal for sjekking av NACK or ACK
    signal NACK : std_logic;
    
    -- Signaler for å bestemme data sendt mellom slave_addresse og wr_data
    signal ACTIVE_BYTE : std_logic_vector(7 downto 0);

    
begin

    KLOKKE : process (CLK)
        variable CLOCK_LIMIT : integer range 0 to 255;
    begin
        if rising_edge(CLK) then
            -- Bestem grenseverdi for CLOCK_CNT basert på CLOCK_MODE
            case CLOCK_MODE is
                when '1' =>
                    -- CLOCK_MODE = 1 gir fastmode på 400kHz
                    -- CLOCK_CNT 42 = 0.82us med duty-cycle 2:1.
                    -- Krav høy = 0.6 us og lav 1.3 us
                    CLOCK_LIMIT := 41; -- Simulert med Questa gir ca 2581 ns => 387 kHz 1721 ns bunn og 860 ns top
                when '0' =>
                    -- CLOCK_MODE = 0 gir standard mode på 100kHz
                    -- CLOCK_CNT 124 = 2.5 us med duty-cycle 2:2.
                    -- Krav høy = 4 us og lav 4.7 us som gir 10 us SCL = 100kHz
                    CLOCK_LIMIT := 124; -- Simulert med Questa gir 10080 ns => 99.2kHZ
                when others =>
                    -- Standardverdi hvis CLOCK_MODE er ugyldig
                    CLOCK_LIMIT := 124; -- Satt til 10 i uvvm testbenk
            end case;

            if (RST = '1' or CLOCK_DONE = '1' or STATE = IDLE or (STATE = HOLD and RP_START = '0')) then
                CLOCK_CNT <= 0;
            else
                CLOCK_CNT <= CLOCK_CNT + 1;
            end if;

            -- Sett CLOCK_DONE basert på CLOCK_LIMIT
            if CLOCK_CNT = CLOCK_LIMIT then
                CLOCK_DONE <= '1';
            else
                CLOCK_DONE <= '0';
            end if;
        end if;
    end process KLOKKE;

    BIT_COUNT : process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' or STATE = IDLE or STATE = HOLD then
                BIT_CNT <= 7;
            elsif STATE = DATA_HOLD and CLOCK_DONE = '1' and BIT_CNT > 0 then
                BIT_CNT <= BIT_CNT - 1; -- Går en plass ned mot LSB
            end if;
        end if;
    end process;

    -- Velger hvilken byte som skal sendes ut: først slave-adresse, deretter WR_BYTE
    ACTIVE_BYTE <=  WR_BYTE;

    FaseM : process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                SCL <= 'Z'; -- Setter SCL høy
                SDA_ENABLE <= '1';
                SDA_OUT <= '1';
                RD_BYTE <= "00000000";
                STATE <= IDLE;
                NACK <= '0';
                NO_ACK <= '0';
                
            else
                case STATE is
                    when IDLE =>
                        SCL <= 'Z';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '1';
                        NACK <= '0';
                        if MASTER_START = '1' then
                            STATE <= START0;
                        end if;

                    when START0 =>
                        SCL <= 'Z';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '1';
                        if CLOCK_DONE = '1' then
                            STATE <= START1;
                        end if;

                    when START1 =>
                        SCL <= 'Z';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '0';
                        if CLOCK_DONE = '1' then
                            STATE <= START2;
                        end if;

                    when START2 =>
                        SCL <= '0';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '0';
                        if CLOCK_DONE = '1' then
                            STATE <= DATA_SETUP;
                        end if;

                    when DATA_SETUP =>
                        if WR_N = '1' then -- read
                            SDA_ENABLE <= '0'; -- Linje av vil lese
                        else
                            SDA_ENABLE <= '1'; -- Linje på vil kontrollere bitsene
                        end if;
                        SCL <= '0';
                        SDA_OUT <= ACTIVE_BYTE(BIT_CNT); -- Multiplexer starter med MSB(7) til LSB(0)
                        if CLOCK_DONE = '1' then
                            STATE <= DATA_HIGH;
                        end if; 

                    when DATA_HIGH =>
                        SCL <= 'Z'; 
                        if CLOCK_DONE = '1' then
                            if WR_N = '1' then --read
                                RD_BYTE(BIT_CNT) <= SDA_IN;
                            end if;
                            if CLOCK_MODE = '0' then
                                STATE <= DATA_HIGH2;
                            else
                                STATE <= DATA_HOLD;
                            end if;
                        end if;

                    when DATA_HIGH2 =>
                        SCL <= 'Z';
                        if CLOCK_DONE = '1' then
                            STATE <= DATA_HOLD;
                        end if;

                    when DATA_HOLD =>
                        SCL <= '0';
                        if CLOCK_DONE = '1' then
                            if BIT_CNT = 0 then
                                STATE <= ACK_SETUP;
                            else
                                STATE <= DATA_SETUP;
                            end if;
                        end if;

                    when ACK_SETUP =>
                        SCL <= '0';
                        if WR_N = '1' then -- Hvis lesing
                            if MASTER_STOP = '1' then
                                SDA_ENABLE <= '0'; -- STOP på vei -> send NACK siste bit
                            else
                                SDA_ENABLE <= '1'; -- Fortsett lesing -> send ACK
                                SDA_OUT <= '0';    -- ← SDA_OUT LAV for ACK
                            end if;
                        else
                            SDA_ENABLE <= '0'; -- skriving få ACK fra slave
                        end if;
                        if CLOCK_DONE = '1' then
                            STATE <= ACK_HIGH;
                        end if;

                    when ACK_HIGH =>
                        SCL <= 'Z';
                        if CLOCK_DONE = '1' then
                            if SDA_IN = '0' then
                                NACK <= '0'; -- ACK mottatt
                            else
                                NACK <= '1'; -- NACK mottatt
                            end if;
                            if CLOCK_MODE = '0' then
                                STATE <= ACK_HIGH2;
                            else
                                STATE <= ACK_HOLD;
                            end if;
                        end if;

                    when ACK_HIGH2 =>
                        SCL <= 'Z';
                        if CLOCK_DONE = '1' then
                            STATE <= ACK_HOLD;
                        end if; 

                    when ACK_HOLD =>
                        SCL <= '0';
                        if NACK = '1' then
                            NO_ACK <= '1'; -- Ingen ACK mottatt
                        else
                            NO_ACK <= '0'; -- ACK mottatt
                        end if;
                        if CLOCK_DONE = '1' then
                            if MASTER_STOP = '1' then
                                STATE <= STOP1;
                            else 
                                STATE <= HOLD;
                            end if;
                        end if;
                    

                    when STOP1 =>
                        SCL <= '0';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '0';
                        if CLOCK_DONE = '1' then
                            STATE <= STOP2;
                        end if;

                    when STOP2 =>
                        SCL <= 'Z';
                        SDA_ENABLE <= '1';
                        SDA_OUT <= '0';
                        if CLOCK_DONE = '1' then
                            STATE <= IDLE;
                        end if;

                    when HOLD =>
                        if RP_START = '1' then -- repeated start, restart
                            SCL <= '0';
                            SDA_ENABLE <= '1'; -- kontroll over busen
                            SDA_OUT <= '1';
                            if CLOCK_DONE = '1' then
                            STATE <= START0; -- Repeated start
                            end if;
                        else
                            STATE <= DATA_SETUP;
                        end if;
                end case;
            end if;
        end if;
    end process;

    --Dekoding uten synkronisering
    master_IDLE <= '1' when STATE = IDLE else '0';
    master_DONE <= '1' when (STATE = HOLD) or (STATE = STOP1) else '0';

    DATA_NEW <= '1' when STATE = ACK_HOLD else '0';
    DATA_RDY <= '1' when STATE = ACK_SETUP else '0';

    -- SDA sender ut signalet SDA_OUT når SDA_ENABLE er aktiv og sda_out = '0'
    SDA <= SDA_OUT when SDA_ENABLE = '1' and SDA_OUT = '0' else 'Z';

    -- Leser inngangen SDA
    SDA_SYNC_PROC : process(CLK)
    begin
        if rising_edge(CLK) then
            SDA_SYNC_0 <= SDA;
            SDA_SYNC_1 <= SDA_SYNC_0;
        end if;
    end process;
    
    -- Bruk den synkroniserte SDA_IN for å unngå metastabilitet
    SDA_IN <= SDA_SYNC_1;
end architecture RTL;

