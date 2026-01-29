-- Copyright (C) 2024  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 23.1std.1 Build 993 05/14/2024 SC Lite Edition"

-- DATE "05/07/2025 09:57:57"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	I2C_MASTER IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	SCL : OUT std_logic;
	SDA : INOUT std_logic;
	EN : IN std_logic;
	WR_N : IN std_logic;
	STOP : IN std_logic;
	BAUD_RATE : IN std_logic_vector(7 DOWNTO 0);
	WR_BYTE : IN std_logic_vector(7 DOWNTO 0);
	IDLE : OUT std_logic;
	DONE : OUT std_logic;
	NO_ACK : OUT std_logic;
	RD_BYTE : OUT std_logic_vector(7 DOWNTO 0)
	);
END I2C_MASTER;

-- Design Ports Information
-- SCL	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDLE	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NO_ACK	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[0]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[4]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[5]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[6]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[7]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SDA	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[6]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[5]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[4]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[3]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_N	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[0]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[6]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[4]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_MASTER IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_RST : std_logic;
SIGNAL ww_SCL : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_WR_N : std_logic;
SIGNAL ww_STOP : std_logic;
SIGNAL ww_BAUD_RATE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WR_BYTE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_IDLE : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL ww_NO_ACK : std_logic;
SIGNAL ww_RD_BYTE : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \STOP~input_o\ : std_logic;
SIGNAL \SDA~output_o\ : std_logic;
SIGNAL \SCL~output_o\ : std_logic;
SIGNAL \IDLE~output_o\ : std_logic;
SIGNAL \DONE~output_o\ : std_logic;
SIGNAL \NO_ACK~output_o\ : std_logic;
SIGNAL \RD_BYTE[0]~output_o\ : std_logic;
SIGNAL \RD_BYTE[1]~output_o\ : std_logic;
SIGNAL \RD_BYTE[2]~output_o\ : std_logic;
SIGNAL \RD_BYTE[3]~output_o\ : std_logic;
SIGNAL \RD_BYTE[4]~output_o\ : std_logic;
SIGNAL \RD_BYTE[5]~output_o\ : std_logic;
SIGNAL \RD_BYTE[6]~output_o\ : std_logic;
SIGNAL \RD_BYTE[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \EN~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \STATE~15_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \PHASE~7_combout\ : std_logic;
SIGNAL \baud_cnt[0]~8_combout\ : std_logic;
SIGNAL \p_BAUD~1_combout\ : std_logic;
SIGNAL \baud_cnt[0]~9\ : std_logic;
SIGNAL \baud_cnt[1]~10_combout\ : std_logic;
SIGNAL \baud_cnt[1]~11\ : std_logic;
SIGNAL \baud_cnt[2]~12_combout\ : std_logic;
SIGNAL \baud_cnt[2]~13\ : std_logic;
SIGNAL \baud_cnt[3]~14_combout\ : std_logic;
SIGNAL \baud_cnt[3]~15\ : std_logic;
SIGNAL \baud_cnt[4]~16_combout\ : std_logic;
SIGNAL \baud_cnt[4]~17\ : std_logic;
SIGNAL \baud_cnt[5]~18_combout\ : std_logic;
SIGNAL \baud_cnt[5]~19\ : std_logic;
SIGNAL \baud_cnt[6]~20_combout\ : std_logic;
SIGNAL \baud_cnt[6]~21\ : std_logic;
SIGNAL \baud_cnt[7]~22_combout\ : std_logic;
SIGNAL \BAUD_RATE[7]~input_o\ : std_logic;
SIGNAL \baud_limit[7]~1_combout\ : std_logic;
SIGNAL \baud_limit[7]~0_combout\ : std_logic;
SIGNAL \BAUD_RATE[6]~input_o\ : std_logic;
SIGNAL \baud_limit[6]~2_combout\ : std_logic;
SIGNAL \BAUD_RATE[5]~input_o\ : std_logic;
SIGNAL \baud_limit[5]~3_combout\ : std_logic;
SIGNAL \BAUD_RATE[4]~input_o\ : std_logic;
SIGNAL \baud_limit[4]~4_combout\ : std_logic;
SIGNAL \BAUD_RATE[3]~input_o\ : std_logic;
SIGNAL \baud_limit[3]~5_combout\ : std_logic;
SIGNAL \BAUD_RATE[2]~input_o\ : std_logic;
SIGNAL \baud_limit[2]~6_combout\ : std_logic;
SIGNAL \BAUD_RATE[1]~input_o\ : std_logic;
SIGNAL \baud_limit[1]~7_combout\ : std_logic;
SIGNAL \BAUD_RATE[0]~input_o\ : std_logic;
SIGNAL \baud_limit[0]~8_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \PHASE~6_combout\ : std_logic;
SIGNAL \PHASE.pFIRST~q\ : std_logic;
SIGNAL \PHASE~5_combout\ : std_logic;
SIGNAL \PHASE.pMID~q\ : std_logic;
SIGNAL \PHASE~8_combout\ : std_logic;
SIGNAL \PHASE.pEND~q\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \STATE.sSTART~q\ : std_logic;
SIGNAL \STATE~14_combout\ : std_logic;
SIGNAL \STATE~19_combout\ : std_logic;
SIGNAL \STATE.sIDLE~0_combout\ : std_logic;
SIGNAL \STATE.sIDLE~q\ : std_logic;
SIGNAL \STATE~20_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[0]~0_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[0]~1_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[0]~q\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[1]~0_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[1]~q\ : std_logic;
SIGNAL \STATE~16_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[2]~2_combout\ : std_logic;
SIGNAL \p_STATE_MACHINE:bit_cnt[2]~q\ : std_logic;
SIGNAL \STATE~17_combout\ : std_logic;
SIGNAL \STATE~21_combout\ : std_logic;
SIGNAL \STATE~18_combout\ : std_logic;
SIGNAL \STATE~22_combout\ : std_logic;
SIGNAL \STATE.sACK~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \STATE.sHOLD~q\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \STATE.sTRANSFER~q\ : std_logic;
SIGNAL \WR_BYTE[6]~input_o\ : std_logic;
SIGNAL \WR_BYTE[7]~input_o\ : std_logic;
SIGNAL \WR_BYTE[5]~input_o\ : std_logic;
SIGNAL \w_byte[5]~feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[4]~input_o\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \WR_BYTE[3]~input_o\ : std_logic;
SIGNAL \WR_BYTE[2]~input_o\ : std_logic;
SIGNAL \WR_BYTE[1]~input_o\ : std_logic;
SIGNAL \w_byte[1]~feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[0]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \Selector31~0_combout\ : std_logic;
SIGNAL \Selector31~1_combout\ : std_logic;
SIGNAL \WR_N~input_o\ : std_logic;
SIGNAL \MODE~feeder_combout\ : std_logic;
SIGNAL \MODE~q\ : std_logic;
SIGNAL \SDA~2_combout\ : std_logic;
SIGNAL \SDA~3_combout\ : std_logic;
SIGNAL \SDA~4_combout\ : std_logic;
SIGNAL \SDA~reg0_q\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \SDA~en_q\ : std_logic;
SIGNAL \Selector24~0_combout\ : std_logic;
SIGNAL \SCL~reg0_q\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \DONE~reg0_q\ : std_logic;
SIGNAL \ack_n~1_combout\ : std_logic;
SIGNAL \LessThan1~1_cout\ : std_logic;
SIGNAL \LessThan1~3_cout\ : std_logic;
SIGNAL \LessThan1~5_cout\ : std_logic;
SIGNAL \LessThan1~7_cout\ : std_logic;
SIGNAL \LessThan1~9_cout\ : std_logic;
SIGNAL \LessThan1~11_cout\ : std_logic;
SIGNAL \LessThan1~12_combout\ : std_logic;
SIGNAL \ack_n~0_combout\ : std_logic;
SIGNAL \SDA~input_o\ : std_logic;
SIGNAL \ack_n~2_combout\ : std_logic;
SIGNAL \ack_n~q\ : std_logic;
SIGNAL \NO_ACK~0_combout\ : std_logic;
SIGNAL \NO_ACK~reg0_q\ : std_logic;
SIGNAL \c_dff_synk|dff1~feeder_combout\ : std_logic;
SIGNAL \c_dff_synk|dff1~q\ : std_logic;
SIGNAL \c_dff_synk|dff2~feeder_combout\ : std_logic;
SIGNAL \c_dff_synk|dff2~q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \r_byte[0]~1_combout\ : std_logic;
SIGNAL \RD_BYTE[0]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[0]~0_combout\ : std_logic;
SIGNAL \RD_BYTE[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \r_byte[1]~2_combout\ : std_logic;
SIGNAL \RD_BYTE[1]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \r_byte[2]~3_combout\ : std_logic;
SIGNAL \RD_BYTE[2]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \r_byte[3]~4_combout\ : std_logic;
SIGNAL \RD_BYTE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \r_byte[4]~5_combout\ : std_logic;
SIGNAL \RD_BYTE[4]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \r_byte[5]~6_combout\ : std_logic;
SIGNAL \RD_BYTE[5]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[5]~reg0_q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \r_byte[6]~7_combout\ : std_logic;
SIGNAL \RD_BYTE[6]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \r_byte[7]~8_combout\ : std_logic;
SIGNAL \RD_BYTE[7]~reg0feeder_combout\ : std_logic;
SIGNAL \RD_BYTE[7]~reg0_q\ : std_logic;
SIGNAL baud_cnt : std_logic_vector(7 DOWNTO 0);
SIGNAL baud_limit : std_logic_vector(7 DOWNTO 0);
SIGNAL r_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL w_byte : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
SCL <= ww_SCL;
ww_EN <= EN;
ww_WR_N <= WR_N;
ww_STOP <= STOP;
ww_BAUD_RATE <= BAUD_RATE;
ww_WR_BYTE <= WR_BYTE;
IDLE <= ww_IDLE;
DONE <= ww_DONE;
NO_ACK <= ww_NO_ACK;
RD_BYTE <= ww_RD_BYTE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X65_Y73_N23
\SDA~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SDA~reg0_q\,
	oe => \SDA~en_q\,
	devoe => ww_devoe,
	o => \SDA~output_o\);

-- Location: IOOBUF_X60_Y73_N9
\SCL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SCL~reg0_q\,
	devoe => ww_devoe,
	o => \SCL~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\IDLE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \IDLE~output_o\);

