library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_MASTER_TOP is
    port (
        CLK        : in  std_logic;
        RST        : in  std_logic;

        -- Enkel bus-interface
        CHIPSELECT : in  std_logic;
        WR         : in  std_logic;
        RD         : in  std_logic;
        ADDRESS    : in  std_logic_vector(2 downto 0);
        WRITEDATA  : in  std_logic_vector(31 downto 0);
        READDATA   : out std_logic_vector(31 downto 0);

        -- I2C-buss
        SDA        : inout std_logic;
        SCL        : out   std_logic
    );
end entity;

architecture RTL of I2C_MASTER_TOP is

    -- Komponent: I2C_MASTER_HW
    component I2C_MASTER_HW
        port (
            CLK           : in  std_logic;
            RST           : in  std_logic;
            MASTER_START  : in  std_logic;
            MASTER_STOP   : in  std_logic;
            WR_N          : in  std_logic;
            WR_BYTE       : in  std_logic_vector(7 downto 0);
            CLOCK_MODE    : in  std_logic;
            RP_START      : in  std_logic;
            SDA           : inout std_logic;
            SCL           : out   std_logic;
            master_DONE   : out   std_logic;
            master_IDLE   : out   std_logic;
            NO_ACK        : out   std_logic;
            RD_BYTE       : out   std_logic_vector(7 downto 0);
            DATA_RDY      : out   std_logic;
            DATA_NEW      : out   std_logic
        );
    end component;

    -- Komponent: I2C_REGISTER
    component I2C_REGISTER
        port (
            CLK           : in  std_logic;
            RST           : in  std_logic;
            CHIPSELECT    : in  std_logic;
            WR            : in  std_logic;
            RD            : in  std_logic;
            ADDRESS       : in  std_logic_vector(2 downto 0);
            WRITEDATA     : in  std_logic_vector(31 downto 0);
            READDATA      : out std_logic_vector(31 downto 0);
            WR_N          : out std_logic;
            CLOCK_MODE    : out std_logic;
            WRITE_BYTE    : out std_logic_vector(7 downto 0);
            MASTER_START  : out std_logic;
            MASTER_STOP   : out std_logic;
            RP_START      : out std_logic;
            DONE          : in  std_logic;
            IDLE          : in  std_logic;
            NO_ACK        : in  std_logic;
            RD_BYTE       : in  std_logic_vector(7 downto 0);
            DATA_RDY      : in  std_logic;
            DATA_NEW      : in  std_logic
        );
    end component;

    -- Interne signaler
    signal WR_N         : std_logic;
    signal CLOCK_MODE   : std_logic;
    signal WRITE_BYTE   : std_logic_vector(7 downto 0);
    signal MASTER_START : std_logic;
    signal MASTER_STOP  : std_logic;
    signal RP_START     : std_logic;
    signal DONE         : std_logic;
    signal IDLE         : std_logic;
    signal NO_ACK       : std_logic;
    signal RD_BYTE      : std_logic_vector(7 downto 0);
    signal DATA_RDY     : std_logic;
    signal DATA_NEW     : std_logic;

begin
    -- Instansiering av I2C-master
    I2C_MASTER_HW_inst : I2C_MASTER_HW
        port map (
            CLK           => CLK,
            RST           => RST,
            MASTER_START  => MASTER_START,
            MASTER_STOP   => MASTER_STOP,
            WR_N          => WR_N,
            WR_BYTE       => WRITE_BYTE,
            CLOCK_MODE    => CLOCK_MODE,
            RP_START      => RP_START,
            SDA           => SDA,
            SCL           => SCL,
            master_DONE   => DONE,
            master_IDLE   => IDLE,
            NO_ACK        => NO_ACK,
            RD_BYTE       => RD_BYTE,
            DATA_RDY      => DATA_RDY,
            DATA_NEW      => DATA_NEW
        );

    -- Instansiering av registerstyring
    I2C_REGISTER_inst : I2C_REGISTER
        port map (
            CLK           => CLK,
            RST           => RST,
            CHIPSELECT    => CHIPSELECT,
            WR            => WR,
            RD            => RD,
            ADDRESS       => ADDRESS,
            WRITEDATA     => WRITEDATA,
            READDATA      => READDATA,
            WR_N          => WR_N,
            CLOCK_MODE    => CLOCK_MODE,
            WRITE_BYTE    => WRITE_BYTE,
            MASTER_START  => MASTER_START,
            MASTER_STOP   => MASTER_STOP,
            RP_START      => RP_START,
            DONE          => DONE,
            IDLE          => IDLE,
            NO_ACK        => NO_ACK,
            RD_BYTE       => RD_BYTE,
            DATA_RDY      => DATA_RDY,
            DATA_NEW      => DATA_NEW
        ); 

end architecture;