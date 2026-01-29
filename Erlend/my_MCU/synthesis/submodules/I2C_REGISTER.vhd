library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_REGISTER is
    port(
        CLK : in std_logic;
        RST : in std_logic;

        -- SBI
        CHIPSELECT : in std_logic;
        WR : in std_logic;
        RD : in std_logic;
        ADDRESS : in std_logic_vector(2 downto 0);
        WRITEDATA : in std_logic_vector(31 downto 0);
        READDATA : out std_logic_vector(31 downto 0);

        -- Signal til I2C-master
        WR_N : out std_logic;
        CLOCK_MODE : out std_logic;
        WRITE_BYTE : out std_logic_vector(7 downto 0);
        MASTER_START : out std_logic;
        MASTER_STOP : out std_logic;
        RP_START : out std_logic;

        -- Signaler fra I2C-master
        DONE : in std_logic;
        IDLE : in std_logic;
        NO_ACK : in std_logic;
        RD_BYTE : in std_logic_vector(7 downto 0);
        DATA_RDY : in std_logic;
        DATA_NEW : in std_logic
    );
end entity;

architecture RTL of I2C_REGISTER is

    signal WR_N_I, CLOCK_MODE_I, STOP_I : std_logic := '0';
    signal SLAVE_ADRESSE_I : std_logic_vector(6 downto 0) := (others => '0');
    signal WR_BYTE_I : std_logic_vector(7 downto 0) := (others => '0');
    signal EN_I : std_logic := '0';
    signal MASTER_START_I : std_logic := '0';
    signal MASTER_STOP_I : std_logic := '0';

    -- Felles tilstandsmaskin med tilstander for både skriving og lesing
    type MainState is (
        IDLE_sm,                -- Felles IDLE for både skriving og lesing
        LOADING_s, SEND_s, STOP_s,         -- Tilstander for skriveprosess
        LOADING_m, Sending_m, Motta_M, STOP_m  -- Tilstander for leseprosess
    );
    signal STATE : MainState := IDLE_sm;

    type Send_SubState is (SEND_IDLE, SEND_WAIT_DONE);
    signal send_state : Send_SubState := SEND_IDLE;

    type t_byte_array is array(0 to 31) of std_logic_vector(7 downto 0);
    signal data_array : t_byte_array := (others => (others => '0'));

    signal data_index : integer range 0 to 31 := 0;
    signal send_index : integer range 0 to 31 := 0;
    signal FULL_array : std_logic := '0';

    signal done_prev : std_logic := '0';
    signal done_rising : std_logic;

    signal lesing_klar : std_logic;

    signal en_prev, en_rising : std_logic;