-- Location: IOOBUF_X72_Y73_N16
\DONE~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DONE~reg0_q\,
	devoe => ww_devoe,
	o => \DONE~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\NO_ACK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \NO_ACK~reg0_q\,
	devoe => ww_devoe,
	o => \NO_ACK~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\RD_BYTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[0]~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\RD_BYTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[1]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\RD_BYTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[2]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\RD_BYTE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[3]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\RD_BYTE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[4]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[4]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\RD_BYTE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[5]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[5]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\RD_BYTE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[6]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[6]~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\RD_BYTE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \RD_BYTE[7]~reg0_q\,
	devoe => ww_devoe,
	o => \RD_BYTE[7]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X65_Y73_N8
\EN~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EN,
	o => \EN~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: LCCOMB_X66_Y71_N6
\STATE~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~15_combout\ = (!\RST~input_o\ & \STATE.sACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \STATE.sACK~q\,
	combout => \STATE~15_combout\);

-- Location: LCCOMB_X65_Y71_N24
\Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\EN~input_o\ & !\STATE.sIDLE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \EN~input_o\,
	datad => \STATE.sIDLE~q\,
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X66_Y71_N22
\PHASE~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \PHASE~7_combout\ = (!\RST~input_o\ & !\PHASE.pEND~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datad => \PHASE.pEND~q\,
	combout => \PHASE~7_combout\);

