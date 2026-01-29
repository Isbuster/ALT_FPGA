library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity I2C_MASTER_ALL is
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

      -- I2C
        scl : out std_logic;
        sda : inout std_logic
    );
end entity I2C_MASTER_ALL;

architecture RTL of I2C_MASTER_ALL is

    -- Til I2C_MASTER_REG
    signal IDLE : std_logic;
    signal DONE : std_logic;
    signal NO_ACK : std_logic;
    signal RD_BYTE: std_logic_vector(7 downto 0);

    -- Til I2C_MASTER
    signal WR_BYTE : std_logic_vector(7 downto 0);
    signal WR_N : std_logic;
    signal STOP : std_logic;
    signal BAUD_RATE : std_logic_vector(7 downto 0);
    signal EN : std_logic;

    component I2C_MASTER is
        port(
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
    end component I2C_MASTER;

    component I2C_MASTER_REG is
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
    end component I2C_MASTER_REG;
begin
    c_i2c_master : I2C_MASTER
        port map(
            CLK => CLK,
            RST => RST,

            -- SCL og SDA porter
            SCL => scl,
            SDA => sda,

            -- Fra I2C_MASTER_REG
            EN => EN,
            WR_N => WR_N,
            STOP => STOP,
            BAUD_RATE => BAUD_RATE,
            WR_BYTE => WR_BYTE,

            -- Til I2C_MASTER_REG
            IDLE => IDLE,
            DONE => DONE,
            NO_ACK => NO_ACK,
            RD_BYTE => RD_BYTE
        );

    c_i2c_master_reg : I2C_MASTER_REG
        port map(
            CLK => CLK,
            RST => RST,

            -- SBI
            chipselect => chipselect,
            wr => wr,
            rd => rd,
            address => address,
            writedata => writedata,
            readdata => readdata,

            -- Fra I2C_MASTER
            IDLE => IDLE,
            DONE => DONE,
            NO_ACK => NO_ACK,
            RD_BYTE => RD_BYTE,

            -- Fra I2C_MASTER_REG
            EN => EN,
            WR_N => WR_N,
            STOP => STOP,
            BAUD_RATE => BAUD_RATE,
            WR_BYTE => WR_BYTE
        );
end architecture RTL;