begin
    -- Deteksjon
    process(CLK)
    begin
        if rising_edge(CLK) then
            en_prev <= EN_I;
            en_rising <= EN_I and not en_prev;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Flankedeteksjon for DONE-signal
    ------------------------------------------------------------------
    process(CLK)
    begin
        if rising_edge(CLK) then
            done_prev <= DONE;
            done_rising <= DONE and not done_prev;
        end if;
    end process;

    ------------------------------------------------------------------
    -- Utganger kobles til interne signaler
    ------------------------------------------------------------------
    CLOCK_MODE <= CLOCK_MODE_I;
    MASTER_START <= MASTER_START_I;
    MASTER_STOP <= MASTER_STOP_I;

    FULL_array <= '1' when data_index = 32 else '0';

    ------------------------------------------------------------------
    -- Kontrollregistre via bus-interface
    ------------------------------------------------------------------
    -- EN-register
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                EN_I <= '0';
            elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "000" then
                EN_I <= WRITEDATA(0);
            else
                EN_I <= '0';
            end if;
        end if;
    end process;

    -- STOP-register
    process (CLK)
    begin
    if rising_edge(CLK) then
            if RST = '1' then
                STOP_I <= '0';
            elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "000" then
                STOP_I <= WRITEDATA(1);
            elsif STATE = SEND_s or STATE = STOP_s or STATE = Sending_m or STATE = STOP_m then
                STOP_I <= '0';  -- Nullstill etter bruk
            end if;
        end if;
    end process;

    -- WR_N og slaveadresse
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                WR_N_I <= '0';
                SLAVE_ADRESSE_I <= (others => '0');
            elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "001" then
                WR_N_I <= WRITEDATA(0);
                SLAVE_ADRESSE_I <= WRITEDATA(7 downto 1);
            end if;
        end if;
    end process;

    -- CLOCK_MODE
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                CLOCK_MODE_I <= '0';
            elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "010" then
                CLOCK_MODE_I <= WRITEDATA(0);
            end if;
        end if;
    end process;

    -- WR_BYTE_I
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                WR_BYTE_I <= (others => '0');
            elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "011" then
                WR_BYTE_I <= WRITEDATA(7 downto 0);
            end if;
        end if;
    end process;

    ------------------------------------------------------------------
    -- READ MUX
    ------------------------------------------------------------------
    READ_MUX : process (ADDRESS, CHIPSELECT, RD, WR_N_I, STOP_I, SLAVE_ADRESSE_I, CLOCK_MODE_I, WR_BYTE_I, DONE, IDLE, NO_ACK, RD_BYTE, DATA_RDY, FULL_array, MASTER_START_I, DATA_NEW, lesing_klar, EN_I)
    begin
        if CHIPSELECT = '1' and RD = '1' then
            case ADDRESS is
                when "000" => READDATA <= X"0000000" & "00" & STOP_I & EN_I;
                when "001" => READDATA <= X"000000" & SLAVE_ADRESSE_I & WR_N_I;
                when "010" => READDATA <= X"0000000" & "000" & CLOCK_MODE_I;
                when "011" => READDATA <= X"000000" & WR_BYTE_I;
                when "100" => READDATA <= X"0000000" & "00"& lesing_klar & NO_ACK;
                when "101" => READDATA <= X"0000000" & DATA_NEW & FULL_array & DATA_RDY & DONE;
                when "110" => READDATA <= X"0000000" & "00" & MASTER_START_I & IDLE;
                when "111" => READDATA <= X"000000" & RD_BYTE;
                when others => READDATA <= (others => '0'); 
            end case;
        else 
            READDATA <= (others => 'Z');
        end if;
    end process;

    lesing_klar <= '1' when STATE = Motta_M else '0';
    ------------------------------------------------------------------
    -- FELLES TILSTANDSMASKIN FOR SKRIVING OG LESING
    ------------------------------------------------------------------
    process (CLK)
    begin
        if rising_edge(CLK) then
            if RST = '1' then
                STATE <= IDLE_sm;
                send_state <= SEND_IDLE;
                data_index <= 0;
                send_index <= 0;
                data_array <= (others => (others => '0'));
                MASTER_START_I <= '0';
                MASTER_STOP_I <= '1';
                RP_START <= '0';
            else
                case STATE is

                    -- Felles IDLE for både skriving og lesing
                    when IDLE_sm =>
                        if en_rising = '1' then
                            if WR_N_I = '0' then
                                -- Start skriveprosess
                                data_index <= 0;
                                send_index <= 0;
                                send_state <= SEND_IDLE;
                                STATE <= LOADING_s;
                                MASTER_STOP_I <= '0';
                            elsif WR_N_I = '1' then
                                -- Start leseprosess
                                STATE <= LOADING_m;
                                data_index <= 0;
                                send_index <= 0;
                                MASTER_STOP_I <= '0';
                            end if;
                        end if;

                    ------------------------------------------------------------------
                    -- SKRIVEPROSESS
                    ------------------------------------------------------------------
                    when LOADING_s =>
                        data_array(0) <= SLAVE_ADRESSE_I & '0'; --skriving
                        if data_index = 0 then
                            data_index <= 1;
                        elsif CHIPSELECT = '1' and WR = '1' and ADDRESS = "011" then
                            if data_index < 32 then
                                data_array(data_index) <= WRITEDATA(7 downto 0);
                                data_index <= data_index + 1;
                            end if;
                        end if;
                        if STOP_I = '1' or data_index = 32 then
                            send_index <= 0;
                            send_state <= SEND_IDLE;
                            STATE <= SEND_s;
                            WR_N <= '0';
                        end if;

                    when SEND_s =>
                        case send_state is
                            when SEND_IDLE =>
                                if send_index < data_index then
                                    WRITE_BYTE <= data_array(send_index);
                                    if send_index = 0 then
                                        MASTER_START_I <= '1';
                                    end if;
                                    if send_index = data_index - 1 then
                                        MASTER_STOP_I <= '1';
                                    end if;
                                    send_state <= SEND_WAIT_DONE;
                                else
                                    STATE <= STOP_s;
                                end if;

                            when SEND_WAIT_DONE =>
                                if done_rising = '1' then
                                    if send_index < data_index - 1 then
                                        send_index <= send_index + 1;
                                        send_state <= SEND_IDLE;
                                    else
                                        MASTER_START_I <= '0';
                                        STATE <= STOP_s;
                                    end if;
                                end if;
                        end case;

                    when STOP_s =>
                        -- Stop Master
                        MASTER_STOP_I <= '0';
                        MASTER_START_I <= '0';
                        STATE <= IDLE_sm;

                    ------------------------------------------------------------------
                    -- LESEPROSESS
                    ------------------------------------------------------------------
                    when LOADING_m =>
                        data_array(0) <= SLAVE_ADRESSE_I & '0';
                        data_array(2) <= SLAVE_ADRESSE_I & '1';
                        send_index <= 0;
                        if CHIPSELECT = '1' and WR = '1' and ADDRESS = "011" then
                            data_array(1) <= WRITEDATA(7 downto 0);
                        end if;
                        if STOP_I = '1' then
                        STATE <= Sending_m;
                        end if;
                        
                    when Sending_m =>
                        case send_index is
                            when 0 =>
                                WR_N <= '0';
                                WRITE_BYTE <= data_array(0); -- send slaveadresse med write
                                MASTER_START_I <= '1';
                                if done_rising = '1' then
                                    RP_START <= '1'; -- Send repeated start etter registeradresse
                                    send_index <= 1;
                                end if;

                            when 1 =>
                                WR_N <= '0';
                                WRITE_BYTE <= data_array(1); -- send registeradresse
                                if done_rising = '1' then
                                    send_index <= 2;
                                end if;

                            when 2 =>
                                WRITE_BYTE <= data_array(2); -- send slaveadresse med read
                                if DATA_RDY = '1' then
                                RP_START <= '0'; -- venter til ACK med å slå av RP-start
                                MASTER_STOP_I <= '0';
                                end if;
                                if done_rising = '1' then
                                    WR_N <= '1';
                                    send_index <= 0;
                                    STATE <= Motta_M;
                                end if;
                            when others =>
                                STATE <= IDLE_sm;
                            end case;

                        when Motta_M =>
                            WR_N <= '1';
                            if STOP_I = '1' then
                                STATE <= STOP_m;
                            end if;
                            

                        when STOP_m =>
                            if DONE = '1' then
                            MASTER_STOP_I <= '1';
                            MASTER_START_I <= '0';
                            STATE <= IDLE_sm;
                            WR_N <= '0';
                            end if;

                    when others =>
                        null;
                end case;
            end if;
        end if;
    end process;

end architecture RTL;