-- Location: LCCOMB_X60_Y71_N12
\baud_cnt[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[0]~8_combout\ = baud_cnt(0) $ (VCC)
-- \baud_cnt[0]~9\ = CARRY(baud_cnt(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(0),
	datad => VCC,
	combout => \baud_cnt[0]~8_combout\,
	cout => \baud_cnt[0]~9\);

-- Location: LCCOMB_X60_Y71_N28
\p_BAUD~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_BAUD~1_combout\ = ((!\LessThan0~14_combout\) # (!\STATE.sIDLE~q\)) # (!\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \STATE.sIDLE~q\,
	datad => \LessThan0~14_combout\,
	combout => \p_BAUD~1_combout\);

-- Location: FF_X60_Y71_N13
\baud_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[0]~8_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(0));

-- Location: LCCOMB_X60_Y71_N14
\baud_cnt[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[1]~10_combout\ = (baud_cnt(1) & (!\baud_cnt[0]~9\)) # (!baud_cnt(1) & ((\baud_cnt[0]~9\) # (GND)))
-- \baud_cnt[1]~11\ = CARRY((!\baud_cnt[0]~9\) # (!baud_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(1),
	datad => VCC,
	cin => \baud_cnt[0]~9\,
	combout => \baud_cnt[1]~10_combout\,
	cout => \baud_cnt[1]~11\);

-- Location: FF_X60_Y71_N15
\baud_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[1]~10_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(1));

-- Location: LCCOMB_X60_Y71_N16
\baud_cnt[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[2]~12_combout\ = (baud_cnt(2) & (\baud_cnt[1]~11\ $ (GND))) # (!baud_cnt(2) & (!\baud_cnt[1]~11\ & VCC))
-- \baud_cnt[2]~13\ = CARRY((baud_cnt(2) & !\baud_cnt[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(2),
	datad => VCC,
	cin => \baud_cnt[1]~11\,
	combout => \baud_cnt[2]~12_combout\,
	cout => \baud_cnt[2]~13\);

-- Location: FF_X60_Y71_N17
\baud_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[2]~12_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(2));

-- Location: LCCOMB_X60_Y71_N18
\baud_cnt[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[3]~14_combout\ = (baud_cnt(3) & (!\baud_cnt[2]~13\)) # (!baud_cnt(3) & ((\baud_cnt[2]~13\) # (GND)))
-- \baud_cnt[3]~15\ = CARRY((!\baud_cnt[2]~13\) # (!baud_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(3),
	datad => VCC,
	cin => \baud_cnt[2]~13\,
	combout => \baud_cnt[3]~14_combout\,
	cout => \baud_cnt[3]~15\);

-- Location: FF_X60_Y71_N19
\baud_cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[3]~14_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(3));

-- Location: LCCOMB_X60_Y71_N20
\baud_cnt[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[4]~16_combout\ = (baud_cnt(4) & (\baud_cnt[3]~15\ $ (GND))) # (!baud_cnt(4) & (!\baud_cnt[3]~15\ & VCC))
-- \baud_cnt[4]~17\ = CARRY((baud_cnt(4) & !\baud_cnt[3]~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(4),
	datad => VCC,
	cin => \baud_cnt[3]~15\,
	combout => \baud_cnt[4]~16_combout\,
	cout => \baud_cnt[4]~17\);

-- Location: FF_X60_Y71_N21
\baud_cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[4]~16_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(4));

-- Location: LCCOMB_X60_Y71_N22
\baud_cnt[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[5]~18_combout\ = (baud_cnt(5) & (!\baud_cnt[4]~17\)) # (!baud_cnt(5) & ((\baud_cnt[4]~17\) # (GND)))
-- \baud_cnt[5]~19\ = CARRY((!\baud_cnt[4]~17\) # (!baud_cnt(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(5),
	datad => VCC,
	cin => \baud_cnt[4]~17\,
	combout => \baud_cnt[5]~18_combout\,
	cout => \baud_cnt[5]~19\);

-- Location: FF_X60_Y71_N23
\baud_cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[5]~18_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(5));

-- Location: LCCOMB_X60_Y71_N24
\baud_cnt[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[6]~20_combout\ = (baud_cnt(6) & (\baud_cnt[5]~19\ $ (GND))) # (!baud_cnt(6) & (!\baud_cnt[5]~19\ & VCC))
-- \baud_cnt[6]~21\ = CARRY((baud_cnt(6) & !\baud_cnt[5]~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => baud_cnt(6),
	datad => VCC,
	cin => \baud_cnt[5]~19\,
	combout => \baud_cnt[6]~20_combout\,
	cout => \baud_cnt[6]~21\);

-- Location: FF_X60_Y71_N25
\baud_cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[6]~20_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(6));

-- Location: LCCOMB_X60_Y71_N26
\baud_cnt[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_cnt[7]~22_combout\ = baud_cnt(7) $ (\baud_cnt[6]~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(7),
	cin => \baud_cnt[6]~21\,
	combout => \baud_cnt[7]~22_combout\);

-- Location: FF_X60_Y71_N27
\baud_cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_cnt[7]~22_combout\,
	sclr => \p_BAUD~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_cnt(7));

-- Location: IOIBUF_X60_Y73_N1
\BAUD_RATE[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(7),
	o => \BAUD_RATE[7]~input_o\);

-- Location: LCCOMB_X60_Y71_N0
\baud_limit[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[7]~1_combout\ = !\BAUD_RATE[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[7]~input_o\,
	combout => \baud_limit[7]~1_combout\);

-- Location: LCCOMB_X65_Y71_N16
\baud_limit[7]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[7]~0_combout\ = (!\RST~input_o\ & (\EN~input_o\ & ((\STATE.sHOLD~q\) # (!\STATE.sIDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sHOLD~q\,
	datab => \RST~input_o\,
	datac => \EN~input_o\,
	datad => \STATE.sIDLE~q\,
	combout => \baud_limit[7]~0_combout\);

-- Location: FF_X61_Y71_N1
\baud_limit[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[7]~1_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(7));

-- Location: IOIBUF_X72_Y73_N22
\BAUD_RATE[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(6),
	o => \BAUD_RATE[6]~input_o\);

-- Location: LCCOMB_X69_Y71_N4
\baud_limit[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[6]~2_combout\ = !\BAUD_RATE[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BAUD_RATE[6]~input_o\,
	combout => \baud_limit[6]~2_combout\);

-- Location: FF_X61_Y71_N15
\baud_limit[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[6]~2_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(6));

-- Location: IOIBUF_X54_Y73_N8
\BAUD_RATE[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(5),
	o => \BAUD_RATE[5]~input_o\);

-- Location: LCCOMB_X54_Y71_N4
\baud_limit[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[5]~3_combout\ = !\BAUD_RATE[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[5]~input_o\,
	combout => \baud_limit[5]~3_combout\);

-- Location: FF_X61_Y71_N29
\baud_limit[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[5]~3_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(5));

-- Location: IOIBUF_X49_Y73_N22
\BAUD_RATE[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(4),
	o => \BAUD_RATE[4]~input_o\);

-- Location: LCCOMB_X57_Y71_N16
\baud_limit[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[4]~4_combout\ = !\BAUD_RATE[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[4]~input_o\,
	combout => \baud_limit[4]~4_combout\);

-- Location: FF_X61_Y71_N11
\baud_limit[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[4]~4_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(4));

-- Location: IOIBUF_X47_Y73_N15
\BAUD_RATE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(3),
	o => \BAUD_RATE[3]~input_o\);

-- Location: LCCOMB_X54_Y71_N6
\baud_limit[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[3]~5_combout\ = !\BAUD_RATE[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[3]~input_o\,
	combout => \baud_limit[3]~5_combout\);

-- Location: FF_X61_Y71_N25
\baud_limit[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[3]~5_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(3));

-- Location: IOIBUF_X52_Y73_N1
\BAUD_RATE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(2),
	o => \BAUD_RATE[2]~input_o\);

-- Location: LCCOMB_X57_Y71_N2
\baud_limit[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[2]~6_combout\ = !\BAUD_RATE[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[2]~input_o\,
	combout => \baud_limit[2]~6_combout\);

-- Location: FF_X61_Y71_N7
\baud_limit[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[2]~6_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(2));

-- Location: IOIBUF_X49_Y73_N15
\BAUD_RATE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(1),
	o => \BAUD_RATE[1]~input_o\);

-- Location: LCCOMB_X57_Y71_N20
\baud_limit[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[1]~7_combout\ = !\BAUD_RATE[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[1]~input_o\,
	combout => \baud_limit[1]~7_combout\);

-- Location: FF_X61_Y71_N21
\baud_limit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[1]~7_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(1));

-- Location: IOIBUF_X67_Y73_N8
\BAUD_RATE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BAUD_RATE(0),
	o => \BAUD_RATE[0]~input_o\);

-- Location: LCCOMB_X67_Y71_N4
\baud_limit[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_limit[0]~8_combout\ = !\BAUD_RATE[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BAUD_RATE[0]~input_o\,
	combout => \baud_limit[0]~8_combout\);

-- Location: FF_X61_Y71_N3
\baud_limit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \baud_limit[0]~8_combout\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_limit(0));

-- Location: LCCOMB_X61_Y71_N2
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!baud_cnt(0) & !baud_limit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(0),
	datab => baud_limit(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X61_Y71_N4
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((baud_cnt(1) & ((baud_limit(1)) # (!\LessThan0~1_cout\))) # (!baud_cnt(1) & (baud_limit(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(1),
	datab => baud_limit(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X61_Y71_N6
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((baud_cnt(2) & (!baud_limit(2) & !\LessThan0~3_cout\)) # (!baud_cnt(2) & ((!\LessThan0~3_cout\) # (!baud_limit(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(2),
	datab => baud_limit(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X61_Y71_N8
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((baud_limit(3) & ((baud_cnt(3)) # (!\LessThan0~5_cout\))) # (!baud_limit(3) & (baud_cnt(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(3),
	datab => baud_cnt(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X61_Y71_N10
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((baud_limit(4) & (!baud_cnt(4) & !\LessThan0~7_cout\)) # (!baud_limit(4) & ((!\LessThan0~7_cout\) # (!baud_cnt(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(4),
	datab => baud_cnt(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X61_Y71_N12
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((baud_limit(5) & ((baud_cnt(5)) # (!\LessThan0~9_cout\))) # (!baud_limit(5) & (baud_cnt(5) & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(5),
	datab => baud_cnt(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X61_Y71_N14
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((baud_cnt(6) & (!baud_limit(6) & !\LessThan0~11_cout\)) # (!baud_cnt(6) & ((!\LessThan0~11_cout\) # (!baud_limit(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(6),
	datab => baud_limit(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X61_Y71_N16
\LessThan0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (baud_cnt(7) & (\LessThan0~13_cout\ & !baud_limit(7))) # (!baud_cnt(7) & ((\LessThan0~13_cout\) # (!baud_limit(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(7),
	datad => baud_limit(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X66_Y71_N28
\PHASE~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \PHASE~6_combout\ = (\RST~input_o\) # (!\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \LessThan0~14_combout\,
	combout => \PHASE~6_combout\);

-- Location: FF_X66_Y71_N23
\PHASE.pFIRST\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PHASE~7_combout\,
	ena => \PHASE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PHASE.pFIRST~q\);

-- Location: LCCOMB_X66_Y71_N24
\PHASE~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \PHASE~5_combout\ = (!\RST~input_o\ & !\PHASE.pFIRST~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \PHASE.pFIRST~q\,
	combout => \PHASE~5_combout\);

-- Location: FF_X66_Y71_N25
\PHASE.pMID\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PHASE~5_combout\,
	ena => \PHASE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PHASE.pMID~q\);

-- Location: LCCOMB_X66_Y71_N16
\PHASE~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \PHASE~8_combout\ = (!\RST~input_o\ & \PHASE.pMID~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \PHASE.pMID~q\,
	combout => \PHASE~8_combout\);

-- Location: FF_X66_Y71_N17
\PHASE.pEND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \PHASE~8_combout\,
	ena => \PHASE~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PHASE.pEND~q\);

-- Location: LCCOMB_X63_Y71_N24
\Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Selector1~0_combout\) # ((\STATE.sSTART~q\ & ((\LessThan0~14_combout\) # (!\PHASE.pEND~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \PHASE.pEND~q\,
	datac => \STATE.sSTART~q\,
	datad => \LessThan0~14_combout\,
	combout => \Selector1~1_combout\);

-- Location: FF_X63_Y71_N25
\STATE.sSTART\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector1~1_combout\,
	sclr => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sSTART~q\);

-- Location: LCCOMB_X65_Y71_N6
\STATE~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~14_combout\ = (\PHASE.pEND~q\ & !\LessThan0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \PHASE.pEND~q\,
	datad => \LessThan0~14_combout\,
	combout => \STATE~14_combout\);

-- Location: LCCOMB_X65_Y71_N18
\STATE~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~19_combout\ = (!\STATE.sTRANSFER~q\ & (\STATE~14_combout\ & ((\STATE.sSTART~q\) # (\STATE.sACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \STATE.sSTART~q\,
	datac => \STATE.sACK~q\,
	datad => \STATE~14_combout\,
	combout => \STATE~19_combout\);

-- Location: LCCOMB_X65_Y71_N0
\STATE.sIDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE.sIDLE~0_combout\ = (!\RST~input_o\ & ((\STATE~19_combout\) # ((\STATE.sIDLE~q\) # (\STATE~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \STATE~19_combout\,
	datac => \STATE.sIDLE~q\,
	datad => \STATE~21_combout\,
	combout => \STATE.sIDLE~0_combout\);

-- Location: FF_X65_Y71_N1
\STATE.sIDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE.sIDLE~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sIDLE~q\);

-- Location: LCCOMB_X65_Y71_N4
\STATE~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~20_combout\ = (\EN~input_o\ & (!\STATE.sTRANSFER~q\ & ((\STATE.sHOLD~q\) # (!\STATE.sIDLE~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sHOLD~q\,
	datab => \STATE.sIDLE~q\,
	datac => \EN~input_o\,
	datad => \STATE.sTRANSFER~q\,
	combout => \STATE~20_combout\);

-- Location: LCCOMB_X59_Y71_N20
\p_STATE_MACHINE:bit_cnt[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_STATE_MACHINE:bit_cnt[0]~0_combout\ = (\PHASE.pEND~q\ & (!\RST~input_o\ & (\STATE.sTRANSFER~q\ & !\LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \PHASE.pEND~q\,
	datab => \RST~input_o\,
	datac => \STATE.sTRANSFER~q\,
	datad => \LessThan0~14_combout\,
	combout => \p_STATE_MACHINE:bit_cnt[0]~0_combout\);

-- Location: LCCOMB_X59_Y71_N18
\p_STATE_MACHINE:bit_cnt[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_STATE_MACHINE:bit_cnt[0]~1_combout\ = \p_STATE_MACHINE:bit_cnt[0]~q\ $ (\p_STATE_MACHINE:bit_cnt[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \p_STATE_MACHINE:bit_cnt[0]~0_combout\,
	combout => \p_STATE_MACHINE:bit_cnt[0]~1_combout\);

-- Location: FF_X59_Y71_N19
\p_STATE_MACHINE:bit_cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \p_STATE_MACHINE:bit_cnt[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_STATE_MACHINE:bit_cnt[0]~q\);

-- Location: LCCOMB_X59_Y71_N0
\p_STATE_MACHINE:bit_cnt[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_STATE_MACHINE:bit_cnt[1]~0_combout\ = \p_STATE_MACHINE:bit_cnt[1]~q\ $ (((\p_STATE_MACHINE:bit_cnt[0]~q\ & \p_STATE_MACHINE:bit_cnt[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datad => \p_STATE_MACHINE:bit_cnt[0]~0_combout\,
	combout => \p_STATE_MACHINE:bit_cnt[1]~0_combout\);

-- Location: FF_X59_Y71_N1
\p_STATE_MACHINE:bit_cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \p_STATE_MACHINE:bit_cnt[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_STATE_MACHINE:bit_cnt[1]~q\);

-- Location: LCCOMB_X59_Y71_N22
\STATE~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~16_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & \p_STATE_MACHINE:bit_cnt[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datad => \p_STATE_MACHINE:bit_cnt[0]~q\,
	combout => \STATE~16_combout\);

-- Location: LCCOMB_X59_Y71_N4
\p_STATE_MACHINE:bit_cnt[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_STATE_MACHINE:bit_cnt[2]~2_combout\ = \p_STATE_MACHINE:bit_cnt[2]~q\ $ (((\p_STATE_MACHINE:bit_cnt[1]~q\ & (\p_STATE_MACHINE:bit_cnt[0]~q\ & \p_STATE_MACHINE:bit_cnt[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datad => \p_STATE_MACHINE:bit_cnt[0]~0_combout\,
	combout => \p_STATE_MACHINE:bit_cnt[2]~2_combout\);

-- Location: FF_X59_Y71_N5
\p_STATE_MACHINE:bit_cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \p_STATE_MACHINE:bit_cnt[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \p_STATE_MACHINE:bit_cnt[2]~q\);

-- Location: LCCOMB_X65_Y71_N10
\STATE~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~17_combout\ = (\STATE~16_combout\ & (\PHASE.pEND~q\ & (\p_STATE_MACHINE:bit_cnt[2]~q\ & !\LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE~16_combout\,
	datab => \PHASE.pEND~q\,
	datac => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datad => \LessThan0~14_combout\,
	combout => \STATE~17_combout\);

-- Location: LCCOMB_X65_Y71_N2
\STATE~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~21_combout\ = (\STATE~20_combout\) # ((\STATE.sTRANSFER~q\ & \STATE~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \STATE~20_combout\,
	datad => \STATE~17_combout\,
	combout => \STATE~21_combout\);

-- Location: LCCOMB_X65_Y71_N8
\STATE~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~18_combout\ = (\STATE.sTRANSFER~q\ & (!\RST~input_o\ & \STATE~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \RST~input_o\,
	datad => \STATE~17_combout\,
	combout => \STATE~18_combout\);

-- Location: LCCOMB_X65_Y71_N20
\STATE~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~22_combout\ = (\STATE~21_combout\ & (((\STATE~18_combout\)))) # (!\STATE~21_combout\ & ((\STATE~19_combout\ & ((\STATE~18_combout\))) # (!\STATE~19_combout\ & (\STATE~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE~15_combout\,
	datab => \STATE~21_combout\,
	datac => \STATE~18_combout\,
	datad => \STATE~19_combout\,
	combout => \STATE~22_combout\);

-- Location: FF_X65_Y71_N21
\STATE.sACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sACK~q\);

-- Location: LCCOMB_X65_Y71_N22
\Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\EN~input_o\ & (\STATE.sACK~q\ & ((\STATE~14_combout\)))) # (!\EN~input_o\ & ((\STATE.sHOLD~q\) # ((\STATE.sACK~q\ & \STATE~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EN~input_o\,
	datab => \STATE.sACK~q\,
	datac => \STATE.sHOLD~q\,
	datad => \STATE~14_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X65_Y71_N23
\STATE.sHOLD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	sclr => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sHOLD~q\);

-- Location: LCCOMB_X65_Y71_N30
\Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\STATE~17_combout\ & (\STATE.sSTART~q\ & ((\STATE~14_combout\)))) # (!\STATE~17_combout\ & ((\STATE.sTRANSFER~q\) # ((\STATE.sSTART~q\ & \STATE~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE~17_combout\,
	datab => \STATE.sSTART~q\,
	datac => \STATE.sTRANSFER~q\,
	datad => \STATE~14_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X65_Y71_N12
\Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\Selector2~0_combout\) # ((\STATE.sHOLD~q\ & \EN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sHOLD~q\,
	datab => \EN~input_o\,
	datac => \Selector2~0_combout\,
	combout => \Selector2~1_combout\);

-- Location: FF_X65_Y71_N13
\STATE.sTRANSFER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector2~1_combout\,
	sclr => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sTRANSFER~q\);

-- Location: IOIBUF_X52_Y73_N22
\WR_BYTE[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(6),
	o => \WR_BYTE[6]~input_o\);

-- Location: FF_X59_Y71_N9
\w_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[6]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(6));

-- Location: IOIBUF_X58_Y73_N1
\WR_BYTE[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(7),
	o => \WR_BYTE[7]~input_o\);

-- Location: FF_X59_Y71_N31
\w_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[7]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(7));

-- Location: IOIBUF_X58_Y73_N22
\WR_BYTE[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(5),
	o => \WR_BYTE[5]~input_o\);

-- Location: LCCOMB_X59_Y71_N26
\w_byte[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_byte[5]~feeder_combout\ = \WR_BYTE[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WR_BYTE[5]~input_o\,
	combout => \w_byte[5]~feeder_combout\);

-- Location: FF_X59_Y71_N27
\w_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w_byte[5]~feeder_combout\,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(5));

-- Location: IOIBUF_X58_Y73_N8
\WR_BYTE[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(4),
	o => \WR_BYTE[4]~input_o\);

-- Location: FF_X59_Y71_N17
\w_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[4]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(4));

-- Location: LCCOMB_X59_Y71_N16
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & (((\p_STATE_MACHINE:bit_cnt[0]~q\)))) # (!\p_STATE_MACHINE:bit_cnt[1]~q\ & ((\p_STATE_MACHINE:bit_cnt[0]~q\ & (w_byte(5))) # (!\p_STATE_MACHINE:bit_cnt[0]~q\ & ((w_byte(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_byte(5),
	datab => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datac => w_byte(4),
	datad => \p_STATE_MACHINE:bit_cnt[0]~q\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X59_Y71_N30
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & ((\Mux0~2_combout\ & ((w_byte(7)))) # (!\Mux0~2_combout\ & (w_byte(6))))) # (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (((\Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => w_byte(6),
	datac => w_byte(7),
	datad => \Mux0~2_combout\,
	combout => \Mux0~3_combout\);

-- Location: IOIBUF_X52_Y73_N15
\WR_BYTE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(3),
	o => \WR_BYTE[3]~input_o\);

-- Location: FF_X59_Y71_N23
\w_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[3]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(3));

-- Location: IOIBUF_X60_Y73_N22
\WR_BYTE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(2),
	o => \WR_BYTE[2]~input_o\);

-- Location: FF_X59_Y71_N11
\w_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[2]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(2));

-- Location: IOIBUF_X58_Y73_N15
\WR_BYTE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(1),
	o => \WR_BYTE[1]~input_o\);

-- Location: LCCOMB_X59_Y71_N12
\w_byte[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \w_byte[1]~feeder_combout\ = \WR_BYTE[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WR_BYTE[1]~input_o\,
	combout => \w_byte[1]~feeder_combout\);

-- Location: FF_X59_Y71_N13
\w_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \w_byte[1]~feeder_combout\,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(1));

-- Location: IOIBUF_X52_Y73_N8
\WR_BYTE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_BYTE(0),
	o => \WR_BYTE[0]~input_o\);

-- Location: FF_X59_Y71_N7
\w_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \WR_BYTE[0]~input_o\,
	sload => VCC,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => w_byte(0));

-- Location: LCCOMB_X59_Y71_N6
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & (((\p_STATE_MACHINE:bit_cnt[0]~q\)))) # (!\p_STATE_MACHINE:bit_cnt[1]~q\ & ((\p_STATE_MACHINE:bit_cnt[0]~q\ & (w_byte(1))) # (!\p_STATE_MACHINE:bit_cnt[0]~q\ & ((w_byte(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_byte(1),
	datab => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datac => w_byte(0),
	datad => \p_STATE_MACHINE:bit_cnt[0]~q\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X59_Y71_N10
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & ((\Mux0~0_combout\ & (w_byte(3))) # (!\Mux0~0_combout\ & ((w_byte(2)))))) # (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => w_byte(3),
	datab => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datac => w_byte(2),
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X59_Y71_N8
\Selector31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~0_combout\ = (\p_STATE_MACHINE:bit_cnt[2]~q\ & (\Mux0~3_combout\)) # (!\p_STATE_MACHINE:bit_cnt[2]~q\ & ((\Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datad => \Mux0~1_combout\,
	combout => \Selector31~0_combout\);

-- Location: LCCOMB_X66_Y71_N26
\Selector31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector31~1_combout\ = (\STATE.sTRANSFER~q\ & ((\Selector31~0_combout\) # ((\STATE.sSTART~q\ & !\PHASE.pFIRST~q\)))) # (!\STATE.sTRANSFER~q\ & (((\STATE.sSTART~q\ & !\PHASE.pFIRST~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \Selector31~0_combout\,
	datac => \STATE.sSTART~q\,
	datad => \PHASE.pFIRST~q\,
	combout => \Selector31~1_combout\);

-- Location: IOIBUF_X60_Y73_N15
\WR_N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WR_N,
	o => \WR_N~input_o\);

-- Location: LCCOMB_X60_Y71_N2
\MODE~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~feeder_combout\ = \WR_N~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \WR_N~input_o\,
	combout => \MODE~feeder_combout\);

-- Location: FF_X60_Y71_N3
MODE : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~feeder_combout\,
	ena => \baud_limit[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE~q\);

-- Location: LCCOMB_X63_Y71_N30
\SDA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDA~2_combout\ = (\STATE.sTRANSFER~q\ & (!\MODE~q\ & \PHASE.pMID~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datac => \MODE~q\,
	datad => \PHASE.pMID~q\,
	combout => \SDA~2_combout\);

-- Location: LCCOMB_X63_Y71_N28
\SDA~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDA~3_combout\ = (\STATE.sSTART~q\) # ((!\PHASE.pFIRST~q\ & ((\STATE.sACK~q\) # (\STATE.sTRANSFER~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sACK~q\,
	datab => \STATE.sSTART~q\,
	datac => \PHASE.pFIRST~q\,
	datad => \STATE.sTRANSFER~q\,
	combout => \SDA~3_combout\);

-- Location: LCCOMB_X63_Y71_N26
\SDA~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SDA~4_combout\ = (!\RST~input_o\ & ((\SDA~2_combout\) # (\SDA~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \SDA~2_combout\,
	datad => \SDA~3_combout\,
	combout => \SDA~4_combout\);

-- Location: FF_X66_Y71_N27
\SDA~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector31~1_combout\,
	ena => \SDA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA~reg0_q\);

-- Location: LCCOMB_X66_Y71_N20
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (\MODE~q\ & (((\PHASE.pFIRST~q\)) # (!\STATE.sTRANSFER~q\))) # (!\MODE~q\ & (((!\STATE.sACK~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \STATE.sACK~q\,
	datac => \MODE~q\,
	datad => \PHASE.pFIRST~q\,
	combout => \Selector32~0_combout\);

-- Location: FF_X66_Y71_N21
\SDA~en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector32~0_combout\,
	ena => \SDA~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SDA~en_q\);

-- Location: LCCOMB_X63_Y71_N10
\Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector24~0_combout\ = (\PHASE.pMID~q\) # ((\STATE.sSTART~q\ & !\PHASE.pFIRST~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.sSTART~q\,
	datac => \PHASE.pFIRST~q\,
	datad => \PHASE.pMID~q\,
	combout => \Selector24~0_combout\);

-- Location: FF_X62_Y71_N29
\SCL~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Selector24~0_combout\,
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \SCL~reg0_q\);

-- Location: LCCOMB_X65_Y71_N26
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\STATE.sTRANSFER~q\) # ((\STATE.sACK~q\) # ((\STATE.sSTART~q\) # (!\STATE.sIDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sTRANSFER~q\,
	datab => \STATE.sACK~q\,
	datac => \STATE.sIDLE~q\,
	datad => \STATE.sSTART~q\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X65_Y71_N28
\Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\Selector23~0_combout\ & ((\DONE~reg0_q\) # ((\STATE.sACK~q\ & \STATE~14_combout\)))) # (!\Selector23~0_combout\ & (\STATE.sACK~q\ & ((\STATE~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \STATE.sACK~q\,
	datac => \DONE~reg0_q\,
	datad => \STATE~14_combout\,
	combout => \Selector23~1_combout\);

-- Location: FF_X65_Y71_N29
\DONE~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector23~1_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DONE~reg0_q\);

-- Location: LCCOMB_X60_Y71_N10
\ack_n~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_n~1_combout\ = (!\MODE~q\ & \STATE.sACK~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE~q\,
	datad => \STATE.sACK~q\,
	combout => \ack_n~1_combout\);

-- Location: LCCOMB_X61_Y71_N18
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_cout\ = CARRY((!baud_cnt(1) & !baud_limit(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(1),
	datab => baud_limit(0),
	datad => VCC,
	cout => \LessThan1~1_cout\);

-- Location: LCCOMB_X61_Y71_N20
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_cout\ = CARRY((baud_cnt(2) & ((baud_limit(1)) # (!\LessThan1~1_cout\))) # (!baud_cnt(2) & (baud_limit(1) & !\LessThan1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(2),
	datab => baud_limit(1),
	datad => VCC,
	cin => \LessThan1~1_cout\,
	cout => \LessThan1~3_cout\);

-- Location: LCCOMB_X61_Y71_N22
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_cout\ = CARRY((baud_limit(2) & (!baud_cnt(3) & !\LessThan1~3_cout\)) # (!baud_limit(2) & ((!\LessThan1~3_cout\) # (!baud_cnt(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(2),
	datab => baud_cnt(3),
	datad => VCC,
	cin => \LessThan1~3_cout\,
	cout => \LessThan1~5_cout\);

-- Location: LCCOMB_X61_Y71_N24
\LessThan1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~7_cout\ = CARRY((baud_limit(3) & ((baud_cnt(4)) # (!\LessThan1~5_cout\))) # (!baud_limit(3) & (baud_cnt(4) & !\LessThan1~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(3),
	datab => baud_cnt(4),
	datad => VCC,
	cin => \LessThan1~5_cout\,
	cout => \LessThan1~7_cout\);

-- Location: LCCOMB_X61_Y71_N26
\LessThan1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~9_cout\ = CARRY((baud_limit(4) & (!baud_cnt(5) & !\LessThan1~7_cout\)) # (!baud_limit(4) & ((!\LessThan1~7_cout\) # (!baud_cnt(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(4),
	datab => baud_cnt(5),
	datad => VCC,
	cin => \LessThan1~7_cout\,
	cout => \LessThan1~9_cout\);

-- Location: LCCOMB_X61_Y71_N28
\LessThan1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~11_cout\ = CARRY((baud_limit(5) & ((baud_cnt(6)) # (!\LessThan1~9_cout\))) # (!baud_limit(5) & (baud_cnt(6) & !\LessThan1~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(5),
	datab => baud_cnt(6),
	datad => VCC,
	cin => \LessThan1~9_cout\,
	cout => \LessThan1~11_cout\);

-- Location: LCCOMB_X61_Y71_N30
\LessThan1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~12_combout\ = (baud_cnt(7) & (!baud_limit(6) & !\LessThan1~11_cout\)) # (!baud_cnt(7) & ((!\LessThan1~11_cout\) # (!baud_limit(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => baud_cnt(7),
	datab => baud_limit(6),
	cin => \LessThan1~11_cout\,
	combout => \LessThan1~12_combout\);

-- Location: LCCOMB_X61_Y71_N0
\ack_n~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_n~0_combout\ = (!\RST~input_o\ & (\PHASE.pMID~q\ & (baud_limit(7) & !\LessThan1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \PHASE.pMID~q\,
	datac => baud_limit(7),
	datad => \LessThan1~12_combout\,
	combout => \ack_n~0_combout\);

-- Location: IOIBUF_X65_Y73_N22
\SDA~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SDA,
	o => \SDA~input_o\);

-- Location: LCCOMB_X60_Y71_N4
\ack_n~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ack_n~2_combout\ = (\ack_n~1_combout\ & ((\ack_n~0_combout\ & ((\SDA~input_o\))) # (!\ack_n~0_combout\ & (\ack_n~q\)))) # (!\ack_n~1_combout\ & (((\ack_n~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_n~1_combout\,
	datab => \ack_n~0_combout\,
	datac => \ack_n~q\,
	datad => \SDA~input_o\,
	combout => \ack_n~2_combout\);

-- Location: FF_X60_Y71_N5
ack_n : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \ack_n~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ack_n~q\);

-- Location: LCCOMB_X65_Y71_N14
\NO_ACK~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \NO_ACK~0_combout\ = (\STATE~15_combout\ & ((\STATE~14_combout\ & (\ack_n~q\)) # (!\STATE~14_combout\ & ((\NO_ACK~reg0_q\))))) # (!\STATE~15_combout\ & (((\NO_ACK~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ack_n~q\,
	datab => \STATE~15_combout\,
	datac => \NO_ACK~reg0_q\,
	datad => \STATE~14_combout\,
	combout => \NO_ACK~0_combout\);

-- Location: FF_X65_Y71_N15
\NO_ACK~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \NO_ACK~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \NO_ACK~reg0_q\);

-- Location: LCCOMB_X60_Y71_N6
\c_dff_synk|dff1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_dff_synk|dff1~feeder_combout\ = \SDA~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \SDA~input_o\,
	combout => \c_dff_synk|dff1~feeder_combout\);

-- Location: FF_X60_Y71_N7
\c_dff_synk|dff1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \c_dff_synk|dff1~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_dff_synk|dff1~q\);

-- Location: LCCOMB_X60_Y71_N8
\c_dff_synk|dff2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \c_dff_synk|dff2~feeder_combout\ = \c_dff_synk|dff1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \c_dff_synk|dff1~q\,
	combout => \c_dff_synk|dff2~feeder_combout\);

-- Location: FF_X60_Y71_N9
\c_dff_synk|dff2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \c_dff_synk|dff2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \c_dff_synk|dff2~q\);

-- Location: LCCOMB_X62_Y71_N28
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (\STATE.sTRANSFER~q\ & \MODE~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \STATE.sTRANSFER~q\,
	datad => \MODE~q\,
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X62_Y71_N12
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (baud_limit(7) & (\Decoder0~0_combout\ & (\PHASE~8_combout\ & !\LessThan1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => baud_limit(7),
	datab => \Decoder0~0_combout\,
	datac => \PHASE~8_combout\,
	datad => \LessThan1~12_combout\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X62_Y71_N18
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (!\p_STATE_MACHINE:bit_cnt[2]~q\ & (!\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X62_Y71_N14
\r_byte[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[0]~1_combout\ = (\Decoder0~2_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~2_combout\ & ((r_byte(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(0),
	datad => \Decoder0~2_combout\,
	combout => \r_byte[0]~1_combout\);

-- Location: FF_X62_Y71_N15
\r_byte[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(0));

-- Location: LCCOMB_X63_Y71_N6
\RD_BYTE[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[0]~reg0feeder_combout\ = r_byte(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(0),
	combout => \RD_BYTE[0]~reg0feeder_combout\);

-- Location: LCCOMB_X63_Y71_N8
\RD_BYTE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[0]~0_combout\ = (\MODE~q\ & (\PHASE.pEND~q\ & (\STATE~15_combout\ & !\LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~q\,
	datab => \PHASE.pEND~q\,
	datac => \STATE~15_combout\,
	datad => \LessThan0~14_combout\,
	combout => \RD_BYTE[0]~0_combout\);

-- Location: FF_X63_Y71_N7
\RD_BYTE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[0]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[0]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N16
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (!\p_STATE_MACHINE:bit_cnt[2]~q\ & (\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X62_Y71_N24
\r_byte[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[1]~2_combout\ = (\Decoder0~3_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~3_combout\ & ((r_byte(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(1),
	datad => \Decoder0~3_combout\,
	combout => \r_byte[1]~2_combout\);

-- Location: FF_X62_Y71_N25
\r_byte[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(1));

-- Location: LCCOMB_X63_Y71_N16
\RD_BYTE[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[1]~reg0feeder_combout\ = r_byte(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(1),
	combout => \RD_BYTE[1]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N17
\RD_BYTE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[1]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[1]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N6
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & (!\p_STATE_MACHINE:bit_cnt[2]~q\ & (!\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X62_Y71_N26
\r_byte[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[2]~3_combout\ = (\Decoder0~4_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~4_combout\ & ((r_byte(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(2),
	datad => \Decoder0~4_combout\,
	combout => \r_byte[2]~3_combout\);

-- Location: FF_X62_Y71_N27
\r_byte[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(2));

-- Location: LCCOMB_X63_Y71_N22
\RD_BYTE[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[2]~reg0feeder_combout\ = r_byte(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_byte(2),
	combout => \RD_BYTE[2]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N23
\RD_BYTE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[2]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[2]~reg0_q\);

-- Location: LCCOMB_X63_Y71_N20
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\p_STATE_MACHINE:bit_cnt[2]~q\ & (\p_STATE_MACHINE:bit_cnt[0]~q\ & (\p_STATE_MACHINE:bit_cnt[1]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X63_Y71_N2
\r_byte[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[3]~4_combout\ = (\Decoder0~5_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~5_combout\ & ((r_byte(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \c_dff_synk|dff2~q\,
	datac => r_byte(3),
	datad => \Decoder0~5_combout\,
	combout => \r_byte[3]~4_combout\);

-- Location: FF_X63_Y71_N3
\r_byte[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(3));

-- Location: LCCOMB_X63_Y71_N4
\RD_BYTE[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[3]~reg0feeder_combout\ = r_byte(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(3),
	combout => \RD_BYTE[3]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N5
\RD_BYTE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[3]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[3]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N0
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (\p_STATE_MACHINE:bit_cnt[2]~q\ & (!\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X62_Y71_N4
\r_byte[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[4]~5_combout\ = (\Decoder0~6_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~6_combout\ & ((r_byte(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(4),
	datad => \Decoder0~6_combout\,
	combout => \r_byte[4]~5_combout\);

-- Location: FF_X62_Y71_N5
\r_byte[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(4));

-- Location: LCCOMB_X63_Y71_N14
\RD_BYTE[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[4]~reg0feeder_combout\ = r_byte(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => r_byte(4),
	combout => \RD_BYTE[4]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N15
\RD_BYTE[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[4]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[4]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N10
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (!\p_STATE_MACHINE:bit_cnt[1]~q\ & (\p_STATE_MACHINE:bit_cnt[2]~q\ & (\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X62_Y71_N30
\r_byte[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[5]~6_combout\ = (\Decoder0~7_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~7_combout\ & ((r_byte(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(5),
	datad => \Decoder0~7_combout\,
	combout => \r_byte[5]~6_combout\);

-- Location: FF_X62_Y71_N31
\r_byte[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(5));

-- Location: LCCOMB_X63_Y71_N12
\RD_BYTE[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[5]~reg0feeder_combout\ = r_byte(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(5),
	combout => \RD_BYTE[5]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N13
\RD_BYTE[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[5]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[5]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N20
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & (\p_STATE_MACHINE:bit_cnt[2]~q\ & (!\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X62_Y71_N8
\r_byte[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[6]~7_combout\ = (\Decoder0~8_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~8_combout\ & ((r_byte(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(6),
	datad => \Decoder0~8_combout\,
	combout => \r_byte[6]~7_combout\);

-- Location: FF_X62_Y71_N9
\r_byte[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(6));

-- Location: LCCOMB_X63_Y71_N18
\RD_BYTE[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[6]~reg0feeder_combout\ = r_byte(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(6),
	combout => \RD_BYTE[6]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N19
\RD_BYTE[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[6]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[6]~reg0_q\);

-- Location: LCCOMB_X62_Y71_N2
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (\p_STATE_MACHINE:bit_cnt[1]~q\ & (\p_STATE_MACHINE:bit_cnt[2]~q\ & (\p_STATE_MACHINE:bit_cnt[0]~q\ & \Decoder0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_STATE_MACHINE:bit_cnt[1]~q\,
	datab => \p_STATE_MACHINE:bit_cnt[2]~q\,
	datac => \p_STATE_MACHINE:bit_cnt[0]~q\,
	datad => \Decoder0~1_combout\,
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X62_Y71_N22
\r_byte[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \r_byte[7]~8_combout\ = (\Decoder0~9_combout\ & (\c_dff_synk|dff2~q\)) # (!\Decoder0~9_combout\ & ((r_byte(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \c_dff_synk|dff2~q\,
	datac => r_byte(7),
	datad => \Decoder0~9_combout\,
	combout => \r_byte[7]~8_combout\);

-- Location: FF_X62_Y71_N23
\r_byte[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \r_byte[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => r_byte(7));

-- Location: LCCOMB_X63_Y71_N0
\RD_BYTE[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \RD_BYTE[7]~reg0feeder_combout\ = r_byte(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => r_byte(7),
	combout => \RD_BYTE[7]~reg0feeder_combout\);

-- Location: FF_X63_Y71_N1
\RD_BYTE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \RD_BYTE[7]~reg0feeder_combout\,
	ena => \RD_BYTE[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RD_BYTE[7]~reg0_q\);

-- Location: IOIBUF_X0_Y20_N15
\STOP~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOP,
	o => \STOP~input_o\);

ww_SCL <= \SCL~output_o\;

ww_IDLE <= \IDLE~output_o\;

ww_DONE <= \DONE~output_o\;

ww_NO_ACK <= \NO_ACK~output_o\;

ww_RD_BYTE(0) <= \RD_BYTE[0]~output_o\;

ww_RD_BYTE(1) <= \RD_BYTE[1]~output_o\;

ww_RD_BYTE(2) <= \RD_BYTE[2]~output_o\;

ww_RD_BYTE(3) <= \RD_BYTE[3]~output_o\;

ww_RD_BYTE(4) <= \RD_BYTE[4]~output_o\;

ww_RD_BYTE(5) <= \RD_BYTE[5]~output_o\;

ww_RD_BYTE(6) <= \RD_BYTE[6]~output_o\;

ww_RD_BYTE(7) <= \RD_BYTE[7]~output_o\;

SDA <= \SDA~output_o\;
END structure;


