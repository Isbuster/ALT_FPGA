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

-- DATE "05/07/2025 09:24:16"

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

ENTITY 	I2C_MASTER_REG IS
    PORT (
	CLK : IN std_logic;
	RST : IN std_logic;
	chipselect : IN std_logic;
	wr : IN std_logic;
	rd : IN std_logic;
	address : IN std_logic_vector(2 DOWNTO 0);
	writedata : IN std_logic_vector(31 DOWNTO 0);
	readdata : BUFFER std_logic_vector(31 DOWNTO 0);
	IDLE : IN std_logic;
	DONE : IN std_logic;
	NO_ACK : IN std_logic;
	RD_BYTE : IN std_logic_vector(7 DOWNTO 0);
	EN : BUFFER std_logic;
	WR_N : BUFFER std_logic;
	STOP : BUFFER std_logic;
	BAUD_RATE : BUFFER std_logic_vector(7 DOWNTO 0);
	WR_BYTE : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END I2C_MASTER_REG;

-- Design Ports Information
-- writedata[10]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[11]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[12]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[13]	=>  Location: PIN_AH26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[14]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[15]	=>  Location: PIN_AE25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[16]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[18]	=>  Location: PIN_AE22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[19]	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[20]	=>  Location: PIN_AE10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[21]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[22]	=>  Location: PIN_AD4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[23]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[24]	=>  Location: PIN_R3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[25]	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[26]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[27]	=>  Location: PIN_D23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[28]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[29]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[30]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[2]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[4]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[5]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[6]	=>  Location: PIN_AF15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[8]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[9]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[10]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[11]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[12]	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[13]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[14]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[15]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[16]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[17]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[18]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[19]	=>  Location: PIN_AG26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[20]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[21]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[22]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[23]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[24]	=>  Location: PIN_P26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[25]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[26]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[27]	=>  Location: PIN_AF8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[28]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[29]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[30]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- readdata[31]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EN	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_N	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOP	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[0]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[1]	=>  Location: PIN_AE8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[3]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[4]	=>  Location: PIN_L23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[5]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[6]	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BAUD_RATE[7]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[1]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[2]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[3]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[4]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[5]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[6]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WR_BYTE[7]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rd	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- chipselect	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wr	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RST	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[2]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[1]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- address[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DONE	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[31]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[1]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[2]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[3]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[3]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[4]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[5]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[5]	=>  Location: PIN_G14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[6]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[6]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[7]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RD_BYTE[7]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IDLE	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[8]	=>  Location: PIN_G13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- writedata[9]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- NO_ACK	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF I2C_MASTER_REG IS
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
SIGNAL ww_chipselect : std_logic;
SIGNAL ww_wr : std_logic;
SIGNAL ww_rd : std_logic;
SIGNAL ww_address : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_writedata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_readdata : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_IDLE : std_logic;
SIGNAL ww_DONE : std_logic;
SIGNAL ww_NO_ACK : std_logic;
SIGNAL ww_RD_BYTE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_EN : std_logic;
SIGNAL ww_WR_N : std_logic;
SIGNAL ww_STOP : std_logic;
SIGNAL ww_BAUD_RATE : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_WR_BYTE : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \writedata[10]~input_o\ : std_logic;
SIGNAL \writedata[11]~input_o\ : std_logic;
SIGNAL \writedata[12]~input_o\ : std_logic;
SIGNAL \writedata[13]~input_o\ : std_logic;
SIGNAL \writedata[14]~input_o\ : std_logic;
SIGNAL \writedata[15]~input_o\ : std_logic;
SIGNAL \writedata[16]~input_o\ : std_logic;
SIGNAL \writedata[17]~input_o\ : std_logic;
SIGNAL \writedata[18]~input_o\ : std_logic;
SIGNAL \writedata[19]~input_o\ : std_logic;
SIGNAL \writedata[20]~input_o\ : std_logic;
SIGNAL \writedata[21]~input_o\ : std_logic;
SIGNAL \writedata[22]~input_o\ : std_logic;
SIGNAL \writedata[23]~input_o\ : std_logic;
SIGNAL \writedata[24]~input_o\ : std_logic;
SIGNAL \writedata[25]~input_o\ : std_logic;
SIGNAL \writedata[26]~input_o\ : std_logic;
SIGNAL \writedata[27]~input_o\ : std_logic;
SIGNAL \writedata[28]~input_o\ : std_logic;
SIGNAL \writedata[29]~input_o\ : std_logic;
SIGNAL \writedata[30]~input_o\ : std_logic;
SIGNAL \readdata[0]~output_o\ : std_logic;
SIGNAL \readdata[1]~output_o\ : std_logic;
SIGNAL \readdata[2]~output_o\ : std_logic;
SIGNAL \readdata[3]~output_o\ : std_logic;
SIGNAL \readdata[4]~output_o\ : std_logic;
SIGNAL \readdata[5]~output_o\ : std_logic;
SIGNAL \readdata[6]~output_o\ : std_logic;
SIGNAL \readdata[7]~output_o\ : std_logic;
SIGNAL \readdata[8]~output_o\ : std_logic;
SIGNAL \readdata[9]~output_o\ : std_logic;
SIGNAL \readdata[10]~output_o\ : std_logic;
SIGNAL \readdata[11]~output_o\ : std_logic;
SIGNAL \readdata[12]~output_o\ : std_logic;
SIGNAL \readdata[13]~output_o\ : std_logic;
SIGNAL \readdata[14]~output_o\ : std_logic;
SIGNAL \readdata[15]~output_o\ : std_logic;
SIGNAL \readdata[16]~output_o\ : std_logic;
SIGNAL \readdata[17]~output_o\ : std_logic;
SIGNAL \readdata[18]~output_o\ : std_logic;
SIGNAL \readdata[19]~output_o\ : std_logic;
SIGNAL \readdata[20]~output_o\ : std_logic;
SIGNAL \readdata[21]~output_o\ : std_logic;
SIGNAL \readdata[22]~output_o\ : std_logic;
SIGNAL \readdata[23]~output_o\ : std_logic;
SIGNAL \readdata[24]~output_o\ : std_logic;
SIGNAL \readdata[25]~output_o\ : std_logic;
SIGNAL \readdata[26]~output_o\ : std_logic;
SIGNAL \readdata[27]~output_o\ : std_logic;
SIGNAL \readdata[28]~output_o\ : std_logic;
SIGNAL \readdata[29]~output_o\ : std_logic;
SIGNAL \readdata[30]~output_o\ : std_logic;
SIGNAL \readdata[31]~output_o\ : std_logic;
SIGNAL \EN~output_o\ : std_logic;
SIGNAL \WR_N~output_o\ : std_logic;
SIGNAL \STOP~output_o\ : std_logic;
SIGNAL \BAUD_RATE[0]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[1]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[2]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[3]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[4]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[5]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[6]~output_o\ : std_logic;
SIGNAL \BAUD_RATE[7]~output_o\ : std_logic;
SIGNAL \WR_BYTE[0]~output_o\ : std_logic;
SIGNAL \WR_BYTE[1]~output_o\ : std_logic;
SIGNAL \WR_BYTE[2]~output_o\ : std_logic;
SIGNAL \WR_BYTE[3]~output_o\ : std_logic;
SIGNAL \WR_BYTE[4]~output_o\ : std_logic;
SIGNAL \WR_BYTE[5]~output_o\ : std_logic;
SIGNAL \WR_BYTE[6]~output_o\ : std_logic;
SIGNAL \WR_BYTE[7]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \address[2]~input_o\ : std_logic;
SIGNAL \address[1]~input_o\ : std_logic;
SIGNAL \RST~input_o\ : std_logic;
SIGNAL \address[0]~input_o\ : std_logic;
SIGNAL \MODE~12_combout\ : std_logic;
SIGNAL \MODE~16_combout\ : std_logic;
SIGNAL \MODE.mRX_DATA~q\ : std_logic;
SIGNAL \chipselect~input_o\ : std_logic;
SIGNAL \RD_BYTE[0]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~50_combout\ : std_logic;
SIGNAL \writedata[1]~input_o\ : std_logic;
SIGNAL \writedata[31]~input_o\ : std_logic;
SIGNAL \wr~input_o\ : std_logic;
SIGNAL \fifo_rx_data[0][0]~11_combout\ : std_logic;
SIGNAL \MODE~9_combout\ : std_logic;
SIGNAL \MODE~14_combout\ : std_logic;
SIGNAL \MODE~15_combout\ : std_logic;
SIGNAL \MODE.mTFR_CMD_FIFO~q\ : std_logic;
SIGNAL \fifo_tfr_cmd_index[0]~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_index_int~2_combout\ : std_logic;
SIGNAL \writedata[2]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd_index_int~0_combout\ : std_logic;
SIGNAL \writedata[0]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd_index_int~3_combout\ : std_logic;
SIGNAL \writedata[3]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd_index_int~1_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[0]~8_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[0]~_wirecell_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][0]~5_combout\ : std_logic;
SIGNAL \DONE~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd~179_combout\ : std_logic;
SIGNAL \writedata[8]~input_o\ : std_logic;
SIGNAL \MODE~10_combout\ : std_logic;
SIGNAL \MODE~11_combout\ : std_logic;
SIGNAL \MODE.mTFR_CMD~q\ : std_logic;
SIGNAL \stop_amnts[0]~5_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~5_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~4_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~6_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][0]~21_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int[3]~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int[3]~9_combout\ : std_logic;
SIGNAL \Add2~1_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~7_combout\ : std_logic;
SIGNAL \Decoder1~13_combout\ : std_logic;
SIGNAL \Selector23~0_combout\ : std_logic;
SIGNAL \Selector119~1_combout\ : std_logic;
SIGNAL \Selector23~1_combout\ : std_logic;
SIGNAL \Selector23~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~180_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][8]~q\ : std_logic;
SIGNAL \Decoder1~12_combout\ : std_logic;
SIGNAL \Selector55~0_combout\ : std_logic;
SIGNAL \Selector55~1_combout\ : std_logic;
SIGNAL \Selector55~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][8]~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~19_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][8]~q\ : std_logic;
SIGNAL \Decoder1~11_combout\ : std_logic;
SIGNAL \Selector87~1_combout\ : std_logic;
SIGNAL \Selector87~0_combout\ : std_logic;
SIGNAL \Selector87~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][8]~8_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][8]~q\ : std_logic;
SIGNAL \Decoder1~10_combout\ : std_logic;
SIGNAL \Selector119~0_combout\ : std_logic;
SIGNAL \Selector119~2_combout\ : std_logic;
SIGNAL \Selector119~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][8]~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][8]~q\ : std_logic;
SIGNAL \Decoder1~9_combout\ : std_logic;
SIGNAL \Selector151~0_combout\ : std_logic;
SIGNAL \Selector151~1_combout\ : std_logic;
SIGNAL \Selector151~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][8]~6_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][8]~q\ : std_logic;
SIGNAL \Decoder1~8_combout\ : std_logic;
SIGNAL \Selector183~1_combout\ : std_logic;
SIGNAL \Selector183~0_combout\ : std_logic;
SIGNAL \Selector183~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][8]~13_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][8]~q\ : std_logic;
SIGNAL \Decoder1~15_combout\ : std_logic;
SIGNAL \Selector215~0_combout\ : std_logic;
SIGNAL \Selector215~1_combout\ : std_logic;
SIGNAL \Selector215~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][8]~4_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][8]~q\ : std_logic;
SIGNAL \Decoder1~14_combout\ : std_logic;
SIGNAL \Selector247~1_combout\ : std_logic;
SIGNAL \Selector247~0_combout\ : std_logic;
SIGNAL \Selector247~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][8]~11_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][8]~q\ : std_logic;
SIGNAL \Decoder1~5_combout\ : std_logic;
SIGNAL \Selector279~1_combout\ : std_logic;
SIGNAL \Selector279~0_combout\ : std_logic;
SIGNAL \Selector279~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][8]~9_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][8]~q\ : std_logic;
SIGNAL \Decoder1~4_combout\ : std_logic;
SIGNAL \Selector311~1_combout\ : std_logic;
SIGNAL \Selector311~0_combout\ : std_logic;
SIGNAL \Selector311~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][8]~1_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][8]~q\ : std_logic;
SIGNAL \Decoder1~1_combout\ : std_logic;
SIGNAL \Selector343~1_combout\ : std_logic;
SIGNAL \Selector343~0_combout\ : std_logic;
SIGNAL \Selector343~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][8]~10_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][8]~q\ : std_logic;
SIGNAL \Decoder1~0_combout\ : std_logic;
SIGNAL \Selector375~0_combout\ : std_logic;
SIGNAL \Selector375~1_combout\ : std_logic;
SIGNAL \Selector375~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][8]~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][8]~q\ : std_logic;
SIGNAL \Decoder1~3_combout\ : std_logic;
SIGNAL \Selector407~0_combout\ : std_logic;
SIGNAL \Selector407~1_combout\ : std_logic;
SIGNAL \Selector407~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][8]~5_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][8]~q\ : std_logic;
SIGNAL \Decoder1~2_combout\ : std_logic;
SIGNAL \Selector439~1_combout\ : std_logic;
SIGNAL \Selector439~0_combout\ : std_logic;
SIGNAL \Selector439~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][8]~12_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][8]~q\ : std_logic;
SIGNAL \Decoder1~7_combout\ : std_logic;
SIGNAL \Selector471~1_combout\ : std_logic;
SIGNAL \Selector471~0_combout\ : std_logic;
SIGNAL \Selector471~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][8]~7_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][8]~q\ : std_logic;
SIGNAL \Selector503~1_combout\ : std_logic;
SIGNAL \Selector503~0_combout\ : std_logic;
SIGNAL \Selector503~2_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][8]~14_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][8]~q\ : std_logic;
SIGNAL \stop_internal~feeder_combout\ : std_logic;
SIGNAL \WR_N~0_combout\ : std_logic;
SIGNAL \stop_internal~q\ : std_logic;
SIGNAL \Selector551~0_combout\ : std_logic;
SIGNAL \idle_internal~0_combout\ : std_logic;
SIGNAL \STATE.sSTOP~q\ : std_logic;
SIGNAL \STATE.sIDLE~0_combout\ : std_logic;
SIGNAL \stop_amnts[0]~17_combout\ : std_logic;
SIGNAL \stop_amnts[0]~6_combout\ : std_logic;
SIGNAL \stop_amnts[1]~8_cout\ : std_logic;
SIGNAL \stop_amnts[1]~9_combout\ : std_logic;
SIGNAL \stop_amnts[3]~11_combout\ : std_logic;
SIGNAL \stop_amnts[3]~12_combout\ : std_logic;
SIGNAL \stop_amnts[1]~10\ : std_logic;
SIGNAL \stop_amnts[2]~13_combout\ : std_logic;
SIGNAL \stop_amnts[2]~14\ : std_logic;
SIGNAL \stop_amnts[3]~15_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \STATE~10_combout\ : std_logic;
SIGNAL \STATE~11_combout\ : std_logic;
SIGNAL \STATE.sIDLE~q\ : std_logic;
SIGNAL \Selector549~0_combout\ : std_logic;
SIGNAL \Selector549~1_combout\ : std_logic;
SIGNAL \STATE.sSETTING~q\ : std_logic;
SIGNAL \STATE.sWAITING~feeder_combout\ : std_logic;
SIGNAL \STATE.sWAITING~q\ : std_logic;
SIGNAL \rd~input_o\ : std_logic;
SIGNAL \fifo_rx_data~8_combout\ : std_logic;
SIGNAL \MODE~13_combout\ : std_logic;
SIGNAL \MODE.mRX_DATA_FIFO~q\ : std_logic;
SIGNAL \fifo_rx_data~9_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[2]~7_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[2]~16_combout\ : std_logic;
SIGNAL \fifo_rx_data~7_combout\ : std_logic;
SIGNAL \p_main~0_combout\ : std_logic;
SIGNAL \Add1~1_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_int~8_combout\ : std_logic;
SIGNAL \Decoder1~6_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~182_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][10]~202_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][2]~17_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][0]~50_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][0]~51_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~186_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~187_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][5]~38_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][5]~39_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~200_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~201_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][5]~47_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][5]~48_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~184_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~185_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][2]~35_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][2]~36_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~198_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~199_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][2]~44_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][2]~45_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~181_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~183_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][4]~32_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][4]~33_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~203_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~204_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][4]~53_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][4]~54_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~188_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~189_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][4]~41_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][4]~42_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~194_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~195_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][4]~62_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][4]~63_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~209_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~210_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][4]~26_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][4]~27_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~192_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~193_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][2]~56_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][2]~57_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~207_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~208_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][4]~18_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][4]~20_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~190_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~191_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][2]~59_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][2]~60_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~205_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~206_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][5]~23_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][5]~24_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~196_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~197_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][1]~65_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][1]~66_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][9]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~211_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~212_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][5]~29_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][5]~30_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][9]~q\ : std_logic;
SIGNAL \wr_n_internal~q\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[0]~9\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[1]~10_combout\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[1]~11\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[2]~12_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[2]~13\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int[3]~14_combout\ : std_logic;
SIGNAL \Add5~1_combout\ : std_logic;
SIGNAL \fifo_rx_data~32_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt_int~6_combout\ : std_logic;
SIGNAL \fifo_rx_data~27_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][3]~51_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~46_combout\ : std_logic;
SIGNAL \fifo_rx_data~6_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][2]~47_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~44_combout\ : std_logic;
SIGNAL \fifo_rx_data~23_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][4]~45_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~48_combout\ : std_logic;
SIGNAL \fifo_rx_data~25_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][3]~49_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~26_combout\ : std_logic;
SIGNAL \fifo_rx_data~20_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][0]~28_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~19_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][1]~21_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~22_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][2]~157_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~24_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][7]~158_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~36_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][2]~37_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~31_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][0]~33_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~29_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][4]~30_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~34_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][1]~35_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~42_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][1]~43_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~38_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][1]~39_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~40_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][3]~41_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][0]~q\ : std_logic;
SIGNAL \fifo_rx_data~4_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][0]~10_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][0]~q\ : std_logic;
SIGNAL \errors_tot_int~0_combout\ : std_logic;
SIGNAL \NO_ACK~input_o\ : std_logic;
SIGNAL \MODE~17_combout\ : std_logic;
SIGNAL \MODE.mSTATUS~q\ : std_logic;
SIGNAL \errors_tot_int[0]~1_combout\ : std_logic;
SIGNAL \errors_tot_int[0]~2_combout\ : std_logic;
SIGNAL \errors_tot[0]~feeder_combout\ : std_logic;
SIGNAL \MODE~18_combout\ : std_logic;
SIGNAL \MODE.mCTRL~q\ : std_logic;
SIGNAL \writedata[9]~input_o\ : std_logic;
SIGNAL \standard_mode~2_combout\ : std_logic;
SIGNAL \standard_mode~3_combout\ : std_logic;
SIGNAL \fast_mode~0_combout\ : std_logic;
SIGNAL \fast_mode~q\ : std_logic;
SIGNAL \Selector547~1_combout\ : std_logic;
SIGNAL \Selector547~2_combout\ : std_logic;
SIGNAL \fifo_rx_data_amnt[0]~feeder_combout\ : std_logic;
SIGNAL \Selector547~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~49_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~37_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][1]~16_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~46_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~34_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~43_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~31_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~52_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~40_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~61_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~25_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~55_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~15_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][0]~q\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~58_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~22_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][0]~q\ : std_logic;
SIGNAL \Add4~1_combout\ : std_logic;
SIGNAL \Selector547~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~64_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][0]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~28_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][0]~q\ : std_logic;
SIGNAL \Selector547~4_combout\ : std_logic;
SIGNAL \Selector547~5_combout\ : std_logic;
SIGNAL \Selector547~6_combout\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Selector547~9_combout\ : std_logic;
SIGNAL \Selector547~10_combout\ : std_logic;
SIGNAL \Selector547~7_combout\ : std_logic;
SIGNAL \Selector547~8_combout\ : std_logic;
SIGNAL \Selector547~11_combout\ : std_logic;
SIGNAL \Selector547~12_combout\ : std_logic;
SIGNAL \Selector547~13_combout\ : std_logic;
SIGNAL \readdata[0]~0_combout\ : std_logic;
SIGNAL \readdata[0]~reg0_q\ : std_logic;
SIGNAL \Selector546~0_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \RD_BYTE[1]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~66_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~55_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~59_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~62_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~63_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~53_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~56_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~61_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~64_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~52_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~57_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~60_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~65_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~54_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~58_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][1]~q\ : std_logic;
SIGNAL \fifo_rx_data~12_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][1]~q\ : std_logic;
SIGNAL \Selector546~1_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~69_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~76_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~73_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~81_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~68_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~75_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~72_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~80_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~67_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~79_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~71_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~78_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~70_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~77_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][1]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~74_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][1]~q\ : std_logic;
SIGNAL \Selector546~4_combout\ : std_logic;
SIGNAL \Selector546~5_combout\ : std_logic;
SIGNAL \Selector546~2_combout\ : std_logic;
SIGNAL \Selector546~3_combout\ : std_logic;
SIGNAL \Selector546~6_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~82_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][1]~q\ : std_logic;
SIGNAL \Selector546~8_combout\ : std_logic;
SIGNAL \Selector546~10_combout\ : std_logic;
SIGNAL \Selector546~11_combout\ : std_logic;
SIGNAL \Selector546~7_combout\ : std_logic;
SIGNAL \Selector546~9_combout\ : std_logic;
SIGNAL \Selector546~12_combout\ : std_logic;
SIGNAL \Selector546~13_combout\ : std_logic;
SIGNAL \Selector546~14_combout\ : std_logic;
SIGNAL \readdata[1]~reg0_q\ : std_logic;
SIGNAL \fifo_rx_data_amnt[2]~feeder_combout\ : std_logic;
SIGNAL \Selector545~0_combout\ : std_logic;
SIGNAL \Add9~1_combout\ : std_logic;
SIGNAL \errors_tot[2]~feeder_combout\ : std_logic;
SIGNAL \Selector545~1_combout\ : std_logic;
SIGNAL \RD_BYTE[2]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~81_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~78_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~79_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~80_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~74_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~72_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~71_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~73_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~70_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~67_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~68_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~69_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~77_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~76_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~75_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][2]~q\ : std_logic;
SIGNAL \fifo_rx_data~13_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~93_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~85_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][2]~feeder_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~91_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~83_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~89_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~97_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~88_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~96_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~92_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~84_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~94_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~86_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~87_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~95_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][2]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~90_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][2]~q\ : std_logic;
SIGNAL \Selector545~4_combout\ : std_logic;
SIGNAL \Selector545~5_combout\ : std_logic;
SIGNAL \Selector545~6_combout\ : std_logic;
SIGNAL \Selector545~7_combout\ : std_logic;
SIGNAL \Selector545~8_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~98_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][2]~q\ : std_logic;
SIGNAL \Selector545~9_combout\ : std_logic;
SIGNAL \Selector545~10_combout\ : std_logic;
SIGNAL \Selector545~2_combout\ : std_logic;
SIGNAL \Selector545~3_combout\ : std_logic;
SIGNAL \Selector545~11_combout\ : std_logic;
SIGNAL \Selector545~12_combout\ : std_logic;
SIGNAL \Selector545~13_combout\ : std_logic;
SIGNAL \readdata[2]~reg0_q\ : std_logic;
SIGNAL \RD_BYTE[3]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~96_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~89_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~85_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~92_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~94_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~86_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~83_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~90_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~93_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~87_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~82_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~91_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~95_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~88_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~84_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][3]~q\ : std_logic;
SIGNAL \fifo_rx_data~14_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][3]~q\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \baud_rate_now[3]~feeder_combout\ : std_logic;
SIGNAL \Selector544~1_combout\ : std_logic;
SIGNAL \Selector544~2_combout\ : std_logic;
SIGNAL \Selector544~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~105_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~101_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~104_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~100_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~103_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~99_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~106_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][3]~q\ : std_logic;
SIGNAL \Selector544~5_combout\ : std_logic;
SIGNAL \Selector544~6_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~102_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][3]~q\ : std_logic;
SIGNAL \Selector544~3_combout\ : std_logic;
SIGNAL \Selector544~4_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~109_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~113_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~108_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~111_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~107_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~112_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~110_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][3]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~114_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][3]~q\ : std_logic;
SIGNAL \Selector544~9_combout\ : std_logic;
SIGNAL \Selector544~10_combout\ : std_logic;
SIGNAL \Selector544~7_combout\ : std_logic;
SIGNAL \Selector544~8_combout\ : std_logic;
SIGNAL \Selector544~11_combout\ : std_logic;
SIGNAL \Selector544~12_combout\ : std_logic;
SIGNAL \Selector544~13_combout\ : std_logic;
SIGNAL \readdata[3]~reg0_q\ : std_logic;
SIGNAL \fifo_rx_data_index[0]~0_combout\ : std_logic;
SIGNAL \Selector543~0_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd_amnt_before_int[0]~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \errors_index_int~0_combout\ : std_logic;
SIGNAL \RD_BYTE[4]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~111_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~109_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~108_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~110_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~100_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~97_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~98_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~99_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~104_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~102_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~101_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~103_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~107_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~105_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~106_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][4]~q\ : std_logic;
SIGNAL \fifo_rx_data~15_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][4]~q\ : std_logic;
SIGNAL \Selector543~1_combout\ : std_logic;
SIGNAL \writedata[4]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd~121_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~117_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~125_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~129_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~120_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~116_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~124_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~128_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~119_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~115_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~123_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~127_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~122_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][4]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~118_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][4]~q\ : std_logic;
SIGNAL \Selector543~2_combout\ : std_logic;
SIGNAL \Selector543~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~126_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][4]~q\ : std_logic;
SIGNAL \Selector543~6_combout\ : std_logic;
SIGNAL \Selector543~7_combout\ : std_logic;
SIGNAL \Selector543~4_combout\ : std_logic;
SIGNAL \Selector543~5_combout\ : std_logic;
SIGNAL \Selector543~8_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~130_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][4]~q\ : std_logic;
SIGNAL \Selector543~9_combout\ : std_logic;
SIGNAL \Selector543~10_combout\ : std_logic;
SIGNAL \Selector543~11_combout\ : std_logic;
SIGNAL \Selector543~12_combout\ : std_logic;
SIGNAL \readdata[4]~reg0_q\ : std_logic;
SIGNAL \fifo_rx_data_index[1]~feeder_combout\ : std_logic;
SIGNAL \Selector542~0_combout\ : std_logic;
SIGNAL \RD_BYTE[5]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~126_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~115_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~119_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~122_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~123_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~113_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~116_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~121_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~124_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~112_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~117_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~120_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~125_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~114_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~118_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][5]~q\ : std_logic;
SIGNAL \fifo_rx_data~16_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][5]~q\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \errors_index_int~1_combout\ : std_logic;
SIGNAL \Selector542~1_combout\ : std_logic;
SIGNAL \writedata[5]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd~141_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~133_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~139_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~131_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~137_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~145_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~135_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~143_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~140_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~132_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~142_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~134_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][5]~q\ : std_logic;
SIGNAL \Selector542~2_combout\ : std_logic;
SIGNAL \Selector542~3_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~136_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~144_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~138_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][5]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~146_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][5]~q\ : std_logic;
SIGNAL \Selector542~9_combout\ : std_logic;
SIGNAL \Selector542~10_combout\ : std_logic;
SIGNAL \Selector542~6_combout\ : std_logic;
SIGNAL \Selector542~7_combout\ : std_logic;
SIGNAL \Selector542~4_combout\ : std_logic;
SIGNAL \Selector542~5_combout\ : std_logic;
SIGNAL \Selector542~8_combout\ : std_logic;
SIGNAL \Selector542~11_combout\ : std_logic;
SIGNAL \Selector542~12_combout\ : std_logic;
SIGNAL \Selector542~13_combout\ : std_logic;
SIGNAL \readdata[5]~reg0_q\ : std_logic;
SIGNAL \fifo_rx_data_index[2]~feeder_combout\ : std_logic;
SIGNAL \Selector541~0_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \RD_BYTE[6]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~141_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~138_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~139_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~140_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~134_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~132_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~131_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~133_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~130_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~127_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~128_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~129_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~137_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~136_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~135_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][6]~q\ : std_logic;
SIGNAL \fifo_rx_data~17_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][6]~q\ : std_logic;
SIGNAL \Selector541~1_combout\ : std_logic;
SIGNAL \writedata[6]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd~157_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~149_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~156_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~148_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~155_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~147_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~158_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~150_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~153_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~161_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~152_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~160_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~151_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~159_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~154_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][6]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~162_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][6]~q\ : std_logic;
SIGNAL \Selector541~9_combout\ : std_logic;
SIGNAL \Selector541~10_combout\ : std_logic;
SIGNAL \Selector541~2_combout\ : std_logic;
SIGNAL \Selector541~3_combout\ : std_logic;
SIGNAL \Selector541~4_combout\ : std_logic;
SIGNAL \Selector541~5_combout\ : std_logic;
SIGNAL \Selector541~6_combout\ : std_logic;
SIGNAL \Selector541~7_combout\ : std_logic;
SIGNAL \Selector541~8_combout\ : std_logic;
SIGNAL \Selector541~11_combout\ : std_logic;
SIGNAL \Selector541~12_combout\ : std_logic;
SIGNAL \readdata[6]~reg0_q\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add8~1_combout\ : std_logic;
SIGNAL \errors_index[3]~feeder_combout\ : std_logic;
SIGNAL \Selector540~1_combout\ : std_logic;
SIGNAL \fifo_rx_data_index[3]~feeder_combout\ : std_logic;
SIGNAL \Selector540~0_combout\ : std_logic;
SIGNAL \RD_BYTE[7]~input_o\ : std_logic;
SIGNAL \fifo_rx_data~156_combout\ : std_logic;
SIGNAL \fifo_rx_data[15][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~149_combout\ : std_logic;
SIGNAL \fifo_rx_data[14][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~145_combout\ : std_logic;
SIGNAL \fifo_rx_data[13][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~152_combout\ : std_logic;
SIGNAL \fifo_rx_data[12][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~154_combout\ : std_logic;
SIGNAL \fifo_rx_data[11][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~146_combout\ : std_logic;
SIGNAL \fifo_rx_data[10][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~143_combout\ : std_logic;
SIGNAL \fifo_rx_data[9][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~150_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][7]~feeder_combout\ : std_logic;
SIGNAL \fifo_rx_data[8][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~153_combout\ : std_logic;
SIGNAL \fifo_rx_data[7][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~147_combout\ : std_logic;
SIGNAL \fifo_rx_data[6][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~142_combout\ : std_logic;
SIGNAL \fifo_rx_data[5][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~151_combout\ : std_logic;
SIGNAL \fifo_rx_data[4][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~155_combout\ : std_logic;
SIGNAL \fifo_rx_data[3][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~148_combout\ : std_logic;
SIGNAL \fifo_rx_data[2][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~144_combout\ : std_logic;
SIGNAL \fifo_rx_data[1][7]~q\ : std_logic;
SIGNAL \fifo_rx_data~18_combout\ : std_logic;
SIGNAL \fifo_rx_data[0][7]~q\ : std_logic;
SIGNAL \writedata[7]~input_o\ : std_logic;
SIGNAL \fifo_tfr_cmd~169_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[15][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~165_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[14][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~173_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[13][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~177_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[12][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~168_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[11][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~164_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[10][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~172_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[9][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~176_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[8][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~167_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[7][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~163_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[6][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~171_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[5][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~175_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[4][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~170_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[3][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~166_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[2][7]~q\ : std_logic;
SIGNAL \Selector540~2_combout\ : std_logic;
SIGNAL \Selector540~3_combout\ : std_logic;
SIGNAL \Selector540~9_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd~174_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[1][7]~q\ : std_logic;
SIGNAL \fifo_tfr_cmd~178_combout\ : std_logic;
SIGNAL \fifo_tfr_cmd[0][7]~q\ : std_logic;
SIGNAL \Selector540~10_combout\ : std_logic;
SIGNAL \Selector540~4_combout\ : std_logic;
SIGNAL \Selector540~5_combout\ : std_logic;
SIGNAL \Selector540~6_combout\ : std_logic;
SIGNAL \Selector540~7_combout\ : std_logic;
SIGNAL \Selector540~8_combout\ : std_logic;
SIGNAL \Selector540~11_combout\ : std_logic;
SIGNAL \Selector540~12_combout\ : std_logic;
SIGNAL \Selector540~13_combout\ : std_logic;
SIGNAL \readdata[7]~reg0_q\ : std_logic;
SIGNAL \IDLE~input_o\ : std_logic;
SIGNAL \idle_internal~q\ : std_logic;
SIGNAL \Selector539~21_combout\ : std_logic;
SIGNAL \Selector539~29_combout\ : std_logic;
SIGNAL \Selector539~30_combout\ : std_logic;
SIGNAL \Selector539~22_combout\ : std_logic;
SIGNAL \Selector539~23_combout\ : std_logic;
SIGNAL \Selector539~26_combout\ : std_logic;
SIGNAL \Selector539~27_combout\ : std_logic;
SIGNAL \Selector539~24_combout\ : std_logic;
SIGNAL \Selector539~25_combout\ : std_logic;
SIGNAL \Selector539~28_combout\ : std_logic;
SIGNAL \Selector539~31_combout\ : std_logic;
SIGNAL \Selector539~14_combout\ : std_logic;
SIGNAL \Selector539~15_combout\ : std_logic;
SIGNAL \Selector539~12_combout\ : std_logic;
SIGNAL \Selector539~13_combout\ : std_logic;
SIGNAL \Selector539~16_combout\ : std_logic;
SIGNAL \Selector539~17_combout\ : std_logic;
SIGNAL \Selector539~18_combout\ : std_logic;
SIGNAL \Selector539~10_combout\ : std_logic;
SIGNAL \Selector539~11_combout\ : std_logic;
SIGNAL \Selector539~19_combout\ : std_logic;
SIGNAL \fifo_rx_data_index_int~2_combout\ : std_logic;
SIGNAL \fifo_rx_data_index_int~1_combout\ : std_logic;
SIGNAL \fifo_rx_data_index_int~0_combout\ : std_logic;
SIGNAL \Selector539~7_combout\ : std_logic;
SIGNAL \Selector539~8_combout\ : std_logic;
SIGNAL \Selector539~0_combout\ : std_logic;
SIGNAL \Selector539~1_combout\ : std_logic;
SIGNAL \fifo_rx_data_index_int~3_combout\ : std_logic;
SIGNAL \Selector539~2_combout\ : std_logic;
SIGNAL \Selector539~3_combout\ : std_logic;
SIGNAL \Selector539~4_combout\ : std_logic;
SIGNAL \Selector539~5_combout\ : std_logic;
SIGNAL \Selector539~6_combout\ : std_logic;
SIGNAL \Selector539~9_combout\ : std_logic;
SIGNAL \Selector539~20_combout\ : std_logic;
SIGNAL \Selector539~32_combout\ : std_logic;
SIGNAL \readdata[8]~reg0_q\ : std_logic;
SIGNAL \done_internal~q\ : std_logic;
SIGNAL \Selector538~21_combout\ : std_logic;
SIGNAL \Selector538~22_combout\ : std_logic;
SIGNAL \Selector538~23_combout\ : std_logic;
SIGNAL \Selector538~29_combout\ : std_logic;
SIGNAL \Selector538~30_combout\ : std_logic;
SIGNAL \Selector538~26_combout\ : std_logic;
SIGNAL \Selector538~27_combout\ : std_logic;
SIGNAL \Selector538~24_combout\ : std_logic;
SIGNAL \Selector538~25_combout\ : std_logic;
SIGNAL \Selector538~28_combout\ : std_logic;
SIGNAL \Selector538~31_combout\ : std_logic;
SIGNAL \Selector538~17_combout\ : std_logic;
SIGNAL \Selector538~18_combout\ : std_logic;
SIGNAL \Selector538~12_combout\ : std_logic;
SIGNAL \Selector538~13_combout\ : std_logic;
SIGNAL \Selector538~14_combout\ : std_logic;
SIGNAL \Selector538~15_combout\ : std_logic;
SIGNAL \Selector538~16_combout\ : std_logic;
SIGNAL \Selector538~10_combout\ : std_logic;
SIGNAL \Selector538~11_combout\ : std_logic;
SIGNAL \Selector538~19_combout\ : std_logic;
SIGNAL \Selector538~7_combout\ : std_logic;
SIGNAL \Selector538~8_combout\ : std_logic;
SIGNAL \Selector538~0_combout\ : std_logic;
SIGNAL \Selector538~1_combout\ : std_logic;
SIGNAL \Selector538~2_combout\ : std_logic;
SIGNAL \Selector538~3_combout\ : std_logic;
SIGNAL \Selector538~4_combout\ : std_logic;
SIGNAL \Selector538~5_combout\ : std_logic;
SIGNAL \Selector538~6_combout\ : std_logic;
SIGNAL \Selector538~9_combout\ : std_logic;
SIGNAL \Selector538~20_combout\ : std_logic;
SIGNAL \Selector538~32_combout\ : std_logic;
SIGNAL \readdata[9]~reg0_q\ : std_logic;
SIGNAL \no_ack_internal~0_combout\ : std_logic;
SIGNAL \no_ack_internal~q\ : std_logic;
SIGNAL \Mux45~7_combout\ : std_logic;
SIGNAL \Mux45~8_combout\ : std_logic;
SIGNAL \Mux45~0_combout\ : std_logic;
SIGNAL \Mux45~1_combout\ : std_logic;
SIGNAL \Mux45~2_combout\ : std_logic;
SIGNAL \Mux45~3_combout\ : std_logic;
SIGNAL \Mux45~4_combout\ : std_logic;
SIGNAL \Mux45~5_combout\ : std_logic;
SIGNAL \Mux45~6_combout\ : std_logic;
SIGNAL \Mux45~9_combout\ : std_logic;
SIGNAL \Mux61~0_combout\ : std_logic;
SIGNAL \Mux61~1_combout\ : std_logic;
SIGNAL \Mux61~7_combout\ : std_logic;
SIGNAL \Mux61~8_combout\ : std_logic;
SIGNAL \Mux61~2_combout\ : std_logic;
SIGNAL \Mux61~3_combout\ : std_logic;
SIGNAL \Mux61~4_combout\ : std_logic;
SIGNAL \Mux61~5_combout\ : std_logic;
SIGNAL \Mux61~6_combout\ : std_logic;
SIGNAL \Mux61~9_combout\ : std_logic;
SIGNAL \Selector537~0_combout\ : std_logic;
SIGNAL \Selector537~1_combout\ : std_logic;
SIGNAL \readdata[10]~reg0_q\ : std_logic;
SIGNAL \Selector536~10_combout\ : std_logic;
SIGNAL \Selector536~11_combout\ : std_logic;
SIGNAL \Selector536~17_combout\ : std_logic;
SIGNAL \Selector536~18_combout\ : std_logic;
SIGNAL \Selector536~14_combout\ : std_logic;
SIGNAL \Selector536~15_combout\ : std_logic;
SIGNAL \Selector536~12_combout\ : std_logic;
SIGNAL \Selector536~13_combout\ : std_logic;
SIGNAL \Selector536~16_combout\ : std_logic;
SIGNAL \Selector536~19_combout\ : std_logic;
SIGNAL \MODE~19_combout\ : std_logic;
SIGNAL \MODE~20_combout\ : std_logic;
SIGNAL \MODE.mOP_CNT~q\ : std_logic;
SIGNAL \readdata[15]~1_combout\ : std_logic;
SIGNAL \Selector536~20_combout\ : std_logic;
SIGNAL \Selector536~21_combout\ : std_logic;
SIGNAL \Selector536~7_combout\ : std_logic;
SIGNAL \Selector536~8_combout\ : std_logic;
SIGNAL \Selector536~0_combout\ : std_logic;
SIGNAL \Selector536~1_combout\ : std_logic;
SIGNAL \Selector536~2_combout\ : std_logic;
SIGNAL \Selector536~3_combout\ : std_logic;
SIGNAL \Selector536~4_combout\ : std_logic;
SIGNAL \Selector536~5_combout\ : std_logic;
SIGNAL \Selector536~6_combout\ : std_logic;
SIGNAL \Selector536~9_combout\ : std_logic;
SIGNAL \Selector536~22_combout\ : std_logic;
SIGNAL \readdata[11]~reg0_q\ : std_logic;
SIGNAL \Selector535~7_combout\ : std_logic;
SIGNAL \Selector535~8_combout\ : std_logic;
SIGNAL \Selector535~0_combout\ : std_logic;
SIGNAL \Selector535~1_combout\ : std_logic;
SIGNAL \Selector535~2_combout\ : std_logic;
SIGNAL \Selector535~3_combout\ : std_logic;
SIGNAL \Selector535~4_combout\ : std_logic;
SIGNAL \Selector535~5_combout\ : std_logic;
SIGNAL \Selector535~6_combout\ : std_logic;
SIGNAL \Selector535~9_combout\ : std_logic;
SIGNAL \Selector535~10_combout\ : std_logic;
SIGNAL \Selector535~11_combout\ : std_logic;
SIGNAL \Selector535~12_combout\ : std_logic;
SIGNAL \Selector535~13_combout\ : std_logic;
SIGNAL \Selector535~14_combout\ : std_logic;
SIGNAL \Selector535~15_combout\ : std_logic;
SIGNAL \Selector535~16_combout\ : std_logic;
SIGNAL \Selector535~17_combout\ : std_logic;
SIGNAL \Selector535~18_combout\ : std_logic;
SIGNAL \Selector535~19_combout\ : std_logic;
SIGNAL \Selector535~20_combout\ : std_logic;
SIGNAL \readdata[12]~reg0_q\ : std_logic;
SIGNAL \Selector534~17_combout\ : std_logic;
SIGNAL \Selector534~18_combout\ : std_logic;
SIGNAL \Selector534~10_combout\ : std_logic;
SIGNAL \Selector534~11_combout\ : std_logic;
SIGNAL \Selector534~12_combout\ : std_logic;
SIGNAL \Selector534~13_combout\ : std_logic;
SIGNAL \Selector534~14_combout\ : std_logic;
SIGNAL \Selector534~15_combout\ : std_logic;
SIGNAL \Selector534~16_combout\ : std_logic;
SIGNAL \Selector534~19_combout\ : std_logic;
SIGNAL \Selector534~0_combout\ : std_logic;
SIGNAL \Selector534~1_combout\ : std_logic;
SIGNAL \Selector534~7_combout\ : std_logic;
SIGNAL \Selector534~8_combout\ : std_logic;
SIGNAL \Selector534~2_combout\ : std_logic;
SIGNAL \Selector534~3_combout\ : std_logic;
SIGNAL \Selector534~4_combout\ : std_logic;
SIGNAL \Selector534~5_combout\ : std_logic;
SIGNAL \Selector534~6_combout\ : std_logic;
SIGNAL \Selector534~9_combout\ : std_logic;
SIGNAL \Selector534~20_combout\ : std_logic;
SIGNAL \readdata[13]~reg0_q\ : std_logic;
SIGNAL \Selector533~12_combout\ : std_logic;
SIGNAL \Selector533~13_combout\ : std_logic;
SIGNAL \Selector533~14_combout\ : std_logic;
SIGNAL \Selector533~15_combout\ : std_logic;
SIGNAL \Selector533~16_combout\ : std_logic;
SIGNAL \Selector533~17_combout\ : std_logic;
SIGNAL \Selector533~18_combout\ : std_logic;
SIGNAL \Selector533~10_combout\ : std_logic;
SIGNAL \Selector533~11_combout\ : std_logic;
SIGNAL \Selector533~19_combout\ : std_logic;
SIGNAL \Selector533~0_combout\ : std_logic;
SIGNAL \Selector533~1_combout\ : std_logic;
SIGNAL \Selector533~7_combout\ : std_logic;
SIGNAL \Selector533~8_combout\ : std_logic;
SIGNAL \Selector533~4_combout\ : std_logic;
SIGNAL \Selector533~5_combout\ : std_logic;
SIGNAL \Selector533~2_combout\ : std_logic;
SIGNAL \Selector533~3_combout\ : std_logic;
SIGNAL \Selector533~6_combout\ : std_logic;
SIGNAL \Selector533~9_combout\ : std_logic;
SIGNAL \Selector533~20_combout\ : std_logic;
SIGNAL \readdata[14]~reg0_q\ : std_logic;
SIGNAL \Selector532~0_combout\ : std_logic;
SIGNAL \Selector532~1_combout\ : std_logic;
SIGNAL \Selector532~7_combout\ : std_logic;
SIGNAL \Selector532~8_combout\ : std_logic;
SIGNAL \Selector532~2_combout\ : std_logic;
SIGNAL \Selector532~3_combout\ : std_logic;
SIGNAL \Selector532~4_combout\ : std_logic;
SIGNAL \Selector532~5_combout\ : std_logic;
SIGNAL \Selector532~6_combout\ : std_logic;
SIGNAL \Selector532~9_combout\ : std_logic;
SIGNAL \Selector532~17_combout\ : std_logic;
SIGNAL \Selector532~18_combout\ : std_logic;
SIGNAL \Selector532~12_combout\ : std_logic;
SIGNAL \Selector532~13_combout\ : std_logic;
SIGNAL \Selector532~14_combout\ : std_logic;
SIGNAL \Selector532~15_combout\ : std_logic;
SIGNAL \Selector532~16_combout\ : std_logic;
SIGNAL \Selector532~10_combout\ : std_logic;
SIGNAL \Selector532~11_combout\ : std_logic;
SIGNAL \Selector532~19_combout\ : std_logic;
SIGNAL \Selector532~20_combout\ : std_logic;
SIGNAL \readdata[15]~reg0_q\ : std_logic;
SIGNAL \Selector531~7_combout\ : std_logic;
SIGNAL \Selector531~8_combout\ : std_logic;
SIGNAL \Selector531~2_combout\ : std_logic;
SIGNAL \Selector531~3_combout\ : std_logic;
SIGNAL \Selector531~4_combout\ : std_logic;
SIGNAL \Selector531~5_combout\ : std_logic;
SIGNAL \Selector531~6_combout\ : std_logic;
SIGNAL \Selector531~0_combout\ : std_logic;
SIGNAL \Selector531~1_combout\ : std_logic;
SIGNAL \Selector531~9_combout\ : std_logic;
SIGNAL \Selector531~10_combout\ : std_logic;
SIGNAL \readdata[16]~reg0_q\ : std_logic;
SIGNAL \Selector530~7_combout\ : std_logic;
SIGNAL \Selector530~8_combout\ : std_logic;
SIGNAL \Selector530~0_combout\ : std_logic;
SIGNAL \Selector530~1_combout\ : std_logic;
SIGNAL \Selector530~2_combout\ : std_logic;
SIGNAL \Selector530~3_combout\ : std_logic;
SIGNAL \Selector530~4_combout\ : std_logic;
SIGNAL \Selector530~5_combout\ : std_logic;
SIGNAL \Selector530~6_combout\ : std_logic;
SIGNAL \Selector530~9_combout\ : std_logic;
SIGNAL \Selector530~10_combout\ : std_logic;
SIGNAL \readdata[17]~reg0_q\ : std_logic;
SIGNAL \WR_N~reg0_q\ : std_logic;
SIGNAL \STOP~reg0feeder_combout\ : std_logic;
SIGNAL \STOP~reg0_q\ : std_logic;
SIGNAL \BAUD_RATE[0]~0_combout\ : std_logic;
SIGNAL \BAUD_RATE[0]~reg0_q\ : std_logic;
SIGNAL \BAUD_RATE[2]~1_combout\ : std_logic;
SIGNAL \BAUD_RATE[2]~reg0_q\ : std_logic;
SIGNAL \BAUD_RATE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \BAUD_RATE[3]~reg0_q\ : std_logic;
SIGNAL \BAUD_RATE[7]~2_combout\ : std_logic;
SIGNAL \BAUD_RATE[7]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[0]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[0]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[1]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[1]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[2]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[3]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[3]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[4]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[4]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[5]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[5]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[6]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[6]~reg0_q\ : std_logic;
SIGNAL \WR_BYTE[7]~reg0feeder_combout\ : std_logic;
SIGNAL \WR_BYTE[7]~reg0_q\ : std_logic;
SIGNAL fifo_tfr_cmd_amnt_int : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_rx_data_amnt_int : std_logic_vector(3 DOWNTO 0);
SIGNAL errors_tot_int : std_logic_vector(3 DOWNTO 0);
SIGNAL errors_index_int : std_logic_vector(3 DOWNTO 0);
SIGNAL stop_amnts : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_rx_data_amnt : std_logic_vector(3 DOWNTO 0);
SIGNAL errors_tot : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_tfr_cmd_amnt : std_logic_vector(3 DOWNTO 0);
SIGNAL baud_rate_now : std_logic_vector(7 DOWNTO 0);
SIGNAL fifo_rx_data_index : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_tfr_cmd_index : std_logic_vector(3 DOWNTO 0);
SIGNAL errors_index : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_rx_data_index_int : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_tfr_cmd_index_int : std_logic_vector(3 DOWNTO 0);
SIGNAL fifo_tfr_cmd_amnt_before_int : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_RST~input_o\ : std_logic;
SIGNAL \ALT_INV_chipselect~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_CLK <= CLK;
ww_RST <= RST;
ww_chipselect <= chipselect;
ww_wr <= wr;
ww_rd <= rd;
ww_address <= address;
ww_writedata <= writedata;
readdata <= ww_readdata;
ww_IDLE <= IDLE;
ww_DONE <= DONE;
ww_NO_ACK <= NO_ACK;
ww_RD_BYTE <= RD_BYTE;
EN <= ww_EN;
WR_N <= ww_WR_N;
STOP <= ww_STOP;
BAUD_RATE <= ww_BAUD_RATE;
WR_BYTE <= ww_WR_BYTE;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_RST~input_o\ <= NOT \RST~input_o\;
\ALT_INV_chipselect~input_o\ <= NOT \chipselect~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X29_Y73_N2
\readdata[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[0]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[0]~output_o\);

-- Location: IOOBUF_X62_Y73_N16
\readdata[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[1]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[1]~output_o\);

-- Location: IOOBUF_X62_Y73_N23
\readdata[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[2]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\readdata[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[3]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[3]~output_o\);

-- Location: IOOBUF_X23_Y73_N9
\readdata[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[4]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[4]~output_o\);

-- Location: IOOBUF_X35_Y73_N16
\readdata[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[5]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[5]~output_o\);

-- Location: IOOBUF_X60_Y0_N2
\readdata[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[6]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[6]~output_o\);

-- Location: IOOBUF_X81_Y73_N9
\readdata[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[7]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[7]~output_o\);

-- Location: IOOBUF_X40_Y73_N2
\readdata[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[8]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[8]~output_o\);

-- Location: IOOBUF_X52_Y73_N23
\readdata[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[9]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[9]~output_o\);

-- Location: IOOBUF_X81_Y73_N2
\readdata[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[10]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[10]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\readdata[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[11]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[11]~output_o\);

-- Location: IOOBUF_X74_Y73_N23
\readdata[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[12]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[12]~output_o\);

-- Location: IOOBUF_X81_Y73_N23
\readdata[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[13]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[13]~output_o\);

-- Location: IOOBUF_X74_Y73_N16
\readdata[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[14]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[14]~output_o\);

-- Location: IOOBUF_X81_Y73_N16
\readdata[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[15]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[15]~output_o\);

-- Location: IOOBUF_X38_Y73_N23
\readdata[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[16]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[16]~output_o\);

-- Location: IOOBUF_X40_Y73_N9
\readdata[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \readdata[17]~reg0_q\,
	devoe => ww_devoe,
	o => \readdata[17]~output_o\);

-- Location: IOOBUF_X115_Y36_N9
\readdata[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[18]~output_o\);

-- Location: IOOBUF_X113_Y0_N9
\readdata[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[19]~output_o\);

-- Location: IOOBUF_X0_Y17_N16
\readdata[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[20]~output_o\);

-- Location: IOOBUF_X16_Y73_N16
\readdata[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[21]~output_o\);

-- Location: IOOBUF_X5_Y73_N2
\readdata[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[22]~output_o\);

-- Location: IOOBUF_X0_Y66_N23
\readdata[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[23]~output_o\);

-- Location: IOOBUF_X115_Y40_N2
\readdata[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[24]~output_o\);

-- Location: IOOBUF_X0_Y61_N23
\readdata[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[25]~output_o\);

-- Location: IOOBUF_X0_Y64_N2
\readdata[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[26]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\readdata[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[27]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\readdata[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[28]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\readdata[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[29]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\readdata[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[30]~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\readdata[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \readdata[31]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\EN~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \EN~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\WR_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_N~reg0_q\,
	devoe => ww_devoe,
	o => \WR_N~output_o\);

-- Location: IOOBUF_X54_Y73_N2
\STOP~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \STOP~reg0_q\,
	devoe => ww_devoe,
	o => \STOP~output_o\);

-- Location: IOOBUF_X58_Y73_N9
\BAUD_RATE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BAUD_RATE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \BAUD_RATE[0]~output_o\);

-- Location: IOOBUF_X23_Y0_N23
\BAUD_RATE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BAUD_RATE[1]~output_o\);

-- Location: IOOBUF_X45_Y73_N2
\BAUD_RATE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BAUD_RATE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \BAUD_RATE[2]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\BAUD_RATE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BAUD_RATE[3]~reg0_q\,
	devoe => ww_devoe,
	o => \BAUD_RATE[3]~output_o\);

-- Location: IOOBUF_X115_Y49_N9
\BAUD_RATE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BAUD_RATE[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\BAUD_RATE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \BAUD_RATE[5]~output_o\);

-- Location: IOOBUF_X0_Y18_N23
\BAUD_RATE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \BAUD_RATE[6]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\BAUD_RATE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \BAUD_RATE[7]~reg0_q\,
	devoe => ww_devoe,
	o => \BAUD_RATE[7]~output_o\);

-- Location: IOOBUF_X54_Y73_N9
\WR_BYTE[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[0]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[0]~output_o\);

-- Location: IOOBUF_X38_Y73_N9
\WR_BYTE[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[1]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[1]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\WR_BYTE[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[2]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[2]~output_o\);

-- Location: IOOBUF_X52_Y73_N2
\WR_BYTE[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[3]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[3]~output_o\);

-- Location: IOOBUF_X33_Y73_N9
\WR_BYTE[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[4]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[4]~output_o\);

-- Location: IOOBUF_X58_Y73_N23
\WR_BYTE[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[5]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[5]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\WR_BYTE[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[6]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[6]~output_o\);

-- Location: IOOBUF_X52_Y73_N16
\WR_BYTE[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \WR_BYTE[7]~reg0_q\,
	devoe => ww_devoe,
	o => \WR_BYTE[7]~output_o\);

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

-- Location: IOIBUF_X35_Y73_N22
\address[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(2),
	o => \address[2]~input_o\);

-- Location: IOIBUF_X67_Y73_N15
\address[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(1),
	o => \address[1]~input_o\);

-- Location: IOIBUF_X58_Y73_N15
\RST~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RST,
	o => \RST~input_o\);

-- Location: IOIBUF_X67_Y73_N1
\address[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_address(0),
	o => \address[0]~input_o\);

-- Location: LCCOMB_X63_Y69_N12
\MODE~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~12_combout\ = (!\RST~input_o\ & \address[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \address[0]~input_o\,
	combout => \MODE~12_combout\);

-- Location: LCCOMB_X63_Y69_N10
\MODE~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~16_combout\ = (\MODE~12_combout\ & ((\address[2]~input_o\ & (\address[1]~input_o\ & \MODE.mRX_DATA~q\)) # (!\address[2]~input_o\ & (!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \MODE.mRX_DATA~q\,
	datad => \MODE~12_combout\,
	combout => \MODE~16_combout\);

-- Location: FF_X63_Y69_N11
\MODE.mRX_DATA\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mRX_DATA~q\);

-- Location: IOIBUF_X69_Y73_N1
\chipselect~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_chipselect,
	o => \chipselect~input_o\);

-- Location: IOIBUF_X67_Y73_N22
\RD_BYTE[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(0),
	o => \RD_BYTE[0]~input_o\);

-- Location: LCCOMB_X68_Y67_N12
\fifo_rx_data~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~50_combout\ = (\RD_BYTE[0]~input_o\ & (!\chipselect~input_o\ & !\RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[0]~input_o\,
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	combout => \fifo_rx_data~50_combout\);

-- Location: IOIBUF_X47_Y73_N1
\writedata[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(1),
	o => \writedata[1]~input_o\);

-- Location: IOIBUF_X60_Y73_N8
\writedata[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(31),
	o => \writedata[31]~input_o\);

-- Location: IOIBUF_X60_Y73_N1
\wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wr,
	o => \wr~input_o\);

-- Location: LCCOMB_X63_Y71_N22
\fifo_rx_data[0][0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[0][0]~11_combout\ = (\wr~input_o\ & \chipselect~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr~input_o\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data[0][0]~11_combout\);

-- Location: LCCOMB_X63_Y69_N20
\MODE~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~9_combout\ = (!\RST~input_o\ & (\address[1]~input_o\ & (\address[2]~input_o\ & \address[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \MODE~9_combout\);

-- Location: LCCOMB_X63_Y69_N14
\MODE~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~14_combout\ = (\RST~input_o\) # ((\address[2]~input_o\ & (\address[1]~input_o\ $ (!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \address[1]~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \MODE~14_combout\);

-- Location: LCCOMB_X62_Y67_N18
\MODE~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~15_combout\ = ((\MODE~9_combout\ & \MODE.mTFR_CMD_FIFO~q\)) # (!\MODE~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~9_combout\,
	datab => \MODE~14_combout\,
	datac => \MODE.mTFR_CMD_FIFO~q\,
	combout => \MODE~15_combout\);

-- Location: FF_X62_Y67_N19
\MODE.mTFR_CMD_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mTFR_CMD_FIFO~q\);

-- Location: LCCOMB_X63_Y67_N0
\fifo_tfr_cmd_index[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_index[0]~0_combout\ = (!\RST~input_o\ & (!\writedata[31]~input_o\ & (\fifo_rx_data[0][0]~11_combout\ & !\MODE.mTFR_CMD_FIFO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \writedata[31]~input_o\,
	datac => \fifo_rx_data[0][0]~11_combout\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd_index[0]~0_combout\);

-- Location: FF_X60_Y67_N3
\fifo_tfr_cmd_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \writedata[1]~input_o\,
	sload => VCC,
	ena => \fifo_tfr_cmd_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index(1));

-- Location: LCCOMB_X62_Y68_N12
\fifo_tfr_cmd_index_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_index_int~2_combout\ = (fifo_tfr_cmd_index(1) & (((\MODE.mTFR_CMD_FIFO~q\) # (!\fifo_rx_data[0][0]~11_combout\)) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index(1),
	datab => \writedata[31]~input_o\,
	datac => \MODE.mTFR_CMD_FIFO~q\,
	datad => \fifo_rx_data[0][0]~11_combout\,
	combout => \fifo_tfr_cmd_index_int~2_combout\);

-- Location: FF_X62_Y68_N13
\fifo_tfr_cmd_index_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_index_int~2_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index_int(1));

-- Location: IOIBUF_X45_Y73_N8
\writedata[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(2),
	o => \writedata[2]~input_o\);

-- Location: FF_X60_Y67_N9
\fifo_tfr_cmd_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \writedata[2]~input_o\,
	sload => VCC,
	ena => \fifo_tfr_cmd_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index(2));

-- Location: LCCOMB_X60_Y67_N12
\fifo_tfr_cmd_index_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_index_int~0_combout\ = (fifo_tfr_cmd_index(2) & ((\MODE.mTFR_CMD_FIFO~q\) # ((!\fifo_rx_data[0][0]~11_combout\) # (!\writedata[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \writedata[31]~input_o\,
	datac => fifo_tfr_cmd_index(2),
	datad => \fifo_rx_data[0][0]~11_combout\,
	combout => \fifo_tfr_cmd_index_int~0_combout\);

-- Location: FF_X60_Y67_N13
\fifo_tfr_cmd_index_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_index_int~0_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index_int(2));

-- Location: IOIBUF_X49_Y73_N22
\writedata[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(0),
	o => \writedata[0]~input_o\);

-- Location: FF_X60_Y67_N1
\fifo_tfr_cmd_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \writedata[0]~input_o\,
	sload => VCC,
	ena => \fifo_tfr_cmd_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index(0));

-- Location: LCCOMB_X62_Y68_N22
\fifo_tfr_cmd_index_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_index_int~3_combout\ = (fifo_tfr_cmd_index(0) & ((\MODE.mTFR_CMD_FIFO~q\) # ((!\fifo_rx_data[0][0]~11_combout\) # (!\writedata[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index(0),
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \writedata[31]~input_o\,
	datad => \fifo_rx_data[0][0]~11_combout\,
	combout => \fifo_tfr_cmd_index_int~3_combout\);

-- Location: FF_X62_Y68_N23
\fifo_tfr_cmd_index_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_index_int~3_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index_int(0));

-- Location: IOIBUF_X52_Y73_N8
\writedata[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(3),
	o => \writedata[3]~input_o\);

-- Location: FF_X60_Y67_N27
\fifo_tfr_cmd_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \writedata[3]~input_o\,
	sload => VCC,
	ena => \fifo_tfr_cmd_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index(3));

-- Location: LCCOMB_X60_Y67_N30
\fifo_tfr_cmd_index_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_index_int~1_combout\ = (fifo_tfr_cmd_index(3) & ((\MODE.mTFR_CMD_FIFO~q\) # ((!\fifo_rx_data[0][0]~11_combout\) # (!\writedata[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \writedata[31]~input_o\,
	datac => fifo_tfr_cmd_index(3),
	datad => \fifo_rx_data[0][0]~11_combout\,
	combout => \fifo_tfr_cmd_index_int~1_combout\);

-- Location: FF_X60_Y67_N31
\fifo_tfr_cmd_index_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_index_int~1_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_index_int(3));

-- Location: LCCOMB_X57_Y67_N14
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = fifo_tfr_cmd_index_int(3) $ (((fifo_tfr_cmd_index_int(1) & (fifo_tfr_cmd_index_int(2) & fifo_tfr_cmd_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(2),
	datac => fifo_tfr_cmd_index_int(0),
	datad => fifo_tfr_cmd_index_int(3),
	combout => \Add2~2_combout\);

-- Location: LCCOMB_X61_Y69_N20
\fifo_rx_data_amnt_int[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[0]~8_combout\ = (\wr_n_internal~q\ & (fifo_rx_data_amnt_int(0) $ (VCC))) # (!\wr_n_internal~q\ & (fifo_rx_data_amnt_int(0) & VCC))
-- \fifo_rx_data_amnt_int[0]~9\ = CARRY((\wr_n_internal~q\ & fifo_rx_data_amnt_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_n_internal~q\,
	datab => fifo_rx_data_amnt_int(0),
	datad => VCC,
	combout => \fifo_rx_data_amnt_int[0]~8_combout\,
	cout => \fifo_rx_data_amnt_int[0]~9\);

-- Location: LCCOMB_X61_Y69_N14
\fifo_rx_data_amnt_int[0]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[0]~_wirecell_combout\ = !fifo_rx_data_amnt_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fifo_rx_data_amnt_int(0),
	combout => \fifo_rx_data_amnt_int[0]~_wirecell_combout\);

-- Location: LCCOMB_X62_Y69_N12
\fifo_rx_data[0][0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[0][0]~5_combout\ = (\RST~input_o\) # ((\wr~input_o\ & \chipselect~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \chipselect~input_o\,
	datad => \RST~input_o\,
	combout => \fifo_rx_data[0][0]~5_combout\);

-- Location: IOIBUF_X38_Y73_N1
\DONE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_DONE,
	o => \DONE~input_o\);

-- Location: LCCOMB_X62_Y69_N14
\fifo_tfr_cmd~179\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~179_combout\ = (\fifo_tfr_cmd[15][8]~q\ & ((\chipselect~input_o\ & (!\wr~input_o\)) # (!\chipselect~input_o\ & ((!\STATE.sSETTING~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \chipselect~input_o\,
	datac => \STATE.sSETTING~q\,
	datad => \fifo_tfr_cmd[15][8]~q\,
	combout => \fifo_tfr_cmd~179_combout\);

-- Location: IOIBUF_X38_Y73_N15
\writedata[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(8),
	o => \writedata[8]~input_o\);

-- Location: LCCOMB_X63_Y69_N22
\MODE~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~10_combout\ = (!\RST~input_o\ & (!\address[2]~input_o\ & !\address[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \address[2]~input_o\,
	datad => \address[0]~input_o\,
	combout => \MODE~10_combout\);

-- Location: LCCOMB_X63_Y69_N26
\MODE~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~11_combout\ = (\MODE~10_combout\ & (((\MODE.mTFR_CMD~q\ & \MODE~9_combout\)) # (!\address[1]~input_o\))) # (!\MODE~10_combout\ & (((\MODE.mTFR_CMD~q\ & \MODE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~10_combout\,
	datab => \address[1]~input_o\,
	datac => \MODE.mTFR_CMD~q\,
	datad => \MODE~9_combout\,
	combout => \MODE~11_combout\);

-- Location: FF_X63_Y69_N27
\MODE.mTFR_CMD\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mTFR_CMD~q\);

-- Location: LCCOMB_X59_Y69_N12
\stop_amnts[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[0]~5_combout\ = (\writedata[8]~input_o\ & \MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \writedata[8]~input_o\,
	datad => \MODE.mTFR_CMD~q\,
	combout => \stop_amnts[0]~5_combout\);

-- Location: LCCOMB_X62_Y67_N30
\fifo_tfr_cmd_amnt_int~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~5_combout\ = (\MODE.mTFR_CMD~q\ & (((!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\ & (\writedata[31]~input_o\ & ((!\MODE.mTFR_CMD_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \writedata[31]~input_o\,
	datac => \p_main~0_combout\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd_amnt_int~5_combout\);

-- Location: LCCOMB_X63_Y67_N24
\fifo_tfr_cmd_amnt_int~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~4_combout\ = (\MODE.mTFR_CMD~q\ & !fifo_tfr_cmd_index_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mTFR_CMD~q\,
	datad => fifo_tfr_cmd_index_int(0),
	combout => \fifo_tfr_cmd_amnt_int~4_combout\);

-- Location: LCCOMB_X62_Y67_N24
\fifo_tfr_cmd_amnt_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~6_combout\ = (\fifo_tfr_cmd_amnt_int~5_combout\ & ((\fifo_rx_data[0][0]~11_combout\ & ((\fifo_tfr_cmd_amnt_int~4_combout\))) # (!\fifo_rx_data[0][0]~11_combout\ & (fifo_tfr_cmd_amnt_int(0))))) # (!\fifo_tfr_cmd_amnt_int~5_combout\ & 
-- (((fifo_tfr_cmd_amnt_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd_amnt_int~5_combout\,
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => \fifo_tfr_cmd_amnt_int~4_combout\,
	combout => \fifo_tfr_cmd_amnt_int~6_combout\);

-- Location: FF_X62_Y67_N25
\fifo_tfr_cmd_amnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_amnt_int~6_combout\,
	sclr => \RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_int(0));

-- Location: LCCOMB_X60_Y67_N0
\fifo_tfr_cmd[15][0]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[15][0]~21_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & !\RST~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \RST~input_o\,
	combout => \fifo_tfr_cmd[15][0]~21_combout\);

-- Location: LCCOMB_X63_Y67_N16
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = fifo_tfr_cmd_index_int(0) $ (fifo_tfr_cmd_index_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datad => fifo_tfr_cmd_index_int(1),
	combout => \Add2~0_combout\);

-- Location: LCCOMB_X61_Y67_N22
\fifo_tfr_cmd_amnt_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~2_combout\ = (\fifo_tfr_cmd[15][0]~21_combout\ & ((\p_main~0_combout\ & ((!fifo_tfr_cmd_amnt_int(1)))) # (!\p_main~0_combout\ & (\Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][0]~21_combout\,
	datab => \Add2~0_combout\,
	datac => fifo_tfr_cmd_amnt_int(1),
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd_amnt_int~2_combout\);

-- Location: LCCOMB_X63_Y67_N6
\fifo_tfr_cmd_amnt_int[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int[3]~3_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (!\MODE.mTFR_CMD~q\)) # (!\MODE.mTFR_CMD_FIFO~q\ & ((!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mTFR_CMD~q\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd_amnt_int[3]~3_combout\);

-- Location: LCCOMB_X62_Y67_N14
\fifo_tfr_cmd_amnt_int[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int[3]~9_combout\ = (\RST~input_o\) # ((\chipselect~input_o\ & (\wr~input_o\ & !\fifo_tfr_cmd_amnt_int[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \chipselect~input_o\,
	datac => \wr~input_o\,
	datad => \fifo_tfr_cmd_amnt_int[3]~3_combout\,
	combout => \fifo_tfr_cmd_amnt_int[3]~9_combout\);

-- Location: FF_X61_Y67_N23
\fifo_tfr_cmd_amnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_amnt_int~2_combout\,
	ena => \fifo_tfr_cmd_amnt_int[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_int(1));

-- Location: LCCOMB_X63_Y67_N14
\Add2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~1_combout\ = fifo_tfr_cmd_index_int(2) $ (((fifo_tfr_cmd_index_int(0) & fifo_tfr_cmd_index_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Add2~1_combout\);

-- Location: LCCOMB_X60_Y69_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = fifo_tfr_cmd_amnt_int(1) $ (fifo_tfr_cmd_amnt_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fifo_tfr_cmd_amnt_int(1),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Add1~0_combout\);

-- Location: LCCOMB_X61_Y67_N16
\fifo_tfr_cmd_amnt_int~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~7_combout\ = (\fifo_tfr_cmd[15][0]~21_combout\ & ((\p_main~0_combout\ & ((\Add1~0_combout\))) # (!\p_main~0_combout\ & (\Add2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~1_combout\,
	datab => \p_main~0_combout\,
	datac => \fifo_tfr_cmd[15][0]~21_combout\,
	datad => \Add1~0_combout\,
	combout => \fifo_tfr_cmd_amnt_int~7_combout\);

-- Location: FF_X61_Y67_N17
\fifo_tfr_cmd_amnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_amnt_int~7_combout\,
	ena => \fifo_tfr_cmd_amnt_int[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_int(2));

-- Location: LCCOMB_X60_Y67_N22
\Decoder1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~13_combout\ = (!fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_int(1) & (fifo_tfr_cmd_amnt_int(3) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~13_combout\);

-- Location: LCCOMB_X61_Y69_N30
\Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~13_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_amnts[0]~5_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~13_combout\,
	datad => \Decoder1~6_combout\,
	combout => \Selector23~0_combout\);

-- Location: LCCOMB_X62_Y67_N20
\Selector119~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~1_combout\ = (!\MODE.mTFR_CMD~q\ & ((\MODE.mTFR_CMD_FIFO~q\) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[31]~input_o\,
	datac => \MODE.mTFR_CMD~q\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \Selector119~1_combout\);

-- Location: LCCOMB_X61_Y69_N0
\Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~6_combout\ & ((!\Decoder1~13_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~13_combout\,
	datad => \Decoder1~6_combout\,
	combout => \Selector23~1_combout\);

-- Location: LCCOMB_X61_Y69_N2
\Selector23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector23~2_combout\ = (\Selector23~0_combout\) # ((\fifo_tfr_cmd[15][8]~q\ & ((\Selector119~1_combout\) # (\Selector23~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector23~0_combout\,
	datab => \fifo_tfr_cmd[15][8]~q\,
	datac => \Selector119~1_combout\,
	datad => \Selector23~1_combout\,
	combout => \Selector23~2_combout\);

-- Location: LCCOMB_X62_Y67_N22
\fifo_tfr_cmd~180\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~180_combout\ = (!\RST~input_o\ & ((\fifo_tfr_cmd~179_combout\) # ((\fifo_rx_data[0][0]~11_combout\ & \Selector23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => \fifo_tfr_cmd~179_combout\,
	datad => \Selector23~2_combout\,
	combout => \fifo_tfr_cmd~180_combout\);

-- Location: FF_X62_Y67_N23
\fifo_tfr_cmd[15][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~180_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][8]~q\);

-- Location: LCCOMB_X59_Y67_N22
\Decoder1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~12_combout\ = (fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_int(3) & (!fifo_tfr_cmd_amnt_int(1) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(3),
	datac => fifo_tfr_cmd_amnt_int(1),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~12_combout\);

-- Location: LCCOMB_X58_Y65_N30
\Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~12_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \stop_amnts[0]~5_combout\,
	datac => \Decoder1~12_combout\,
	datad => \Decoder1~13_combout\,
	combout => \Selector55~0_combout\);

-- Location: LCCOMB_X58_Y65_N20
\Selector55~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~13_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~13_combout\,
	datac => \Decoder1~12_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector55~1_combout\);

-- Location: LCCOMB_X58_Y65_N18
\Selector55~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector55~2_combout\ = (\Selector55~0_combout\) # ((\fifo_tfr_cmd[14][8]~q\ & ((\Selector119~1_combout\) # (\Selector55~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector55~0_combout\,
	datad => \Selector55~1_combout\,
	combout => \Selector55~2_combout\);

-- Location: LCCOMB_X58_Y65_N10
\fifo_tfr_cmd[14][8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[14][8]~2_combout\ = (\chipselect~input_o\ & ((\Selector55~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector55~2_combout\,
	combout => \fifo_tfr_cmd[14][8]~2_combout\);

-- Location: LCCOMB_X59_Y69_N16
\fifo_tfr_cmd~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~19_combout\ = (\chipselect~input_o\ & (!\wr~input_o\)) # (!\chipselect~input_o\ & ((!\STATE.sSETTING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datac => \chipselect~input_o\,
	datad => \STATE.sSETTING~q\,
	combout => \fifo_tfr_cmd~19_combout\);

-- Location: FF_X58_Y65_N11
\fifo_tfr_cmd[14][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[14][8]~2_combout\,
	asdata => \fifo_tfr_cmd[14][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][8]~q\);

-- Location: LCCOMB_X59_Y67_N8
\Decoder1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~11_combout\ = (fifo_tfr_cmd_amnt_int(2) & (fifo_tfr_cmd_amnt_int(3) & (!fifo_tfr_cmd_amnt_int(0) & !fifo_tfr_cmd_amnt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(2),
	datab => fifo_tfr_cmd_amnt_int(3),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(1),
	combout => \Decoder1~11_combout\);

-- Location: LCCOMB_X59_Y67_N6
\Selector87~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~1_combout\ = (!\Decoder1~12_combout\ & (\MODE.mTFR_CMD~q\ & ((!\p_main~0_combout\) # (!\Decoder1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~12_combout\,
	datab => \Decoder1~11_combout\,
	datac => \MODE.mTFR_CMD~q\,
	datad => \p_main~0_combout\,
	combout => \Selector87~1_combout\);

-- Location: LCCOMB_X59_Y67_N20
\Selector87~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~11_combout\))) # (!\p_main~0_combout\ & (\Decoder1~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~12_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~11_combout\,
	datad => \stop_amnts[0]~5_combout\,
	combout => \Selector87~0_combout\);

-- Location: LCCOMB_X58_Y65_N2
\Selector87~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector87~2_combout\ = (\Selector87~0_combout\) # ((\fifo_tfr_cmd[13][8]~q\ & ((\Selector119~1_combout\) # (\Selector87~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector87~1_combout\,
	datad => \Selector87~0_combout\,
	combout => \Selector87~2_combout\);

-- Location: LCCOMB_X58_Y65_N4
\fifo_tfr_cmd[13][8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[13][8]~8_combout\ = (\chipselect~input_o\ & ((\Selector87~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector87~2_combout\,
	combout => \fifo_tfr_cmd[13][8]~8_combout\);

-- Location: FF_X58_Y65_N5
\fifo_tfr_cmd[13][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[13][8]~8_combout\,
	asdata => \fifo_tfr_cmd[13][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][8]~q\);

-- Location: LCCOMB_X59_Y67_N26
\Decoder1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~10_combout\ = (fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(2) & fifo_tfr_cmd_amnt_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(2),
	datad => fifo_tfr_cmd_amnt_int(3),
	combout => \Decoder1~10_combout\);

-- Location: LCCOMB_X57_Y69_N22
\Selector119~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~10_combout\))) # (!\p_main~0_combout\ & (\Decoder1~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_amnts[0]~5_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~11_combout\,
	datad => \Decoder1~10_combout\,
	combout => \Selector119~0_combout\);

-- Location: LCCOMB_X57_Y69_N28
\Selector119~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~2_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~11_combout\ & ((!\Decoder1~10_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~11_combout\,
	datad => \Decoder1~10_combout\,
	combout => \Selector119~2_combout\);

-- Location: LCCOMB_X57_Y69_N18
\Selector119~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector119~3_combout\ = (\Selector119~0_combout\) # ((\fifo_tfr_cmd[12][8]~q\ & ((\Selector119~1_combout\) # (\Selector119~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector119~0_combout\,
	datab => \fifo_tfr_cmd[12][8]~q\,
	datac => \Selector119~1_combout\,
	datad => \Selector119~2_combout\,
	combout => \Selector119~3_combout\);

-- Location: LCCOMB_X57_Y69_N20
\fifo_tfr_cmd[12][8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[12][8]~0_combout\ = (\chipselect~input_o\ & ((\Selector119~3_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[13][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[13][8]~q\,
	datad => \Selector119~3_combout\,
	combout => \fifo_tfr_cmd[12][8]~0_combout\);

-- Location: FF_X57_Y69_N21
\fifo_tfr_cmd[12][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[12][8]~0_combout\,
	asdata => \fifo_tfr_cmd[12][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][8]~q\);

-- Location: LCCOMB_X60_Y65_N12
\Decoder1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~9_combout\ = (fifo_tfr_cmd_amnt_int(1) & (fifo_tfr_cmd_amnt_int(3) & (!fifo_tfr_cmd_amnt_int(0) & !fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(3),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~9_combout\);

-- Location: LCCOMB_X60_Y69_N16
\Selector151~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~9_combout\))) # (!\p_main~0_combout\ & (\Decoder1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_amnts[0]~5_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~10_combout\,
	datad => \Decoder1~9_combout\,
	combout => \Selector151~0_combout\);

-- Location: LCCOMB_X58_Y65_N26
\Selector151~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~10_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~10_combout\,
	datac => \Decoder1~9_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector151~1_combout\);

-- Location: LCCOMB_X57_Y69_N24
\Selector151~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector151~2_combout\ = (\Selector151~0_combout\) # ((\fifo_tfr_cmd[11][8]~q\ & ((\Selector119~1_combout\) # (\Selector151~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector151~0_combout\,
	datad => \Selector151~1_combout\,
	combout => \Selector151~2_combout\);

-- Location: LCCOMB_X57_Y69_N26
\fifo_tfr_cmd[11][8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[11][8]~6_combout\ = (\chipselect~input_o\ & ((\Selector151~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[12][8]~q\,
	datad => \Selector151~2_combout\,
	combout => \fifo_tfr_cmd[11][8]~6_combout\);

-- Location: FF_X57_Y69_N27
\fifo_tfr_cmd[11][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[11][8]~6_combout\,
	asdata => \fifo_tfr_cmd[11][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][8]~q\);

-- Location: LCCOMB_X60_Y65_N22
\Decoder1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~8_combout\ = (!fifo_tfr_cmd_amnt_int(1) & (fifo_tfr_cmd_amnt_int(3) & (fifo_tfr_cmd_amnt_int(0) & !fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(3),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~8_combout\);

-- Location: LCCOMB_X60_Y65_N30
\Selector183~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector183~1_combout\ = (!\Decoder1~9_combout\ & (\MODE.mTFR_CMD~q\ & ((!\p_main~0_combout\) # (!\Decoder1~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~9_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~8_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector183~1_combout\);

-- Location: LCCOMB_X59_Y65_N28
\Selector183~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector183~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~8_combout\))) # (!\p_main~0_combout\ & (\Decoder1~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \stop_amnts[0]~5_combout\,
	datac => \Decoder1~9_combout\,
	datad => \Decoder1~8_combout\,
	combout => \Selector183~0_combout\);

-- Location: LCCOMB_X59_Y65_N6
\Selector183~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector183~2_combout\ = (\Selector183~0_combout\) # ((\fifo_tfr_cmd[10][8]~q\ & ((\Selector119~1_combout\) # (\Selector183~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector183~1_combout\,
	datad => \Selector183~0_combout\,
	combout => \Selector183~2_combout\);

-- Location: LCCOMB_X58_Y65_N14
\fifo_tfr_cmd[10][8]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[10][8]~13_combout\ = (\chipselect~input_o\ & ((\Selector183~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector183~2_combout\,
	combout => \fifo_tfr_cmd[10][8]~13_combout\);

-- Location: FF_X58_Y65_N15
\fifo_tfr_cmd[10][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[10][8]~13_combout\,
	asdata => \fifo_tfr_cmd[10][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][8]~q\);

-- Location: LCCOMB_X60_Y67_N14
\Decoder1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~15_combout\ = (!fifo_tfr_cmd_amnt_int(0) & (!fifo_tfr_cmd_amnt_int(1) & (fifo_tfr_cmd_amnt_int(3) & !fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~15_combout\);

-- Location: LCCOMB_X59_Y65_N12
\Selector215~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector215~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~15_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~15_combout\,
	datab => \stop_amnts[0]~5_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~8_combout\,
	combout => \Selector215~0_combout\);

-- Location: LCCOMB_X59_Y65_N26
\Selector215~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector215~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~8_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~15_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~8_combout\,
	combout => \Selector215~1_combout\);

-- Location: LCCOMB_X58_Y65_N16
\Selector215~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector215~2_combout\ = (\Selector215~0_combout\) # ((\fifo_tfr_cmd[9][8]~q\ & ((\Selector119~1_combout\) # (\Selector215~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector215~0_combout\,
	datad => \Selector215~1_combout\,
	combout => \Selector215~2_combout\);

-- Location: LCCOMB_X58_Y65_N12
\fifo_tfr_cmd[9][8]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[9][8]~4_combout\ = (\chipselect~input_o\ & ((\Selector215~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector215~2_combout\,
	combout => \fifo_tfr_cmd[9][8]~4_combout\);

-- Location: FF_X58_Y65_N13
\fifo_tfr_cmd[9][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[9][8]~4_combout\,
	asdata => \fifo_tfr_cmd[9][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][8]~q\);

-- Location: LCCOMB_X60_Y67_N24
\Decoder1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~14_combout\ = (fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(3) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~14_combout\);

-- Location: LCCOMB_X56_Y69_N14
\Selector247~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector247~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~15_combout\ & ((!\Decoder1~14_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~14_combout\,
	datad => \Decoder1~15_combout\,
	combout => \Selector247~1_combout\);

-- Location: LCCOMB_X60_Y69_N22
\Selector247~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector247~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~14_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_amnts[0]~5_combout\,
	datab => \Decoder1~14_combout\,
	datac => \Decoder1~15_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector247~0_combout\);

-- Location: LCCOMB_X57_Y69_N10
\Selector247~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector247~2_combout\ = (\Selector247~0_combout\) # ((\fifo_tfr_cmd[8][8]~q\ & ((\Selector247~1_combout\) # (\Selector119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector247~1_combout\,
	datab => \fifo_tfr_cmd[8][8]~q\,
	datac => \Selector119~1_combout\,
	datad => \Selector247~0_combout\,
	combout => \Selector247~2_combout\);

-- Location: LCCOMB_X57_Y69_N16
\fifo_tfr_cmd[8][8]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[8][8]~11_combout\ = (\chipselect~input_o\ & ((\Selector247~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[9][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector247~2_combout\,
	combout => \fifo_tfr_cmd[8][8]~11_combout\);

-- Location: FF_X57_Y69_N17
\fifo_tfr_cmd[8][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[8][8]~11_combout\,
	asdata => \fifo_tfr_cmd[8][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][8]~q\);

-- Location: LCCOMB_X60_Y67_N20
\Decoder1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~5_combout\ = (!fifo_tfr_cmd_amnt_int(3) & (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(0) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(3),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~5_combout\);

-- Location: LCCOMB_X60_Y67_N6
\Selector279~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector279~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~14_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~14_combout\,
	datac => \Decoder1~5_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector279~1_combout\);

-- Location: LCCOMB_X60_Y67_N28
\Selector279~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector279~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~5_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~5_combout\,
	datab => \Decoder1~14_combout\,
	datac => \stop_amnts[0]~5_combout\,
	datad => \p_main~0_combout\,
	combout => \Selector279~0_combout\);

-- Location: LCCOMB_X57_Y69_N2
\Selector279~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector279~2_combout\ = (\Selector279~0_combout\) # ((\fifo_tfr_cmd[7][8]~q\ & ((\Selector119~1_combout\) # (\Selector279~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector279~1_combout\,
	datad => \Selector279~0_combout\,
	combout => \Selector279~2_combout\);

-- Location: LCCOMB_X57_Y69_N4
\fifo_tfr_cmd[7][8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[7][8]~9_combout\ = (\chipselect~input_o\ & ((\Selector279~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[8][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[8][8]~q\,
	datad => \Selector279~2_combout\,
	combout => \fifo_tfr_cmd[7][8]~9_combout\);

-- Location: FF_X57_Y69_N5
\fifo_tfr_cmd[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[7][8]~9_combout\,
	asdata => \fifo_tfr_cmd[7][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][8]~q\);

-- Location: LCCOMB_X59_Y69_N26
\Decoder1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~4_combout\ = (fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_int(2) & (!fifo_tfr_cmd_amnt_int(3) & !fifo_tfr_cmd_amnt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(2),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(1),
	combout => \Decoder1~4_combout\);

-- Location: LCCOMB_X59_Y69_N10
\Selector311~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector311~1_combout\ = (!\Decoder1~5_combout\ & (\MODE.mTFR_CMD~q\ & ((!\p_main~0_combout\) # (!\Decoder1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \Decoder1~5_combout\,
	datac => \p_main~0_combout\,
	datad => \MODE.mTFR_CMD~q\,
	combout => \Selector311~1_combout\);

-- Location: LCCOMB_X59_Y65_N14
\Selector311~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector311~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~4_combout\))) # (!\p_main~0_combout\ & (\Decoder1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~5_combout\,
	datab => \p_main~0_combout\,
	datac => \stop_amnts[0]~5_combout\,
	datad => \Decoder1~4_combout\,
	combout => \Selector311~0_combout\);

-- Location: LCCOMB_X58_Y65_N28
\Selector311~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector311~2_combout\ = (\Selector311~0_combout\) # ((\fifo_tfr_cmd[6][8]~q\ & ((\Selector119~1_combout\) # (\Selector311~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector311~1_combout\,
	datad => \Selector311~0_combout\,
	combout => \Selector311~2_combout\);

-- Location: LCCOMB_X58_Y65_N8
\fifo_tfr_cmd[6][8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[6][8]~1_combout\ = (\chipselect~input_o\ & ((\Selector311~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[7][8]~q\,
	datad => \Selector311~2_combout\,
	combout => \fifo_tfr_cmd[6][8]~1_combout\);

-- Location: FF_X58_Y65_N9
\fifo_tfr_cmd[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[6][8]~1_combout\,
	asdata => \fifo_tfr_cmd[6][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][8]~q\);

-- Location: LCCOMB_X58_Y69_N8
\Decoder1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~1_combout\ = (!fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(0) & (!fifo_tfr_cmd_amnt_int(3) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~1_combout\);

-- Location: LCCOMB_X58_Y69_N10
\Selector343~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~4_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~1_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~4_combout\,
	combout => \Selector343~1_combout\);

-- Location: LCCOMB_X58_Y69_N4
\Selector343~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~1_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \Decoder1~1_combout\,
	datac => \stop_amnts[0]~5_combout\,
	datad => \Decoder1~4_combout\,
	combout => \Selector343~0_combout\);

-- Location: LCCOMB_X57_Y69_N0
\Selector343~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector343~2_combout\ = (\Selector343~0_combout\) # ((\fifo_tfr_cmd[5][8]~q\ & ((\Selector343~1_combout\) # (\Selector119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][8]~q\,
	datab => \Selector343~1_combout\,
	datac => \Selector119~1_combout\,
	datad => \Selector343~0_combout\,
	combout => \Selector343~2_combout\);

-- Location: LCCOMB_X57_Y69_N30
\fifo_tfr_cmd[5][8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[5][8]~10_combout\ = (\chipselect~input_o\ & ((\Selector343~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[6][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[6][8]~q\,
	datad => \Selector343~2_combout\,
	combout => \fifo_tfr_cmd[5][8]~10_combout\);

-- Location: FF_X57_Y69_N31
\fifo_tfr_cmd[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[5][8]~10_combout\,
	asdata => \fifo_tfr_cmd[5][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][8]~q\);

-- Location: LCCOMB_X58_Y69_N2
\Decoder1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~0_combout\ = (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(2) & (!fifo_tfr_cmd_amnt_int(3) & fifo_tfr_cmd_amnt_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(2),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(0),
	combout => \Decoder1~0_combout\);

-- Location: LCCOMB_X58_Y69_N20
\Selector375~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~0_combout\))) # (!\p_main~0_combout\ & (\Decoder1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \Decoder1~1_combout\,
	datac => \stop_amnts[0]~5_combout\,
	datad => \Decoder1~0_combout\,
	combout => \Selector375~0_combout\);

-- Location: LCCOMB_X58_Y69_N6
\Selector375~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~1_combout\ & ((!\Decoder1~0_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~1_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~0_combout\,
	combout => \Selector375~1_combout\);

-- Location: LCCOMB_X57_Y69_N12
\Selector375~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector375~2_combout\ = (\Selector375~0_combout\) # ((\fifo_tfr_cmd[4][8]~q\ & ((\Selector119~1_combout\) # (\Selector375~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector375~0_combout\,
	datab => \fifo_tfr_cmd[4][8]~q\,
	datac => \Selector119~1_combout\,
	datad => \Selector375~1_combout\,
	combout => \Selector375~2_combout\);

-- Location: LCCOMB_X57_Y69_N14
\fifo_tfr_cmd[4][8]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[4][8]~3_combout\ = (\chipselect~input_o\ & ((\Selector375~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[5][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector375~2_combout\,
	combout => \fifo_tfr_cmd[4][8]~3_combout\);

-- Location: FF_X57_Y69_N15
\fifo_tfr_cmd[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[4][8]~3_combout\,
	asdata => \fifo_tfr_cmd[4][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][8]~q\);

-- Location: LCCOMB_X59_Y67_N4
\Decoder1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~3_combout\ = (!fifo_tfr_cmd_amnt_int(2) & (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(0) & !fifo_tfr_cmd_amnt_int(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(2),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(3),
	combout => \Decoder1~3_combout\);

-- Location: LCCOMB_X58_Y69_N16
\Selector407~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector407~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~3_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \Decoder1~3_combout\,
	datac => \stop_amnts[0]~5_combout\,
	datad => \Decoder1~0_combout\,
	combout => \Selector407~0_combout\);

-- Location: LCCOMB_X58_Y69_N22
\Selector407~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector407~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~0_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~3_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~0_combout\,
	combout => \Selector407~1_combout\);

-- Location: LCCOMB_X57_Y69_N6
\Selector407~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector407~2_combout\ = (\Selector407~0_combout\) # ((\fifo_tfr_cmd[3][8]~q\ & ((\Selector119~1_combout\) # (\Selector407~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][8]~q\,
	datab => \Selector407~0_combout\,
	datac => \Selector119~1_combout\,
	datad => \Selector407~1_combout\,
	combout => \Selector407~2_combout\);

-- Location: LCCOMB_X57_Y69_N8
\fifo_tfr_cmd[3][8]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[3][8]~5_combout\ = (\chipselect~input_o\ & ((\Selector407~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[4][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[4][8]~q\,
	datad => \Selector407~2_combout\,
	combout => \fifo_tfr_cmd[3][8]~5_combout\);

-- Location: FF_X57_Y69_N9
\fifo_tfr_cmd[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[3][8]~5_combout\,
	asdata => \fifo_tfr_cmd[3][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][8]~q\);

-- Location: LCCOMB_X61_Y67_N18
\Decoder1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~2_combout\ = (!fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(2) & (!fifo_tfr_cmd_amnt_int(3) & fifo_tfr_cmd_amnt_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(2),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(0),
	combout => \Decoder1~2_combout\);

-- Location: LCCOMB_X60_Y70_N2
\Selector439~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector439~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~3_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~3_combout\,
	combout => \Selector439~1_combout\);

-- Location: LCCOMB_X60_Y70_N28
\Selector439~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector439~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~2_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \stop_amnts[0]~5_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~3_combout\,
	combout => \Selector439~0_combout\);

-- Location: LCCOMB_X60_Y70_N20
\Selector439~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector439~2_combout\ = (\Selector439~0_combout\) # ((\fifo_tfr_cmd[2][8]~q\ & ((\Selector439~1_combout\) # (\Selector119~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][8]~q\,
	datab => \Selector439~1_combout\,
	datac => \Selector119~1_combout\,
	datad => \Selector439~0_combout\,
	combout => \Selector439~2_combout\);

-- Location: LCCOMB_X60_Y70_N12
\fifo_tfr_cmd[2][8]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[2][8]~12_combout\ = (\chipselect~input_o\ & ((\Selector439~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[3][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[3][8]~q\,
	datad => \Selector439~2_combout\,
	combout => \fifo_tfr_cmd[2][8]~12_combout\);

-- Location: FF_X60_Y70_N13
\fifo_tfr_cmd[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[2][8]~12_combout\,
	asdata => \fifo_tfr_cmd[2][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][8]~q\);

-- Location: LCCOMB_X61_Y67_N12
\Decoder1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~7_combout\ = (!fifo_tfr_cmd_amnt_int(3) & (!fifo_tfr_cmd_amnt_int(2) & (!fifo_tfr_cmd_amnt_int(1) & !fifo_tfr_cmd_amnt_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(3),
	datab => fifo_tfr_cmd_amnt_int(2),
	datac => fifo_tfr_cmd_amnt_int(1),
	datad => fifo_tfr_cmd_amnt_int(0),
	combout => \Decoder1~7_combout\);

-- Location: LCCOMB_X60_Y69_N20
\Selector471~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector471~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~2_combout\ & ((!\Decoder1~7_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~2_combout\,
	datad => \Decoder1~7_combout\,
	combout => \Selector471~1_combout\);

-- Location: LCCOMB_X60_Y69_N14
\Selector471~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector471~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & ((\Decoder1~7_combout\))) # (!\p_main~0_combout\ & (\Decoder1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \stop_amnts[0]~5_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~2_combout\,
	datad => \Decoder1~7_combout\,
	combout => \Selector471~0_combout\);

-- Location: LCCOMB_X58_Y65_N0
\Selector471~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector471~2_combout\ = (\Selector471~0_combout\) # ((\fifo_tfr_cmd[1][8]~q\ & ((\Selector119~1_combout\) # (\Selector471~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][8]~q\,
	datab => \Selector119~1_combout\,
	datac => \Selector471~1_combout\,
	datad => \Selector471~0_combout\,
	combout => \Selector471~2_combout\);

-- Location: LCCOMB_X58_Y65_N22
\fifo_tfr_cmd[1][8]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[1][8]~7_combout\ = (\chipselect~input_o\ & ((\Selector471~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[2][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[2][8]~q\,
	datad => \Selector471~2_combout\,
	combout => \fifo_tfr_cmd[1][8]~7_combout\);

-- Location: FF_X58_Y65_N23
\fifo_tfr_cmd[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[1][8]~7_combout\,
	asdata => \fifo_tfr_cmd[1][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][8]~q\);

-- Location: LCCOMB_X60_Y69_N4
\Selector503~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~1_combout\ = (\MODE.mTFR_CMD~q\ & (!\Decoder1~7_combout\ & ((!\Decoder1~6_combout\) # (!\p_main~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~6_combout\,
	datad => \Decoder1~7_combout\,
	combout => \Selector503~1_combout\);

-- Location: LCCOMB_X61_Y69_N16
\Selector503~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~0_combout\ = (\stop_amnts[0]~5_combout\ & ((\p_main~0_combout\ & (\Decoder1~6_combout\)) # (!\p_main~0_combout\ & ((\Decoder1~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \Decoder1~6_combout\,
	datac => \Decoder1~7_combout\,
	datad => \stop_amnts[0]~5_combout\,
	combout => \Selector503~0_combout\);

-- Location: LCCOMB_X60_Y69_N18
\Selector503~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector503~2_combout\ = (\Selector503~0_combout\) # ((\fifo_tfr_cmd[0][8]~q\ & ((\Selector119~1_combout\) # (\Selector503~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector119~1_combout\,
	datab => \Selector503~1_combout\,
	datac => \fifo_tfr_cmd[0][8]~q\,
	datad => \Selector503~0_combout\,
	combout => \Selector503~2_combout\);

-- Location: LCCOMB_X60_Y69_N8
\fifo_tfr_cmd[0][8]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[0][8]~14_combout\ = (\chipselect~input_o\ & ((\Selector503~2_combout\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][8]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][8]~q\,
	datab => \chipselect~input_o\,
	datad => \Selector503~2_combout\,
	combout => \fifo_tfr_cmd[0][8]~14_combout\);

-- Location: FF_X60_Y69_N9
\fifo_tfr_cmd[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[0][8]~14_combout\,
	asdata => \fifo_tfr_cmd[0][8]~q\,
	sclr => \RST~input_o\,
	sload => \fifo_tfr_cmd~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][8]~q\);

-- Location: LCCOMB_X59_Y70_N20
\stop_internal~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_internal~feeder_combout\ = \fifo_tfr_cmd[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][8]~q\,
	combout => \stop_internal~feeder_combout\);

-- Location: LCCOMB_X62_Y70_N30
\WR_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_N~0_combout\ = (!\RST~input_o\ & (\STATE.sSETTING~q\ & !\chipselect~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \STATE.sSETTING~q\,
	datad => \chipselect~input_o\,
	combout => \WR_N~0_combout\);

-- Location: FF_X59_Y70_N21
stop_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_internal~feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stop_internal~q\);

-- Location: LCCOMB_X60_Y71_N24
\Selector551~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector551~0_combout\ = (\stop_internal~q\ & (\DONE~input_o\ & \STATE.sWAITING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \stop_internal~q\,
	datac => \DONE~input_o\,
	datad => \STATE.sWAITING~q\,
	combout => \Selector551~0_combout\);

-- Location: LCCOMB_X60_Y71_N12
\idle_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \idle_internal~0_combout\ = (!\RST~input_o\ & !\chipselect~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RST~input_o\,
	datad => \chipselect~input_o\,
	combout => \idle_internal~0_combout\);

-- Location: FF_X60_Y71_N25
\STATE.sSTOP\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector551~0_combout\,
	ena => \idle_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sSTOP~q\);

-- Location: LCCOMB_X61_Y71_N24
\STATE.sIDLE~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE.sIDLE~0_combout\ = !\STATE.sSTOP~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \STATE.sSTOP~q\,
	combout => \STATE.sIDLE~0_combout\);

-- Location: LCCOMB_X63_Y71_N12
\stop_amnts[0]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[0]~17_combout\ = (\chipselect~input_o\ & (((\wr~input_o\ & \stop_amnts[0]~5_combout\)))) # (!\chipselect~input_o\ & (\STATE.sSTOP~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sSTOP~q\,
	datab => \chipselect~input_o\,
	datac => \wr~input_o\,
	datad => \stop_amnts[0]~5_combout\,
	combout => \stop_amnts[0]~17_combout\);

-- Location: LCCOMB_X63_Y71_N6
\stop_amnts[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[0]~6_combout\ = stop_amnts(0) $ (((!\RST~input_o\ & \stop_amnts[0]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => stop_amnts(0),
	datad => \stop_amnts[0]~17_combout\,
	combout => \stop_amnts[0]~6_combout\);

-- Location: FF_X63_Y71_N7
\stop_amnts[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_amnts[0]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stop_amnts(0));

-- Location: LCCOMB_X63_Y71_N24
\stop_amnts[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[1]~8_cout\ = CARRY(stop_amnts(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stop_amnts(0),
	datad => VCC,
	cout => \stop_amnts[1]~8_cout\);

-- Location: LCCOMB_X63_Y71_N26
\stop_amnts[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[1]~9_combout\ = (stop_amnts(1) & ((\chipselect~input_o\ & (!\stop_amnts[1]~8_cout\)) # (!\chipselect~input_o\ & (\stop_amnts[1]~8_cout\ & VCC)))) # (!stop_amnts(1) & ((\chipselect~input_o\ & ((\stop_amnts[1]~8_cout\) # (GND))) # 
-- (!\chipselect~input_o\ & (!\stop_amnts[1]~8_cout\))))
-- \stop_amnts[1]~10\ = CARRY((stop_amnts(1) & (\chipselect~input_o\ & !\stop_amnts[1]~8_cout\)) # (!stop_amnts(1) & ((\chipselect~input_o\) # (!\stop_amnts[1]~8_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stop_amnts(1),
	datab => \chipselect~input_o\,
	datad => VCC,
	cin => \stop_amnts[1]~8_cout\,
	combout => \stop_amnts[1]~9_combout\,
	cout => \stop_amnts[1]~10\);

-- Location: LCCOMB_X63_Y71_N10
\stop_amnts[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[3]~11_combout\ = (\chipselect~input_o\ & (((!\MODE.mTFR_CMD~q\) # (!\wr~input_o\)) # (!\writedata[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \writedata[8]~input_o\,
	datac => \wr~input_o\,
	datad => \MODE.mTFR_CMD~q\,
	combout => \stop_amnts[3]~11_combout\);

-- Location: LCCOMB_X63_Y71_N4
\stop_amnts[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[3]~12_combout\ = (!\RST~input_o\ & (!\stop_amnts[3]~11_combout\ & ((\STATE.sSTOP~q\) # (\fifo_rx_data[0][0]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sSTOP~q\,
	datab => \RST~input_o\,
	datac => \fifo_rx_data[0][0]~11_combout\,
	datad => \stop_amnts[3]~11_combout\,
	combout => \stop_amnts[3]~12_combout\);

-- Location: FF_X63_Y71_N27
\stop_amnts[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_amnts[1]~9_combout\,
	ena => \stop_amnts[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stop_amnts(1));

-- Location: LCCOMB_X63_Y71_N28
\stop_amnts[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[2]~13_combout\ = ((\chipselect~input_o\ $ (stop_amnts(2) $ (\stop_amnts[1]~10\)))) # (GND)
-- \stop_amnts[2]~14\ = CARRY((\chipselect~input_o\ & (stop_amnts(2) & !\stop_amnts[1]~10\)) # (!\chipselect~input_o\ & ((stop_amnts(2)) # (!\stop_amnts[1]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => stop_amnts(2),
	datad => VCC,
	cin => \stop_amnts[1]~10\,
	combout => \stop_amnts[2]~13_combout\,
	cout => \stop_amnts[2]~14\);

-- Location: FF_X63_Y71_N29
\stop_amnts[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_amnts[2]~13_combout\,
	ena => \stop_amnts[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stop_amnts(2));

-- Location: LCCOMB_X63_Y71_N30
\stop_amnts[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \stop_amnts[3]~15_combout\ = stop_amnts(3) $ (\chipselect~input_o\ $ (!\stop_amnts[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => stop_amnts(3),
	datab => \chipselect~input_o\,
	cin => \stop_amnts[2]~14\,
	combout => \stop_amnts[3]~15_combout\);

-- Location: FF_X63_Y71_N31
\stop_amnts[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \stop_amnts[3]~15_combout\,
	ena => \stop_amnts[3]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => stop_amnts(3));

-- Location: LCCOMB_X63_Y71_N20
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (stop_amnts(1)) # ((stop_amnts(2)) # ((stop_amnts(3)) # (stop_amnts(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => stop_amnts(1),
	datab => stop_amnts(2),
	datac => stop_amnts(3),
	datad => stop_amnts(0),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X61_Y71_N30
\STATE~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~10_combout\ = (\RST~input_o\) # ((\chipselect~input_o\) # ((!\DONE~input_o\ & \STATE.sWAITING~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \DONE~input_o\,
	datac => \chipselect~input_o\,
	datad => \STATE.sWAITING~q\,
	combout => \STATE~10_combout\);

-- Location: LCCOMB_X61_Y71_N20
\STATE~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE~11_combout\ = (!\STATE~10_combout\ & ((\LessThan0~0_combout\) # ((\STATE.sIDLE~q\) # (\STATE.sWAITING~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \STATE.sIDLE~q\,
	datac => \STATE~10_combout\,
	datad => \STATE.sWAITING~q\,
	combout => \STATE~11_combout\);

-- Location: FF_X61_Y71_N25
\STATE.sIDLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE.sIDLE~0_combout\,
	ena => \STATE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sIDLE~q\);

-- Location: LCCOMB_X60_Y71_N18
\Selector549~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector549~0_combout\ = (\DONE~input_o\ & \STATE.sWAITING~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DONE~input_o\,
	datad => \STATE.sWAITING~q\,
	combout => \Selector549~0_combout\);

-- Location: LCCOMB_X60_Y71_N14
\Selector549~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector549~1_combout\ = (\STATE.sIDLE~q\ & (\Selector549~0_combout\ & ((!\stop_internal~q\)))) # (!\STATE.sIDLE~q\ & ((\LessThan0~0_combout\) # ((\Selector549~0_combout\ & !\stop_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \STATE.sIDLE~q\,
	datab => \Selector549~0_combout\,
	datac => \LessThan0~0_combout\,
	datad => \stop_internal~q\,
	combout => \Selector549~1_combout\);

-- Location: FF_X60_Y71_N15
\STATE.sSETTING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector549~1_combout\,
	ena => \idle_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sSETTING~q\);

-- Location: LCCOMB_X65_Y69_N2
\STATE.sWAITING~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STATE.sWAITING~feeder_combout\ = \STATE.sSETTING~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \STATE.sSETTING~q\,
	combout => \STATE.sWAITING~feeder_combout\);

-- Location: FF_X65_Y69_N3
\STATE.sWAITING\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STATE.sWAITING~feeder_combout\,
	ena => \STATE~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STATE.sWAITING~q\);

-- Location: IOIBUF_X65_Y73_N8
\rd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rd,
	o => \rd~input_o\);

-- Location: LCCOMB_X63_Y69_N8
\fifo_rx_data~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~8_combout\ = (!\wr~input_o\ & (\rd~input_o\ & \MODE.mRX_DATA~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr~input_o\,
	datac => \rd~input_o\,
	datad => \MODE.mRX_DATA~q\,
	combout => \fifo_rx_data~8_combout\);

-- Location: LCCOMB_X63_Y69_N16
\MODE~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~13_combout\ = (\address[2]~input_o\ & (\MODE~12_combout\ & ((\MODE.mRX_DATA_FIFO~q\) # (!\address[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \MODE.mRX_DATA_FIFO~q\,
	datad => \MODE~12_combout\,
	combout => \MODE~13_combout\);

-- Location: FF_X63_Y69_N17
\MODE.mRX_DATA_FIFO\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mRX_DATA_FIFO~q\);

-- Location: LCCOMB_X63_Y69_N2
\fifo_rx_data~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~9_combout\ = (\wr~input_o\ & (\writedata[31]~input_o\ & \MODE.mRX_DATA_FIFO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr~input_o\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \fifo_rx_data~9_combout\);

-- Location: LCCOMB_X63_Y69_N0
\fifo_rx_data_amnt_int[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[2]~7_combout\ = (!\RST~input_o\ & (((!\fifo_rx_data~8_combout\ & !\fifo_rx_data~9_combout\)) # (!\chipselect~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datac => \fifo_rx_data~8_combout\,
	datad => \fifo_rx_data~9_combout\,
	combout => \fifo_rx_data_amnt_int[2]~7_combout\);

-- Location: LCCOMB_X65_Y69_N18
\fifo_rx_data_amnt_int[2]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[2]~16_combout\ = ((\DONE~input_o\ & (\STATE.sWAITING~q\ & !\chipselect~input_o\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONE~input_o\,
	datab => \STATE.sWAITING~q\,
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data_amnt_int[2]~16_combout\);

-- Location: FF_X61_Y69_N21
\fifo_rx_data_amnt_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt_int[0]~8_combout\,
	asdata => \fifo_rx_data_amnt_int[0]~_wirecell_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	sload => \chipselect~input_o\,
	ena => \fifo_rx_data_amnt_int[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt_int(0));

-- Location: LCCOMB_X61_Y69_N6
\fifo_rx_data~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~7_combout\ = (!fifo_rx_data_amnt_int(3) & !fifo_rx_data_amnt_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fifo_rx_data_amnt_int(3),
	datad => fifo_rx_data_amnt_int(2),
	combout => \fifo_rx_data~7_combout\);

-- Location: LCCOMB_X61_Y69_N4
\p_main~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \p_main~0_combout\ = (\writedata[0]~input_o\ & (!fifo_rx_data_amnt_int(0) & (!fifo_rx_data_amnt_int(1) & \fifo_rx_data~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[0]~input_o\,
	datab => fifo_rx_data_amnt_int(0),
	datac => fifo_rx_data_amnt_int(1),
	datad => \fifo_rx_data~7_combout\,
	combout => \p_main~0_combout\);

-- Location: LCCOMB_X60_Y67_N10
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_combout\ = fifo_tfr_cmd_amnt_int(3) $ (((fifo_tfr_cmd_amnt_int(2) & fifo_tfr_cmd_amnt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(3),
	datac => fifo_tfr_cmd_amnt_int(2),
	datad => fifo_tfr_cmd_amnt_int(1),
	combout => \Add1~1_combout\);

-- Location: LCCOMB_X61_Y67_N30
\fifo_tfr_cmd_amnt_int~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_int~8_combout\ = (\fifo_tfr_cmd[15][0]~21_combout\ & ((\p_main~0_combout\ & ((\Add1~1_combout\))) # (!\p_main~0_combout\ & (\Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \p_main~0_combout\,
	datac => \fifo_tfr_cmd[15][0]~21_combout\,
	datad => \Add1~1_combout\,
	combout => \fifo_tfr_cmd_amnt_int~8_combout\);

-- Location: FF_X61_Y67_N31
\fifo_tfr_cmd_amnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd_amnt_int~8_combout\,
	ena => \fifo_tfr_cmd_amnt_int[3]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_int(3));

-- Location: LCCOMB_X60_Y69_N30
\Decoder1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder1~6_combout\ = (fifo_tfr_cmd_amnt_int(3) & (fifo_tfr_cmd_amnt_int(1) & (fifo_tfr_cmd_amnt_int(0) & fifo_tfr_cmd_amnt_int(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(3),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => fifo_tfr_cmd_amnt_int(0),
	datad => fifo_tfr_cmd_amnt_int(2),
	combout => \Decoder1~6_combout\);

-- Location: LCCOMB_X60_Y70_N14
\fifo_tfr_cmd~182\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~182_combout\ = (!\RST~input_o\ & (\MODE.mTFR_CMD~q\ & \chipselect~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~182_combout\);

-- Location: LCCOMB_X56_Y69_N8
\fifo_tfr_cmd[15][10]~202\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[15][10]~202_combout\ = (\p_main~0_combout\ & (\Decoder1~13_combout\ & \MODE.mTFR_CMD~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \Decoder1~13_combout\,
	datad => \MODE.mTFR_CMD~q\,
	combout => \fifo_tfr_cmd[15][10]~202_combout\);

-- Location: LCCOMB_X56_Y69_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X62_Y67_N28
\fifo_tfr_cmd[5][2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[5][2]~17_combout\ = (\chipselect~input_o\ & ((\MODE.mTFR_CMD_FIFO~q\) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd[5][2]~17_combout\);

-- Location: LCCOMB_X60_Y69_N28
\fifo_tfr_cmd[15][0]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[15][0]~50_combout\ = ((!\Decoder1~6_combout\ & ((!\Decoder1~13_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~6_combout\,
	datad => \Decoder1~13_combout\,
	combout => \fifo_tfr_cmd[15][0]~50_combout\);

-- Location: LCCOMB_X60_Y69_N10
\fifo_tfr_cmd[15][0]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[15][0]~51_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[15][0]~50_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[15][0]~50_combout\,
	combout => \fifo_tfr_cmd[15][0]~51_combout\);

-- Location: FF_X56_Y69_N9
\fifo_tfr_cmd[15][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[15][10]~202_combout\,
	asdata => \~GND~combout\,
	sclr => \RST~input_o\,
	sload => \ALT_INV_chipselect~input_o\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][9]~q\);

-- Location: LCCOMB_X56_Y69_N4
\fifo_tfr_cmd~186\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~186_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \fifo_tfr_cmd[15][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \fifo_tfr_cmd[15][9]~q\,
	combout => \fifo_tfr_cmd~186_combout\);

-- Location: LCCOMB_X59_Y67_N12
\fifo_tfr_cmd~187\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~187_combout\ = (\fifo_tfr_cmd~186_combout\) # ((\p_main~0_combout\ & (\Decoder1~12_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~186_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~12_combout\,
	datad => \fifo_tfr_cmd~182_combout\,
	combout => \fifo_tfr_cmd~187_combout\);

-- Location: LCCOMB_X59_Y67_N16
\fifo_tfr_cmd[14][5]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[14][5]~38_combout\ = ((!\Decoder1~13_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~12_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~13_combout\,
	datac => \Decoder1~12_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[14][5]~38_combout\);

-- Location: LCCOMB_X59_Y67_N2
\fifo_tfr_cmd[14][5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[14][5]~39_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[14][5]~38_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[14][5]~38_combout\,
	combout => \fifo_tfr_cmd[14][5]~39_combout\);

-- Location: FF_X59_Y67_N13
\fifo_tfr_cmd[14][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~187_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][9]~q\);

-- Location: LCCOMB_X60_Y67_N4
\fifo_tfr_cmd~200\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~200_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \fifo_tfr_cmd[14][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datad => \fifo_tfr_cmd[14][9]~q\,
	combout => \fifo_tfr_cmd~200_combout\);

-- Location: LCCOMB_X59_Y67_N14
\fifo_tfr_cmd~201\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~201_combout\ = (\fifo_tfr_cmd~200_combout\) # ((\p_main~0_combout\ & (\Decoder1~11_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~200_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~11_combout\,
	datad => \fifo_tfr_cmd~182_combout\,
	combout => \fifo_tfr_cmd~201_combout\);

-- Location: LCCOMB_X59_Y67_N24
\fifo_tfr_cmd[13][5]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[13][5]~47_combout\ = ((!\Decoder1~12_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~11_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~11_combout\,
	datac => \Decoder1~12_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[13][5]~47_combout\);

-- Location: LCCOMB_X59_Y67_N30
\fifo_tfr_cmd[13][5]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[13][5]~48_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[13][5]~47_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[13][5]~47_combout\,
	combout => \fifo_tfr_cmd[13][5]~48_combout\);

-- Location: FF_X59_Y67_N15
\fifo_tfr_cmd[13][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~201_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][9]~q\);

-- Location: LCCOMB_X56_Y65_N24
\fifo_tfr_cmd~184\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~184_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \fifo_tfr_cmd[13][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \fifo_tfr_cmd[13][9]~q\,
	combout => \fifo_tfr_cmd~184_combout\);

-- Location: LCCOMB_X59_Y65_N22
\fifo_tfr_cmd~185\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~185_combout\ = (\fifo_tfr_cmd~184_combout\) # ((\p_main~0_combout\ & (\Decoder1~10_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~184_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~10_combout\,
	datad => \fifo_tfr_cmd~182_combout\,
	combout => \fifo_tfr_cmd~185_combout\);

-- Location: LCCOMB_X59_Y67_N10
\fifo_tfr_cmd[12][2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[12][2]~35_combout\ = ((!\Decoder1~11_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~10_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~11_combout\,
	datac => \Decoder1~10_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[12][2]~35_combout\);

-- Location: LCCOMB_X59_Y67_N0
\fifo_tfr_cmd[12][2]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[12][2]~36_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[12][2]~35_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[12][2]~35_combout\,
	combout => \fifo_tfr_cmd[12][2]~36_combout\);

-- Location: FF_X59_Y65_N23
\fifo_tfr_cmd[12][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~185_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][9]~q\);

-- Location: LCCOMB_X59_Y65_N10
\fifo_tfr_cmd~198\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~198_combout\ = (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][9]~q\ & !\RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[12][9]~q\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~198_combout\);

-- Location: LCCOMB_X59_Y65_N16
\fifo_tfr_cmd~199\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~199_combout\ = (\fifo_tfr_cmd~198_combout\) # ((\p_main~0_combout\ & (\Decoder1~9_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~198_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~9_combout\,
	datad => \fifo_tfr_cmd~182_combout\,
	combout => \fifo_tfr_cmd~199_combout\);

-- Location: LCCOMB_X60_Y65_N6
\fifo_tfr_cmd[11][2]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[11][2]~44_combout\ = ((!\Decoder1~10_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~9_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~9_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~10_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[11][2]~44_combout\);

-- Location: LCCOMB_X60_Y65_N20
\fifo_tfr_cmd[11][2]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[11][2]~45_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[11][2]~44_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \RST~input_o\,
	datad => \fifo_tfr_cmd[11][2]~44_combout\,
	combout => \fifo_tfr_cmd[11][2]~45_combout\);

-- Location: FF_X59_Y65_N17
\fifo_tfr_cmd[11][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~199_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][9]~q\);

-- Location: LCCOMB_X59_Y65_N4
\fifo_tfr_cmd~181\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~181_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[11][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[11][9]~q\,
	combout => \fifo_tfr_cmd~181_combout\);

-- Location: LCCOMB_X61_Y65_N24
\fifo_tfr_cmd~183\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~183_combout\ = (\fifo_tfr_cmd~181_combout\) # ((\p_main~0_combout\ & (\fifo_tfr_cmd~182_combout\ & \Decoder1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \fifo_tfr_cmd~181_combout\,
	datac => \fifo_tfr_cmd~182_combout\,
	datad => \Decoder1~8_combout\,
	combout => \fifo_tfr_cmd~183_combout\);

-- Location: LCCOMB_X61_Y65_N18
\fifo_tfr_cmd[10][4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[10][4]~32_combout\ = ((!\Decoder1~9_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~8_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~8_combout\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~9_combout\,
	combout => \fifo_tfr_cmd[10][4]~32_combout\);

-- Location: LCCOMB_X61_Y65_N4
\fifo_tfr_cmd[10][4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[10][4]~33_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[10][4]~32_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[10][4]~32_combout\,
	combout => \fifo_tfr_cmd[10][4]~33_combout\);

-- Location: FF_X61_Y65_N25
\fifo_tfr_cmd[10][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~183_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][9]~q\);

-- Location: LCCOMB_X61_Y65_N26
\fifo_tfr_cmd~203\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~203_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[10][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RST~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[10][9]~q\,
	combout => \fifo_tfr_cmd~203_combout\);

-- Location: LCCOMB_X60_Y65_N24
\fifo_tfr_cmd~204\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~204_combout\ = (\fifo_tfr_cmd~203_combout\) # ((\Decoder1~15_combout\ & (\fifo_tfr_cmd~182_combout\ & \p_main~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~15_combout\,
	datab => \fifo_tfr_cmd~203_combout\,
	datac => \fifo_tfr_cmd~182_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd~204_combout\);

-- Location: LCCOMB_X60_Y65_N26
\fifo_tfr_cmd[9][4]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[9][4]~53_combout\ = ((!\Decoder1~8_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~15_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~8_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~15_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[9][4]~53_combout\);

-- Location: LCCOMB_X60_Y65_N28
\fifo_tfr_cmd[9][4]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[9][4]~54_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[9][4]~53_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd[9][4]~53_combout\,
	datad => \fifo_tfr_cmd~19_combout\,
	combout => \fifo_tfr_cmd[9][4]~54_combout\);

-- Location: FF_X60_Y65_N25
\fifo_tfr_cmd[9][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~204_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][9]~q\);

-- Location: LCCOMB_X61_Y64_N12
\fifo_tfr_cmd~188\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~188_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[9][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[9][9]~q\,
	combout => \fifo_tfr_cmd~188_combout\);

-- Location: LCCOMB_X61_Y64_N8
\fifo_tfr_cmd~189\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~189_combout\ = (\fifo_tfr_cmd~188_combout\) # ((\p_main~0_combout\ & (\fifo_tfr_cmd~182_combout\ & \Decoder1~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~188_combout\,
	datab => \p_main~0_combout\,
	datac => \fifo_tfr_cmd~182_combout\,
	datad => \Decoder1~14_combout\,
	combout => \fifo_tfr_cmd~189_combout\);

-- Location: LCCOMB_X60_Y67_N16
\fifo_tfr_cmd[8][4]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[8][4]~41_combout\ = ((!\Decoder1~15_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~14_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \Decoder1~14_combout\,
	datac => \Decoder1~15_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd[8][4]~41_combout\);

-- Location: LCCOMB_X61_Y64_N14
\fifo_tfr_cmd[8][4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[8][4]~42_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[8][4]~41_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd[5][2]~17_combout\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[8][4]~41_combout\,
	combout => \fifo_tfr_cmd[8][4]~42_combout\);

-- Location: FF_X61_Y64_N9
\fifo_tfr_cmd[8][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~189_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][9]~q\);

-- Location: LCCOMB_X57_Y68_N0
\fifo_tfr_cmd~194\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~194_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[8][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[8][9]~q\,
	combout => \fifo_tfr_cmd~194_combout\);

-- Location: LCCOMB_X59_Y69_N8
\fifo_tfr_cmd~195\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~195_combout\ = (\fifo_tfr_cmd~194_combout\) # ((\fifo_tfr_cmd~182_combout\ & (\p_main~0_combout\ & \Decoder1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~182_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~5_combout\,
	datad => \fifo_tfr_cmd~194_combout\,
	combout => \fifo_tfr_cmd~195_combout\);

-- Location: LCCOMB_X59_Y69_N28
\fifo_tfr_cmd[7][4]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[7][4]~62_combout\ = ((!\Decoder1~14_combout\ & ((!\Decoder1~5_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~5_combout\,
	datad => \Decoder1~14_combout\,
	combout => \fifo_tfr_cmd[7][4]~62_combout\);

-- Location: LCCOMB_X59_Y69_N2
\fifo_tfr_cmd[7][4]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[7][4]~63_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[7][4]~62_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[7][4]~62_combout\,
	combout => \fifo_tfr_cmd[7][4]~63_combout\);

-- Location: FF_X59_Y69_N9
\fifo_tfr_cmd[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~195_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][9]~q\);

-- Location: LCCOMB_X56_Y69_N6
\fifo_tfr_cmd~209\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~209_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \fifo_tfr_cmd[7][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \fifo_tfr_cmd[7][9]~q\,
	combout => \fifo_tfr_cmd~209_combout\);

-- Location: LCCOMB_X59_Y69_N30
\fifo_tfr_cmd~210\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~210_combout\ = (\fifo_tfr_cmd~209_combout\) # ((\Decoder1~4_combout\ & (\p_main~0_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \p_main~0_combout\,
	datac => \fifo_tfr_cmd~182_combout\,
	datad => \fifo_tfr_cmd~209_combout\,
	combout => \fifo_tfr_cmd~210_combout\);

-- Location: LCCOMB_X59_Y69_N0
\fifo_tfr_cmd[6][4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[6][4]~26_combout\ = ((!\Decoder1~5_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~4_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~4_combout\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~5_combout\,
	datad => \MODE.mTFR_CMD~q\,
	combout => \fifo_tfr_cmd[6][4]~26_combout\);

-- Location: LCCOMB_X59_Y69_N18
\fifo_tfr_cmd[6][4]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[6][4]~27_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[6][4]~26_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[6][4]~26_combout\,
	combout => \fifo_tfr_cmd[6][4]~27_combout\);

-- Location: FF_X59_Y69_N31
\fifo_tfr_cmd[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~210_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][9]~q\);

-- Location: LCCOMB_X58_Y69_N24
\fifo_tfr_cmd~192\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~192_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \fifo_tfr_cmd[6][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datad => \fifo_tfr_cmd[6][9]~q\,
	combout => \fifo_tfr_cmd~192_combout\);

-- Location: LCCOMB_X58_Y69_N28
\fifo_tfr_cmd~193\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~193_combout\ = (\fifo_tfr_cmd~192_combout\) # ((\p_main~0_combout\ & (\Decoder1~1_combout\ & \fifo_tfr_cmd~182_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \fifo_tfr_cmd~192_combout\,
	datac => \Decoder1~1_combout\,
	datad => \fifo_tfr_cmd~182_combout\,
	combout => \fifo_tfr_cmd~193_combout\);

-- Location: LCCOMB_X58_Y69_N12
\fifo_tfr_cmd[5][2]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[5][2]~56_combout\ = ((!\Decoder1~4_combout\ & ((!\Decoder1~1_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~1_combout\,
	datad => \Decoder1~4_combout\,
	combout => \fifo_tfr_cmd[5][2]~56_combout\);

-- Location: LCCOMB_X58_Y69_N30
\fifo_tfr_cmd[5][2]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[5][2]~57_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[5][2]~56_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[5][2]~56_combout\,
	combout => \fifo_tfr_cmd[5][2]~57_combout\);

-- Location: FF_X58_Y69_N29
\fifo_tfr_cmd[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~193_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][9]~q\);

-- Location: LCCOMB_X57_Y68_N30
\fifo_tfr_cmd~207\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~207_combout\ = (!\chipselect~input_o\ & (\fifo_tfr_cmd[5][9]~q\ & !\RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[5][9]~q\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~207_combout\);

-- Location: LCCOMB_X58_Y67_N16
\fifo_tfr_cmd~208\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~208_combout\ = (\fifo_tfr_cmd~207_combout\) # ((\fifo_tfr_cmd~182_combout\ & (\p_main~0_combout\ & \Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd~182_combout\,
	datab => \p_main~0_combout\,
	datac => \fifo_tfr_cmd~207_combout\,
	datad => \Decoder1~0_combout\,
	combout => \fifo_tfr_cmd~208_combout\);

-- Location: LCCOMB_X58_Y69_N14
\fifo_tfr_cmd[4][4]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[4][4]~18_combout\ = ((!\Decoder1~1_combout\ & ((!\Decoder1~0_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~1_combout\,
	datad => \Decoder1~0_combout\,
	combout => \fifo_tfr_cmd[4][4]~18_combout\);

-- Location: LCCOMB_X58_Y67_N10
\fifo_tfr_cmd[4][4]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[4][4]~20_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[4][4]~18_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[4][4]~18_combout\,
	combout => \fifo_tfr_cmd[4][4]~20_combout\);

-- Location: FF_X58_Y67_N17
\fifo_tfr_cmd[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~208_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][9]~q\);

-- Location: LCCOMB_X57_Y68_N18
\fifo_tfr_cmd~190\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~190_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[4][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[4][9]~q\,
	combout => \fifo_tfr_cmd~190_combout\);

-- Location: LCCOMB_X58_Y69_N18
\fifo_tfr_cmd~191\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~191_combout\ = (\fifo_tfr_cmd~190_combout\) # ((\p_main~0_combout\ & (\fifo_tfr_cmd~182_combout\ & \Decoder1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \fifo_tfr_cmd~182_combout\,
	datac => \Decoder1~3_combout\,
	datad => \fifo_tfr_cmd~190_combout\,
	combout => \fifo_tfr_cmd~191_combout\);

-- Location: LCCOMB_X58_Y69_N0
\fifo_tfr_cmd[3][2]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[3][2]~59_combout\ = ((!\Decoder1~0_combout\ & ((!\Decoder1~3_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => \p_main~0_combout\,
	datac => \Decoder1~3_combout\,
	datad => \Decoder1~0_combout\,
	combout => \fifo_tfr_cmd[3][2]~59_combout\);

-- Location: LCCOMB_X58_Y69_N26
\fifo_tfr_cmd[3][2]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[3][2]~60_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[3][2]~59_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd~19_combout\,
	datac => \fifo_tfr_cmd[5][2]~17_combout\,
	datad => \fifo_tfr_cmd[3][2]~59_combout\,
	combout => \fifo_tfr_cmd[3][2]~60_combout\);

-- Location: FF_X58_Y69_N19
\fifo_tfr_cmd[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~191_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][9]~q\);

-- Location: LCCOMB_X60_Y70_N18
\fifo_tfr_cmd~205\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~205_combout\ = (!\chipselect~input_o\ & (\fifo_tfr_cmd[3][9]~q\ & !\RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[3][9]~q\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~205_combout\);

-- Location: LCCOMB_X60_Y70_N6
\fifo_tfr_cmd~206\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~206_combout\ = (\fifo_tfr_cmd~205_combout\) # ((\Decoder1~2_combout\ & (\fifo_tfr_cmd~182_combout\ & \p_main~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \fifo_tfr_cmd~182_combout\,
	datac => \p_main~0_combout\,
	datad => \fifo_tfr_cmd~205_combout\,
	combout => \fifo_tfr_cmd~206_combout\);

-- Location: LCCOMB_X60_Y70_N16
\fifo_tfr_cmd[2][5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[2][5]~23_combout\ = ((!\Decoder1~3_combout\ & ((!\p_main~0_combout\) # (!\Decoder1~2_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~2_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \p_main~0_combout\,
	datad => \Decoder1~3_combout\,
	combout => \fifo_tfr_cmd[2][5]~23_combout\);

-- Location: LCCOMB_X60_Y70_N10
\fifo_tfr_cmd[2][5]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[2][5]~24_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[2][5]~23_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \fifo_tfr_cmd[5][2]~17_combout\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[2][5]~23_combout\,
	combout => \fifo_tfr_cmd[2][5]~24_combout\);

-- Location: FF_X60_Y70_N7
\fifo_tfr_cmd[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~206_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][9]~q\);

-- Location: LCCOMB_X60_Y70_N8
\fifo_tfr_cmd~196\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~196_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & \fifo_tfr_cmd[2][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[2][9]~q\,
	combout => \fifo_tfr_cmd~196_combout\);

-- Location: LCCOMB_X61_Y69_N12
\fifo_tfr_cmd~197\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~197_combout\ = (\fifo_tfr_cmd~196_combout\) # ((\Decoder1~7_combout\ & (\fifo_tfr_cmd~182_combout\ & \p_main~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~7_combout\,
	datab => \fifo_tfr_cmd~182_combout\,
	datac => \p_main~0_combout\,
	datad => \fifo_tfr_cmd~196_combout\,
	combout => \fifo_tfr_cmd~197_combout\);

-- Location: LCCOMB_X60_Y69_N0
\fifo_tfr_cmd[1][1]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[1][1]~65_combout\ = ((!\Decoder1~2_combout\ & ((!\Decoder1~7_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~2_combout\,
	datad => \Decoder1~7_combout\,
	combout => \fifo_tfr_cmd[1][1]~65_combout\);

-- Location: LCCOMB_X60_Y69_N2
\fifo_tfr_cmd[1][1]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[1][1]~66_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[1][1]~65_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[1][1]~65_combout\,
	combout => \fifo_tfr_cmd[1][1]~66_combout\);

-- Location: FF_X61_Y69_N13
\fifo_tfr_cmd[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~197_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][9]~q\);

-- Location: LCCOMB_X61_Y69_N10
\fifo_tfr_cmd~211\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~211_combout\ = (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][9]~q\ & !\RST~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[1][9]~q\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~211_combout\);

-- Location: LCCOMB_X60_Y69_N26
\fifo_tfr_cmd~212\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~212_combout\ = (\fifo_tfr_cmd~211_combout\) # ((\Decoder1~6_combout\ & (\fifo_tfr_cmd~182_combout\ & \p_main~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder1~6_combout\,
	datab => \fifo_tfr_cmd~182_combout\,
	datac => \fifo_tfr_cmd~211_combout\,
	datad => \p_main~0_combout\,
	combout => \fifo_tfr_cmd~212_combout\);

-- Location: LCCOMB_X60_Y69_N24
\fifo_tfr_cmd[0][5]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[0][5]~29_combout\ = ((!\Decoder1~7_combout\ & ((!\Decoder1~6_combout\) # (!\p_main~0_combout\)))) # (!\MODE.mTFR_CMD~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \p_main~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Decoder1~6_combout\,
	datad => \Decoder1~7_combout\,
	combout => \fifo_tfr_cmd[0][5]~29_combout\);

-- Location: LCCOMB_X60_Y69_N6
\fifo_tfr_cmd[0][5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[0][5]~30_combout\ = (\RST~input_o\) # ((!\fifo_tfr_cmd~19_combout\ & ((!\fifo_tfr_cmd[0][5]~29_combout\) # (!\fifo_tfr_cmd[5][2]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~17_combout\,
	datab => \RST~input_o\,
	datac => \fifo_tfr_cmd~19_combout\,
	datad => \fifo_tfr_cmd[0][5]~29_combout\,
	combout => \fifo_tfr_cmd[0][5]~30_combout\);

-- Location: FF_X60_Y69_N27
\fifo_tfr_cmd[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~212_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][9]~q\);

-- Location: FF_X65_Y69_N21
wr_n_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd[0][9]~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \wr_n_internal~q\);

-- Location: LCCOMB_X61_Y69_N22
\fifo_rx_data_amnt_int[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[1]~10_combout\ = (fifo_rx_data_amnt_int(1) & (!\fifo_rx_data_amnt_int[0]~9\)) # (!fifo_rx_data_amnt_int(1) & ((\fifo_rx_data_amnt_int[0]~9\) # (GND)))
-- \fifo_rx_data_amnt_int[1]~11\ = CARRY((!\fifo_rx_data_amnt_int[0]~9\) # (!fifo_rx_data_amnt_int(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(1),
	datad => VCC,
	cin => \fifo_rx_data_amnt_int[0]~9\,
	combout => \fifo_rx_data_amnt_int[1]~10_combout\,
	cout => \fifo_rx_data_amnt_int[1]~11\);

-- Location: LCCOMB_X61_Y69_N28
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = fifo_rx_data_amnt_int(1) $ (!fifo_rx_data_amnt_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fifo_rx_data_amnt_int(1),
	datad => fifo_rx_data_amnt_int(0),
	combout => \Add5~2_combout\);

-- Location: FF_X61_Y69_N23
\fifo_rx_data_amnt_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt_int[1]~10_combout\,
	asdata => \Add5~2_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	sload => \chipselect~input_o\,
	ena => \fifo_rx_data_amnt_int[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt_int(1));

-- Location: LCCOMB_X61_Y69_N24
\fifo_rx_data_amnt_int[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[2]~12_combout\ = (fifo_rx_data_amnt_int(2) & (\fifo_rx_data_amnt_int[1]~11\ $ (GND))) # (!fifo_rx_data_amnt_int(2) & (!\fifo_rx_data_amnt_int[1]~11\ & VCC))
-- \fifo_rx_data_amnt_int[2]~13\ = CARRY((fifo_rx_data_amnt_int(2) & !\fifo_rx_data_amnt_int[1]~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => fifo_rx_data_amnt_int(2),
	datad => VCC,
	cin => \fifo_rx_data_amnt_int[1]~11\,
	combout => \fifo_rx_data_amnt_int[2]~12_combout\,
	cout => \fifo_rx_data_amnt_int[2]~13\);

-- Location: LCCOMB_X61_Y69_N8
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = fifo_rx_data_amnt_int(2) $ (((!fifo_rx_data_amnt_int(1) & !fifo_rx_data_amnt_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_rx_data_amnt_int(2),
	datac => fifo_rx_data_amnt_int(1),
	datad => fifo_rx_data_amnt_int(0),
	combout => \Add5~0_combout\);

-- Location: FF_X61_Y69_N25
\fifo_rx_data_amnt_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt_int[2]~12_combout\,
	asdata => \Add5~0_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	sload => \chipselect~input_o\,
	ena => \fifo_rx_data_amnt_int[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt_int(2));

-- Location: LCCOMB_X61_Y69_N26
\fifo_rx_data_amnt_int[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int[3]~14_combout\ = \fifo_rx_data_amnt_int[2]~13\ $ (fifo_rx_data_amnt_int(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => fifo_rx_data_amnt_int(3),
	cin => \fifo_rx_data_amnt_int[2]~13\,
	combout => \fifo_rx_data_amnt_int[3]~14_combout\);

-- Location: LCCOMB_X61_Y69_N18
\Add5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~1_combout\ = fifo_rx_data_amnt_int(3) $ (((!fifo_rx_data_amnt_int(2) & (!fifo_rx_data_amnt_int(1) & !fifo_rx_data_amnt_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => fifo_rx_data_amnt_int(2),
	datac => fifo_rx_data_amnt_int(1),
	datad => fifo_rx_data_amnt_int(0),
	combout => \Add5~1_combout\);

-- Location: FF_X61_Y69_N27
\fifo_rx_data_amnt_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt_int[3]~14_combout\,
	asdata => \Add5~1_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	sload => \chipselect~input_o\,
	ena => \fifo_rx_data_amnt_int[2]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt_int(3));

-- Location: LCCOMB_X65_Y69_N12
\fifo_rx_data~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~32_combout\ = (fifo_rx_data_amnt_int(2) & fifo_rx_data_amnt_int(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_rx_data_amnt_int(2),
	datad => fifo_rx_data_amnt_int(1),
	combout => \fifo_rx_data~32_combout\);

-- Location: LCCOMB_X65_Y69_N16
\fifo_rx_data_amnt_int~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt_int~6_combout\ = (\DONE~input_o\ & (!\chipselect~input_o\ & \STATE.sWAITING~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DONE~input_o\,
	datab => \chipselect~input_o\,
	datad => \STATE.sWAITING~q\,
	combout => \fifo_rx_data_amnt_int~6_combout\);

-- Location: LCCOMB_X65_Y69_N0
\fifo_rx_data~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~27_combout\ = (\wr_n_internal~q\ & (fifo_rx_data_amnt_int(0) & \fifo_rx_data_amnt_int~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \wr_n_internal~q\,
	datac => fifo_rx_data_amnt_int(0),
	datad => \fifo_rx_data_amnt_int~6_combout\,
	combout => \fifo_rx_data~27_combout\);

-- Location: LCCOMB_X67_Y69_N14
\fifo_rx_data[15][3]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[15][3]~51_combout\ = ((fifo_rx_data_amnt_int(3) & (\fifo_rx_data~32_combout\ & \fifo_rx_data~27_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => \fifo_rx_data_amnt_int[2]~7_combout\,
	datac => \fifo_rx_data~32_combout\,
	datad => \fifo_rx_data~27_combout\,
	combout => \fifo_rx_data[15][3]~51_combout\);

-- Location: FF_X68_Y67_N13
\fifo_rx_data[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~50_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][0]~q\);

-- Location: LCCOMB_X68_Y67_N28
\fifo_rx_data~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~46_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[15][0]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[0]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[15][0]~q\,
	combout => \fifo_rx_data~46_combout\);

-- Location: LCCOMB_X65_Y69_N22
\fifo_rx_data~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~6_combout\ = (!fifo_rx_data_amnt_int(0) & (\wr_n_internal~q\ & \fifo_rx_data_amnt_int~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(0),
	datab => \wr_n_internal~q\,
	datad => \fifo_rx_data_amnt_int~6_combout\,
	combout => \fifo_rx_data~6_combout\);

-- Location: LCCOMB_X69_Y69_N20
\fifo_rx_data[14][2]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[14][2]~47_combout\ = ((fifo_rx_data_amnt_int(3) & (\fifo_rx_data~32_combout\ & \fifo_rx_data~6_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => \fifo_rx_data~32_combout\,
	datac => \fifo_rx_data~6_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[14][2]~47_combout\);

-- Location: FF_X68_Y67_N29
\fifo_rx_data[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~46_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][0]~q\);

-- Location: LCCOMB_X69_Y69_N8
\fifo_rx_data~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~44_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[14][0]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[0]~input_o\,
	datab => \fifo_rx_data[14][0]~q\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data~44_combout\);

-- Location: LCCOMB_X65_Y69_N14
\fifo_rx_data~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~23_combout\ = (\wr_n_internal~q\ & (\fifo_rx_data_amnt_int~6_combout\ & (fifo_rx_data_amnt_int(0) & !fifo_rx_data_amnt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr_n_internal~q\,
	datab => \fifo_rx_data_amnt_int~6_combout\,
	datac => fifo_rx_data_amnt_int(0),
	datad => fifo_rx_data_amnt_int(1),
	combout => \fifo_rx_data~23_combout\);

-- Location: LCCOMB_X69_Y69_N2
\fifo_rx_data[13][4]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[13][4]~45_combout\ = ((fifo_rx_data_amnt_int(3) & (fifo_rx_data_amnt_int(2) & \fifo_rx_data~23_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => fifo_rx_data_amnt_int(2),
	datac => \fifo_rx_data~23_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[13][4]~45_combout\);

-- Location: FF_X69_Y69_N9
\fifo_rx_data[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~44_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][0]~q\);

-- Location: LCCOMB_X69_Y67_N0
\fifo_rx_data~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~48_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[13][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_rx_data[13][0]~q\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~48_combout\);

-- Location: LCCOMB_X65_Y69_N20
\fifo_rx_data~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~25_combout\ = (!fifo_rx_data_amnt_int(0) & (!fifo_rx_data_amnt_int(1) & (\wr_n_internal~q\ & \fifo_rx_data_amnt_int~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(0),
	datab => fifo_rx_data_amnt_int(1),
	datac => \wr_n_internal~q\,
	datad => \fifo_rx_data_amnt_int~6_combout\,
	combout => \fifo_rx_data~25_combout\);

-- Location: LCCOMB_X69_Y69_N6
\fifo_rx_data[12][3]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[12][3]~49_combout\ = ((fifo_rx_data_amnt_int(3) & (fifo_rx_data_amnt_int(2) & \fifo_rx_data~25_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => fifo_rx_data_amnt_int(2),
	datac => \fifo_rx_data~25_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[12][3]~49_combout\);

-- Location: FF_X69_Y67_N1
\fifo_rx_data[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~48_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][0]~q\);

-- Location: LCCOMB_X66_Y68_N22
\fifo_rx_data~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~26_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[12][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[12][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~26_combout\);

-- Location: LCCOMB_X65_Y69_N30
\fifo_rx_data~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~20_combout\ = (fifo_rx_data_amnt_int(3) & !fifo_rx_data_amnt_int(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_rx_data_amnt_int(3),
	datad => fifo_rx_data_amnt_int(2),
	combout => \fifo_rx_data~20_combout\);

-- Location: LCCOMB_X67_Y68_N28
\fifo_rx_data[11][0]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[11][0]~28_combout\ = ((fifo_rx_data_amnt_int(1) & (\fifo_rx_data~20_combout\ & \fifo_rx_data~27_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(1),
	datab => \fifo_rx_data~20_combout\,
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~27_combout\,
	combout => \fifo_rx_data[11][0]~28_combout\);

-- Location: FF_X66_Y68_N23
\fifo_rx_data[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~26_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][0]~q\);

-- Location: LCCOMB_X66_Y68_N28
\fifo_rx_data~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~19_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[11][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[11][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~19_combout\);

-- Location: LCCOMB_X65_Y69_N8
\fifo_rx_data[10][1]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[10][1]~21_combout\ = ((\fifo_rx_data~20_combout\ & (fifo_rx_data_amnt_int(1) & \fifo_rx_data~6_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~20_combout\,
	datab => fifo_rx_data_amnt_int(1),
	datac => \fifo_rx_data~6_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[10][1]~21_combout\);

-- Location: FF_X66_Y68_N29
\fifo_rx_data[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~19_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][0]~q\);

-- Location: LCCOMB_X67_Y68_N16
\fifo_rx_data~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~22_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[10][0]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[0]~input_o\,
	datac => \fifo_rx_data[10][0]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~22_combout\);

-- Location: LCCOMB_X67_Y68_N2
\fifo_rx_data[9][2]~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[9][2]~157_combout\ = ((fifo_rx_data_amnt_int(3) & (!fifo_rx_data_amnt_int(2) & \fifo_rx_data~23_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(3),
	datab => fifo_rx_data_amnt_int(2),
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~23_combout\,
	combout => \fifo_rx_data[9][2]~157_combout\);

-- Location: FF_X67_Y68_N17
\fifo_rx_data[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~22_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][0]~q\);

-- Location: LCCOMB_X65_Y68_N30
\fifo_rx_data~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~24_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[9][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[9][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~24_combout\);

-- Location: LCCOMB_X65_Y68_N10
\fifo_rx_data[8][7]~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[8][7]~158_combout\ = ((!fifo_rx_data_amnt_int(2) & (fifo_rx_data_amnt_int(3) & \fifo_rx_data~25_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(2),
	datab => fifo_rx_data_amnt_int(3),
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~25_combout\,
	combout => \fifo_rx_data[8][7]~158_combout\);

-- Location: FF_X65_Y68_N31
\fifo_rx_data[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~24_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][0]~q\);

-- Location: LCCOMB_X65_Y70_N18
\fifo_rx_data~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~36_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[8][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_rx_data[8][0]~q\,
	datac => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~36_combout\);

-- Location: LCCOMB_X65_Y69_N26
\fifo_rx_data[7][2]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[7][2]~37_combout\ = ((!fifo_rx_data_amnt_int(3) & (\fifo_rx_data~27_combout\ & \fifo_rx_data~32_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data_amnt_int[2]~7_combout\,
	datab => fifo_rx_data_amnt_int(3),
	datac => \fifo_rx_data~27_combout\,
	datad => \fifo_rx_data~32_combout\,
	combout => \fifo_rx_data[7][2]~37_combout\);

-- Location: FF_X65_Y70_N19
\fifo_rx_data[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~36_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][0]~q\);

-- Location: LCCOMB_X65_Y70_N20
\fifo_rx_data~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~31_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[7][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_rx_data[7][0]~q\,
	datac => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~31_combout\);

-- Location: LCCOMB_X65_Y69_N10
\fifo_rx_data[6][0]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[6][0]~33_combout\ = ((\fifo_rx_data~6_combout\ & (!fifo_rx_data_amnt_int(3) & \fifo_rx_data~32_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~6_combout\,
	datab => fifo_rx_data_amnt_int(3),
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~32_combout\,
	combout => \fifo_rx_data[6][0]~33_combout\);

-- Location: FF_X65_Y70_N21
\fifo_rx_data[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~31_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][0]~q\);

-- Location: LCCOMB_X66_Y69_N24
\fifo_rx_data~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~29_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[6][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[6][0]~q\,
	datac => \RD_BYTE[0]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~29_combout\);

-- Location: LCCOMB_X65_Y69_N6
\fifo_rx_data[5][4]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[5][4]~30_combout\ = ((fifo_rx_data_amnt_int(2) & (\fifo_rx_data~23_combout\ & !fifo_rx_data_amnt_int(3)))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data_amnt_int[2]~7_combout\,
	datab => fifo_rx_data_amnt_int(2),
	datac => \fifo_rx_data~23_combout\,
	datad => fifo_rx_data_amnt_int(3),
	combout => \fifo_rx_data[5][4]~30_combout\);

-- Location: FF_X66_Y69_N25
\fifo_rx_data[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~29_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][0]~q\);

-- Location: LCCOMB_X66_Y69_N22
\fifo_rx_data~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~34_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[5][0]~q\,
	datac => \RD_BYTE[0]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~34_combout\);

-- Location: LCCOMB_X65_Y69_N4
\fifo_rx_data[4][1]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[4][1]~35_combout\ = ((\fifo_rx_data~25_combout\ & (fifo_rx_data_amnt_int(2) & !fifo_rx_data_amnt_int(3)))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~25_combout\,
	datab => fifo_rx_data_amnt_int(2),
	datac => fifo_rx_data_amnt_int(3),
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[4][1]~35_combout\);

-- Location: FF_X66_Y69_N23
\fifo_rx_data[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~34_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][0]~q\);

-- Location: LCCOMB_X66_Y70_N8
\fifo_rx_data~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~42_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[4][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[4][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~42_combout\);

-- Location: LCCOMB_X66_Y70_N28
\fifo_rx_data[3][1]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[3][1]~43_combout\ = ((\fifo_rx_data~7_combout\ & (fifo_rx_data_amnt_int(1) & \fifo_rx_data~27_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~7_combout\,
	datab => fifo_rx_data_amnt_int(1),
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~27_combout\,
	combout => \fifo_rx_data[3][1]~43_combout\);

-- Location: FF_X66_Y70_N9
\fifo_rx_data[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~42_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][0]~q\);

-- Location: LCCOMB_X65_Y67_N8
\fifo_rx_data~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~38_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[3][0]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[0]~input_o\,
	datac => \fifo_rx_data[3][0]~q\,
	combout => \fifo_rx_data~38_combout\);

-- Location: LCCOMB_X65_Y69_N24
\fifo_rx_data[2][1]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[2][1]~39_combout\ = ((\fifo_rx_data~7_combout\ & (fifo_rx_data_amnt_int(1) & \fifo_rx_data~6_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~7_combout\,
	datab => fifo_rx_data_amnt_int(1),
	datac => \fifo_rx_data~6_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[2][1]~39_combout\);

-- Location: FF_X65_Y67_N9
\fifo_rx_data[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~38_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][0]~q\);

-- Location: LCCOMB_X66_Y67_N18
\fifo_rx_data~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~40_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[2][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~40_combout\);

-- Location: LCCOMB_X66_Y67_N22
\fifo_rx_data[1][3]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[1][3]~41_combout\ = ((!fifo_rx_data_amnt_int(1) & (\fifo_rx_data~7_combout\ & \fifo_rx_data~27_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt_int(1),
	datab => \fifo_rx_data~7_combout\,
	datac => \fifo_rx_data_amnt_int[2]~7_combout\,
	datad => \fifo_rx_data~27_combout\,
	combout => \fifo_rx_data[1][3]~41_combout\);

-- Location: FF_X66_Y67_N19
\fifo_rx_data[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~40_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][0]~q\);

-- Location: LCCOMB_X65_Y67_N4
\fifo_rx_data~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~4_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[1][0]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[1][0]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[0]~input_o\,
	combout => \fifo_rx_data~4_combout\);

-- Location: LCCOMB_X65_Y69_N28
\fifo_rx_data[0][0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[0][0]~10_combout\ = ((\fifo_rx_data~7_combout\ & (!fifo_rx_data_amnt_int(1) & \fifo_rx_data~6_combout\))) # (!\fifo_rx_data_amnt_int[2]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data~7_combout\,
	datab => fifo_rx_data_amnt_int(1),
	datac => \fifo_rx_data~6_combout\,
	datad => \fifo_rx_data_amnt_int[2]~7_combout\,
	combout => \fifo_rx_data[0][0]~10_combout\);

-- Location: FF_X65_Y67_N5
\fifo_rx_data[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~4_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][0]~q\);

-- Location: LCCOMB_X62_Y70_N24
\errors_tot_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_tot_int~0_combout\ = (!errors_tot_int(0) & !\chipselect~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => errors_tot_int(0),
	datad => \chipselect~input_o\,
	combout => \errors_tot_int~0_combout\);

-- Location: IOIBUF_X60_Y73_N15
\NO_ACK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_NO_ACK,
	o => \NO_ACK~input_o\);

-- Location: LCCOMB_X63_Y69_N4
\MODE~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~17_combout\ = (\address[1]~input_o\ & (\MODE~12_combout\ & ((\MODE.mSTATUS~q\) # (!\address[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \address[1]~input_o\,
	datac => \MODE.mSTATUS~q\,
	datad => \MODE~12_combout\,
	combout => \MODE~17_combout\);

-- Location: FF_X63_Y69_N5
\MODE.mSTATUS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mSTATUS~q\);

-- Location: LCCOMB_X62_Y70_N22
\errors_tot_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_tot_int[0]~1_combout\ = (\wr~input_o\ & (\chipselect~input_o\ & (\writedata[31]~input_o\ & \MODE.mSTATUS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \chipselect~input_o\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mSTATUS~q\,
	combout => \errors_tot_int[0]~1_combout\);

-- Location: LCCOMB_X62_Y70_N28
\errors_tot_int[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_tot_int[0]~2_combout\ = (!\RST~input_o\ & ((\errors_tot_int[0]~1_combout\) # ((\NO_ACK~input_o\ & \fifo_rx_data_amnt_int~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \NO_ACK~input_o\,
	datab => \RST~input_o\,
	datac => \errors_tot_int[0]~1_combout\,
	datad => \fifo_rx_data_amnt_int~6_combout\,
	combout => \errors_tot_int[0]~2_combout\);

-- Location: FF_X62_Y70_N25
\errors_tot_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_tot_int~0_combout\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot_int(0));

-- Location: LCCOMB_X63_Y70_N12
\errors_tot[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_tot[0]~feeder_combout\ = errors_tot_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => errors_tot_int(0),
	combout => \errors_tot[0]~feeder_combout\);

-- Location: FF_X63_Y70_N13
\errors_tot[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_tot[0]~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot(0));

-- Location: LCCOMB_X63_Y69_N30
\MODE~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~18_combout\ = (\MODE~10_combout\ & ((\address[1]~input_o\) # ((\MODE.mCTRL~q\ & \MODE~9_combout\)))) # (!\MODE~10_combout\ & (((\MODE.mCTRL~q\ & \MODE~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE~10_combout\,
	datab => \address[1]~input_o\,
	datac => \MODE.mCTRL~q\,
	datad => \MODE~9_combout\,
	combout => \MODE~18_combout\);

-- Location: FF_X63_Y69_N31
\MODE.mCTRL\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mCTRL~q\);

-- Location: IOIBUF_X67_Y73_N8
\writedata[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(9),
	o => \writedata[9]~input_o\);

-- Location: LCCOMB_X63_Y71_N16
\standard_mode~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \standard_mode~2_combout\ = (\MODE.mCTRL~q\ & ((\writedata[9]~input_o\) # ((\writedata[8]~input_o\) # (\writedata[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[9]~input_o\,
	datab => \writedata[8]~input_o\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mCTRL~q\,
	combout => \standard_mode~2_combout\);

-- Location: LCCOMB_X63_Y71_N18
\standard_mode~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \standard_mode~3_combout\ = (\chipselect~input_o\ & (!\RST~input_o\ & (\wr~input_o\ & \standard_mode~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datac => \wr~input_o\,
	datad => \standard_mode~2_combout\,
	combout => \standard_mode~3_combout\);

-- Location: LCCOMB_X63_Y71_N0
\fast_mode~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fast_mode~0_combout\ = (\standard_mode~3_combout\ & (!\writedata[31]~input_o\ & (!\writedata[8]~input_o\))) # (!\standard_mode~3_combout\ & (((\fast_mode~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[31]~input_o\,
	datab => \writedata[8]~input_o\,
	datac => \fast_mode~q\,
	datad => \standard_mode~3_combout\,
	combout => \fast_mode~0_combout\);

-- Location: FF_X63_Y71_N1
fast_mode : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fast_mode~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fast_mode~q\);

-- Location: FF_X63_Y70_N19
\baud_rate_now[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fast_mode~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_rate_now(0));

-- Location: LCCOMB_X63_Y70_N18
\Selector547~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~1_combout\ = (errors_tot(0) & ((\MODE.mSTATUS~q\) # ((\MODE.mCTRL~q\ & !baud_rate_now(0))))) # (!errors_tot(0) & (\MODE.mCTRL~q\ & (!baud_rate_now(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => errors_tot(0),
	datab => \MODE.mCTRL~q\,
	datac => baud_rate_now(0),
	datad => \MODE.mSTATUS~q\,
	combout => \Selector547~1_combout\);

-- Location: LCCOMB_X63_Y70_N4
\Selector547~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~2_combout\ = (\Selector547~1_combout\) # ((\MODE.mRX_DATA~q\ & \fifo_rx_data[0][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mRX_DATA~q\,
	datac => \fifo_rx_data[0][0]~q\,
	datad => \Selector547~1_combout\,
	combout => \Selector547~2_combout\);

-- Location: LCCOMB_X65_Y66_N20
\fifo_rx_data_amnt[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt[0]~feeder_combout\ = fifo_rx_data_amnt_int(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fifo_rx_data_amnt_int(0),
	combout => \fifo_rx_data_amnt[0]~feeder_combout\);

-- Location: FF_X65_Y66_N21
\fifo_rx_data_amnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt[0]~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt(0));

-- Location: FF_X65_Y66_N27
\fifo_tfr_cmd_amnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(0),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt(0));

-- Location: LCCOMB_X65_Y66_N26
\Selector547~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~0_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (fifo_rx_data_amnt(0) & ((\MODE.mRX_DATA_FIFO~q\)))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((fifo_tfr_cmd_amnt(0)) # ((fifo_rx_data_amnt(0) & \MODE.mRX_DATA_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => fifo_rx_data_amnt(0),
	datac => fifo_tfr_cmd_amnt(0),
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \Selector547~0_combout\);

-- Location: LCCOMB_X59_Y66_N14
\fifo_tfr_cmd~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~49_combout\ = (\chipselect~input_o\ & (\MODE.mTFR_CMD_FIFO~q\ & (\writedata[0]~input_o\ & !\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \writedata[0]~input_o\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~49_combout\);

-- Location: FF_X59_Y66_N15
\fifo_tfr_cmd[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~49_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][0]~q\);

-- Location: LCCOMB_X58_Y66_N8
\fifo_tfr_cmd~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~37_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[15][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[0]~input_o\,
	datac => \fifo_tfr_cmd[15][0]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~37_combout\);

-- Location: LCCOMB_X62_Y67_N6
\fifo_tfr_cmd[1][1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[1][1]~16_combout\ = (\RST~input_o\) # ((\chipselect~input_o\ & !\MODE.mTFR_CMD_FIFO~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \chipselect~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd[1][1]~16_combout\);

-- Location: FF_X58_Y66_N9
\fifo_tfr_cmd[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~37_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][0]~q\);

-- Location: LCCOMB_X59_Y66_N20
\fifo_tfr_cmd~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~46_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][0]~q\,
	datac => \writedata[0]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~46_combout\);

-- Location: FF_X59_Y66_N21
\fifo_tfr_cmd[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~46_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][0]~q\);

-- Location: LCCOMB_X59_Y65_N20
\fifo_tfr_cmd~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~34_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[13][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[0]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[13][0]~q\,
	combout => \fifo_tfr_cmd~34_combout\);

-- Location: FF_X59_Y65_N21
\fifo_tfr_cmd[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~34_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][0]~q\);

-- Location: LCCOMB_X59_Y65_N30
\fifo_tfr_cmd~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~43_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[12][0]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[0]~input_o\,
	combout => \fifo_tfr_cmd~43_combout\);

-- Location: FF_X59_Y65_N31
\fifo_tfr_cmd[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~43_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][0]~q\);

-- Location: LCCOMB_X61_Y65_N0
\fifo_tfr_cmd~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~31_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][0]~q\,
	datab => \writedata[0]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~31_combout\);

-- Location: FF_X61_Y65_N1
\fifo_tfr_cmd[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~31_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][0]~q\);

-- Location: LCCOMB_X60_Y65_N0
\fifo_tfr_cmd~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~52_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[10][0]~q\,
	datad => \writedata[0]~input_o\,
	combout => \fifo_tfr_cmd~52_combout\);

-- Location: FF_X60_Y65_N1
\fifo_tfr_cmd[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~52_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][0]~q\);

-- Location: LCCOMB_X61_Y64_N28
\fifo_tfr_cmd~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~40_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[9][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[9][0]~q\,
	datad => \writedata[0]~input_o\,
	combout => \fifo_tfr_cmd~40_combout\);

-- Location: FF_X61_Y64_N29
\fifo_tfr_cmd[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~40_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][0]~q\);

-- Location: LCCOMB_X59_Y69_N22
\fifo_tfr_cmd~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~61_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[8][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][0]~q\,
	datab => \writedata[0]~input_o\,
	datac => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~61_combout\);

-- Location: FF_X59_Y69_N23
\fifo_tfr_cmd[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~61_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][0]~q\);

-- Location: LCCOMB_X59_Y69_N20
\fifo_tfr_cmd~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~25_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[0]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[7][0]~q\,
	combout => \fifo_tfr_cmd~25_combout\);

-- Location: FF_X59_Y69_N21
\fifo_tfr_cmd[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~25_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][0]~q\);

-- Location: LCCOMB_X58_Y67_N6
\fifo_tfr_cmd~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~55_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[6][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[0]~input_o\,
	datab => \fifo_tfr_cmd[6][0]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~55_combout\);

-- Location: FF_X58_Y67_N7
\fifo_tfr_cmd[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~55_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][0]~q\);

-- Location: LCCOMB_X58_Y67_N20
\fifo_tfr_cmd~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~15_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[0]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[5][0]~q\,
	combout => \fifo_tfr_cmd~15_combout\);

-- Location: FF_X58_Y67_N21
\fifo_tfr_cmd[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~15_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][0]~q\);

-- Location: LCCOMB_X61_Y67_N2
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = fifo_tfr_cmd_amnt_int(1) $ (fifo_tfr_cmd_amnt_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => fifo_tfr_cmd_amnt_int(1),
	datad => fifo_tfr_cmd_amnt_int(0),
	combout => \Add4~0_combout\);

-- Location: LCCOMB_X58_Y66_N22
\fifo_tfr_cmd~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~58_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[0]~input_o\,
	datac => \fifo_tfr_cmd[4][0]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~58_combout\);

-- Location: FF_X58_Y66_N23
\fifo_tfr_cmd[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~58_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][0]~q\);

-- Location: LCCOMB_X61_Y70_N28
\fifo_tfr_cmd~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~22_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[0]~input_o\,
	datac => \fifo_tfr_cmd[3][0]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~22_combout\);

-- Location: FF_X61_Y70_N29
\fifo_tfr_cmd[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~22_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][0]~q\);

-- Location: LCCOMB_X62_Y67_N0
\Add4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~1_combout\ = fifo_tfr_cmd_amnt_int(2) $ (((fifo_tfr_cmd_amnt_int(0)) # (fifo_tfr_cmd_amnt_int(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => fifo_tfr_cmd_amnt_int(2),
	datad => fifo_tfr_cmd_amnt_int(1),
	combout => \Add4~1_combout\);

-- Location: LCCOMB_X57_Y66_N26
\Selector547~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~3_combout\ = (\Add4~0_combout\ & (((\Add4~1_combout\)))) # (!\Add4~0_combout\ & ((\Add4~1_combout\ & ((\fifo_tfr_cmd[2][0]~q\))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[6][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][0]~q\,
	datab => \fifo_tfr_cmd[2][0]~q\,
	datac => \Add4~0_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector547~3_combout\);

-- Location: LCCOMB_X61_Y70_N18
\fifo_tfr_cmd~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~64_combout\ = (\chipselect~input_o\ & ((\writedata[0]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[2][0]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[2][0]~q\,
	datad => \writedata[0]~input_o\,
	combout => \fifo_tfr_cmd~64_combout\);

-- Location: FF_X61_Y70_N19
\fifo_tfr_cmd[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~64_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][0]~q\);

-- Location: LCCOMB_X59_Y70_N28
\fifo_tfr_cmd~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~28_combout\ = (\chipselect~input_o\ & (\writedata[0]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[1][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[0]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[1][0]~q\,
	combout => \fifo_tfr_cmd~28_combout\);

-- Location: FF_X59_Y70_N29
\fifo_tfr_cmd[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~28_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][0]~q\);

-- Location: LCCOMB_X57_Y66_N28
\Selector547~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~4_combout\ = (\Add4~0_combout\ & ((\Selector547~3_combout\ & ((\fifo_tfr_cmd[0][0]~q\))) # (!\Selector547~3_combout\ & (\fifo_tfr_cmd[4][0]~q\)))) # (!\Add4~0_combout\ & (((\Selector547~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][0]~q\,
	datab => \Add4~0_combout\,
	datac => \Selector547~3_combout\,
	datad => \fifo_tfr_cmd[0][0]~q\,
	combout => \Selector547~4_combout\);

-- Location: LCCOMB_X57_Y66_N18
\Selector547~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~5_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[12][0]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[14][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][0]~q\,
	datab => \fifo_tfr_cmd[14][0]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector547~5_combout\);

-- Location: LCCOMB_X57_Y66_N8
\Selector547~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~6_combout\ = (\Add4~1_combout\ & ((\Selector547~5_combout\ & (\fifo_tfr_cmd[8][0]~q\)) # (!\Selector547~5_combout\ & ((\fifo_tfr_cmd[10][0]~q\))))) # (!\Add4~1_combout\ & (((\Selector547~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][0]~q\,
	datab => \fifo_tfr_cmd[10][0]~q\,
	datac => \Add4~1_combout\,
	datad => \Selector547~5_combout\,
	combout => \Selector547~6_combout\);

-- Location: LCCOMB_X61_Y67_N0
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = fifo_tfr_cmd_amnt_int(3) $ (((fifo_tfr_cmd_amnt_int(1)) # ((fifo_tfr_cmd_amnt_int(2)) # (fifo_tfr_cmd_amnt_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(2),
	datac => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_int(0),
	combout => \Add4~2_combout\);

-- Location: LCCOMB_X57_Y66_N14
\Selector547~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~9_combout\ = (\Add4~0_combout\ & (((\Add4~1_combout\)))) # (!\Add4~0_combout\ & ((\Add4~1_combout\ & (\fifo_tfr_cmd[3][0]~q\)) # (!\Add4~1_combout\ & ((\fifo_tfr_cmd[7][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][0]~q\,
	datab => \fifo_tfr_cmd[7][0]~q\,
	datac => \Add4~0_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector547~9_combout\);

-- Location: LCCOMB_X57_Y66_N4
\Selector547~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~10_combout\ = (\Selector547~9_combout\ & ((\fifo_tfr_cmd[1][0]~q\) # ((!\Add4~0_combout\)))) # (!\Selector547~9_combout\ & (((\fifo_tfr_cmd[5][0]~q\ & \Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][0]~q\,
	datab => \fifo_tfr_cmd[5][0]~q\,
	datac => \Selector547~9_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector547~10_combout\);

-- Location: LCCOMB_X57_Y66_N2
\Selector547~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~7_combout\ = (\Add4~0_combout\ & ((\fifo_tfr_cmd[13][0]~q\) # ((\Add4~1_combout\)))) # (!\Add4~0_combout\ & (((\fifo_tfr_cmd[15][0]~q\ & !\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][0]~q\,
	datab => \fifo_tfr_cmd[15][0]~q\,
	datac => \Add4~0_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector547~7_combout\);

-- Location: LCCOMB_X57_Y66_N24
\Selector547~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~8_combout\ = (\Add4~1_combout\ & ((\Selector547~7_combout\ & ((\fifo_tfr_cmd[9][0]~q\))) # (!\Selector547~7_combout\ & (\fifo_tfr_cmd[11][0]~q\)))) # (!\Add4~1_combout\ & (((\Selector547~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][0]~q\,
	datab => \Add4~1_combout\,
	datac => \fifo_tfr_cmd[9][0]~q\,
	datad => \Selector547~7_combout\,
	combout => \Selector547~8_combout\);

-- Location: LCCOMB_X57_Y66_N6
\Selector547~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & (\Add4~2_combout\)) # (!fifo_tfr_cmd_amnt_int(0) & ((\Add4~2_combout\ & (\Selector547~10_combout\)) # (!\Add4~2_combout\ & ((\Selector547~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Add4~2_combout\,
	datac => \Selector547~10_combout\,
	datad => \Selector547~8_combout\,
	combout => \Selector547~11_combout\);

-- Location: LCCOMB_X57_Y66_N20
\Selector547~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~12_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector547~11_combout\ & (\Selector547~4_combout\)) # (!\Selector547~11_combout\ & ((\Selector547~6_combout\))))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector547~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Selector547~4_combout\,
	datac => \Selector547~6_combout\,
	datad => \Selector547~11_combout\,
	combout => \Selector547~12_combout\);

-- Location: LCCOMB_X57_Y66_N16
\Selector547~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector547~13_combout\ = (\Selector547~2_combout\) # ((\Selector547~0_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector547~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector547~2_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Selector547~0_combout\,
	datad => \Selector547~12_combout\,
	combout => \Selector547~13_combout\);

-- Location: LCCOMB_X62_Y69_N22
\readdata[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \readdata[0]~0_combout\ = (!\wr~input_o\ & (\chipselect~input_o\ & (!\RST~input_o\ & \rd~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wr~input_o\,
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \rd~input_o\,
	combout => \readdata[0]~0_combout\);

-- Location: FF_X57_Y66_N17
\readdata[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector547~13_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[0]~reg0_q\);

-- Location: FF_X62_Y68_N27
\fifo_rx_data_amnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_rx_data_amnt_int(1),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt(1));

-- Location: FF_X62_Y68_N17
\fifo_tfr_cmd_amnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(1),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt(1));

-- Location: LCCOMB_X62_Y68_N16
\Selector546~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~0_combout\ = (fifo_rx_data_amnt(1) & ((\MODE.mRX_DATA_FIFO~q\) # ((!\MODE.mTFR_CMD_FIFO~q\ & fifo_tfr_cmd_amnt(1))))) # (!fifo_rx_data_amnt(1) & (!\MODE.mTFR_CMD_FIFO~q\ & (fifo_tfr_cmd_amnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_amnt(1),
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => fifo_tfr_cmd_amnt(1),
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \Selector546~0_combout\);

-- Location: LCCOMB_X62_Y70_N20
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = errors_tot_int(1) $ (errors_tot_int(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => errors_tot_int(1),
	datad => errors_tot_int(0),
	combout => \Add9~0_combout\);

-- Location: FF_X62_Y70_N21
\errors_tot_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add9~0_combout\,
	sclr => \chipselect~input_o\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot_int(1));

-- Location: FF_X63_Y68_N13
\errors_tot[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => errors_tot_int(1),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot(1));

-- Location: IOIBUF_X72_Y73_N8
\RD_BYTE[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(1),
	o => \RD_BYTE[1]~input_o\);

-- Location: LCCOMB_X68_Y67_N22
\fifo_rx_data~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~66_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[1]~input_o\,
	combout => \fifo_rx_data~66_combout\);

-- Location: FF_X68_Y67_N23
\fifo_rx_data[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~66_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][1]~q\);

-- Location: LCCOMB_X69_Y69_N30
\fifo_rx_data~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~55_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[15][1]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[15][1]~q\,
	datab => \RD_BYTE[1]~input_o\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data~55_combout\);

-- Location: FF_X69_Y69_N31
\fifo_rx_data[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~55_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][1]~q\);

-- Location: LCCOMB_X68_Y68_N12
\fifo_rx_data~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~59_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[14][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[1]~input_o\,
	datac => \fifo_rx_data[14][1]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~59_combout\);

-- Location: FF_X68_Y68_N13
\fifo_rx_data[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~59_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][1]~q\);

-- Location: LCCOMB_X68_Y68_N22
\fifo_rx_data~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~62_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[13][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[13][1]~q\,
	combout => \fifo_rx_data~62_combout\);

-- Location: FF_X68_Y68_N23
\fifo_rx_data[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~62_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][1]~q\);

-- Location: LCCOMB_X66_Y68_N10
\fifo_rx_data~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~63_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[12][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[12][1]~q\,
	combout => \fifo_rx_data~63_combout\);

-- Location: FF_X66_Y68_N11
\fifo_rx_data[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~63_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][1]~q\);

-- Location: LCCOMB_X66_Y68_N20
\fifo_rx_data~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~53_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[11][1]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[11][1]~q\,
	datac => \RD_BYTE[1]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~53_combout\);

-- Location: FF_X66_Y68_N21
\fifo_rx_data[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~53_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][1]~q\);

-- Location: LCCOMB_X67_Y68_N26
\fifo_rx_data~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~56_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[10][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[10][1]~q\,
	combout => \fifo_rx_data~56_combout\);

-- Location: FF_X67_Y68_N27
\fifo_rx_data[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~56_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][1]~q\);

-- Location: LCCOMB_X65_Y68_N12
\fifo_rx_data~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~61_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[9][1]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[9][1]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[1]~input_o\,
	combout => \fifo_rx_data~61_combout\);

-- Location: FF_X65_Y68_N13
\fifo_rx_data[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~61_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][1]~q\);

-- Location: LCCOMB_X65_Y70_N6
\fifo_rx_data~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~64_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[8][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[8][1]~q\,
	combout => \fifo_rx_data~64_combout\);

-- Location: FF_X65_Y70_N7
\fifo_rx_data[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~64_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][1]~q\);

-- Location: LCCOMB_X65_Y70_N4
\fifo_rx_data~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~52_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[7][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[7][1]~q\,
	combout => \fifo_rx_data~52_combout\);

-- Location: FF_X65_Y70_N5
\fifo_rx_data[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~52_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][1]~q\);

-- Location: LCCOMB_X66_Y69_N0
\fifo_rx_data~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~57_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[6][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[6][1]~q\,
	combout => \fifo_rx_data~57_combout\);

-- Location: FF_X66_Y69_N1
\fifo_rx_data[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~57_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][1]~q\);

-- Location: LCCOMB_X66_Y69_N30
\fifo_rx_data~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~60_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[5][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[5][1]~q\,
	combout => \fifo_rx_data~60_combout\);

-- Location: FF_X66_Y69_N31
\fifo_rx_data[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~60_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][1]~q\);

-- Location: LCCOMB_X66_Y70_N16
\fifo_rx_data~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~65_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[4][1]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[4][1]~q\,
	datab => \RD_BYTE[1]~input_o\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data~65_combout\);

-- Location: FF_X66_Y70_N17
\fifo_rx_data[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~65_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][1]~q\);

-- Location: LCCOMB_X66_Y70_N10
\fifo_rx_data~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~54_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[3][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[1]~input_o\,
	datad => \fifo_rx_data[3][1]~q\,
	combout => \fifo_rx_data~54_combout\);

-- Location: FF_X66_Y70_N11
\fifo_rx_data[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~54_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][1]~q\);

-- Location: LCCOMB_X66_Y67_N16
\fifo_rx_data~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~58_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[2][1]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[2][1]~q\,
	combout => \fifo_rx_data~58_combout\);

-- Location: FF_X66_Y67_N17
\fifo_rx_data[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~58_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][1]~q\);

-- Location: LCCOMB_X65_Y68_N8
\fifo_rx_data~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~12_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[1][1]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][1]~q\,
	datab => \chipselect~input_o\,
	datad => \RD_BYTE[1]~input_o\,
	combout => \fifo_rx_data~12_combout\);

-- Location: FF_X65_Y68_N9
\fifo_rx_data[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~12_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][1]~q\);

-- Location: LCCOMB_X63_Y68_N12
\Selector546~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~1_combout\ = (\MODE.mRX_DATA~q\ & ((\fifo_rx_data[0][1]~q\) # ((\MODE.mSTATUS~q\ & errors_tot(1))))) # (!\MODE.mRX_DATA~q\ & (\MODE.mSTATUS~q\ & (errors_tot(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA~q\,
	datab => \MODE.mSTATUS~q\,
	datac => errors_tot(1),
	datad => \fifo_rx_data[0][1]~q\,
	combout => \Selector546~1_combout\);

-- Location: LCCOMB_X59_Y66_N12
\fifo_tfr_cmd~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~69_combout\ = (\chipselect~input_o\ & (!\RST~input_o\ & (\writedata[1]~input_o\ & \MODE.mTFR_CMD_FIFO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datac => \writedata[1]~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd~69_combout\);

-- Location: FF_X59_Y66_N13
\fifo_tfr_cmd[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~69_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][1]~q\);

-- Location: LCCOMB_X58_Y66_N14
\fifo_tfr_cmd~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~76_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[15][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[15][1]~q\,
	combout => \fifo_tfr_cmd~76_combout\);

-- Location: FF_X58_Y66_N15
\fifo_tfr_cmd[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~76_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][1]~q\);

-- Location: LCCOMB_X59_Y66_N30
\fifo_tfr_cmd~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~73_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[14][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \writedata[1]~input_o\,
	datad => \fifo_tfr_cmd[14][1]~q\,
	combout => \fifo_tfr_cmd~73_combout\);

-- Location: FF_X59_Y66_N31
\fifo_tfr_cmd[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~73_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][1]~q\);

-- Location: LCCOMB_X59_Y65_N18
\fifo_tfr_cmd~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~81_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[13][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][1]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[1]~input_o\,
	combout => \fifo_tfr_cmd~81_combout\);

-- Location: FF_X59_Y65_N19
\fifo_tfr_cmd[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~81_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][1]~q\);

-- Location: LCCOMB_X59_Y65_N24
\fifo_tfr_cmd~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~68_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[12][1]~q\,
	combout => \fifo_tfr_cmd~68_combout\);

-- Location: FF_X59_Y65_N25
\fifo_tfr_cmd[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~68_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][1]~q\);

-- Location: LCCOMB_X61_Y65_N10
\fifo_tfr_cmd~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~75_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[11][1]~q\,
	datac => \writedata[1]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~75_combout\);

-- Location: FF_X61_Y65_N11
\fifo_tfr_cmd[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~75_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][1]~q\);

-- Location: LCCOMB_X61_Y64_N6
\fifo_tfr_cmd~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~72_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[1]~input_o\,
	datac => \fifo_tfr_cmd[10][1]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~72_combout\);

-- Location: FF_X61_Y64_N7
\fifo_tfr_cmd[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~72_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][1]~q\);

-- Location: LCCOMB_X61_Y64_N0
\fifo_tfr_cmd~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~80_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[9][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][1]~q\,
	datab => \writedata[1]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~80_combout\);

-- Location: FF_X61_Y64_N1
\fifo_tfr_cmd[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~80_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][1]~q\);

-- Location: LCCOMB_X58_Y68_N20
\fifo_tfr_cmd~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~67_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[8][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[1]~input_o\,
	datac => \fifo_tfr_cmd[8][1]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~67_combout\);

-- Location: FF_X58_Y68_N21
\fifo_tfr_cmd[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~67_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][1]~q\);

-- Location: LCCOMB_X58_Y68_N26
\fifo_tfr_cmd~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~79_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[1]~input_o\,
	datab => \fifo_tfr_cmd[7][1]~q\,
	datac => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~79_combout\);

-- Location: FF_X58_Y68_N27
\fifo_tfr_cmd[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~79_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][1]~q\);

-- Location: LCCOMB_X58_Y66_N18
\fifo_tfr_cmd~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~71_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[6][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[6][1]~q\,
	combout => \fifo_tfr_cmd~71_combout\);

-- Location: FF_X58_Y69_N25
\fifo_tfr_cmd[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd~71_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	sload => VCC,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][1]~q\);

-- Location: LCCOMB_X58_Y67_N0
\fifo_tfr_cmd~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~78_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[1]~input_o\,
	datac => \fifo_tfr_cmd[5][1]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~78_combout\);

-- Location: FF_X58_Y67_N1
\fifo_tfr_cmd[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~78_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][1]~q\);

-- Location: LCCOMB_X58_Y66_N4
\fifo_tfr_cmd~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~70_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[4][1]~q\,
	datad => \writedata[1]~input_o\,
	combout => \fifo_tfr_cmd~70_combout\);

-- Location: FF_X58_Y66_N5
\fifo_tfr_cmd[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~70_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][1]~q\);

-- Location: LCCOMB_X61_Y70_N12
\fifo_tfr_cmd~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~77_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[3][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[3][1]~q\,
	datac => \writedata[1]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~77_combout\);

-- Location: FF_X61_Y70_N13
\fifo_tfr_cmd[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~77_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][1]~q\);

-- Location: LCCOMB_X60_Y68_N20
\fifo_tfr_cmd~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~74_combout\ = (\chipselect~input_o\ & ((\writedata[1]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[2][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][1]~q\,
	datac => \writedata[1]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~74_combout\);

-- Location: FF_X60_Y68_N21
\fifo_tfr_cmd[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~74_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][1]~q\);

-- Location: LCCOMB_X62_Y68_N10
\Selector546~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~4_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & ((\fifo_tfr_cmd[9][1]~q\))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[13][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][1]~q\,
	datab => \fifo_tfr_cmd[9][1]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector546~4_combout\);

-- Location: LCCOMB_X62_Y68_N8
\Selector546~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~5_combout\ = (\Add4~2_combout\ & ((\Selector546~4_combout\ & ((\fifo_tfr_cmd[1][1]~q\))) # (!\Selector546~4_combout\ & (\fifo_tfr_cmd[5][1]~q\)))) # (!\Add4~2_combout\ & (((\Selector546~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[5][1]~q\,
	datac => \fifo_tfr_cmd[1][1]~q\,
	datad => \Selector546~4_combout\,
	combout => \Selector546~5_combout\);

-- Location: LCCOMB_X62_Y68_N18
\Selector546~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~2_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & ((\fifo_tfr_cmd[11][1]~q\))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[15][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][1]~q\,
	datab => \fifo_tfr_cmd[11][1]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector546~2_combout\);

-- Location: LCCOMB_X62_Y68_N20
\Selector546~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~3_combout\ = (\Add4~2_combout\ & ((\Selector546~2_combout\ & ((\fifo_tfr_cmd[3][1]~q\))) # (!\Selector546~2_combout\ & (\fifo_tfr_cmd[7][1]~q\)))) # (!\Add4~2_combout\ & (((\Selector546~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[7][1]~q\,
	datac => \fifo_tfr_cmd[3][1]~q\,
	datad => \Selector546~2_combout\,
	combout => \Selector546~3_combout\);

-- Location: LCCOMB_X62_Y68_N14
\Selector546~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~6_combout\ = (fifo_tfr_cmd_amnt_int(1) & (\Selector546~5_combout\)) # (!fifo_tfr_cmd_amnt_int(1) & ((\Selector546~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datac => \Selector546~5_combout\,
	datad => \Selector546~3_combout\,
	combout => \Selector546~6_combout\);

-- Location: LCCOMB_X60_Y68_N30
\fifo_tfr_cmd~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~82_combout\ = (\chipselect~input_o\ & (\writedata[1]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[1][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[1]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[1][1]~q\,
	combout => \fifo_tfr_cmd~82_combout\);

-- Location: FF_X60_Y68_N31
\fifo_tfr_cmd[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~82_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][1]~q\);

-- Location: LCCOMB_X62_Y68_N26
\Selector546~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~8_combout\ = (fifo_tfr_cmd_amnt_int(1) & ((\fifo_tfr_cmd[6][1]~q\))) # (!fifo_tfr_cmd_amnt_int(1) & (\fifo_tfr_cmd[4][1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => \fifo_tfr_cmd[4][1]~q\,
	datad => \fifo_tfr_cmd[6][1]~q\,
	combout => \Selector546~8_combout\);

-- Location: LCCOMB_X62_Y68_N24
\Selector546~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~10_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & (\fifo_tfr_cmd[8][1]~q\)) # (!\Add4~1_combout\ & ((\fifo_tfr_cmd[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][1]~q\,
	datab => \fifo_tfr_cmd[12][1]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector546~10_combout\);

-- Location: LCCOMB_X62_Y68_N30
\Selector546~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~11_combout\ = (\Add4~2_combout\ & ((\Selector546~10_combout\ & (\fifo_tfr_cmd[0][1]~q\)) # (!\Selector546~10_combout\ & ((\Selector546~8_combout\))))) # (!\Add4~2_combout\ & (((\Selector546~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[0][1]~q\,
	datac => \Selector546~8_combout\,
	datad => \Selector546~10_combout\,
	combout => \Selector546~11_combout\);

-- Location: LCCOMB_X62_Y68_N0
\Selector546~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~7_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & ((\fifo_tfr_cmd[10][1]~q\))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[14][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][1]~q\,
	datab => \fifo_tfr_cmd[10][1]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector546~7_combout\);

-- Location: LCCOMB_X62_Y68_N6
\Selector546~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~9_combout\ = (\Add4~2_combout\ & ((\Selector546~7_combout\ & (\fifo_tfr_cmd[2][1]~q\)) # (!\Selector546~7_combout\ & ((\Selector546~8_combout\))))) # (!\Add4~2_combout\ & (((\Selector546~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[2][1]~q\,
	datac => \Selector546~8_combout\,
	datad => \Selector546~7_combout\,
	combout => \Selector546~9_combout\);

-- Location: LCCOMB_X62_Y68_N28
\Selector546~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~12_combout\ = (fifo_tfr_cmd_amnt_int(1) & ((\Selector546~9_combout\))) # (!fifo_tfr_cmd_amnt_int(1) & (\Selector546~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datac => \Selector546~11_combout\,
	datad => \Selector546~9_combout\,
	combout => \Selector546~12_combout\);

-- Location: LCCOMB_X62_Y68_N2
\Selector546~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~13_combout\ = (\MODE.mTFR_CMD~q\ & ((fifo_tfr_cmd_amnt_int(0) & ((\Selector546~12_combout\))) # (!fifo_tfr_cmd_amnt_int(0) & (\Selector546~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD~q\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector546~6_combout\,
	datad => \Selector546~12_combout\,
	combout => \Selector546~13_combout\);

-- Location: LCCOMB_X62_Y68_N4
\Selector546~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector546~14_combout\ = (\Selector546~0_combout\) # ((\Selector546~1_combout\) # ((\MODE.mCTRL~q\) # (\Selector546~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector546~0_combout\,
	datab => \Selector546~1_combout\,
	datac => \MODE.mCTRL~q\,
	datad => \Selector546~13_combout\,
	combout => \Selector546~14_combout\);

-- Location: FF_X62_Y68_N5
\readdata[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector546~14_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[1]~reg0_q\);

-- Location: FF_X62_Y69_N19
\fifo_tfr_cmd_amnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(2),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt(2));

-- Location: LCCOMB_X62_Y69_N28
\fifo_rx_data_amnt[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_amnt[2]~feeder_combout\ = fifo_rx_data_amnt_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => fifo_rx_data_amnt_int(2),
	combout => \fifo_rx_data_amnt[2]~feeder_combout\);

-- Location: FF_X62_Y69_N29
\fifo_rx_data_amnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_amnt[2]~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt(2));

-- Location: LCCOMB_X62_Y69_N18
\Selector545~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~0_combout\ = (\MODE.mRX_DATA_FIFO~q\ & ((fifo_rx_data_amnt(2)) # ((!\MODE.mTFR_CMD_FIFO~q\ & fifo_tfr_cmd_amnt(2))))) # (!\MODE.mRX_DATA_FIFO~q\ & (!\MODE.mTFR_CMD_FIFO~q\ & (fifo_tfr_cmd_amnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA_FIFO~q\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => fifo_tfr_cmd_amnt(2),
	datad => fifo_rx_data_amnt(2),
	combout => \Selector545~0_combout\);

-- Location: LCCOMB_X62_Y70_N14
\Add9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~1_combout\ = errors_tot_int(2) $ (((errors_tot_int(1) & errors_tot_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => errors_tot_int(1),
	datac => errors_tot_int(2),
	datad => errors_tot_int(0),
	combout => \Add9~1_combout\);

-- Location: FF_X62_Y70_N15
\errors_tot_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add9~1_combout\,
	sclr => \chipselect~input_o\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot_int(2));

-- Location: LCCOMB_X63_Y70_N26
\errors_tot[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_tot[2]~feeder_combout\ = errors_tot_int(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => errors_tot_int(2),
	combout => \errors_tot[2]~feeder_combout\);

-- Location: FF_X63_Y70_N27
\errors_tot[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_tot[2]~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot(2));

-- Location: FF_X63_Y70_N1
\baud_rate_now[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fast_mode~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_rate_now(2));

-- Location: LCCOMB_X63_Y70_N0
\Selector545~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~1_combout\ = (errors_tot(2) & ((\MODE.mSTATUS~q\) # ((\MODE.mCTRL~q\ & !baud_rate_now(2))))) # (!errors_tot(2) & (\MODE.mCTRL~q\ & (!baud_rate_now(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => errors_tot(2),
	datab => \MODE.mCTRL~q\,
	datac => baud_rate_now(2),
	datad => \MODE.mSTATUS~q\,
	combout => \Selector545~1_combout\);

-- Location: IOIBUF_X69_Y73_N15
\RD_BYTE[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(2),
	o => \RD_BYTE[2]~input_o\);

-- Location: LCCOMB_X68_Y67_N24
\fifo_rx_data~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~81_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~81_combout\);

-- Location: FF_X68_Y67_N25
\fifo_rx_data[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~81_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][2]~q\);

-- Location: LCCOMB_X68_Y67_N6
\fifo_rx_data~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~78_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[15][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[15][2]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~78_combout\);

-- Location: FF_X68_Y67_N7
\fifo_rx_data[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~78_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][2]~q\);

-- Location: LCCOMB_X69_Y69_N28
\fifo_rx_data~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~79_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[14][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[14][2]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~79_combout\);

-- Location: FF_X69_Y69_N29
\fifo_rx_data[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~79_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][2]~q\);

-- Location: LCCOMB_X68_Y68_N20
\fifo_rx_data~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~80_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[13][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[13][2]~q\,
	datab => \RD_BYTE[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~80_combout\);

-- Location: FF_X68_Y68_N21
\fifo_rx_data[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~80_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][2]~q\);

-- Location: LCCOMB_X66_Y68_N30
\fifo_rx_data~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~74_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[12][2]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[2]~input_o\,
	datad => \fifo_rx_data[12][2]~q\,
	combout => \fifo_rx_data~74_combout\);

-- Location: FF_X66_Y68_N31
\fifo_rx_data[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~74_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][2]~q\);

-- Location: LCCOMB_X66_Y68_N0
\fifo_rx_data~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~72_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[11][2]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[2]~input_o\,
	datac => \fifo_rx_data[11][2]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~72_combout\);

-- Location: FF_X66_Y68_N1
\fifo_rx_data[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~72_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][2]~q\);

-- Location: LCCOMB_X67_Y68_N12
\fifo_rx_data~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~71_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[10][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[10][2]~q\,
	datac => \RD_BYTE[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~71_combout\);

-- Location: FF_X67_Y68_N13
\fifo_rx_data[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~71_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][2]~q\);

-- Location: LCCOMB_X65_Y68_N14
\fifo_rx_data~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~73_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][2]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[2]~input_o\,
	datad => \fifo_rx_data[9][2]~q\,
	combout => \fifo_rx_data~73_combout\);

-- Location: FF_X65_Y68_N15
\fifo_rx_data[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~73_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][2]~q\);

-- Location: LCCOMB_X68_Y69_N6
\fifo_rx_data~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~70_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[8][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_rx_data[8][2]~q\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~70_combout\);

-- Location: FF_X68_Y69_N7
\fifo_rx_data[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~70_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][2]~q\);

-- Location: LCCOMB_X68_Y69_N24
\fifo_rx_data~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~67_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[7][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[7][2]~q\,
	datab => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~67_combout\);

-- Location: FF_X68_Y69_N25
\fifo_rx_data[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~67_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][2]~q\);

-- Location: LCCOMB_X66_Y69_N8
\fifo_rx_data~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~68_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[6][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[6][2]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~68_combout\);

-- Location: FF_X66_Y69_N9
\fifo_rx_data[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~68_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][2]~q\);

-- Location: LCCOMB_X66_Y69_N18
\fifo_rx_data~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~69_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[5][2]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~69_combout\);

-- Location: FF_X66_Y69_N19
\fifo_rx_data[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~69_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][2]~q\);

-- Location: LCCOMB_X66_Y70_N18
\fifo_rx_data~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~77_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[4][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[4][2]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~77_combout\);

-- Location: FF_X66_Y70_N19
\fifo_rx_data[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~77_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][2]~q\);

-- Location: LCCOMB_X65_Y67_N2
\fifo_rx_data~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~76_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[3][2]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_rx_data[3][2]~q\,
	datad => \RD_BYTE[2]~input_o\,
	combout => \fifo_rx_data~76_combout\);

-- Location: FF_X65_Y67_N3
\fifo_rx_data[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~76_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][2]~q\);

-- Location: LCCOMB_X66_Y67_N6
\fifo_rx_data~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~75_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[2][2]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[2]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[2][2]~q\,
	combout => \fifo_rx_data~75_combout\);

-- Location: FF_X66_Y67_N7
\fifo_rx_data[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~75_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][2]~q\);

-- Location: LCCOMB_X65_Y67_N14
\fifo_rx_data~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~13_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[1][2]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[2]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[1][2]~q\,
	combout => \fifo_rx_data~13_combout\);

-- Location: FF_X65_Y67_N15
\fifo_rx_data[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~13_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][2]~q\);

-- Location: LCCOMB_X61_Y66_N0
\fifo_tfr_cmd~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~93_combout\ = (!\RST~input_o\ & (\writedata[2]~input_o\ & (\chipselect~input_o\ & \MODE.mTFR_CMD_FIFO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \writedata[2]~input_o\,
	datac => \chipselect~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd~93_combout\);

-- Location: FF_X61_Y66_N1
\fifo_tfr_cmd[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~93_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][2]~q\);

-- Location: LCCOMB_X59_Y66_N0
\fifo_tfr_cmd~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~85_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[15][2]~q\,
	datac => \writedata[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~85_combout\);

-- Location: LCCOMB_X58_Y66_N0
\fifo_tfr_cmd[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd[14][2]~feeder_combout\ = \fifo_tfr_cmd~85_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd~85_combout\,
	combout => \fifo_tfr_cmd[14][2]~feeder_combout\);

-- Location: FF_X58_Y66_N1
\fifo_tfr_cmd[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd[14][2]~feeder_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][2]~q\);

-- Location: LCCOMB_X59_Y66_N16
\fifo_tfr_cmd~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~91_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][2]~q\,
	datac => \writedata[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~91_combout\);

-- Location: FF_X59_Y66_N17
\fifo_tfr_cmd[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~91_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][2]~q\);

-- Location: LCCOMB_X63_Y67_N20
\fifo_tfr_cmd~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~83_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[13][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[2]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[13][2]~q\,
	combout => \fifo_tfr_cmd~83_combout\);

-- Location: FF_X63_Y67_N21
\fifo_tfr_cmd[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~83_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][2]~q\);

-- Location: LCCOMB_X62_Y65_N12
\fifo_tfr_cmd~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~89_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[12][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \writedata[2]~input_o\,
	datad => \fifo_tfr_cmd[12][2]~q\,
	combout => \fifo_tfr_cmd~89_combout\);

-- Location: FF_X62_Y65_N13
\fifo_tfr_cmd[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~89_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][2]~q\);

-- Location: LCCOMB_X61_Y65_N8
\fifo_tfr_cmd~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~97_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[11][2]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[2]~input_o\,
	combout => \fifo_tfr_cmd~97_combout\);

-- Location: FF_X61_Y65_N9
\fifo_tfr_cmd[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~97_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][2]~q\);

-- Location: LCCOMB_X60_Y65_N14
\fifo_tfr_cmd~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~88_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[10][2]~q\,
	datac => \writedata[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~88_combout\);

-- Location: FF_X60_Y65_N15
\fifo_tfr_cmd[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~88_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][2]~q\);

-- Location: LCCOMB_X61_Y64_N22
\fifo_tfr_cmd~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~96_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[9][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[2]~input_o\,
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[9][2]~q\,
	combout => \fifo_tfr_cmd~96_combout\);

-- Location: FF_X61_Y64_N23
\fifo_tfr_cmd[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~96_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][2]~q\);

-- Location: LCCOMB_X62_Y65_N2
\fifo_tfr_cmd~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~92_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[8][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][2]~q\,
	datac => \writedata[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~92_combout\);

-- Location: FF_X62_Y65_N3
\fifo_tfr_cmd[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~92_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][2]~q\);

-- Location: LCCOMB_X59_Y69_N24
\fifo_tfr_cmd~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~84_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][2]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[2]~input_o\,
	combout => \fifo_tfr_cmd~84_combout\);

-- Location: FF_X59_Y69_N25
\fifo_tfr_cmd[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~84_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][2]~q\);

-- Location: LCCOMB_X58_Y67_N24
\fifo_tfr_cmd~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~94_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[6][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[6][2]~q\,
	datac => \writedata[2]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~94_combout\);

-- Location: FF_X58_Y67_N25
\fifo_tfr_cmd[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~94_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][2]~q\);

-- Location: LCCOMB_X58_Y67_N22
\fifo_tfr_cmd~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~86_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[2]~input_o\,
	datad => \fifo_tfr_cmd[5][2]~q\,
	combout => \fifo_tfr_cmd~86_combout\);

-- Location: FF_X58_Y67_N23
\fifo_tfr_cmd[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~86_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][2]~q\);

-- Location: LCCOMB_X58_Y66_N26
\fifo_tfr_cmd~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~87_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[2]~input_o\,
	datac => \fifo_tfr_cmd[4][2]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~87_combout\);

-- Location: FF_X58_Y66_N27
\fifo_tfr_cmd[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~87_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][2]~q\);

-- Location: LCCOMB_X61_Y70_N4
\fifo_tfr_cmd~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~95_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[2]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[3][2]~q\,
	combout => \fifo_tfr_cmd~95_combout\);

-- Location: FF_X61_Y70_N5
\fifo_tfr_cmd[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~95_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][2]~q\);

-- Location: LCCOMB_X61_Y70_N22
\fifo_tfr_cmd~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~90_combout\ = (\chipselect~input_o\ & (\writedata[2]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[2]~input_o\,
	datac => \fifo_tfr_cmd[2][2]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~90_combout\);

-- Location: FF_X61_Y70_N23
\fifo_tfr_cmd[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~90_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][2]~q\);

-- Location: LCCOMB_X61_Y67_N24
\Selector545~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~4_combout\ = (\Add4~2_combout\ & (((\Add4~0_combout\)))) # (!\Add4~2_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[9][2]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[11][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][2]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[11][2]~q\,
	datad => \Add4~0_combout\,
	combout => \Selector545~4_combout\);

-- Location: LCCOMB_X61_Y67_N26
\Selector545~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~5_combout\ = (\Add4~2_combout\ & ((\Selector545~4_combout\ & (\fifo_tfr_cmd[1][2]~q\)) # (!\Selector545~4_combout\ & ((\fifo_tfr_cmd[3][2]~q\))))) # (!\Add4~2_combout\ & (((\Selector545~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][2]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[3][2]~q\,
	datad => \Selector545~4_combout\,
	combout => \Selector545~5_combout\);

-- Location: LCCOMB_X61_Y67_N28
\Selector545~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~6_combout\ = (\Add4~0_combout\ & (((\Add4~2_combout\)))) # (!\Add4~0_combout\ & ((\Add4~2_combout\ & (\fifo_tfr_cmd[7][2]~q\)) # (!\Add4~2_combout\ & ((\fifo_tfr_cmd[15][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][2]~q\,
	datab => \Add4~0_combout\,
	datac => \fifo_tfr_cmd[15][2]~q\,
	datad => \Add4~2_combout\,
	combout => \Selector545~6_combout\);

-- Location: LCCOMB_X61_Y67_N20
\Selector545~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~7_combout\ = (\Add4~0_combout\ & ((\Selector545~6_combout\ & (\fifo_tfr_cmd[5][2]~q\)) # (!\Selector545~6_combout\ & ((\fifo_tfr_cmd[13][2]~q\))))) # (!\Add4~0_combout\ & (((\Selector545~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][2]~q\,
	datab => \fifo_tfr_cmd[13][2]~q\,
	datac => \Add4~0_combout\,
	datad => \Selector545~6_combout\,
	combout => \Selector545~7_combout\);

-- Location: LCCOMB_X61_Y67_N14
\Selector545~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~8_combout\ = (fifo_tfr_cmd_amnt_int(0) & (\Add4~1_combout\)) # (!fifo_tfr_cmd_amnt_int(0) & ((\Add4~1_combout\ & (\Selector545~5_combout\)) # (!\Add4~1_combout\ & ((\Selector545~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Add4~1_combout\,
	datac => \Selector545~5_combout\,
	datad => \Selector545~7_combout\,
	combout => \Selector545~8_combout\);

-- Location: LCCOMB_X61_Y65_N30
\fifo_tfr_cmd~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~98_combout\ = (\chipselect~input_o\ & ((\writedata[2]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[1][2]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[2]~input_o\,
	combout => \fifo_tfr_cmd~98_combout\);

-- Location: FF_X61_Y65_N31
\fifo_tfr_cmd[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~98_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][2]~q\);

-- Location: LCCOMB_X62_Y67_N2
\Selector545~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~9_combout\ = (\Add4~2_combout\ & (((\Add4~0_combout\)))) # (!\Add4~2_combout\ & ((\Add4~0_combout\ & ((\fifo_tfr_cmd[8][2]~q\))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[10][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][2]~q\,
	datab => \fifo_tfr_cmd[8][2]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector545~9_combout\);

-- Location: LCCOMB_X62_Y67_N4
\Selector545~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~10_combout\ = (\Add4~2_combout\ & ((\Selector545~9_combout\ & (\fifo_tfr_cmd[0][2]~q\)) # (!\Selector545~9_combout\ & ((\fifo_tfr_cmd[2][2]~q\))))) # (!\Add4~2_combout\ & (((\Selector545~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[0][2]~q\,
	datac => \fifo_tfr_cmd[2][2]~q\,
	datad => \Selector545~9_combout\,
	combout => \Selector545~10_combout\);

-- Location: LCCOMB_X62_Y67_N10
\Selector545~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~2_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[6][2]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[14][2]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][2]~q\,
	datab => \fifo_tfr_cmd[6][2]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector545~2_combout\);

-- Location: LCCOMB_X62_Y67_N16
\Selector545~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~3_combout\ = (\Add4~0_combout\ & ((\Selector545~2_combout\ & (\fifo_tfr_cmd[4][2]~q\)) # (!\Selector545~2_combout\ & ((\fifo_tfr_cmd[12][2]~q\))))) # (!\Add4~0_combout\ & (((\Selector545~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[4][2]~q\,
	datac => \fifo_tfr_cmd[12][2]~q\,
	datad => \Selector545~2_combout\,
	combout => \Selector545~3_combout\);

-- Location: LCCOMB_X62_Y69_N16
\Selector545~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~11_combout\ = (\Selector545~8_combout\ & (((\Selector545~10_combout\)) # (!fifo_tfr_cmd_amnt_int(0)))) # (!\Selector545~8_combout\ & (fifo_tfr_cmd_amnt_int(0) & ((\Selector545~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector545~8_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector545~10_combout\,
	datad => \Selector545~3_combout\,
	combout => \Selector545~11_combout\);

-- Location: LCCOMB_X62_Y69_N10
\Selector545~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~12_combout\ = (\MODE.mRX_DATA~q\ & ((\fifo_rx_data[0][2]~q\) # ((\MODE.mTFR_CMD~q\ & \Selector545~11_combout\)))) # (!\MODE.mRX_DATA~q\ & (\MODE.mTFR_CMD~q\ & ((\Selector545~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA~q\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \fifo_rx_data[0][2]~q\,
	datad => \Selector545~11_combout\,
	combout => \Selector545~12_combout\);

-- Location: LCCOMB_X62_Y69_N4
\Selector545~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector545~13_combout\ = (\Selector545~0_combout\) # ((\Selector545~1_combout\) # (\Selector545~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector545~0_combout\,
	datac => \Selector545~1_combout\,
	datad => \Selector545~12_combout\,
	combout => \Selector545~13_combout\);

-- Location: FF_X62_Y69_N5
\readdata[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector545~13_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[2]~reg0_q\);

-- Location: IOIBUF_X79_Y73_N1
\RD_BYTE[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(3),
	o => \RD_BYTE[3]~input_o\);

-- Location: LCCOMB_X68_Y67_N30
\fifo_rx_data~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~96_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[3]~input_o\,
	combout => \fifo_rx_data~96_combout\);

-- Location: FF_X68_Y67_N31
\fifo_rx_data[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~96_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][3]~q\);

-- Location: LCCOMB_X69_Y69_N16
\fifo_rx_data~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~89_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[15][3]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[15][3]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[3]~input_o\,
	combout => \fifo_rx_data~89_combout\);

-- Location: FF_X69_Y69_N17
\fifo_rx_data[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~89_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][3]~q\);

-- Location: LCCOMB_X69_Y69_N10
\fifo_rx_data~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~85_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[14][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[3]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[14][3]~q\,
	combout => \fifo_rx_data~85_combout\);

-- Location: FF_X69_Y69_N11
\fifo_rx_data[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~85_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][3]~q\);

-- Location: LCCOMB_X70_Y69_N28
\fifo_rx_data~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~92_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[13][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[3]~input_o\,
	datad => \fifo_rx_data[13][3]~q\,
	combout => \fifo_rx_data~92_combout\);

-- Location: FF_X70_Y69_N29
\fifo_rx_data[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~92_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][3]~q\);

-- Location: LCCOMB_X66_Y68_N26
\fifo_rx_data~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~94_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[12][3]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[12][3]~q\,
	datab => \RD_BYTE[3]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~94_combout\);

-- Location: FF_X66_Y68_N27
\fifo_rx_data[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~94_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][3]~q\);

-- Location: LCCOMB_X66_Y68_N12
\fifo_rx_data~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~86_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[11][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[3]~input_o\,
	datac => \fifo_rx_data[11][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~86_combout\);

-- Location: FF_X66_Y68_N13
\fifo_rx_data[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~86_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][3]~q\);

-- Location: LCCOMB_X67_Y68_N6
\fifo_rx_data~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~83_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[10][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[3]~input_o\,
	datad => \fifo_rx_data[10][3]~q\,
	combout => \fifo_rx_data~83_combout\);

-- Location: FF_X67_Y68_N7
\fifo_rx_data[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~83_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][3]~q\);

-- Location: LCCOMB_X67_Y68_N24
\fifo_rx_data~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~90_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[3]~input_o\,
	datad => \fifo_rx_data[9][3]~q\,
	combout => \fifo_rx_data~90_combout\);

-- Location: FF_X67_Y68_N25
\fifo_rx_data[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~90_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][3]~q\);

-- Location: LCCOMB_X68_Y69_N22
\fifo_rx_data~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~93_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[8][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[3]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_rx_data[8][3]~q\,
	combout => \fifo_rx_data~93_combout\);

-- Location: FF_X68_Y69_N23
\fifo_rx_data[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~93_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][3]~q\);

-- Location: LCCOMB_X68_Y69_N28
\fifo_rx_data~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~87_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[7][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[3]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_rx_data[7][3]~q\,
	combout => \fifo_rx_data~87_combout\);

-- Location: FF_X68_Y69_N29
\fifo_rx_data[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~87_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][3]~q\);

-- Location: LCCOMB_X66_Y69_N20
\fifo_rx_data~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~82_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[6][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[3]~input_o\,
	datac => \fifo_rx_data[6][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~82_combout\);

-- Location: FF_X66_Y69_N21
\fifo_rx_data[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~82_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][3]~q\);

-- Location: LCCOMB_X66_Y69_N6
\fifo_rx_data~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~91_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][3]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[5][3]~q\,
	datac => \RD_BYTE[3]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~91_combout\);

-- Location: FF_X66_Y69_N7
\fifo_rx_data[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~91_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][3]~q\);

-- Location: LCCOMB_X66_Y70_N14
\fifo_rx_data~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~95_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[4][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[3]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[4][3]~q\,
	combout => \fifo_rx_data~95_combout\);

-- Location: FF_X66_Y70_N15
\fifo_rx_data[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~95_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][3]~q\);

-- Location: LCCOMB_X66_Y70_N20
\fifo_rx_data~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~88_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[3][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[3]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[3][3]~q\,
	combout => \fifo_rx_data~88_combout\);

-- Location: FF_X66_Y70_N21
\fifo_rx_data[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~88_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][3]~q\);

-- Location: LCCOMB_X66_Y67_N28
\fifo_rx_data~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~84_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[2][3]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][3]~q\,
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[3]~input_o\,
	combout => \fifo_rx_data~84_combout\);

-- Location: FF_X66_Y67_N29
\fifo_rx_data[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~84_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][3]~q\);

-- Location: LCCOMB_X66_Y67_N4
\fifo_rx_data~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~14_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[1][3]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[3]~input_o\,
	datad => \fifo_rx_data[1][3]~q\,
	combout => \fifo_rx_data~14_combout\);

-- Location: FF_X66_Y67_N5
\fifo_rx_data[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~14_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][3]~q\);

-- Location: LCCOMB_X62_Y70_N16
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = errors_tot_int(3) $ (((errors_tot_int(2) & (errors_tot_int(1) & errors_tot_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => errors_tot_int(2),
	datab => errors_tot_int(1),
	datac => errors_tot_int(3),
	datad => errors_tot_int(0),
	combout => \Add9~2_combout\);

-- Location: FF_X62_Y70_N17
\errors_tot_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add9~2_combout\,
	sclr => \chipselect~input_o\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot_int(3));

-- Location: FF_X63_Y70_N29
\errors_tot[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => errors_tot_int(3),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_tot(3));

-- Location: LCCOMB_X63_Y70_N6
\baud_rate_now[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \baud_rate_now[3]~feeder_combout\ = \fast_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fast_mode~q\,
	combout => \baud_rate_now[3]~feeder_combout\);

-- Location: FF_X63_Y70_N7
\baud_rate_now[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \baud_rate_now[3]~feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_rate_now(3));

-- Location: LCCOMB_X63_Y70_N28
\Selector544~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~1_combout\ = (\MODE.mSTATUS~q\ & ((errors_tot(3)) # ((\MODE.mCTRL~q\ & baud_rate_now(3))))) # (!\MODE.mSTATUS~q\ & (\MODE.mCTRL~q\ & ((baud_rate_now(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mSTATUS~q\,
	datab => \MODE.mCTRL~q\,
	datac => errors_tot(3),
	datad => baud_rate_now(3),
	combout => \Selector544~1_combout\);

-- Location: LCCOMB_X63_Y70_N14
\Selector544~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~2_combout\ = (\Selector544~1_combout\) # ((\MODE.mRX_DATA~q\ & \fifo_rx_data[0][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mRX_DATA~q\,
	datac => \fifo_rx_data[0][3]~q\,
	datad => \Selector544~1_combout\,
	combout => \Selector544~2_combout\);

-- Location: FF_X60_Y67_N5
\fifo_rx_data_amnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_rx_data_amnt_int(3),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_amnt(3));

-- Location: FF_X60_Y67_N19
\fifo_tfr_cmd_amnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(3),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt(3));

-- Location: LCCOMB_X60_Y67_N18
\Selector544~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~0_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (fifo_rx_data_amnt(3) & ((\MODE.mRX_DATA_FIFO~q\)))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((fifo_tfr_cmd_amnt(3)) # ((fifo_rx_data_amnt(3) & \MODE.mRX_DATA_FIFO~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => fifo_rx_data_amnt(3),
	datac => fifo_tfr_cmd_amnt(3),
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \Selector544~0_combout\);

-- Location: LCCOMB_X59_Y66_N2
\fifo_tfr_cmd~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~105_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\ & (\MODE.mTFR_CMD_FIFO~q\ & !\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \writedata[3]~input_o\,
	datac => \MODE.mTFR_CMD_FIFO~q\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~105_combout\);

-- Location: FF_X59_Y66_N3
\fifo_tfr_cmd[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~105_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][3]~q\);

-- Location: LCCOMB_X59_Y67_N28
\fifo_tfr_cmd~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~101_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[15][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[3]~input_o\,
	datac => \fifo_tfr_cmd[15][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~101_combout\);

-- Location: FF_X59_Y67_N29
\fifo_tfr_cmd[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~101_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][3]~q\);

-- Location: LCCOMB_X59_Y66_N18
\fifo_tfr_cmd~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~104_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[14][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[3]~input_o\,
	datac => \fifo_tfr_cmd[14][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~104_combout\);

-- Location: FF_X59_Y66_N19
\fifo_tfr_cmd[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~104_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][3]~q\);

-- Location: LCCOMB_X59_Y65_N8
\fifo_tfr_cmd~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~100_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[13][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][3]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~100_combout\);

-- Location: FF_X59_Y65_N9
\fifo_tfr_cmd[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~100_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][3]~q\);

-- Location: LCCOMB_X60_Y65_N8
\fifo_tfr_cmd~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~103_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][3]~q\,
	datab => \writedata[3]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~103_combout\);

-- Location: FF_X60_Y65_N9
\fifo_tfr_cmd[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~103_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][3]~q\);

-- Location: LCCOMB_X61_Y65_N20
\fifo_tfr_cmd~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~99_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[11][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[3]~input_o\,
	datac => \fifo_tfr_cmd[11][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~99_combout\);

-- Location: FF_X61_Y65_N21
\fifo_tfr_cmd[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~99_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][3]~q\);

-- Location: LCCOMB_X60_Y65_N2
\fifo_tfr_cmd~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~106_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][3]~q\,
	datab => \writedata[3]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~106_combout\);

-- Location: FF_X60_Y65_N3
\fifo_tfr_cmd[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~106_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][3]~q\);

-- Location: LCCOMB_X60_Y68_N0
\Selector544~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~5_combout\ = (\Add4~0_combout\ & ((\fifo_tfr_cmd[13][3]~q\) # ((\Add4~1_combout\)))) # (!\Add4~0_combout\ & (((\fifo_tfr_cmd[15][3]~q\ & !\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[13][3]~q\,
	datac => \fifo_tfr_cmd[15][3]~q\,
	datad => \Add4~1_combout\,
	combout => \Selector544~5_combout\);

-- Location: LCCOMB_X60_Y68_N10
\Selector544~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~6_combout\ = (\Add4~1_combout\ & ((\Selector544~5_combout\ & ((\fifo_tfr_cmd[9][3]~q\))) # (!\Selector544~5_combout\ & (\fifo_tfr_cmd[11][3]~q\)))) # (!\Add4~1_combout\ & (((\Selector544~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][3]~q\,
	datab => \Add4~1_combout\,
	datac => \fifo_tfr_cmd[9][3]~q\,
	datad => \Selector544~5_combout\,
	combout => \Selector544~6_combout\);

-- Location: LCCOMB_X61_Y64_N24
\fifo_tfr_cmd~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~102_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[9][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][3]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~102_combout\);

-- Location: FF_X61_Y64_N25
\fifo_tfr_cmd[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~102_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][3]~q\);

-- Location: LCCOMB_X60_Y68_N18
\Selector544~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~3_combout\ = (\Add4~0_combout\ & ((\fifo_tfr_cmd[12][3]~q\) # ((\Add4~1_combout\)))) # (!\Add4~0_combout\ & (((\fifo_tfr_cmd[14][3]~q\ & !\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[12][3]~q\,
	datac => \fifo_tfr_cmd[14][3]~q\,
	datad => \Add4~1_combout\,
	combout => \Selector544~3_combout\);

-- Location: LCCOMB_X61_Y68_N8
\Selector544~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~4_combout\ = (\Add4~1_combout\ & ((\Selector544~3_combout\ & (\fifo_tfr_cmd[8][3]~q\)) # (!\Selector544~3_combout\ & ((\fifo_tfr_cmd[10][3]~q\))))) # (!\Add4~1_combout\ & (((\Selector544~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[8][3]~q\,
	datac => \fifo_tfr_cmd[10][3]~q\,
	datad => \Selector544~3_combout\,
	combout => \Selector544~4_combout\);

-- Location: LCCOMB_X58_Y68_N12
\fifo_tfr_cmd~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~109_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[8][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[8][3]~q\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~109_combout\);

-- Location: FF_X58_Y68_N13
\fifo_tfr_cmd[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~109_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][3]~q\);

-- Location: LCCOMB_X58_Y68_N22
\fifo_tfr_cmd~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~113_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][3]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~113_combout\);

-- Location: FF_X58_Y68_N23
\fifo_tfr_cmd[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~113_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][3]~q\);

-- Location: LCCOMB_X58_Y68_N14
\fifo_tfr_cmd~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~108_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[6][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[6][3]~q\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~108_combout\);

-- Location: FF_X61_Y68_N21
\fifo_tfr_cmd[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd~108_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	sload => VCC,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][3]~q\);

-- Location: LCCOMB_X58_Y67_N2
\fifo_tfr_cmd~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~111_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[3]~input_o\,
	datab => \fifo_tfr_cmd[5][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~111_combout\);

-- Location: FF_X58_Y67_N3
\fifo_tfr_cmd[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~111_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][3]~q\);

-- Location: LCCOMB_X58_Y66_N16
\fifo_tfr_cmd~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~107_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[3]~input_o\,
	datac => \fifo_tfr_cmd[4][3]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~107_combout\);

-- Location: FF_X58_Y66_N17
\fifo_tfr_cmd[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~107_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][3]~q\);

-- Location: LCCOMB_X61_Y70_N26
\fifo_tfr_cmd~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~112_combout\ = (\chipselect~input_o\ & (\writedata[3]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[3]~input_o\,
	datad => \fifo_tfr_cmd[3][3]~q\,
	combout => \fifo_tfr_cmd~112_combout\);

-- Location: FF_X61_Y70_N27
\fifo_tfr_cmd[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~112_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][3]~q\);

-- Location: LCCOMB_X60_Y68_N28
\fifo_tfr_cmd~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~110_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[2][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][3]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~110_combout\);

-- Location: FF_X60_Y68_N29
\fifo_tfr_cmd[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~110_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][3]~q\);

-- Location: LCCOMB_X61_Y65_N2
\fifo_tfr_cmd~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~114_combout\ = (\chipselect~input_o\ & ((\writedata[3]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[1][3]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[3]~input_o\,
	combout => \fifo_tfr_cmd~114_combout\);

-- Location: FF_X61_Y65_N3
\fifo_tfr_cmd[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~114_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][3]~q\);

-- Location: LCCOMB_X61_Y68_N14
\Selector544~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~9_combout\ = (\Add4~1_combout\ & ((\fifo_tfr_cmd[2][3]~q\) # ((\Add4~0_combout\)))) # (!\Add4~1_combout\ & (((\fifo_tfr_cmd[6][3]~q\ & !\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][3]~q\,
	datab => \fifo_tfr_cmd[6][3]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector544~9_combout\);

-- Location: LCCOMB_X61_Y68_N4
\Selector544~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~10_combout\ = (\Add4~0_combout\ & ((\Selector544~9_combout\ & (\fifo_tfr_cmd[0][3]~q\)) # (!\Selector544~9_combout\ & ((\fifo_tfr_cmd[4][3]~q\))))) # (!\Add4~0_combout\ & (((\Selector544~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[0][3]~q\,
	datac => \Selector544~9_combout\,
	datad => \fifo_tfr_cmd[4][3]~q\,
	combout => \Selector544~10_combout\);

-- Location: LCCOMB_X61_Y68_N10
\Selector544~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~7_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[5][3]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[7][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][3]~q\,
	datab => \fifo_tfr_cmd[7][3]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector544~7_combout\);

-- Location: LCCOMB_X61_Y68_N28
\Selector544~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~8_combout\ = (\Add4~1_combout\ & ((\Selector544~7_combout\ & (\fifo_tfr_cmd[1][3]~q\)) # (!\Selector544~7_combout\ & ((\fifo_tfr_cmd[3][3]~q\))))) # (!\Add4~1_combout\ & (((\Selector544~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[1][3]~q\,
	datac => \fifo_tfr_cmd[3][3]~q\,
	datad => \Selector544~7_combout\,
	combout => \Selector544~8_combout\);

-- Location: LCCOMB_X61_Y68_N6
\Selector544~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & (((\Selector544~10_combout\)) # (!\Add4~2_combout\))) # (!fifo_tfr_cmd_amnt_int(0) & (\Add4~2_combout\ & ((\Selector544~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Add4~2_combout\,
	datac => \Selector544~10_combout\,
	datad => \Selector544~8_combout\,
	combout => \Selector544~11_combout\);

-- Location: LCCOMB_X61_Y68_N16
\Selector544~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~12_combout\ = (\Add4~2_combout\ & (((\Selector544~11_combout\)))) # (!\Add4~2_combout\ & ((\Selector544~11_combout\ & ((\Selector544~4_combout\))) # (!\Selector544~11_combout\ & (\Selector544~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector544~6_combout\,
	datab => \Add4~2_combout\,
	datac => \Selector544~4_combout\,
	datad => \Selector544~11_combout\,
	combout => \Selector544~12_combout\);

-- Location: LCCOMB_X61_Y68_N18
\Selector544~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector544~13_combout\ = (\Selector544~2_combout\) # ((\Selector544~0_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector544~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector544~2_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Selector544~0_combout\,
	datad => \Selector544~12_combout\,
	combout => \Selector544~13_combout\);

-- Location: FF_X61_Y68_N19
\readdata[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector544~13_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[3]~reg0_q\);

-- Location: LCCOMB_X63_Y68_N10
\fifo_rx_data_index[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index[0]~0_combout\ = (\MODE.mRX_DATA_FIFO~q\ & (\fifo_rx_data[0][0]~11_combout\ & (!\RST~input_o\ & !\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA_FIFO~q\,
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => \RST~input_o\,
	datad => \writedata[31]~input_o\,
	combout => \fifo_rx_data_index[0]~0_combout\);

-- Location: FF_X63_Y68_N7
\fifo_rx_data_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \writedata[0]~input_o\,
	sload => VCC,
	ena => \fifo_rx_data_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index(0));

-- Location: LCCOMB_X63_Y68_N6
\Selector543~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~0_combout\ = (fifo_tfr_cmd_index(0) & (((\MODE.mRX_DATA_FIFO~q\ & fifo_rx_data_index(0))) # (!\MODE.mTFR_CMD_FIFO~q\))) # (!fifo_tfr_cmd_index(0) & (\MODE.mRX_DATA_FIFO~q\ & (fifo_rx_data_index(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index(0),
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => fifo_rx_data_index(0),
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \Selector543~0_combout\);

-- Location: LCCOMB_X61_Y71_N22
\fifo_tfr_cmd_amnt_before_int[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd_amnt_before_int[0]~2_combout\ = (!\RST~input_o\ & (!\chipselect~input_o\ & (\LessThan0~0_combout\ & !\STATE.sIDLE~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \chipselect~input_o\,
	datac => \LessThan0~0_combout\,
	datad => \STATE.sIDLE~q\,
	combout => \fifo_tfr_cmd_amnt_before_int[0]~2_combout\);

-- Location: FF_X61_Y67_N5
\fifo_tfr_cmd_amnt_before_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(0),
	sload => VCC,
	ena => \fifo_tfr_cmd_amnt_before_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_before_int(0));

-- Location: LCCOMB_X61_Y67_N4
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_before_int(0) & VCC)) # (!fifo_tfr_cmd_amnt_int(0) & (fifo_tfr_cmd_amnt_before_int(0) $ (VCC)))
-- \Add7~1\ = CARRY((!fifo_tfr_cmd_amnt_int(0) & fifo_tfr_cmd_amnt_before_int(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_before_int(0),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X62_Y70_N26
\errors_index_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_index_int~0_combout\ = (!\chipselect~input_o\ & \Add7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \Add7~0_combout\,
	combout => \errors_index_int~0_combout\);

-- Location: FF_X62_Y70_N27
\errors_index_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_index_int~0_combout\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index_int(0));

-- Location: FF_X63_Y70_N9
\errors_index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => errors_index_int(0),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index(0));

-- Location: IOIBUF_X72_Y73_N1
\RD_BYTE[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(4),
	o => \RD_BYTE[4]~input_o\);

-- Location: LCCOMB_X68_Y67_N4
\fifo_rx_data~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~111_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[4]~input_o\,
	combout => \fifo_rx_data~111_combout\);

-- Location: FF_X68_Y67_N5
\fifo_rx_data[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~111_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][4]~q\);

-- Location: LCCOMB_X69_Y69_N24
\fifo_rx_data~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~109_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[15][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[4]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[15][4]~q\,
	combout => \fifo_rx_data~109_combout\);

-- Location: FF_X69_Y69_N25
\fifo_rx_data[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~109_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][4]~q\);

-- Location: LCCOMB_X69_Y69_N26
\fifo_rx_data~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~108_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[14][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[4]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[14][4]~q\,
	combout => \fifo_rx_data~108_combout\);

-- Location: FF_X69_Y69_N27
\fifo_rx_data[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~108_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][4]~q\);

-- Location: LCCOMB_X70_Y69_N2
\fifo_rx_data~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~110_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[13][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[4]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[13][4]~q\,
	combout => \fifo_rx_data~110_combout\);

-- Location: FF_X70_Y69_N3
\fifo_rx_data[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~110_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][4]~q\);

-- Location: LCCOMB_X66_Y68_N6
\fifo_rx_data~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~100_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[12][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[4]~input_o\,
	datac => \fifo_rx_data[12][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~100_combout\);

-- Location: FF_X66_Y68_N7
\fifo_rx_data[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~100_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][4]~q\);

-- Location: LCCOMB_X66_Y68_N8
\fifo_rx_data~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~97_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[11][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[4]~input_o\,
	datad => \fifo_rx_data[11][4]~q\,
	combout => \fifo_rx_data~97_combout\);

-- Location: FF_X66_Y68_N9
\fifo_rx_data[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~97_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][4]~q\);

-- Location: LCCOMB_X67_Y68_N30
\fifo_rx_data~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~98_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[10][4]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[10][4]~q\,
	datac => \RD_BYTE[4]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~98_combout\);

-- Location: FF_X67_Y68_N31
\fifo_rx_data[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~98_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][4]~q\);

-- Location: LCCOMB_X65_Y68_N0
\fifo_rx_data~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~99_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[4]~input_o\,
	datad => \fifo_rx_data[9][4]~q\,
	combout => \fifo_rx_data~99_combout\);

-- Location: FF_X65_Y68_N1
\fifo_rx_data[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~99_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][4]~q\);

-- Location: LCCOMB_X68_Y69_N14
\fifo_rx_data~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~104_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[8][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[4]~input_o\,
	datac => \fifo_rx_data[8][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~104_combout\);

-- Location: FF_X68_Y69_N15
\fifo_rx_data[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~104_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][4]~q\);

-- Location: LCCOMB_X68_Y69_N16
\fifo_rx_data~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~102_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[7][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[4]~input_o\,
	datac => \fifo_rx_data[7][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~102_combout\);

-- Location: FF_X68_Y69_N17
\fifo_rx_data[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~102_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][4]~q\);

-- Location: LCCOMB_X66_Y69_N28
\fifo_rx_data~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~101_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[6][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[4]~input_o\,
	datac => \fifo_rx_data[6][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~101_combout\);

-- Location: FF_X66_Y69_N29
\fifo_rx_data[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~101_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][4]~q\);

-- Location: LCCOMB_X66_Y69_N14
\fifo_rx_data~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~103_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[5][4]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[4]~input_o\,
	datab => \fifo_rx_data[5][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~103_combout\);

-- Location: FF_X66_Y69_N15
\fifo_rx_data[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~103_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][4]~q\);

-- Location: LCCOMB_X66_Y70_N22
\fifo_rx_data~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~107_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[4][4]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[4][4]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[4]~input_o\,
	combout => \fifo_rx_data~107_combout\);

-- Location: FF_X66_Y70_N23
\fifo_rx_data[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~107_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][4]~q\);

-- Location: LCCOMB_X66_Y70_N24
\fifo_rx_data~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~105_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[3][4]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_rx_data[3][4]~q\,
	datad => \RD_BYTE[4]~input_o\,
	combout => \fifo_rx_data~105_combout\);

-- Location: FF_X66_Y70_N25
\fifo_rx_data[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~105_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][4]~q\);

-- Location: LCCOMB_X66_Y67_N30
\fifo_rx_data~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~106_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[2][4]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][4]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[4]~input_o\,
	combout => \fifo_rx_data~106_combout\);

-- Location: FF_X66_Y67_N31
\fifo_rx_data[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~106_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][4]~q\);

-- Location: LCCOMB_X66_Y67_N2
\fifo_rx_data~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~15_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[1][4]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][4]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[4]~input_o\,
	combout => \fifo_rx_data~15_combout\);

-- Location: FF_X66_Y67_N3
\fifo_rx_data[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~15_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][4]~q\);

-- Location: LCCOMB_X63_Y70_N8
\Selector543~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~1_combout\ = (\MODE.mSTATUS~q\ & ((errors_index(0)) # ((\MODE.mRX_DATA~q\ & \fifo_rx_data[0][4]~q\)))) # (!\MODE.mSTATUS~q\ & (\MODE.mRX_DATA~q\ & ((\fifo_rx_data[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mSTATUS~q\,
	datab => \MODE.mRX_DATA~q\,
	datac => errors_index(0),
	datad => \fifo_rx_data[0][4]~q\,
	combout => \Selector543~1_combout\);

-- Location: IOIBUF_X42_Y73_N8
\writedata[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(4),
	o => \writedata[4]~input_o\);

-- Location: LCCOMB_X59_Y66_N4
\fifo_tfr_cmd~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~121_combout\ = (\chipselect~input_o\ & (\MODE.mTFR_CMD_FIFO~q\ & (\writedata[4]~input_o\ & !\RST~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \writedata[4]~input_o\,
	datad => \RST~input_o\,
	combout => \fifo_tfr_cmd~121_combout\);

-- Location: FF_X59_Y66_N5
\fifo_tfr_cmd[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~121_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][4]~q\);

-- Location: LCCOMB_X58_Y66_N30
\fifo_tfr_cmd~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~117_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][4]~q\,
	datac => \writedata[4]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~117_combout\);

-- Location: FF_X58_Y66_N31
\fifo_tfr_cmd[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~117_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][4]~q\);

-- Location: LCCOMB_X59_Y66_N28
\fifo_tfr_cmd~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~125_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[14][4]~q\,
	datac => \writedata[4]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~125_combout\);

-- Location: FF_X59_Y66_N29
\fifo_tfr_cmd[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~125_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][4]~q\);

-- Location: LCCOMB_X63_Y67_N30
\fifo_tfr_cmd~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~129_combout\ = (\chipselect~input_o\ & (\writedata[4]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[13][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[4]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[13][4]~q\,
	combout => \fifo_tfr_cmd~129_combout\);

-- Location: FF_X63_Y67_N31
\fifo_tfr_cmd[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~129_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][4]~q\);

-- Location: LCCOMB_X62_Y65_N16
\fifo_tfr_cmd~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~120_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[12][4]~q\,
	datac => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~120_combout\);

-- Location: FF_X62_Y65_N17
\fifo_tfr_cmd[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~120_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][4]~q\);

-- Location: LCCOMB_X61_Y65_N16
\fifo_tfr_cmd~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~116_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[11][4]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~116_combout\);

-- Location: FF_X61_Y65_N17
\fifo_tfr_cmd[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~116_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][4]~q\);

-- Location: LCCOMB_X61_Y64_N26
\fifo_tfr_cmd~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~124_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][4]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~124_combout\);

-- Location: FF_X61_Y64_N27
\fifo_tfr_cmd[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~124_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][4]~q\);

-- Location: LCCOMB_X61_Y64_N16
\fifo_tfr_cmd~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~128_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[9][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][4]~q\,
	datab => \chipselect~input_o\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~128_combout\);

-- Location: FF_X61_Y64_N17
\fifo_tfr_cmd[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~128_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][4]~q\);

-- Location: LCCOMB_X59_Y69_N4
\fifo_tfr_cmd~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~119_combout\ = (\chipselect~input_o\ & (\writedata[4]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[8][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[4]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[8][4]~q\,
	combout => \fifo_tfr_cmd~119_combout\);

-- Location: FF_X59_Y69_N5
\fifo_tfr_cmd[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~119_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][4]~q\);

-- Location: LCCOMB_X59_Y69_N14
\fifo_tfr_cmd~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~115_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[7][4]~q\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~115_combout\);

-- Location: FF_X59_Y69_N15
\fifo_tfr_cmd[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~115_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][4]~q\);

-- Location: LCCOMB_X58_Y67_N12
\fifo_tfr_cmd~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~123_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[6][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[6][4]~q\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~123_combout\);

-- Location: FF_X58_Y67_N13
\fifo_tfr_cmd[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~123_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][4]~q\);

-- Location: LCCOMB_X58_Y67_N14
\fifo_tfr_cmd~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~127_combout\ = (\chipselect~input_o\ & (\writedata[4]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[4]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[5][4]~q\,
	combout => \fifo_tfr_cmd~127_combout\);

-- Location: FF_X58_Y67_N15
\fifo_tfr_cmd[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~127_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][4]~q\);

-- Location: LCCOMB_X58_Y66_N12
\fifo_tfr_cmd~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~122_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[4][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[4][4]~q\,
	datac => \writedata[4]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~122_combout\);

-- Location: FF_X58_Y66_N13
\fifo_tfr_cmd[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~122_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][4]~q\);

-- Location: LCCOMB_X61_Y70_N24
\fifo_tfr_cmd~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~118_combout\ = (\chipselect~input_o\ & (\writedata[4]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[4]~input_o\,
	datac => \fifo_tfr_cmd[3][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~118_combout\);

-- Location: FF_X61_Y70_N25
\fifo_tfr_cmd[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~118_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][4]~q\);

-- Location: LCCOMB_X62_Y66_N18
\Selector543~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~2_combout\ = (\Add4~1_combout\ & (((\fifo_tfr_cmd[10][4]~q\) # (\Add4~2_combout\)))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[14][4]~q\ & ((!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][4]~q\,
	datab => \fifo_tfr_cmd[10][4]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~2_combout\,
	combout => \Selector543~2_combout\);

-- Location: LCCOMB_X62_Y66_N8
\Selector543~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~3_combout\ = (\Add4~2_combout\ & ((\Selector543~2_combout\ & ((\fifo_tfr_cmd[2][4]~q\))) # (!\Selector543~2_combout\ & (\fifo_tfr_cmd[6][4]~q\)))) # (!\Add4~2_combout\ & (((\Selector543~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][4]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[2][4]~q\,
	datad => \Selector543~2_combout\,
	combout => \Selector543~3_combout\);

-- Location: LCCOMB_X61_Y70_N10
\fifo_tfr_cmd~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~126_combout\ = (\chipselect~input_o\ & (\writedata[4]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[4]~input_o\,
	datab => \fifo_tfr_cmd[2][4]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~126_combout\);

-- Location: FF_X61_Y70_N11
\fifo_tfr_cmd[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~126_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][4]~q\);

-- Location: LCCOMB_X62_Y66_N30
\Selector543~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~6_combout\ = (\Add4~1_combout\ & ((\fifo_tfr_cmd[9][4]~q\) # ((\Add4~2_combout\)))) # (!\Add4~1_combout\ & (((\fifo_tfr_cmd[13][4]~q\ & !\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][4]~q\,
	datab => \fifo_tfr_cmd[13][4]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~2_combout\,
	combout => \Selector543~6_combout\);

-- Location: LCCOMB_X62_Y66_N4
\Selector543~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~7_combout\ = (\Selector543~6_combout\ & (((\fifo_tfr_cmd[1][4]~q\) # (!\Add4~2_combout\)))) # (!\Selector543~6_combout\ & (\fifo_tfr_cmd[5][4]~q\ & ((\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][4]~q\,
	datab => \fifo_tfr_cmd[1][4]~q\,
	datac => \Selector543~6_combout\,
	datad => \Add4~2_combout\,
	combout => \Selector543~7_combout\);

-- Location: LCCOMB_X61_Y66_N2
\Selector543~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~4_combout\ = (\Add4~1_combout\ & (((\fifo_tfr_cmd[11][4]~q\) # (\Add4~2_combout\)))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[15][4]~q\ & ((!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][4]~q\,
	datab => \fifo_tfr_cmd[11][4]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~2_combout\,
	combout => \Selector543~4_combout\);

-- Location: LCCOMB_X61_Y66_N8
\Selector543~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~5_combout\ = (\Add4~2_combout\ & ((\Selector543~4_combout\ & ((\fifo_tfr_cmd[3][4]~q\))) # (!\Selector543~4_combout\ & (\fifo_tfr_cmd[7][4]~q\)))) # (!\Add4~2_combout\ & (((\Selector543~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][4]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[3][4]~q\,
	datad => \Selector543~4_combout\,
	combout => \Selector543~5_combout\);

-- Location: LCCOMB_X62_Y66_N14
\Selector543~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~8_combout\ = (fifo_tfr_cmd_amnt_int(0) & (!fifo_tfr_cmd_amnt_int(1))) # (!fifo_tfr_cmd_amnt_int(0) & ((fifo_tfr_cmd_amnt_int(1) & (\Selector543~7_combout\)) # (!fifo_tfr_cmd_amnt_int(1) & ((\Selector543~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => fifo_tfr_cmd_amnt_int(1),
	datac => \Selector543~7_combout\,
	datad => \Selector543~5_combout\,
	combout => \Selector543~8_combout\);

-- Location: LCCOMB_X61_Y65_N22
\fifo_tfr_cmd~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~130_combout\ = (\chipselect~input_o\ & ((\writedata[4]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[1][4]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[4]~input_o\,
	combout => \fifo_tfr_cmd~130_combout\);

-- Location: FF_X61_Y65_N23
\fifo_tfr_cmd[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~130_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][4]~q\);

-- Location: LCCOMB_X63_Y66_N26
\Selector543~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~9_combout\ = (\Add4~1_combout\ & (((\fifo_tfr_cmd[8][4]~q\) # (\Add4~2_combout\)))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[12][4]~q\ & ((!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][4]~q\,
	datab => \Add4~1_combout\,
	datac => \fifo_tfr_cmd[8][4]~q\,
	datad => \Add4~2_combout\,
	combout => \Selector543~9_combout\);

-- Location: LCCOMB_X62_Y66_N24
\Selector543~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~10_combout\ = (\Add4~2_combout\ & ((\Selector543~9_combout\ & (\fifo_tfr_cmd[0][4]~q\)) # (!\Selector543~9_combout\ & ((\fifo_tfr_cmd[4][4]~q\))))) # (!\Add4~2_combout\ & (((\Selector543~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][4]~q\,
	datab => \fifo_tfr_cmd[4][4]~q\,
	datac => \Add4~2_combout\,
	datad => \Selector543~9_combout\,
	combout => \Selector543~10_combout\);

-- Location: LCCOMB_X62_Y66_N2
\Selector543~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector543~8_combout\ & ((\Selector543~10_combout\))) # (!\Selector543~8_combout\ & (\Selector543~3_combout\)))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector543~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Selector543~3_combout\,
	datac => \Selector543~8_combout\,
	datad => \Selector543~10_combout\,
	combout => \Selector543~11_combout\);

-- Location: LCCOMB_X62_Y66_N12
\Selector543~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector543~12_combout\ = (\Selector543~0_combout\) # ((\Selector543~1_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector543~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector543~0_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Selector543~1_combout\,
	datad => \Selector543~11_combout\,
	combout => \Selector543~12_combout\);

-- Location: FF_X62_Y66_N13
\readdata[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector543~12_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[4]~reg0_q\);

-- Location: LCCOMB_X63_Y68_N28
\fifo_rx_data_index[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index[1]~feeder_combout\ = \writedata[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[1]~input_o\,
	combout => \fifo_rx_data_index[1]~feeder_combout\);

-- Location: FF_X63_Y68_N29
\fifo_rx_data_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index[1]~feeder_combout\,
	ena => \fifo_rx_data_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index(1));

-- Location: LCCOMB_X60_Y67_N2
\Selector542~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~0_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (\MODE.mRX_DATA_FIFO~q\ & ((fifo_rx_data_index(1))))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((fifo_tfr_cmd_index(1)) # ((\MODE.mRX_DATA_FIFO~q\ & fifo_rx_data_index(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => fifo_tfr_cmd_index(1),
	datad => fifo_rx_data_index(1),
	combout => \Selector542~0_combout\);

-- Location: IOIBUF_X72_Y73_N22
\RD_BYTE[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(5),
	o => \RD_BYTE[5]~input_o\);

-- Location: LCCOMB_X67_Y69_N8
\fifo_rx_data~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~126_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~126_combout\);

-- Location: FF_X67_Y69_N9
\fifo_rx_data[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~126_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][5]~q\);

-- Location: LCCOMB_X69_Y69_N22
\fifo_rx_data~115\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~115_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[15][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[15][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~115_combout\);

-- Location: FF_X69_Y69_N23
\fifo_rx_data[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~115_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][5]~q\);

-- Location: LCCOMB_X69_Y69_N4
\fifo_rx_data~119\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~119_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[14][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[14][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~119_combout\);

-- Location: FF_X69_Y69_N5
\fifo_rx_data[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~119_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][5]~q\);

-- Location: LCCOMB_X70_Y69_N12
\fifo_rx_data~122\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~122_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[13][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[13][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~122_combout\);

-- Location: FF_X70_Y69_N13
\fifo_rx_data[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~122_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][5]~q\);

-- Location: LCCOMB_X66_Y68_N18
\fifo_rx_data~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~123_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[12][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_rx_data[12][5]~q\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~123_combout\);

-- Location: FF_X66_Y68_N19
\fifo_rx_data[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~123_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][5]~q\);

-- Location: LCCOMB_X66_Y68_N16
\fifo_rx_data~113\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~113_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[11][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[11][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~113_combout\);

-- Location: FF_X66_Y68_N17
\fifo_rx_data[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~113_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][5]~q\);

-- Location: LCCOMB_X67_Y68_N0
\fifo_rx_data~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~116_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[10][5]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[5]~input_o\,
	datac => \fifo_rx_data[10][5]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~116_combout\);

-- Location: FF_X67_Y68_N1
\fifo_rx_data[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~116_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][5]~q\);

-- Location: LCCOMB_X67_Y68_N22
\fifo_rx_data~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~121_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][5]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[5]~input_o\,
	datab => \fifo_rx_data[9][5]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~121_combout\);

-- Location: FF_X67_Y68_N23
\fifo_rx_data[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~121_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][5]~q\);

-- Location: LCCOMB_X68_Y69_N18
\fifo_rx_data~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~124_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[8][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[8][5]~q\,
	datac => \RD_BYTE[5]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~124_combout\);

-- Location: FF_X68_Y69_N19
\fifo_rx_data[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~124_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][5]~q\);

-- Location: LCCOMB_X68_Y69_N20
\fifo_rx_data~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~112_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[7][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[7][5]~q\,
	datac => \RD_BYTE[5]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~112_combout\);

-- Location: FF_X68_Y69_N21
\fifo_rx_data[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~112_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][5]~q\);

-- Location: LCCOMB_X66_Y69_N16
\fifo_rx_data~117\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~117_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[6][5]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[5]~input_o\,
	datac => \fifo_rx_data[6][5]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~117_combout\);

-- Location: FF_X66_Y69_N17
\fifo_rx_data[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~117_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][5]~q\);

-- Location: LCCOMB_X66_Y69_N26
\fifo_rx_data~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~120_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[5][5]~q\,
	datac => \RD_BYTE[5]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~120_combout\);

-- Location: FF_X66_Y69_N27
\fifo_rx_data[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~120_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][5]~q\);

-- Location: LCCOMB_X66_Y70_N30
\fifo_rx_data~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~125_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[4][5]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[5]~input_o\,
	datad => \fifo_rx_data[4][5]~q\,
	combout => \fifo_rx_data~125_combout\);

-- Location: FF_X66_Y70_N31
\fifo_rx_data[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~125_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][5]~q\);

-- Location: LCCOMB_X66_Y70_N12
\fifo_rx_data~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~114_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[3][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[3][5]~q\,
	datab => \RD_BYTE[5]~input_o\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data~114_combout\);

-- Location: FF_X66_Y70_N13
\fifo_rx_data[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~114_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][5]~q\);

-- Location: LCCOMB_X66_Y67_N8
\fifo_rx_data~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~118_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[2][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[2][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~118_combout\);

-- Location: FF_X66_Y67_N9
\fifo_rx_data[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~118_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][5]~q\);

-- Location: LCCOMB_X66_Y67_N24
\fifo_rx_data~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~16_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[1][5]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[1][5]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[5]~input_o\,
	combout => \fifo_rx_data~16_combout\);

-- Location: FF_X66_Y67_N25
\fifo_rx_data[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~16_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][5]~q\);

-- Location: FF_X61_Y67_N7
\fifo_tfr_cmd_amnt_before_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(1),
	sload => VCC,
	ena => \fifo_tfr_cmd_amnt_before_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_before_int(1));

-- Location: LCCOMB_X61_Y67_N6
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (fifo_tfr_cmd_amnt_int(1) & ((fifo_tfr_cmd_amnt_before_int(1) & (!\Add7~1\)) # (!fifo_tfr_cmd_amnt_before_int(1) & ((\Add7~1\) # (GND))))) # (!fifo_tfr_cmd_amnt_int(1) & ((fifo_tfr_cmd_amnt_before_int(1) & (\Add7~1\ & VCC)) # 
-- (!fifo_tfr_cmd_amnt_before_int(1) & (!\Add7~1\))))
-- \Add7~3\ = CARRY((fifo_tfr_cmd_amnt_int(1) & ((!\Add7~1\) # (!fifo_tfr_cmd_amnt_before_int(1)))) # (!fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_before_int(1) & !\Add7~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_before_int(1),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X62_Y70_N4
\errors_index_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_index_int~1_combout\ = (!\Add7~2_combout\ & !\chipselect~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~2_combout\,
	datad => \chipselect~input_o\,
	combout => \errors_index_int~1_combout\);

-- Location: FF_X62_Y70_N5
\errors_index_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_index_int~1_combout\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index_int(1));

-- Location: FF_X63_Y70_N11
\errors_index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => errors_index_int(1),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index(1));

-- Location: LCCOMB_X63_Y70_N10
\Selector542~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~1_combout\ = (\fifo_rx_data[0][5]~q\ & ((\MODE.mRX_DATA~q\) # ((errors_index(1) & \MODE.mSTATUS~q\)))) # (!\fifo_rx_data[0][5]~q\ & (((errors_index(1) & \MODE.mSTATUS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[0][5]~q\,
	datab => \MODE.mRX_DATA~q\,
	datac => errors_index(1),
	datad => \MODE.mSTATUS~q\,
	combout => \Selector542~1_combout\);

-- Location: IOIBUF_X47_Y73_N15
\writedata[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(5),
	o => \writedata[5]~input_o\);

-- Location: LCCOMB_X59_Y66_N26
\fifo_tfr_cmd~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~141_combout\ = (\chipselect~input_o\ & (!\RST~input_o\ & (\writedata[5]~input_o\ & \MODE.mTFR_CMD_FIFO~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \MODE.mTFR_CMD_FIFO~q\,
	combout => \fifo_tfr_cmd~141_combout\);

-- Location: FF_X59_Y66_N27
\fifo_tfr_cmd[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~141_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][5]~q\);

-- Location: LCCOMB_X58_Y66_N2
\fifo_tfr_cmd~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~133_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[15][5]~q\,
	datac => \writedata[5]~input_o\,
	combout => \fifo_tfr_cmd~133_combout\);

-- Location: FF_X58_Y66_N3
\fifo_tfr_cmd[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~133_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][5]~q\);

-- Location: LCCOMB_X59_Y66_N22
\fifo_tfr_cmd~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~139_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][5]~q\,
	datac => \writedata[5]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~139_combout\);

-- Location: FF_X59_Y66_N23
\fifo_tfr_cmd[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~139_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][5]~q\);

-- Location: LCCOMB_X59_Y68_N16
\fifo_tfr_cmd~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~131_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[13][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[13][5]~q\,
	datad => \writedata[5]~input_o\,
	combout => \fifo_tfr_cmd~131_combout\);

-- Location: FF_X59_Y68_N17
\fifo_tfr_cmd[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~131_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][5]~q\);

-- Location: LCCOMB_X60_Y65_N18
\fifo_tfr_cmd~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~137_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[5]~input_o\,
	datac => \fifo_tfr_cmd[12][5]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~137_combout\);

-- Location: FF_X60_Y65_N19
\fifo_tfr_cmd[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~137_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][5]~q\);

-- Location: LCCOMB_X61_Y65_N28
\fifo_tfr_cmd~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~145_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[11][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][5]~q\,
	datab => \writedata[5]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~145_combout\);

-- Location: FF_X61_Y65_N29
\fifo_tfr_cmd[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~145_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][5]~q\);

-- Location: LCCOMB_X60_Y65_N4
\fifo_tfr_cmd~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~135_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[10][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[10][5]~q\,
	combout => \fifo_tfr_cmd~135_combout\);

-- Location: FF_X60_Y65_N5
\fifo_tfr_cmd[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~135_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][5]~q\);

-- Location: LCCOMB_X61_Y64_N10
\fifo_tfr_cmd~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~143_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[9][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[9][5]~q\,
	combout => \fifo_tfr_cmd~143_combout\);

-- Location: FF_X61_Y64_N11
\fifo_tfr_cmd[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~143_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][5]~q\);

-- Location: LCCOMB_X58_Y68_N30
\fifo_tfr_cmd~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~140_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[5]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[8][5]~q\,
	combout => \fifo_tfr_cmd~140_combout\);

-- Location: FF_X58_Y68_N31
\fifo_tfr_cmd[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~140_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][5]~q\);

-- Location: LCCOMB_X58_Y68_N16
\fifo_tfr_cmd~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~132_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[7][5]~q\,
	datad => \writedata[5]~input_o\,
	combout => \fifo_tfr_cmd~132_combout\);

-- Location: FF_X58_Y68_N17
\fifo_tfr_cmd[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~132_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][5]~q\);

-- Location: LCCOMB_X58_Y67_N18
\fifo_tfr_cmd~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~142_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[6][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[6][5]~q\,
	combout => \fifo_tfr_cmd~142_combout\);

-- Location: FF_X58_Y67_N19
\fifo_tfr_cmd[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~142_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][5]~q\);

-- Location: LCCOMB_X58_Y67_N8
\fifo_tfr_cmd~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~134_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[5][5]~q\,
	combout => \fifo_tfr_cmd~134_combout\);

-- Location: FF_X58_Y67_N9
\fifo_tfr_cmd[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~134_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][5]~q\);

-- Location: LCCOMB_X59_Y68_N24
\Selector542~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~2_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[6][5]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[14][5]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][5]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[6][5]~q\,
	datad => \Add4~0_combout\,
	combout => \Selector542~2_combout\);

-- Location: LCCOMB_X59_Y68_N22
\Selector542~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~3_combout\ = (\Add4~0_combout\ & ((\Selector542~2_combout\ & (\fifo_tfr_cmd[4][5]~q\)) # (!\Selector542~2_combout\ & ((\fifo_tfr_cmd[12][5]~q\))))) # (!\Add4~0_combout\ & (((\Selector542~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][5]~q\,
	datab => \fifo_tfr_cmd[12][5]~q\,
	datac => \Add4~0_combout\,
	datad => \Selector542~2_combout\,
	combout => \Selector542~3_combout\);

-- Location: LCCOMB_X58_Y66_N20
\fifo_tfr_cmd~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~136_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[4][5]~q\,
	combout => \fifo_tfr_cmd~136_combout\);

-- Location: FF_X58_Y66_N21
\fifo_tfr_cmd[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~136_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][5]~q\);

-- Location: LCCOMB_X61_Y70_N8
\fifo_tfr_cmd~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~144_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[5]~input_o\,
	datad => \fifo_tfr_cmd[3][5]~q\,
	combout => \fifo_tfr_cmd~144_combout\);

-- Location: FF_X61_Y70_N9
\fifo_tfr_cmd[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~144_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][5]~q\);

-- Location: LCCOMB_X60_Y68_N2
\fifo_tfr_cmd~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~138_combout\ = (\chipselect~input_o\ & (\writedata[5]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[5]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[2][5]~q\,
	combout => \fifo_tfr_cmd~138_combout\);

-- Location: FF_X60_Y68_N3
\fifo_tfr_cmd[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~138_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][5]~q\);

-- Location: LCCOMB_X60_Y68_N4
\fifo_tfr_cmd~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~146_combout\ = (\chipselect~input_o\ & ((\writedata[5]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[1][5]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[5]~input_o\,
	combout => \fifo_tfr_cmd~146_combout\);

-- Location: FF_X60_Y68_N5
\fifo_tfr_cmd[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~146_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][5]~q\);

-- Location: LCCOMB_X60_Y68_N6
\Selector542~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~9_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[2][5]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[10][5]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][5]~q\,
	datab => \fifo_tfr_cmd[2][5]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector542~9_combout\);

-- Location: LCCOMB_X59_Y68_N8
\Selector542~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~10_combout\ = (\Add4~0_combout\ & ((\Selector542~9_combout\ & (\fifo_tfr_cmd[0][5]~q\)) # (!\Selector542~9_combout\ & ((\fifo_tfr_cmd[8][5]~q\))))) # (!\Add4~0_combout\ & (((\Selector542~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][5]~q\,
	datab => \Add4~0_combout\,
	datac => \fifo_tfr_cmd[8][5]~q\,
	datad => \Selector542~9_combout\,
	combout => \Selector542~10_combout\);

-- Location: LCCOMB_X59_Y68_N14
\Selector542~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~6_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[7][5]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[15][5]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][5]~q\,
	datab => \fifo_tfr_cmd[7][5]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector542~6_combout\);

-- Location: LCCOMB_X59_Y68_N4
\Selector542~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~7_combout\ = (\Selector542~6_combout\ & (((\fifo_tfr_cmd[5][5]~q\) # (!\Add4~0_combout\)))) # (!\Selector542~6_combout\ & (\fifo_tfr_cmd[13][5]~q\ & ((\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][5]~q\,
	datab => \fifo_tfr_cmd[5][5]~q\,
	datac => \Selector542~6_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector542~7_combout\);

-- Location: LCCOMB_X60_Y68_N16
\Selector542~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~4_combout\ = (\Add4~2_combout\ & ((\fifo_tfr_cmd[3][5]~q\) # ((\Add4~0_combout\)))) # (!\Add4~2_combout\ & (((\fifo_tfr_cmd[11][5]~q\ & !\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][5]~q\,
	datab => \fifo_tfr_cmd[11][5]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector542~4_combout\);

-- Location: LCCOMB_X59_Y68_N28
\Selector542~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~5_combout\ = (\Add4~0_combout\ & ((\Selector542~4_combout\ & ((\fifo_tfr_cmd[1][5]~q\))) # (!\Selector542~4_combout\ & (\fifo_tfr_cmd[9][5]~q\)))) # (!\Add4~0_combout\ & (((\Selector542~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][5]~q\,
	datab => \Add4~0_combout\,
	datac => \fifo_tfr_cmd[1][5]~q\,
	datad => \Selector542~4_combout\,
	combout => \Selector542~5_combout\);

-- Location: LCCOMB_X59_Y68_N18
\Selector542~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~8_combout\ = (\Add4~1_combout\ & ((fifo_tfr_cmd_amnt_int(0)) # ((\Selector542~5_combout\)))) # (!\Add4~1_combout\ & (!fifo_tfr_cmd_amnt_int(0) & (\Selector542~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector542~7_combout\,
	datad => \Selector542~5_combout\,
	combout => \Selector542~8_combout\);

-- Location: LCCOMB_X59_Y68_N10
\Selector542~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector542~8_combout\ & ((\Selector542~10_combout\))) # (!\Selector542~8_combout\ & (\Selector542~3_combout\)))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector542~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector542~3_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector542~10_combout\,
	datad => \Selector542~8_combout\,
	combout => \Selector542~11_combout\);

-- Location: LCCOMB_X59_Y68_N12
\Selector542~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~12_combout\ = (\MODE.mCTRL~q\) # ((\MODE.mTFR_CMD~q\ & \Selector542~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mTFR_CMD~q\,
	datac => \MODE.mCTRL~q\,
	datad => \Selector542~11_combout\,
	combout => \Selector542~12_combout\);

-- Location: LCCOMB_X59_Y68_N6
\Selector542~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector542~13_combout\ = (\Selector542~0_combout\) # ((\Selector542~1_combout\) # (\Selector542~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector542~0_combout\,
	datac => \Selector542~1_combout\,
	datad => \Selector542~12_combout\,
	combout => \Selector542~13_combout\);

-- Location: FF_X59_Y68_N7
\readdata[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector542~13_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[5]~reg0_q\);

-- Location: LCCOMB_X63_Y68_N14
\fifo_rx_data_index[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index[2]~feeder_combout\ = \writedata[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[2]~input_o\,
	combout => \fifo_rx_data_index[2]~feeder_combout\);

-- Location: FF_X63_Y68_N15
\fifo_rx_data_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index[2]~feeder_combout\,
	ena => \fifo_rx_data_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index(2));

-- Location: LCCOMB_X60_Y67_N8
\Selector541~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~0_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (\MODE.mRX_DATA_FIFO~q\ & ((fifo_rx_data_index(2))))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((fifo_tfr_cmd_index(2)) # ((\MODE.mRX_DATA_FIFO~q\ & fifo_rx_data_index(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => fifo_tfr_cmd_index(2),
	datad => fifo_rx_data_index(2),
	combout => \Selector541~0_combout\);

-- Location: FF_X61_Y67_N9
\fifo_tfr_cmd_amnt_before_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(2),
	sload => VCC,
	ena => \fifo_tfr_cmd_amnt_before_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_before_int(2));

-- Location: LCCOMB_X61_Y67_N8
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((fifo_tfr_cmd_amnt_int(2) $ (fifo_tfr_cmd_amnt_before_int(2) $ (\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((fifo_tfr_cmd_amnt_int(2) & (fifo_tfr_cmd_amnt_before_int(2) & !\Add7~3\)) # (!fifo_tfr_cmd_amnt_int(2) & ((fifo_tfr_cmd_amnt_before_int(2)) # (!\Add7~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(2),
	datab => fifo_tfr_cmd_amnt_before_int(2),
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X62_Y70_N18
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \Add7~2_combout\ $ (\Add7~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add7~2_combout\,
	datad => \Add7~4_combout\,
	combout => \Add8~0_combout\);

-- Location: FF_X62_Y70_N19
\errors_index_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~0_combout\,
	sclr => \chipselect~input_o\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index_int(2));

-- Location: FF_X63_Y70_N25
\errors_index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => errors_index_int(2),
	sload => VCC,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index(2));

-- Location: IOIBUF_X72_Y73_N15
\RD_BYTE[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(6),
	o => \RD_BYTE[6]~input_o\);

-- Location: LCCOMB_X68_Y67_N14
\fifo_rx_data~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~141_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~141_combout\);

-- Location: FF_X68_Y67_N15
\fifo_rx_data[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~141_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][6]~q\);

-- Location: LCCOMB_X69_Y69_N18
\fifo_rx_data~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~138_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[15][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[15][6]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~138_combout\);

-- Location: FF_X69_Y69_N19
\fifo_rx_data[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~138_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][6]~q\);

-- Location: LCCOMB_X69_Y69_N12
\fifo_rx_data~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~139_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[14][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[14][6]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~139_combout\);

-- Location: FF_X69_Y69_N13
\fifo_rx_data[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~139_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][6]~q\);

-- Location: LCCOMB_X69_Y67_N6
\fifo_rx_data~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~140_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[13][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_rx_data[13][6]~q\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~140_combout\);

-- Location: FF_X69_Y67_N7
\fifo_rx_data[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~140_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][6]~q\);

-- Location: LCCOMB_X66_Y68_N14
\fifo_rx_data~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~134_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[12][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RD_BYTE[6]~input_o\,
	datad => \fifo_rx_data[12][6]~q\,
	combout => \fifo_rx_data~134_combout\);

-- Location: FF_X66_Y68_N15
\fifo_rx_data[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~134_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][6]~q\);

-- Location: LCCOMB_X66_Y68_N4
\fifo_rx_data~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~132_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[11][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[11][6]~q\,
	datac => \RD_BYTE[6]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~132_combout\);

-- Location: FF_X66_Y68_N5
\fifo_rx_data[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~132_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][6]~q\);

-- Location: LCCOMB_X67_Y68_N4
\fifo_rx_data~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~131_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[10][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[6]~input_o\,
	datac => \fifo_rx_data[10][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~131_combout\);

-- Location: FF_X67_Y68_N5
\fifo_rx_data[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~131_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][6]~q\);

-- Location: LCCOMB_X67_Y68_N18
\fifo_rx_data~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~133_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[6]~input_o\,
	datac => \fifo_rx_data[9][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~133_combout\);

-- Location: FF_X67_Y68_N19
\fifo_rx_data[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~133_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][6]~q\);

-- Location: LCCOMB_X68_Y69_N26
\fifo_rx_data~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~130_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[8][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[6]~input_o\,
	datac => \fifo_rx_data[8][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~130_combout\);

-- Location: FF_X68_Y69_N27
\fifo_rx_data[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~130_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][6]~q\);

-- Location: LCCOMB_X68_Y69_N12
\fifo_rx_data~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~127_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[7][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[6]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_rx_data[7][6]~q\,
	combout => \fifo_rx_data~127_combout\);

-- Location: FF_X68_Y69_N13
\fifo_rx_data[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~127_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][6]~q\);

-- Location: LCCOMB_X66_Y69_N4
\fifo_rx_data~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~128_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[6][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[6]~input_o\,
	datac => \fifo_rx_data[6][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~128_combout\);

-- Location: FF_X66_Y69_N5
\fifo_rx_data[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~128_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][6]~q\);

-- Location: LCCOMB_X66_Y69_N2
\fifo_rx_data~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~129_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_rx_data[5][6]~q\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~129_combout\);

-- Location: FF_X66_Y69_N3
\fifo_rx_data[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~129_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][6]~q\);

-- Location: LCCOMB_X67_Y67_N18
\fifo_rx_data~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~137_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[4][6]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[6]~input_o\,
	datad => \fifo_rx_data[4][6]~q\,
	combout => \fifo_rx_data~137_combout\);

-- Location: FF_X67_Y67_N19
\fifo_rx_data[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~137_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][6]~q\);

-- Location: LCCOMB_X67_Y67_N12
\fifo_rx_data~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~136_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[3][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_rx_data[3][6]~q\,
	datac => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~136_combout\);

-- Location: FF_X67_Y67_N13
\fifo_rx_data[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~136_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][6]~q\);

-- Location: LCCOMB_X66_Y67_N14
\fifo_rx_data~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~135_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[2][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[2][6]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~135_combout\);

-- Location: FF_X66_Y67_N15
\fifo_rx_data[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~135_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][6]~q\);

-- Location: LCCOMB_X66_Y67_N26
\fifo_rx_data~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~17_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[1][6]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[1][6]~q\,
	datac => \chipselect~input_o\,
	datad => \RD_BYTE[6]~input_o\,
	combout => \fifo_rx_data~17_combout\);

-- Location: FF_X66_Y67_N27
\fifo_rx_data[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~17_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][6]~q\);

-- Location: LCCOMB_X63_Y70_N24
\Selector541~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~1_combout\ = (\MODE.mSTATUS~q\ & ((errors_index(2)) # ((\MODE.mRX_DATA~q\ & \fifo_rx_data[0][6]~q\)))) # (!\MODE.mSTATUS~q\ & (\MODE.mRX_DATA~q\ & ((\fifo_rx_data[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mSTATUS~q\,
	datab => \MODE.mRX_DATA~q\,
	datac => errors_index(2),
	datad => \fifo_rx_data[0][6]~q\,
	combout => \Selector541~1_combout\);

-- Location: IOIBUF_X42_Y73_N1
\writedata[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(6),
	o => \writedata[6]~input_o\);

-- Location: LCCOMB_X61_Y66_N30
\fifo_tfr_cmd~157\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~157_combout\ = (!\RST~input_o\ & (\MODE.mTFR_CMD_FIFO~q\ & (\chipselect~input_o\ & \writedata[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[6]~input_o\,
	combout => \fifo_tfr_cmd~157_combout\);

-- Location: FF_X61_Y66_N31
\fifo_tfr_cmd[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~157_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][6]~q\);

-- Location: LCCOMB_X58_Y66_N6
\fifo_tfr_cmd~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~149_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[15][6]~q\,
	datac => \writedata[6]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~149_combout\);

-- Location: FF_X58_Y66_N7
\fifo_tfr_cmd[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~149_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][6]~q\);

-- Location: LCCOMB_X59_Y67_N18
\fifo_tfr_cmd~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~156_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[14][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[6]~input_o\,
	datac => \fifo_tfr_cmd[14][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~156_combout\);

-- Location: FF_X59_Y67_N19
\fifo_tfr_cmd[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~156_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][6]~q\);

-- Location: LCCOMB_X59_Y65_N2
\fifo_tfr_cmd~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~148_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[13][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[6]~input_o\,
	datad => \fifo_tfr_cmd[13][6]~q\,
	combout => \fifo_tfr_cmd~148_combout\);

-- Location: FF_X59_Y65_N3
\fifo_tfr_cmd[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~148_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][6]~q\);

-- Location: LCCOMB_X59_Y65_N0
\fifo_tfr_cmd~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~155_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[12][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[6]~input_o\,
	datad => \fifo_tfr_cmd[12][6]~q\,
	combout => \fifo_tfr_cmd~155_combout\);

-- Location: FF_X59_Y65_N1
\fifo_tfr_cmd[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~155_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][6]~q\);

-- Location: LCCOMB_X61_Y65_N6
\fifo_tfr_cmd~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~147_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[11][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[6]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[11][6]~q\,
	combout => \fifo_tfr_cmd~147_combout\);

-- Location: FF_X61_Y65_N7
\fifo_tfr_cmd[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~147_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][6]~q\);

-- Location: LCCOMB_X60_Y65_N16
\fifo_tfr_cmd~158\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~158_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][6]~q\,
	datac => \writedata[6]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~158_combout\);

-- Location: FF_X60_Y65_N17
\fifo_tfr_cmd[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~158_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][6]~q\);

-- Location: LCCOMB_X61_Y64_N20
\fifo_tfr_cmd~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~150_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[9][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[6]~input_o\,
	datac => \fifo_tfr_cmd[9][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~150_combout\);

-- Location: FF_X61_Y64_N21
\fifo_tfr_cmd[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~150_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][6]~q\);

-- Location: LCCOMB_X58_Y68_N8
\fifo_tfr_cmd~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~153_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[6]~input_o\,
	datac => \fifo_tfr_cmd[8][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~153_combout\);

-- Location: FF_X58_Y68_N9
\fifo_tfr_cmd[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~153_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][6]~q\);

-- Location: LCCOMB_X59_Y66_N6
\fifo_tfr_cmd~161\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~161_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[7][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][6]~q\,
	datac => \writedata[6]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~161_combout\);

-- Location: FF_X60_Y66_N5
\fifo_tfr_cmd[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd~161_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	sload => VCC,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][6]~q\);

-- Location: LCCOMB_X58_Y67_N4
\fifo_tfr_cmd~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~152_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[6][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[6][6]~q\,
	datad => \writedata[6]~input_o\,
	combout => \fifo_tfr_cmd~152_combout\);

-- Location: FF_X58_Y67_N5
\fifo_tfr_cmd[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~152_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][6]~q\);

-- Location: LCCOMB_X58_Y67_N30
\fifo_tfr_cmd~160\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~160_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[5][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \fifo_tfr_cmd[5][6]~q\,
	datad => \writedata[6]~input_o\,
	combout => \fifo_tfr_cmd~160_combout\);

-- Location: FF_X58_Y67_N31
\fifo_tfr_cmd[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~160_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][6]~q\);

-- Location: LCCOMB_X58_Y66_N24
\fifo_tfr_cmd~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~151_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[6]~input_o\,
	datac => \fifo_tfr_cmd[4][6]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~151_combout\);

-- Location: FF_X58_Y66_N25
\fifo_tfr_cmd[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~151_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][6]~q\);

-- Location: LCCOMB_X61_Y70_N20
\fifo_tfr_cmd~159\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~159_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[6]~input_o\,
	datad => \fifo_tfr_cmd[3][6]~q\,
	combout => \fifo_tfr_cmd~159_combout\);

-- Location: FF_X61_Y70_N21
\fifo_tfr_cmd[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~159_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][6]~q\);

-- Location: LCCOMB_X61_Y70_N2
\fifo_tfr_cmd~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~154_combout\ = (\chipselect~input_o\ & (\writedata[6]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[2][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \writedata[6]~input_o\,
	datad => \fifo_tfr_cmd[2][6]~q\,
	combout => \fifo_tfr_cmd~154_combout\);

-- Location: FF_X61_Y70_N3
\fifo_tfr_cmd[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~154_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][6]~q\);

-- Location: LCCOMB_X59_Y70_N10
\fifo_tfr_cmd~162\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~162_combout\ = (\chipselect~input_o\ & ((\writedata[6]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \fifo_tfr_cmd[1][6]~q\,
	datac => \writedata[6]~input_o\,
	combout => \fifo_tfr_cmd~162_combout\);

-- Location: FF_X59_Y70_N11
\fifo_tfr_cmd[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~162_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][6]~q\);

-- Location: LCCOMB_X60_Y66_N30
\Selector541~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~9_combout\ = (\Add4~0_combout\ & (((\fifo_tfr_cmd[4][6]~q\) # (\Add4~1_combout\)))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[6][6]~q\ & ((!\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][6]~q\,
	datab => \fifo_tfr_cmd[4][6]~q\,
	datac => \Add4~0_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector541~9_combout\);

-- Location: LCCOMB_X60_Y66_N28
\Selector541~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~10_combout\ = (\Selector541~9_combout\ & ((\fifo_tfr_cmd[0][6]~q\) # ((!\Add4~1_combout\)))) # (!\Selector541~9_combout\ & (((\fifo_tfr_cmd[2][6]~q\ & \Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][6]~q\,
	datab => \fifo_tfr_cmd[2][6]~q\,
	datac => \Selector541~9_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector541~10_combout\);

-- Location: LCCOMB_X60_Y66_N24
\Selector541~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~2_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[12][6]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[14][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[12][6]~q\,
	datac => \Add4~0_combout\,
	datad => \fifo_tfr_cmd[14][6]~q\,
	combout => \Selector541~2_combout\);

-- Location: LCCOMB_X60_Y66_N26
\Selector541~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~3_combout\ = (\Add4~1_combout\ & ((\Selector541~2_combout\ & (\fifo_tfr_cmd[8][6]~q\)) # (!\Selector541~2_combout\ & ((\fifo_tfr_cmd[10][6]~q\))))) # (!\Add4~1_combout\ & (((\Selector541~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][6]~q\,
	datab => \fifo_tfr_cmd[10][6]~q\,
	datac => \Add4~1_combout\,
	datad => \Selector541~2_combout\,
	combout => \Selector541~3_combout\);

-- Location: LCCOMB_X61_Y66_N18
\Selector541~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~4_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[5][6]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[7][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][6]~q\,
	datab => \fifo_tfr_cmd[7][6]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector541~4_combout\);

-- Location: LCCOMB_X61_Y66_N20
\Selector541~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~5_combout\ = (\Add4~1_combout\ & ((\Selector541~4_combout\ & ((\fifo_tfr_cmd[1][6]~q\))) # (!\Selector541~4_combout\ & (\fifo_tfr_cmd[3][6]~q\)))) # (!\Add4~1_combout\ & (((\Selector541~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[3][6]~q\,
	datac => \fifo_tfr_cmd[1][6]~q\,
	datad => \Selector541~4_combout\,
	combout => \Selector541~5_combout\);

-- Location: LCCOMB_X61_Y66_N24
\Selector541~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~6_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & ((\fifo_tfr_cmd[13][6]~q\))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[15][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][6]~q\,
	datab => \fifo_tfr_cmd[13][6]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector541~6_combout\);

-- Location: LCCOMB_X61_Y66_N26
\Selector541~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~7_combout\ = (\Add4~1_combout\ & ((\Selector541~6_combout\ & ((\fifo_tfr_cmd[9][6]~q\))) # (!\Selector541~6_combout\ & (\fifo_tfr_cmd[11][6]~q\)))) # (!\Add4~1_combout\ & (((\Selector541~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][6]~q\,
	datab => \fifo_tfr_cmd[9][6]~q\,
	datac => \Add4~1_combout\,
	datad => \Selector541~6_combout\,
	combout => \Selector541~7_combout\);

-- Location: LCCOMB_X60_Y66_N16
\Selector541~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~8_combout\ = (fifo_tfr_cmd_amnt_int(0) & (\Add4~2_combout\)) # (!fifo_tfr_cmd_amnt_int(0) & ((\Add4~2_combout\ & (\Selector541~5_combout\)) # (!\Add4~2_combout\ & ((\Selector541~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Add4~2_combout\,
	datac => \Selector541~5_combout\,
	datad => \Selector541~7_combout\,
	combout => \Selector541~8_combout\);

-- Location: LCCOMB_X60_Y66_N2
\Selector541~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector541~8_combout\ & (\Selector541~10_combout\)) # (!\Selector541~8_combout\ & ((\Selector541~3_combout\))))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector541~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Selector541~10_combout\,
	datac => \Selector541~3_combout\,
	datad => \Selector541~8_combout\,
	combout => \Selector541~11_combout\);

-- Location: LCCOMB_X60_Y66_N10
\Selector541~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector541~12_combout\ = (\Selector541~0_combout\) # ((\Selector541~1_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector541~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector541~0_combout\,
	datab => \Selector541~1_combout\,
	datac => \MODE.mTFR_CMD~q\,
	datad => \Selector541~11_combout\,
	combout => \Selector541~12_combout\);

-- Location: FF_X60_Y66_N11
\readdata[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector541~12_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[6]~reg0_q\);

-- Location: FF_X63_Y70_N17
\baud_rate_now[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fast_mode~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => baud_rate_now(7));

-- Location: FF_X61_Y67_N11
\fifo_tfr_cmd_amnt_before_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => fifo_tfr_cmd_amnt_int(3),
	sload => VCC,
	ena => \fifo_tfr_cmd_amnt_before_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_tfr_cmd_amnt_before_int(3));

-- Location: LCCOMB_X61_Y67_N10
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = fifo_tfr_cmd_amnt_int(3) $ (\Add7~5\ $ (!fifo_tfr_cmd_amnt_before_int(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(3),
	datad => fifo_tfr_cmd_amnt_before_int(3),
	cin => \Add7~5\,
	combout => \Add7~6_combout\);

-- Location: LCCOMB_X62_Y70_N12
\Add8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~1_combout\ = \Add7~6_combout\ $ (((\Add7~2_combout\ & \Add7~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~2_combout\,
	datac => \Add7~6_combout\,
	datad => \Add7~4_combout\,
	combout => \Add8~1_combout\);

-- Location: FF_X62_Y70_N13
\errors_index_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Add8~1_combout\,
	sclr => \chipselect~input_o\,
	ena => \errors_tot_int[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index_int(3));

-- Location: LCCOMB_X63_Y70_N2
\errors_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \errors_index[3]~feeder_combout\ = errors_index_int(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => errors_index_int(3),
	combout => \errors_index[3]~feeder_combout\);

-- Location: FF_X63_Y70_N3
\errors_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \errors_index[3]~feeder_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => errors_index(3));

-- Location: LCCOMB_X63_Y70_N16
\Selector540~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~1_combout\ = (\MODE.mSTATUS~q\ & ((errors_index(3)) # ((\MODE.mCTRL~q\ & !baud_rate_now(7))))) # (!\MODE.mSTATUS~q\ & (\MODE.mCTRL~q\ & (!baud_rate_now(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mSTATUS~q\,
	datab => \MODE.mCTRL~q\,
	datac => baud_rate_now(7),
	datad => errors_index(3),
	combout => \Selector540~1_combout\);

-- Location: LCCOMB_X63_Y68_N4
\fifo_rx_data_index[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index[3]~feeder_combout\ = \writedata[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \writedata[3]~input_o\,
	combout => \fifo_rx_data_index[3]~feeder_combout\);

-- Location: FF_X63_Y68_N5
\fifo_rx_data_index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index[3]~feeder_combout\,
	ena => \fifo_rx_data_index[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index(3));

-- Location: LCCOMB_X60_Y67_N26
\Selector540~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~0_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (\MODE.mRX_DATA_FIFO~q\ & ((fifo_rx_data_index(3))))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((fifo_tfr_cmd_index(3)) # ((\MODE.mRX_DATA_FIFO~q\ & fifo_rx_data_index(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => fifo_tfr_cmd_index(3),
	datad => fifo_rx_data_index(3),
	combout => \Selector540~0_combout\);

-- Location: IOIBUF_X79_Y73_N8
\RD_BYTE[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RD_BYTE(7),
	o => \RD_BYTE[7]~input_o\);

-- Location: LCCOMB_X68_Y67_N0
\fifo_rx_data~156\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~156_combout\ = (!\chipselect~input_o\ & (!\RST~input_o\ & \RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \chipselect~input_o\,
	datac => \RST~input_o\,
	datad => \RD_BYTE[7]~input_o\,
	combout => \fifo_rx_data~156_combout\);

-- Location: FF_X68_Y67_N1
\fifo_rx_data[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~156_combout\,
	ena => \fifo_rx_data[15][3]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[15][7]~q\);

-- Location: LCCOMB_X69_Y69_N0
\fifo_rx_data~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~149_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[15][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[15][7]~q\,
	combout => \fifo_rx_data~149_combout\);

-- Location: FF_X69_Y69_N1
\fifo_rx_data[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~149_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[14][2]~47_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[14][7]~q\);

-- Location: LCCOMB_X69_Y69_N14
\fifo_rx_data~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~145_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[14][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[14][7]~q\,
	combout => \fifo_rx_data~145_combout\);

-- Location: FF_X69_Y69_N15
\fifo_rx_data[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~145_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[13][4]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[13][7]~q\);

-- Location: LCCOMB_X70_Y69_N26
\fifo_rx_data~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~152_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[13][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \fifo_rx_data[13][7]~q\,
	combout => \fifo_rx_data~152_combout\);

-- Location: FF_X70_Y69_N27
\fifo_rx_data[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~152_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[12][3]~49_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[12][7]~q\);

-- Location: LCCOMB_X66_Y68_N2
\fifo_rx_data~154\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~154_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[12][7]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[12][7]~q\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~154_combout\);

-- Location: FF_X66_Y68_N3
\fifo_rx_data[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~154_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[11][0]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[11][7]~q\);

-- Location: LCCOMB_X66_Y68_N24
\fifo_rx_data~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~146_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[11][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[11][7]~q\,
	combout => \fifo_rx_data~146_combout\);

-- Location: FF_X66_Y68_N25
\fifo_rx_data[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~146_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[10][1]~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[10][7]~q\);

-- Location: LCCOMB_X67_Y68_N20
\fifo_rx_data~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~143_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[10][7]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[10][7]~q\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~143_combout\);

-- Location: FF_X67_Y68_N21
\fifo_rx_data[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~143_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[9][2]~157_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[9][7]~q\);

-- Location: LCCOMB_X68_Y68_N26
\fifo_rx_data~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~150_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[9][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \fifo_rx_data[9][7]~q\,
	combout => \fifo_rx_data~150_combout\);

-- Location: LCCOMB_X65_Y68_N6
\fifo_rx_data[8][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data[8][7]~feeder_combout\ = \fifo_rx_data~150_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_rx_data~150_combout\,
	combout => \fifo_rx_data[8][7]~feeder_combout\);

-- Location: FF_X65_Y68_N7
\fifo_rx_data[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data[8][7]~feeder_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[8][7]~158_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[8][7]~q\);

-- Location: LCCOMB_X68_Y69_N30
\fifo_rx_data~153\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~153_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[8][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datab => \fifo_rx_data[8][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~153_combout\);

-- Location: FF_X68_Y69_N31
\fifo_rx_data[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~153_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[7][2]~37_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[7][7]~q\);

-- Location: LCCOMB_X68_Y69_N4
\fifo_rx_data~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~147_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[7][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_rx_data[7][7]~q\,
	combout => \fifo_rx_data~147_combout\);

-- Location: FF_X68_Y69_N5
\fifo_rx_data[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~147_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[6][0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[6][7]~q\);

-- Location: LCCOMB_X66_Y69_N12
\fifo_rx_data~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~142_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[6][7]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[6][7]~q\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~142_combout\);

-- Location: FF_X66_Y69_N13
\fifo_rx_data[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~142_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[5][4]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[5][7]~q\);

-- Location: LCCOMB_X66_Y69_N10
\fifo_rx_data~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~151_combout\ = (\chipselect~input_o\ & (\fifo_rx_data[5][7]~q\)) # (!\chipselect~input_o\ & ((\RD_BYTE[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_rx_data[5][7]~q\,
	datac => \RD_BYTE[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_rx_data~151_combout\);

-- Location: FF_X66_Y69_N11
\fifo_rx_data[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~151_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[4][1]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[4][7]~q\);

-- Location: LCCOMB_X66_Y70_N6
\fifo_rx_data~155\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~155_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[4][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RD_BYTE[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[4][7]~q\,
	combout => \fifo_rx_data~155_combout\);

-- Location: FF_X66_Y70_N7
\fifo_rx_data[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~155_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[3][1]~43_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[3][7]~q\);

-- Location: LCCOMB_X66_Y70_N4
\fifo_rx_data~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~148_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[3][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RD_BYTE[7]~input_o\,
	datad => \fifo_rx_data[3][7]~q\,
	combout => \fifo_rx_data~148_combout\);

-- Location: FF_X66_Y70_N5
\fifo_rx_data[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~148_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[2][1]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[2][7]~q\);

-- Location: LCCOMB_X66_Y67_N0
\fifo_rx_data~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~144_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[2][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datab => \fifo_rx_data[2][7]~q\,
	datac => \chipselect~input_o\,
	combout => \fifo_rx_data~144_combout\);

-- Location: FF_X66_Y67_N1
\fifo_rx_data[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~144_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[1][3]~41_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[1][7]~q\);

-- Location: LCCOMB_X66_Y67_N20
\fifo_rx_data~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data~18_combout\ = (\chipselect~input_o\ & ((\fifo_rx_data[1][7]~q\))) # (!\chipselect~input_o\ & (\RD_BYTE[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RD_BYTE[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_rx_data[1][7]~q\,
	combout => \fifo_rx_data~18_combout\);

-- Location: FF_X66_Y67_N21
\fifo_rx_data[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data~18_combout\,
	sclr => \fifo_rx_data[0][0]~5_combout\,
	ena => \fifo_rx_data[0][0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_rx_data[0][7]~q\);

-- Location: IOIBUF_X49_Y73_N15
\writedata[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(7),
	o => \writedata[7]~input_o\);

-- Location: LCCOMB_X59_Y66_N24
\fifo_tfr_cmd~169\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~169_combout\ = (\chipselect~input_o\ & (!\RST~input_o\ & (\MODE.mTFR_CMD_FIFO~q\ & \writedata[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \chipselect~input_o\,
	datab => \RST~input_o\,
	datac => \MODE.mTFR_CMD_FIFO~q\,
	datad => \writedata[7]~input_o\,
	combout => \fifo_tfr_cmd~169_combout\);

-- Location: FF_X59_Y66_N25
\fifo_tfr_cmd[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~169_combout\,
	ena => \fifo_tfr_cmd[15][0]~51_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[15][7]~q\);

-- Location: LCCOMB_X58_Y66_N10
\fifo_tfr_cmd~165\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~165_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[15][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[15][7]~q\,
	datac => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~165_combout\);

-- Location: FF_X58_Y66_N11
\fifo_tfr_cmd[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~165_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[14][5]~39_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[14][7]~q\);

-- Location: LCCOMB_X59_Y66_N8
\fifo_tfr_cmd~173\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~173_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[14][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][7]~q\,
	datab => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~173_combout\);

-- Location: FF_X59_Y66_N9
\fifo_tfr_cmd[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~173_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[13][5]~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[13][7]~q\);

-- Location: LCCOMB_X63_Y67_N8
\fifo_tfr_cmd~177\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~177_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[13][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[13][7]~q\,
	datac => \chipselect~input_o\,
	datad => \writedata[7]~input_o\,
	combout => \fifo_tfr_cmd~177_combout\);

-- Location: FF_X63_Y67_N9
\fifo_tfr_cmd[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~177_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[12][2]~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[12][7]~q\);

-- Location: LCCOMB_X62_Y65_N10
\fifo_tfr_cmd~168\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~168_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[12][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[12][7]~q\,
	datac => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~168_combout\);

-- Location: FF_X62_Y65_N11
\fifo_tfr_cmd[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~168_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[11][2]~45_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[11][7]~q\);

-- Location: LCCOMB_X61_Y65_N12
\fifo_tfr_cmd~164\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~164_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[11][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \writedata[7]~input_o\,
	datac => \fifo_tfr_cmd[11][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~164_combout\);

-- Location: FF_X61_Y65_N13
\fifo_tfr_cmd[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~164_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[10][4]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[10][7]~q\);

-- Location: LCCOMB_X60_Y65_N10
\fifo_tfr_cmd~172\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~172_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[10][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[10][7]~q\,
	datac => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~172_combout\);

-- Location: FF_X60_Y65_N11
\fifo_tfr_cmd[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~172_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[9][4]~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[9][7]~q\);

-- Location: LCCOMB_X61_Y64_N18
\fifo_tfr_cmd~176\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~176_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[9][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datac => \fifo_tfr_cmd[9][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~176_combout\);

-- Location: FF_X61_Y64_N19
\fifo_tfr_cmd[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~176_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[8][4]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[8][7]~q\);

-- Location: LCCOMB_X58_Y68_N18
\fifo_tfr_cmd~167\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~167_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[8][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datab => \fifo_tfr_cmd[8][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~167_combout\);

-- Location: FF_X58_Y68_N19
\fifo_tfr_cmd[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~167_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[7][4]~63_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[7][7]~q\);

-- Location: LCCOMB_X59_Y69_N6
\fifo_tfr_cmd~163\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~163_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datac => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[7][7]~q\,
	combout => \fifo_tfr_cmd~163_combout\);

-- Location: FF_X59_Y69_N7
\fifo_tfr_cmd[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~163_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[6][4]~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[6][7]~q\);

-- Location: LCCOMB_X58_Y67_N28
\fifo_tfr_cmd~171\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~171_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[6][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datac => \fifo_tfr_cmd[6][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~171_combout\);

-- Location: FF_X58_Y67_N29
\fifo_tfr_cmd[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~171_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[5][2]~57_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[5][7]~q\);

-- Location: LCCOMB_X58_Y67_N26
\fifo_tfr_cmd~175\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~175_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datab => \fifo_tfr_cmd[5][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~175_combout\);

-- Location: FF_X58_Y67_N27
\fifo_tfr_cmd[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~175_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[4][4]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[4][7]~q\);

-- Location: LCCOMB_X58_Y66_N28
\fifo_tfr_cmd~170\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~170_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datac => \fifo_tfr_cmd[4][7]~q\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~170_combout\);

-- Location: FF_X58_Y66_N29
\fifo_tfr_cmd[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~170_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[3][2]~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[3][7]~q\);

-- Location: LCCOMB_X61_Y70_N6
\fifo_tfr_cmd~166\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~166_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[3][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \fifo_tfr_cmd[3][7]~q\,
	datac => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~166_combout\);

-- Location: FF_X61_Y70_N7
\fifo_tfr_cmd[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~166_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[2][5]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[2][7]~q\);

-- Location: LCCOMB_X63_Y66_N28
\Selector540~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~2_combout\ = (\Add4~1_combout\ & ((\fifo_tfr_cmd[10][7]~q\) # ((\Add4~2_combout\)))) # (!\Add4~1_combout\ & (((\fifo_tfr_cmd[14][7]~q\ & !\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][7]~q\,
	datab => \Add4~1_combout\,
	datac => \fifo_tfr_cmd[14][7]~q\,
	datad => \Add4~2_combout\,
	combout => \Selector540~2_combout\);

-- Location: LCCOMB_X63_Y66_N6
\Selector540~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~3_combout\ = (\Add4~2_combout\ & ((\Selector540~2_combout\ & ((\fifo_tfr_cmd[2][7]~q\))) # (!\Selector540~2_combout\ & (\fifo_tfr_cmd[6][7]~q\)))) # (!\Add4~2_combout\ & (((\Selector540~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][7]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[2][7]~q\,
	datad => \Selector540~2_combout\,
	combout => \Selector540~3_combout\);

-- Location: LCCOMB_X63_Y66_N22
\Selector540~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~9_combout\ = (\Add4~1_combout\ & (((\fifo_tfr_cmd[8][7]~q\) # (\Add4~2_combout\)))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[12][7]~q\ & ((!\Add4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][7]~q\,
	datab => \Add4~1_combout\,
	datac => \fifo_tfr_cmd[8][7]~q\,
	datad => \Add4~2_combout\,
	combout => \Selector540~9_combout\);

-- Location: LCCOMB_X63_Y69_N28
\fifo_tfr_cmd~174\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~174_combout\ = (\chipselect~input_o\ & (\writedata[7]~input_o\)) # (!\chipselect~input_o\ & ((\fifo_tfr_cmd[2][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[7]~input_o\,
	datab => \chipselect~input_o\,
	datad => \fifo_tfr_cmd[2][7]~q\,
	combout => \fifo_tfr_cmd~174_combout\);

-- Location: FF_X63_Y69_N29
\fifo_tfr_cmd[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~174_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[1][1]~66_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[1][7]~q\);

-- Location: LCCOMB_X61_Y65_N14
\fifo_tfr_cmd~178\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_tfr_cmd~178_combout\ = (\chipselect~input_o\ & ((\writedata[7]~input_o\))) # (!\chipselect~input_o\ & (\fifo_tfr_cmd[1][7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][7]~q\,
	datab => \writedata[7]~input_o\,
	datad => \chipselect~input_o\,
	combout => \fifo_tfr_cmd~178_combout\);

-- Location: FF_X61_Y65_N15
\fifo_tfr_cmd[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_tfr_cmd~178_combout\,
	sclr => \fifo_tfr_cmd[1][1]~16_combout\,
	ena => \fifo_tfr_cmd[0][5]~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \fifo_tfr_cmd[0][7]~q\);

-- Location: LCCOMB_X63_Y66_N8
\Selector540~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~10_combout\ = (\Add4~2_combout\ & ((\Selector540~9_combout\ & ((\fifo_tfr_cmd[0][7]~q\))) # (!\Selector540~9_combout\ & (\fifo_tfr_cmd[4][7]~q\)))) # (!\Add4~2_combout\ & (((\Selector540~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][7]~q\,
	datab => \Add4~2_combout\,
	datac => \Selector540~9_combout\,
	datad => \fifo_tfr_cmd[0][7]~q\,
	combout => \Selector540~10_combout\);

-- Location: LCCOMB_X63_Y66_N0
\Selector540~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~4_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & (\fifo_tfr_cmd[11][7]~q\)) # (!\Add4~1_combout\ & ((\fifo_tfr_cmd[15][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][7]~q\,
	datab => \fifo_tfr_cmd[15][7]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector540~4_combout\);

-- Location: LCCOMB_X63_Y66_N30
\Selector540~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~5_combout\ = (\Add4~2_combout\ & ((\Selector540~4_combout\ & (\fifo_tfr_cmd[3][7]~q\)) # (!\Selector540~4_combout\ & ((\fifo_tfr_cmd[7][7]~q\))))) # (!\Add4~2_combout\ & (((\Selector540~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][7]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[7][7]~q\,
	datad => \Selector540~4_combout\,
	combout => \Selector540~5_combout\);

-- Location: LCCOMB_X63_Y66_N20
\Selector540~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~6_combout\ = (\Add4~2_combout\ & (((\Add4~1_combout\)))) # (!\Add4~2_combout\ & ((\Add4~1_combout\ & ((\fifo_tfr_cmd[9][7]~q\))) # (!\Add4~1_combout\ & (\fifo_tfr_cmd[13][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][7]~q\,
	datab => \fifo_tfr_cmd[9][7]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~1_combout\,
	combout => \Selector540~6_combout\);

-- Location: LCCOMB_X63_Y66_N10
\Selector540~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~7_combout\ = (\Add4~2_combout\ & ((\Selector540~6_combout\ & ((\fifo_tfr_cmd[1][7]~q\))) # (!\Selector540~6_combout\ & (\fifo_tfr_cmd[5][7]~q\)))) # (!\Add4~2_combout\ & (((\Selector540~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][7]~q\,
	datab => \Add4~2_combout\,
	datac => \fifo_tfr_cmd[1][7]~q\,
	datad => \Selector540~6_combout\,
	combout => \Selector540~7_combout\);

-- Location: LCCOMB_X63_Y66_N16
\Selector540~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~8_combout\ = (fifo_tfr_cmd_amnt_int(1) & (!fifo_tfr_cmd_amnt_int(0) & ((\Selector540~7_combout\)))) # (!fifo_tfr_cmd_amnt_int(1) & ((fifo_tfr_cmd_amnt_int(0)) # ((\Selector540~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(1),
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector540~5_combout\,
	datad => \Selector540~7_combout\,
	combout => \Selector540~8_combout\);

-- Location: LCCOMB_X63_Y66_N18
\Selector540~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~11_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector540~8_combout\ & ((\Selector540~10_combout\))) # (!\Selector540~8_combout\ & (\Selector540~3_combout\)))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector540~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector540~3_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector540~10_combout\,
	datad => \Selector540~8_combout\,
	combout => \Selector540~11_combout\);

-- Location: LCCOMB_X63_Y66_N12
\Selector540~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~12_combout\ = (\MODE.mRX_DATA~q\ & ((\fifo_rx_data[0][7]~q\) # ((\MODE.mTFR_CMD~q\ & \Selector540~11_combout\)))) # (!\MODE.mRX_DATA~q\ & (\MODE.mTFR_CMD~q\ & ((\Selector540~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA~q\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \fifo_rx_data[0][7]~q\,
	datad => \Selector540~11_combout\,
	combout => \Selector540~12_combout\);

-- Location: LCCOMB_X63_Y66_N24
\Selector540~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector540~13_combout\ = (\Selector540~1_combout\) # ((\Selector540~0_combout\) # (\Selector540~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector540~1_combout\,
	datac => \Selector540~0_combout\,
	datad => \Selector540~12_combout\,
	combout => \Selector540~13_combout\);

-- Location: FF_X63_Y66_N25
\readdata[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector540~13_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[7]~reg0_q\);

-- Location: IOIBUF_X33_Y73_N1
\IDLE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IDLE,
	o => \IDLE~input_o\);

-- Location: FF_X60_Y71_N17
idle_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \IDLE~input_o\,
	sload => VCC,
	ena => \idle_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \idle_internal~q\);

-- Location: LCCOMB_X60_Y71_N16
\Selector539~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~21_combout\ = (\MODE.mCTRL~q\ & (((\idle_internal~q\ & \MODE.mSTATUS~q\)) # (!\fast_mode~q\))) # (!\MODE.mCTRL~q\ & (((\idle_internal~q\ & \MODE.mSTATUS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mCTRL~q\,
	datab => \fast_mode~q\,
	datac => \idle_internal~q\,
	datad => \MODE.mSTATUS~q\,
	combout => \Selector539~21_combout\);

-- Location: LCCOMB_X57_Y67_N24
\Selector539~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~29_combout\ = (\Add4~0_combout\ & (((\Add4~2_combout\)))) # (!\Add4~0_combout\ & ((\Add4~2_combout\ & ((\fifo_tfr_cmd[2][8]~q\))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[10][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[10][8]~q\,
	datac => \Add4~2_combout\,
	datad => \fifo_tfr_cmd[2][8]~q\,
	combout => \Selector539~29_combout\);

-- Location: LCCOMB_X57_Y67_N30
\Selector539~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~30_combout\ = (\Selector539~29_combout\ & ((\fifo_tfr_cmd[0][8]~q\) # ((!\Add4~0_combout\)))) # (!\Selector539~29_combout\ & (((\fifo_tfr_cmd[8][8]~q\ & \Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][8]~q\,
	datab => \Selector539~29_combout\,
	datac => \fifo_tfr_cmd[8][8]~q\,
	datad => \Add4~0_combout\,
	combout => \Selector539~30_combout\);

-- Location: LCCOMB_X57_Y67_N20
\Selector539~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~22_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[6][8]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[14][8]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \fifo_tfr_cmd[14][8]~q\,
	datac => \fifo_tfr_cmd[6][8]~q\,
	datad => \Add4~0_combout\,
	combout => \Selector539~22_combout\);

-- Location: LCCOMB_X57_Y67_N26
\Selector539~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~23_combout\ = (\Selector539~22_combout\ & (((\fifo_tfr_cmd[4][8]~q\) # (!\Add4~0_combout\)))) # (!\Selector539~22_combout\ & (\fifo_tfr_cmd[12][8]~q\ & ((\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][8]~q\,
	datab => \Selector539~22_combout\,
	datac => \fifo_tfr_cmd[4][8]~q\,
	datad => \Add4~0_combout\,
	combout => \Selector539~23_combout\);

-- Location: LCCOMB_X56_Y67_N6
\Selector539~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~26_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[7][8]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[15][8]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][8]~q\,
	datab => \fifo_tfr_cmd[7][8]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector539~26_combout\);

-- Location: LCCOMB_X56_Y67_N4
\Selector539~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~27_combout\ = (\Add4~0_combout\ & ((\Selector539~26_combout\ & (\fifo_tfr_cmd[5][8]~q\)) # (!\Selector539~26_combout\ & ((\fifo_tfr_cmd[13][8]~q\))))) # (!\Add4~0_combout\ & (((\Selector539~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \fifo_tfr_cmd[5][8]~q\,
	datac => \fifo_tfr_cmd[13][8]~q\,
	datad => \Selector539~26_combout\,
	combout => \Selector539~27_combout\);

-- Location: LCCOMB_X56_Y67_N14
\Selector539~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~24_combout\ = (\Add4~2_combout\ & (((\fifo_tfr_cmd[3][8]~q\) # (\Add4~0_combout\)))) # (!\Add4~2_combout\ & (\fifo_tfr_cmd[11][8]~q\ & ((!\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][8]~q\,
	datab => \fifo_tfr_cmd[3][8]~q\,
	datac => \Add4~2_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector539~24_combout\);

-- Location: LCCOMB_X56_Y67_N24
\Selector539~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~25_combout\ = (\Selector539~24_combout\ & (((\fifo_tfr_cmd[1][8]~q\) # (!\Add4~0_combout\)))) # (!\Selector539~24_combout\ & (\fifo_tfr_cmd[9][8]~q\ & ((\Add4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][8]~q\,
	datab => \fifo_tfr_cmd[1][8]~q\,
	datac => \Selector539~24_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector539~25_combout\);

-- Location: LCCOMB_X56_Y67_N10
\Selector539~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~28_combout\ = (fifo_tfr_cmd_amnt_int(0) & (\Add4~1_combout\)) # (!fifo_tfr_cmd_amnt_int(0) & ((\Add4~1_combout\ & ((\Selector539~25_combout\))) # (!\Add4~1_combout\ & (\Selector539~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_amnt_int(0),
	datab => \Add4~1_combout\,
	datac => \Selector539~27_combout\,
	datad => \Selector539~25_combout\,
	combout => \Selector539~28_combout\);

-- Location: LCCOMB_X57_Y67_N8
\Selector539~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~31_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector539~28_combout\ & (\Selector539~30_combout\)) # (!\Selector539~28_combout\ & ((\Selector539~23_combout\))))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector539~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector539~30_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector539~23_combout\,
	datad => \Selector539~28_combout\,
	combout => \Selector539~31_combout\);

-- Location: LCCOMB_X57_Y67_N6
\Selector539~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~14_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[4][0]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][0]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => fifo_tfr_cmd_index_int(2),
	datad => \fifo_tfr_cmd[0][0]~q\,
	combout => \Selector539~14_combout\);

-- Location: LCCOMB_X57_Y67_N0
\Selector539~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~15_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector539~14_combout\ & (\fifo_tfr_cmd[12][0]~q\)) # (!\Selector539~14_combout\ & ((\fifo_tfr_cmd[8][0]~q\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector539~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][0]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[8][0]~q\,
	datad => \Selector539~14_combout\,
	combout => \Selector539~15_combout\);

-- Location: LCCOMB_X57_Y67_N2
\Selector539~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~12_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[5][0]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][0]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => fifo_tfr_cmd_index_int(2),
	datad => \fifo_tfr_cmd[1][0]~q\,
	combout => \Selector539~12_combout\);

-- Location: LCCOMB_X57_Y67_N16
\Selector539~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~13_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector539~12_combout\ & ((\fifo_tfr_cmd[13][0]~q\))) # (!\Selector539~12_combout\ & (\fifo_tfr_cmd[9][0]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector539~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][0]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[13][0]~q\,
	datad => \Selector539~12_combout\,
	combout => \Selector539~13_combout\);

-- Location: LCCOMB_X57_Y67_N22
\Selector539~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~16_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & ((\Selector539~13_combout\))) # (!fifo_tfr_cmd_index_int(0) & (\Selector539~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => \Selector539~15_combout\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \Selector539~13_combout\,
	combout => \Selector539~16_combout\);

-- Location: LCCOMB_X57_Y66_N22
\Selector539~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~17_combout\ = (fifo_tfr_cmd_index_int(3) & ((\fifo_tfr_cmd[11][0]~q\) # ((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & (((\fifo_tfr_cmd[3][0]~q\ & !fifo_tfr_cmd_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][0]~q\,
	datab => \fifo_tfr_cmd[3][0]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector539~17_combout\);

-- Location: LCCOMB_X57_Y66_N0
\Selector539~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~18_combout\ = (\Selector539~17_combout\ & (((\fifo_tfr_cmd[15][0]~q\) # (!fifo_tfr_cmd_index_int(2))))) # (!\Selector539~17_combout\ & (\fifo_tfr_cmd[7][0]~q\ & ((fifo_tfr_cmd_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector539~17_combout\,
	datab => \fifo_tfr_cmd[7][0]~q\,
	datac => \fifo_tfr_cmd[15][0]~q\,
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector539~18_combout\);

-- Location: LCCOMB_X61_Y66_N16
\Selector539~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~10_combout\ = (fifo_tfr_cmd_index_int(2) & (((fifo_tfr_cmd_index_int(3))))) # (!fifo_tfr_cmd_index_int(2) & ((fifo_tfr_cmd_index_int(3) & ((\fifo_tfr_cmd[10][0]~q\))) # (!fifo_tfr_cmd_index_int(3) & (\fifo_tfr_cmd[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][0]~q\,
	datab => \fifo_tfr_cmd[10][0]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => fifo_tfr_cmd_index_int(3),
	combout => \Selector539~10_combout\);

-- Location: LCCOMB_X61_Y66_N6
\Selector539~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~11_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector539~10_combout\ & (\fifo_tfr_cmd[14][0]~q\)) # (!\Selector539~10_combout\ & ((\fifo_tfr_cmd[6][0]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector539~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][0]~q\,
	datab => \fifo_tfr_cmd[6][0]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \Selector539~10_combout\,
	combout => \Selector539~11_combout\);

-- Location: LCCOMB_X57_Y67_N4
\Selector539~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~19_combout\ = (\Selector539~16_combout\ & ((\Selector539~18_combout\) # ((!fifo_tfr_cmd_index_int(1))))) # (!\Selector539~16_combout\ & (((fifo_tfr_cmd_index_int(1) & \Selector539~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector539~16_combout\,
	datab => \Selector539~18_combout\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => \Selector539~11_combout\,
	combout => \Selector539~19_combout\);

-- Location: LCCOMB_X63_Y68_N22
\fifo_rx_data_index_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index_int~2_combout\ = (fifo_rx_data_index(3) & (((!\MODE.mRX_DATA_FIFO~q\) # (!\fifo_rx_data[0][0]~11_combout\)) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[31]~input_o\,
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => fifo_rx_data_index(3),
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \fifo_rx_data_index_int~2_combout\);

-- Location: FF_X63_Y68_N23
\fifo_rx_data_index_int[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index_int~2_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index_int(3));

-- Location: LCCOMB_X63_Y68_N24
\fifo_rx_data_index_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index_int~1_combout\ = (fifo_rx_data_index(0) & (((!\MODE.mRX_DATA_FIFO~q\) # (!\writedata[31]~input_o\)) # (!\fifo_rx_data[0][0]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index(0),
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => \writedata[31]~input_o\,
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \fifo_rx_data_index_int~1_combout\);

-- Location: FF_X63_Y68_N25
\fifo_rx_data_index_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index_int~1_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index_int(0));

-- Location: LCCOMB_X63_Y68_N30
\fifo_rx_data_index_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index_int~0_combout\ = (fifo_rx_data_index(1) & (((!\MODE.mRX_DATA_FIFO~q\) # (!\fifo_rx_data[0][0]~11_combout\)) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[31]~input_o\,
	datab => fifo_rx_data_index(1),
	datac => \fifo_rx_data[0][0]~11_combout\,
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \fifo_rx_data_index_int~0_combout\);

-- Location: FF_X63_Y68_N31
\fifo_rx_data_index_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index_int~0_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index_int(1));

-- Location: LCCOMB_X65_Y67_N18
\Selector539~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~7_combout\ = (fifo_rx_data_index_int(1) & (((\fifo_rx_data[14][0]~q\) # (fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & (\fifo_rx_data[12][0]~q\ & ((!fifo_rx_data_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[12][0]~q\,
	datab => \fifo_rx_data[14][0]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Selector539~7_combout\);

-- Location: LCCOMB_X65_Y67_N24
\Selector539~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~8_combout\ = (fifo_rx_data_index_int(0) & ((\Selector539~7_combout\ & (\fifo_rx_data[15][0]~q\)) # (!\Selector539~7_combout\ & ((\fifo_rx_data[13][0]~q\))))) # (!fifo_rx_data_index_int(0) & (((\Selector539~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[15][0]~q\,
	datab => fifo_rx_data_index_int(0),
	datac => \fifo_rx_data[13][0]~q\,
	datad => \Selector539~7_combout\,
	combout => \Selector539~8_combout\);

-- Location: LCCOMB_X65_Y67_N0
\Selector539~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~0_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & ((\fifo_rx_data[9][0]~q\))) # (!fifo_rx_data_index_int(0) & (\fifo_rx_data[8][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[8][0]~q\,
	datab => fifo_rx_data_index_int(1),
	datac => \fifo_rx_data[9][0]~q\,
	datad => fifo_rx_data_index_int(0),
	combout => \Selector539~0_combout\);

-- Location: LCCOMB_X65_Y67_N30
\Selector539~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~1_combout\ = (fifo_rx_data_index_int(1) & ((\Selector539~0_combout\ & (\fifo_rx_data[11][0]~q\)) # (!\Selector539~0_combout\ & ((\fifo_rx_data[10][0]~q\))))) # (!fifo_rx_data_index_int(1) & (((\Selector539~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[11][0]~q\,
	datab => \fifo_rx_data[10][0]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => \Selector539~0_combout\,
	combout => \Selector539~1_combout\);

-- Location: LCCOMB_X63_Y68_N16
\fifo_rx_data_index_int~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fifo_rx_data_index_int~3_combout\ = (fifo_rx_data_index(2) & (((!\MODE.mRX_DATA_FIFO~q\) # (!\fifo_rx_data[0][0]~11_combout\)) # (!\writedata[31]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \writedata[31]~input_o\,
	datab => \fifo_rx_data[0][0]~11_combout\,
	datac => fifo_rx_data_index(2),
	datad => \MODE.mRX_DATA_FIFO~q\,
	combout => \fifo_rx_data_index_int~3_combout\);

-- Location: FF_X63_Y68_N17
\fifo_rx_data_index_int[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \fifo_rx_data_index_int~3_combout\,
	ena => \ALT_INV_RST~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => fifo_rx_data_index_int(2));

-- Location: LCCOMB_X65_Y67_N16
\Selector539~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~2_combout\ = (fifo_rx_data_index_int(1) & ((\fifo_rx_data[6][0]~q\) # ((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & (((\fifo_rx_data[4][0]~q\ & !fifo_rx_data_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[6][0]~q\,
	datab => \fifo_rx_data[4][0]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Selector539~2_combout\);

-- Location: LCCOMB_X65_Y67_N22
\Selector539~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~3_combout\ = (fifo_rx_data_index_int(0) & ((\Selector539~2_combout\ & ((\fifo_rx_data[7][0]~q\))) # (!\Selector539~2_combout\ & (\fifo_rx_data[5][0]~q\)))) # (!fifo_rx_data_index_int(0) & (((\Selector539~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[5][0]~q\,
	datab => \fifo_rx_data[7][0]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => \Selector539~2_combout\,
	combout => \Selector539~3_combout\);

-- Location: LCCOMB_X65_Y67_N20
\Selector539~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~4_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & ((\fifo_rx_data[1][0]~q\))) # (!fifo_rx_data_index_int(0) & (\fifo_rx_data[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[0][0]~q\,
	datab => \fifo_rx_data[1][0]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Selector539~4_combout\);

-- Location: LCCOMB_X65_Y67_N6
\Selector539~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~5_combout\ = (fifo_rx_data_index_int(1) & ((\Selector539~4_combout\ & ((\fifo_rx_data[3][0]~q\))) # (!\Selector539~4_combout\ & (\fifo_rx_data[2][0]~q\)))) # (!fifo_rx_data_index_int(1) & (((\Selector539~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][0]~q\,
	datab => \fifo_rx_data[3][0]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => \Selector539~4_combout\,
	combout => \Selector539~5_combout\);

-- Location: LCCOMB_X65_Y67_N28
\Selector539~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~6_combout\ = (fifo_rx_data_index_int(3) & (fifo_rx_data_index_int(2))) # (!fifo_rx_data_index_int(3) & ((fifo_rx_data_index_int(2) & (\Selector539~3_combout\)) # (!fifo_rx_data_index_int(2) & ((\Selector539~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => fifo_rx_data_index_int(2),
	datac => \Selector539~3_combout\,
	datad => \Selector539~5_combout\,
	combout => \Selector539~6_combout\);

-- Location: LCCOMB_X65_Y67_N26
\Selector539~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~9_combout\ = (fifo_rx_data_index_int(3) & ((\Selector539~6_combout\ & (\Selector539~8_combout\)) # (!\Selector539~6_combout\ & ((\Selector539~1_combout\))))) # (!fifo_rx_data_index_int(3) & (((\Selector539~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \Selector539~8_combout\,
	datac => \Selector539~1_combout\,
	datad => \Selector539~6_combout\,
	combout => \Selector539~9_combout\);

-- Location: LCCOMB_X57_Y67_N10
\Selector539~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~20_combout\ = (\MODE.mRX_DATA_FIFO~q\ & ((\Selector539~9_combout\) # ((!\MODE.mTFR_CMD_FIFO~q\ & \Selector539~19_combout\)))) # (!\MODE.mRX_DATA_FIFO~q\ & (!\MODE.mTFR_CMD_FIFO~q\ & (\Selector539~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA_FIFO~q\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \Selector539~19_combout\,
	datad => \Selector539~9_combout\,
	combout => \Selector539~20_combout\);

-- Location: LCCOMB_X57_Y67_N28
\Selector539~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector539~32_combout\ = (\Selector539~21_combout\) # ((\Selector539~20_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector539~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector539~21_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Selector539~31_combout\,
	datad => \Selector539~20_combout\,
	combout => \Selector539~32_combout\);

-- Location: FF_X57_Y67_N29
\readdata[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector539~32_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[8]~reg0_q\);

-- Location: FF_X60_Y71_N23
done_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \DONE~input_o\,
	sload => VCC,
	ena => \idle_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \done_internal~q\);

-- Location: LCCOMB_X60_Y71_N22
\Selector538~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~21_combout\ = (\MODE.mCTRL~q\ & ((\fast_mode~q\) # ((\done_internal~q\ & \MODE.mSTATUS~q\)))) # (!\MODE.mCTRL~q\ & (((\done_internal~q\ & \MODE.mSTATUS~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mCTRL~q\,
	datab => \fast_mode~q\,
	datac => \done_internal~q\,
	datad => \MODE.mSTATUS~q\,
	combout => \Selector538~21_combout\);

-- Location: LCCOMB_X56_Y68_N30
\Selector538~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~22_combout\ = (\Add4~0_combout\ & (((\fifo_tfr_cmd[12][9]~q\) # (\Add4~1_combout\)))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[14][9]~q\ & ((!\Add4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][9]~q\,
	datab => \Add4~0_combout\,
	datac => \fifo_tfr_cmd[12][9]~q\,
	datad => \Add4~1_combout\,
	combout => \Selector538~22_combout\);

-- Location: LCCOMB_X56_Y68_N12
\Selector538~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~23_combout\ = (\Add4~1_combout\ & ((\Selector538~22_combout\ & (\fifo_tfr_cmd[8][9]~q\)) # (!\Selector538~22_combout\ & ((\fifo_tfr_cmd[10][9]~q\))))) # (!\Add4~1_combout\ & (((\Selector538~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[8][9]~q\,
	datac => \Selector538~22_combout\,
	datad => \fifo_tfr_cmd[10][9]~q\,
	combout => \Selector538~23_combout\);

-- Location: LCCOMB_X56_Y68_N20
\Selector538~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~29_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & ((\fifo_tfr_cmd[4][9]~q\))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[6][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][9]~q\,
	datab => \fifo_tfr_cmd[4][9]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector538~29_combout\);

-- Location: LCCOMB_X56_Y68_N26
\Selector538~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~30_combout\ = (\Add4~1_combout\ & ((\Selector538~29_combout\ & ((\fifo_tfr_cmd[0][9]~q\))) # (!\Selector538~29_combout\ & (\fifo_tfr_cmd[2][9]~q\)))) # (!\Add4~1_combout\ & (((\Selector538~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[2][9]~q\,
	datac => \fifo_tfr_cmd[0][9]~q\,
	datad => \Selector538~29_combout\,
	combout => \Selector538~30_combout\);

-- Location: LCCOMB_X56_Y68_N18
\Selector538~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~26_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & (\fifo_tfr_cmd[13][9]~q\)) # (!\Add4~0_combout\ & ((\fifo_tfr_cmd[15][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][9]~q\,
	datab => \fifo_tfr_cmd[15][9]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector538~26_combout\);

-- Location: LCCOMB_X56_Y68_N4
\Selector538~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~27_combout\ = (\Add4~1_combout\ & ((\Selector538~26_combout\ & (\fifo_tfr_cmd[9][9]~q\)) # (!\Selector538~26_combout\ & ((\fifo_tfr_cmd[11][9]~q\))))) # (!\Add4~1_combout\ & (((\Selector538~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][9]~q\,
	datab => \fifo_tfr_cmd[11][9]~q\,
	datac => \Add4~1_combout\,
	datad => \Selector538~26_combout\,
	combout => \Selector538~27_combout\);

-- Location: LCCOMB_X56_Y68_N6
\Selector538~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~24_combout\ = (\Add4~1_combout\ & (((\Add4~0_combout\)))) # (!\Add4~1_combout\ & ((\Add4~0_combout\ & ((\fifo_tfr_cmd[5][9]~q\))) # (!\Add4~0_combout\ & (\fifo_tfr_cmd[7][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][9]~q\,
	datab => \fifo_tfr_cmd[5][9]~q\,
	datac => \Add4~1_combout\,
	datad => \Add4~0_combout\,
	combout => \Selector538~24_combout\);

-- Location: LCCOMB_X56_Y68_N24
\Selector538~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~25_combout\ = (\Add4~1_combout\ & ((\Selector538~24_combout\ & (\fifo_tfr_cmd[1][9]~q\)) # (!\Selector538~24_combout\ & ((\fifo_tfr_cmd[3][9]~q\))))) # (!\Add4~1_combout\ & (((\Selector538~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~1_combout\,
	datab => \fifo_tfr_cmd[1][9]~q\,
	datac => \fifo_tfr_cmd[3][9]~q\,
	datad => \Selector538~24_combout\,
	combout => \Selector538~25_combout\);

-- Location: LCCOMB_X56_Y68_N2
\Selector538~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~28_combout\ = (\Add4~2_combout\ & ((fifo_tfr_cmd_amnt_int(0)) # ((\Selector538~25_combout\)))) # (!\Add4~2_combout\ & (!fifo_tfr_cmd_amnt_int(0) & (\Selector538~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector538~27_combout\,
	datad => \Selector538~25_combout\,
	combout => \Selector538~28_combout\);

-- Location: LCCOMB_X56_Y68_N8
\Selector538~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~31_combout\ = (fifo_tfr_cmd_amnt_int(0) & ((\Selector538~28_combout\ & ((\Selector538~30_combout\))) # (!\Selector538~28_combout\ & (\Selector538~23_combout\)))) # (!fifo_tfr_cmd_amnt_int(0) & (((\Selector538~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector538~23_combout\,
	datab => fifo_tfr_cmd_amnt_int(0),
	datac => \Selector538~30_combout\,
	datad => \Selector538~28_combout\,
	combout => \Selector538~31_combout\);

-- Location: LCCOMB_X58_Y68_N24
\Selector538~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~17_combout\ = (fifo_tfr_cmd_index_int(1) & (fifo_tfr_cmd_index_int(0))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[13][1]~q\)) # (!fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[12][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[13][1]~q\,
	datad => \fifo_tfr_cmd[12][1]~q\,
	combout => \Selector538~17_combout\);

-- Location: LCCOMB_X58_Y68_N6
\Selector538~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~18_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector538~17_combout\ & ((\fifo_tfr_cmd[15][1]~q\))) # (!\Selector538~17_combout\ & (\fifo_tfr_cmd[14][1]~q\)))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector538~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][1]~q\,
	datab => \fifo_tfr_cmd[15][1]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => \Selector538~17_combout\,
	combout => \Selector538~18_combout\);

-- Location: LCCOMB_X58_Y68_N4
\Selector538~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~12_combout\ = (fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[6][1]~q\) # ((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & (((\fifo_tfr_cmd[4][1]~q\ & !fifo_tfr_cmd_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][1]~q\,
	datab => \fifo_tfr_cmd[4][1]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => fifo_tfr_cmd_index_int(0),
	combout => \Selector538~12_combout\);

-- Location: LCCOMB_X58_Y68_N10
\Selector538~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~13_combout\ = (\Selector538~12_combout\ & (((\fifo_tfr_cmd[7][1]~q\) # (!fifo_tfr_cmd_index_int(0))))) # (!\Selector538~12_combout\ & (\fifo_tfr_cmd[5][1]~q\ & ((fifo_tfr_cmd_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][1]~q\,
	datab => \fifo_tfr_cmd[7][1]~q\,
	datac => \Selector538~12_combout\,
	datad => fifo_tfr_cmd_index_int(0),
	combout => \Selector538~13_combout\);

-- Location: LCCOMB_X57_Y68_N10
\Selector538~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~14_combout\ = (fifo_tfr_cmd_index_int(0) & (((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[2][1]~q\))) # (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][1]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => fifo_tfr_cmd_index_int(1),
	datad => \fifo_tfr_cmd[2][1]~q\,
	combout => \Selector538~14_combout\);

-- Location: LCCOMB_X57_Y68_N24
\Selector538~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~15_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector538~14_combout\ & ((\fifo_tfr_cmd[3][1]~q\))) # (!\Selector538~14_combout\ & (\fifo_tfr_cmd[1][1]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector538~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[1][1]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[3][1]~q\,
	datad => \Selector538~14_combout\,
	combout => \Selector538~15_combout\);

-- Location: LCCOMB_X57_Y68_N22
\Selector538~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~16_combout\ = (fifo_tfr_cmd_index_int(2) & ((fifo_tfr_cmd_index_int(3)) # ((\Selector538~13_combout\)))) # (!fifo_tfr_cmd_index_int(2) & (!fifo_tfr_cmd_index_int(3) & ((\Selector538~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(2),
	datab => fifo_tfr_cmd_index_int(3),
	datac => \Selector538~13_combout\,
	datad => \Selector538~15_combout\,
	combout => \Selector538~16_combout\);

-- Location: LCCOMB_X58_Y68_N0
\Selector538~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~10_combout\ = (fifo_tfr_cmd_index_int(1) & (fifo_tfr_cmd_index_int(0))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[9][1]~q\))) # (!fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[8][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[8][1]~q\,
	datad => \fifo_tfr_cmd[9][1]~q\,
	combout => \Selector538~10_combout\);

-- Location: LCCOMB_X58_Y68_N2
\Selector538~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~11_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector538~10_combout\ & (\fifo_tfr_cmd[11][1]~q\)) # (!\Selector538~10_combout\ & ((\fifo_tfr_cmd[10][1]~q\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector538~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => \fifo_tfr_cmd[11][1]~q\,
	datac => \fifo_tfr_cmd[10][1]~q\,
	datad => \Selector538~10_combout\,
	combout => \Selector538~11_combout\);

-- Location: LCCOMB_X57_Y68_N8
\Selector538~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~19_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector538~16_combout\ & (\Selector538~18_combout\)) # (!\Selector538~16_combout\ & ((\Selector538~11_combout\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector538~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector538~18_combout\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \Selector538~16_combout\,
	datad => \Selector538~11_combout\,
	combout => \Selector538~19_combout\);

-- Location: LCCOMB_X65_Y68_N22
\Selector538~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~7_combout\ = (fifo_rx_data_index_int(2) & (((\fifo_rx_data[7][1]~q\) # (fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[3][1]~q\ & ((!fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[3][1]~q\,
	datab => \fifo_rx_data[7][1]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector538~7_combout\);

-- Location: LCCOMB_X65_Y68_N24
\Selector538~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~8_combout\ = (fifo_rx_data_index_int(3) & ((\Selector538~7_combout\ & ((\fifo_rx_data[15][1]~q\))) # (!\Selector538~7_combout\ & (\fifo_rx_data[11][1]~q\)))) # (!fifo_rx_data_index_int(3) & (((\Selector538~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[11][1]~q\,
	datab => fifo_rx_data_index_int(3),
	datac => \Selector538~7_combout\,
	datad => \fifo_rx_data[15][1]~q\,
	combout => \Selector538~8_combout\);

-- Location: LCCOMB_X65_Y68_N28
\Selector538~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~0_combout\ = (fifo_rx_data_index_int(2) & (((fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\fifo_rx_data[10][1]~q\)) # (!fifo_rx_data_index_int(3) & ((\fifo_rx_data[2][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[10][1]~q\,
	datab => \fifo_rx_data[2][1]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector538~0_combout\);

-- Location: LCCOMB_X65_Y68_N2
\Selector538~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~1_combout\ = (fifo_rx_data_index_int(2) & ((\Selector538~0_combout\ & ((\fifo_rx_data[14][1]~q\))) # (!\Selector538~0_combout\ & (\fifo_rx_data[6][1]~q\)))) # (!fifo_rx_data_index_int(2) & (((\Selector538~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[6][1]~q\,
	datab => fifo_rx_data_index_int(2),
	datac => \fifo_rx_data[14][1]~q\,
	datad => \Selector538~0_combout\,
	combout => \Selector538~1_combout\);

-- Location: LCCOMB_X65_Y68_N16
\Selector538~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~2_combout\ = (fifo_rx_data_index_int(2) & (((\fifo_rx_data[5][1]~q\) # (fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[1][1]~q\ & ((!fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][1]~q\,
	datab => \fifo_rx_data[5][1]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector538~2_combout\);

-- Location: LCCOMB_X65_Y68_N26
\Selector538~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~3_combout\ = (fifo_rx_data_index_int(3) & ((\Selector538~2_combout\ & (\fifo_rx_data[13][1]~q\)) # (!\Selector538~2_combout\ & ((\fifo_rx_data[9][1]~q\))))) # (!fifo_rx_data_index_int(3) & (((\Selector538~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[13][1]~q\,
	datab => fifo_rx_data_index_int(3),
	datac => \fifo_rx_data[9][1]~q\,
	datad => \Selector538~2_combout\,
	combout => \Selector538~3_combout\);

-- Location: LCCOMB_X65_Y68_N20
\Selector538~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~4_combout\ = (fifo_rx_data_index_int(2) & (((fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\fifo_rx_data[8][1]~q\)) # (!fifo_rx_data_index_int(3) & ((\fifo_rx_data[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[8][1]~q\,
	datab => \fifo_rx_data[0][1]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector538~4_combout\);

-- Location: LCCOMB_X65_Y68_N18
\Selector538~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~5_combout\ = (fifo_rx_data_index_int(2) & ((\Selector538~4_combout\ & (\fifo_rx_data[12][1]~q\)) # (!\Selector538~4_combout\ & ((\fifo_rx_data[4][1]~q\))))) # (!fifo_rx_data_index_int(2) & (((\Selector538~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[12][1]~q\,
	datab => fifo_rx_data_index_int(2),
	datac => \fifo_rx_data[4][1]~q\,
	datad => \Selector538~4_combout\,
	combout => \Selector538~5_combout\);

-- Location: LCCOMB_X65_Y68_N4
\Selector538~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~6_combout\ = (fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1)) # ((\Selector538~3_combout\)))) # (!fifo_rx_data_index_int(0) & (!fifo_rx_data_index_int(1) & ((\Selector538~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => fifo_rx_data_index_int(1),
	datac => \Selector538~3_combout\,
	datad => \Selector538~5_combout\,
	combout => \Selector538~6_combout\);

-- Location: LCCOMB_X56_Y68_N10
\Selector538~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~9_combout\ = (fifo_rx_data_index_int(1) & ((\Selector538~6_combout\ & (\Selector538~8_combout\)) # (!\Selector538~6_combout\ & ((\Selector538~1_combout\))))) # (!fifo_rx_data_index_int(1) & (((\Selector538~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(1),
	datab => \Selector538~8_combout\,
	datac => \Selector538~1_combout\,
	datad => \Selector538~6_combout\,
	combout => \Selector538~9_combout\);

-- Location: LCCOMB_X56_Y68_N28
\Selector538~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~20_combout\ = (\MODE.mTFR_CMD_FIFO~q\ & (\MODE.mRX_DATA_FIFO~q\ & ((\Selector538~9_combout\)))) # (!\MODE.mTFR_CMD_FIFO~q\ & ((\Selector538~19_combout\) # ((\MODE.mRX_DATA_FIFO~q\ & \Selector538~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => \Selector538~19_combout\,
	datad => \Selector538~9_combout\,
	combout => \Selector538~20_combout\);

-- Location: LCCOMB_X56_Y68_N0
\Selector538~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector538~32_combout\ = (\Selector538~21_combout\) # ((\Selector538~20_combout\) # ((\MODE.mTFR_CMD~q\ & \Selector538~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector538~21_combout\,
	datab => \MODE.mTFR_CMD~q\,
	datac => \Selector538~31_combout\,
	datad => \Selector538~20_combout\,
	combout => \Selector538~32_combout\);

-- Location: FF_X56_Y68_N1
\readdata[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector538~32_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[9]~reg0_q\);

-- Location: LCCOMB_X60_Y71_N8
\no_ack_internal~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \no_ack_internal~0_combout\ = (\idle_internal~0_combout\ & ((\Selector549~0_combout\ & (\NO_ACK~input_o\)) # (!\Selector549~0_combout\ & ((\no_ack_internal~q\))))) # (!\idle_internal~0_combout\ & (((\no_ack_internal~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \idle_internal~0_combout\,
	datab => \NO_ACK~input_o\,
	datac => \no_ack_internal~q\,
	datad => \Selector549~0_combout\,
	combout => \no_ack_internal~0_combout\);

-- Location: FF_X60_Y71_N9
no_ack_internal : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \no_ack_internal~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \no_ack_internal~q\);

-- Location: LCCOMB_X62_Y65_N0
\Mux45~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~7_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[7][2]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][2]~q\,
	datab => \fifo_tfr_cmd[3][2]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Mux45~7_combout\);

-- Location: LCCOMB_X62_Y65_N22
\Mux45~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~8_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Mux45~7_combout\ & ((\fifo_tfr_cmd[15][2]~q\))) # (!\Mux45~7_combout\ & (\fifo_tfr_cmd[11][2]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Mux45~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][2]~q\,
	datab => \fifo_tfr_cmd[15][2]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => \Mux45~7_combout\,
	combout => \Mux45~8_combout\);

-- Location: LCCOMB_X60_Y66_N0
\Mux45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~0_combout\ = (fifo_tfr_cmd_index_int(3) & (((\fifo_tfr_cmd[9][2]~q\) # (fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & (\fifo_tfr_cmd[1][2]~q\ & ((!fifo_tfr_cmd_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[1][2]~q\,
	datac => \fifo_tfr_cmd[9][2]~q\,
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Mux45~0_combout\);

-- Location: LCCOMB_X60_Y66_N22
\Mux45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~1_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Mux45~0_combout\ & (\fifo_tfr_cmd[13][2]~q\)) # (!\Mux45~0_combout\ & ((\fifo_tfr_cmd[5][2]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Mux45~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][2]~q\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[5][2]~q\,
	datad => \Mux45~0_combout\,
	combout => \Mux45~1_combout\);

-- Location: LCCOMB_X62_Y67_N12
\Mux45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~2_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[6][2]~q\))) # (!fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[2][2]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \fifo_tfr_cmd[6][2]~q\,
	combout => \Mux45~2_combout\);

-- Location: LCCOMB_X62_Y67_N26
\Mux45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~3_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Mux45~2_combout\ & ((\fifo_tfr_cmd[14][2]~q\))) # (!\Mux45~2_combout\ & (\fifo_tfr_cmd[10][2]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Mux45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][2]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[14][2]~q\,
	datad => \Mux45~2_combout\,
	combout => \Mux45~3_combout\);

-- Location: LCCOMB_X62_Y67_N8
\Mux45~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~4_combout\ = (fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2)) # ((\fifo_tfr_cmd[8][2]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (!fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[0][2]~q\,
	datad => \fifo_tfr_cmd[8][2]~q\,
	combout => \Mux45~4_combout\);

-- Location: LCCOMB_X63_Y67_N12
\Mux45~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~5_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Mux45~4_combout\ & (\fifo_tfr_cmd[12][2]~q\)) # (!\Mux45~4_combout\ & ((\fifo_tfr_cmd[4][2]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Mux45~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(2),
	datab => \fifo_tfr_cmd[12][2]~q\,
	datac => \fifo_tfr_cmd[4][2]~q\,
	datad => \Mux45~4_combout\,
	combout => \Mux45~5_combout\);

-- Location: LCCOMB_X63_Y67_N18
\Mux45~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~6_combout\ = (fifo_tfr_cmd_index_int(0) & (fifo_tfr_cmd_index_int(1))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & (\Mux45~3_combout\)) # (!fifo_tfr_cmd_index_int(1) & ((\Mux45~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \Mux45~3_combout\,
	datad => \Mux45~5_combout\,
	combout => \Mux45~6_combout\);

-- Location: LCCOMB_X63_Y67_N4
\Mux45~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux45~9_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Mux45~6_combout\ & (\Mux45~8_combout\)) # (!\Mux45~6_combout\ & ((\Mux45~1_combout\))))) # (!fifo_tfr_cmd_index_int(0) & (((\Mux45~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => \Mux45~8_combout\,
	datac => \Mux45~1_combout\,
	datad => \Mux45~6_combout\,
	combout => \Mux45~9_combout\);

-- Location: LCCOMB_X67_Y67_N20
\Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~0_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & ((\fifo_rx_data[5][2]~q\))) # (!fifo_rx_data_index_int(0) & (\fifo_rx_data[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[4][2]~q\,
	datab => fifo_rx_data_index_int(1),
	datac => fifo_rx_data_index_int(0),
	datad => \fifo_rx_data[5][2]~q\,
	combout => \Mux61~0_combout\);

-- Location: LCCOMB_X67_Y67_N22
\Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~1_combout\ = (fifo_rx_data_index_int(1) & ((\Mux61~0_combout\ & (\fifo_rx_data[7][2]~q\)) # (!\Mux61~0_combout\ & ((\fifo_rx_data[6][2]~q\))))) # (!fifo_rx_data_index_int(1) & (((\Mux61~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[7][2]~q\,
	datab => \fifo_rx_data[6][2]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => \Mux61~0_combout\,
	combout => \Mux61~1_combout\);

-- Location: LCCOMB_X68_Y68_N30
\Mux61~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~7_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & (\fifo_rx_data[13][2]~q\)) # (!fifo_rx_data_index_int(0) & ((\fifo_rx_data[12][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[13][2]~q\,
	datab => \fifo_rx_data[12][2]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Mux61~7_combout\);

-- Location: LCCOMB_X67_Y67_N28
\Mux61~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~8_combout\ = (fifo_rx_data_index_int(1) & ((\Mux61~7_combout\ & ((\fifo_rx_data[15][2]~q\))) # (!\Mux61~7_combout\ & (\fifo_rx_data[14][2]~q\)))) # (!fifo_rx_data_index_int(1) & (((\Mux61~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[14][2]~q\,
	datab => fifo_rx_data_index_int(1),
	datac => \fifo_rx_data[15][2]~q\,
	datad => \Mux61~7_combout\,
	combout => \Mux61~8_combout\);

-- Location: LCCOMB_X63_Y68_N18
\Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~2_combout\ = (fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0)) # ((\fifo_rx_data[10][2]~q\)))) # (!fifo_rx_data_index_int(1) & (!fifo_rx_data_index_int(0) & ((\fifo_rx_data[8][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(1),
	datab => fifo_rx_data_index_int(0),
	datac => \fifo_rx_data[10][2]~q\,
	datad => \fifo_rx_data[8][2]~q\,
	combout => \Mux61~2_combout\);

-- Location: LCCOMB_X63_Y68_N8
\Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~3_combout\ = (fifo_rx_data_index_int(0) & ((\Mux61~2_combout\ & (\fifo_rx_data[11][2]~q\)) # (!\Mux61~2_combout\ & ((\fifo_rx_data[9][2]~q\))))) # (!fifo_rx_data_index_int(0) & (((\Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[11][2]~q\,
	datab => fifo_rx_data_index_int(0),
	datac => \fifo_rx_data[9][2]~q\,
	datad => \Mux61~2_combout\,
	combout => \Mux61~3_combout\);

-- Location: LCCOMB_X65_Y67_N12
\Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~4_combout\ = (fifo_rx_data_index_int(1) & (((\fifo_rx_data[2][2]~q\) # (fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & (\fifo_rx_data[0][2]~q\ & ((!fifo_rx_data_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[0][2]~q\,
	datab => \fifo_rx_data[2][2]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Mux61~4_combout\);

-- Location: LCCOMB_X65_Y67_N10
\Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~5_combout\ = (fifo_rx_data_index_int(0) & ((\Mux61~4_combout\ & ((\fifo_rx_data[3][2]~q\))) # (!\Mux61~4_combout\ & (\fifo_rx_data[1][2]~q\)))) # (!fifo_rx_data_index_int(0) & (((\Mux61~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][2]~q\,
	datab => fifo_rx_data_index_int(0),
	datac => \fifo_rx_data[3][2]~q\,
	datad => \Mux61~4_combout\,
	combout => \Mux61~5_combout\);

-- Location: LCCOMB_X63_Y67_N28
\Mux61~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~6_combout\ = (fifo_rx_data_index_int(2) & (fifo_rx_data_index_int(3))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\Mux61~3_combout\)) # (!fifo_rx_data_index_int(3) & ((\Mux61~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(2),
	datab => fifo_rx_data_index_int(3),
	datac => \Mux61~3_combout\,
	datad => \Mux61~5_combout\,
	combout => \Mux61~6_combout\);

-- Location: LCCOMB_X63_Y67_N2
\Mux61~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux61~9_combout\ = (fifo_rx_data_index_int(2) & ((\Mux61~6_combout\ & ((\Mux61~8_combout\))) # (!\Mux61~6_combout\ & (\Mux61~1_combout\)))) # (!fifo_rx_data_index_int(2) & (((\Mux61~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux61~1_combout\,
	datab => fifo_rx_data_index_int(2),
	datac => \Mux61~8_combout\,
	datad => \Mux61~6_combout\,
	combout => \Mux61~9_combout\);

-- Location: LCCOMB_X63_Y67_N10
\Selector537~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector537~0_combout\ = (\MODE.mRX_DATA_FIFO~q\ & ((\Mux61~9_combout\) # ((!\MODE.mTFR_CMD_FIFO~q\ & \Mux45~9_combout\)))) # (!\MODE.mRX_DATA_FIFO~q\ & (!\MODE.mTFR_CMD_FIFO~q\ & (\Mux45~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mRX_DATA_FIFO~q\,
	datab => \MODE.mTFR_CMD_FIFO~q\,
	datac => \Mux45~9_combout\,
	datad => \Mux61~9_combout\,
	combout => \Selector537~0_combout\);

-- Location: LCCOMB_X63_Y67_N22
\Selector537~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector537~1_combout\ = (\Selector537~0_combout\) # ((\MODE.mSTATUS~q\ & \no_ack_internal~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mSTATUS~q\,
	datac => \no_ack_internal~q\,
	datad => \Selector537~0_combout\,
	combout => \Selector537~1_combout\);

-- Location: FF_X63_Y67_N23
\readdata[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector537~1_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[10]~reg0_q\);

-- Location: LCCOMB_X61_Y68_N20
\Selector536~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~10_combout\ = (fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1)) # ((\fifo_tfr_cmd[5][3]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (!fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[5][3]~q\,
	datad => \fifo_tfr_cmd[4][3]~q\,
	combout => \Selector536~10_combout\);

-- Location: LCCOMB_X61_Y68_N22
\Selector536~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~11_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector536~10_combout\ & ((\fifo_tfr_cmd[7][3]~q\))) # (!\Selector536~10_combout\ & (\fifo_tfr_cmd[6][3]~q\)))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector536~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][3]~q\,
	datab => \fifo_tfr_cmd[7][3]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => \Selector536~10_combout\,
	combout => \Selector536~11_combout\);

-- Location: LCCOMB_X60_Y68_N24
\Selector536~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~17_combout\ = (fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0)) # ((\fifo_tfr_cmd[14][3]~q\)))) # (!fifo_tfr_cmd_index_int(1) & (!fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[12][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[14][3]~q\,
	datad => \fifo_tfr_cmd[12][3]~q\,
	combout => \Selector536~17_combout\);

-- Location: LCCOMB_X60_Y68_N26
\Selector536~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~18_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector536~17_combout\ & ((\fifo_tfr_cmd[15][3]~q\))) # (!\Selector536~17_combout\ & (\fifo_tfr_cmd[13][3]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector536~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][3]~q\,
	datab => \fifo_tfr_cmd[15][3]~q\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \Selector536~17_combout\,
	combout => \Selector536~18_combout\);

-- Location: LCCOMB_X61_Y68_N24
\Selector536~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~14_combout\ = (fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1)) # ((\fifo_tfr_cmd[1][3]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[0][3]~q\,
	datad => \fifo_tfr_cmd[1][3]~q\,
	combout => \Selector536~14_combout\);

-- Location: LCCOMB_X61_Y68_N26
\Selector536~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~15_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector536~14_combout\ & ((\fifo_tfr_cmd[3][3]~q\))) # (!\Selector536~14_combout\ & (\fifo_tfr_cmd[2][3]~q\)))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector536~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][3]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[3][3]~q\,
	datad => \Selector536~14_combout\,
	combout => \Selector536~15_combout\);

-- Location: LCCOMB_X61_Y68_N0
\Selector536~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~12_combout\ = (fifo_tfr_cmd_index_int(0) & (fifo_tfr_cmd_index_int(1))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[10][3]~q\)) # (!fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[8][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[10][3]~q\,
	datad => \fifo_tfr_cmd[8][3]~q\,
	combout => \Selector536~12_combout\);

-- Location: LCCOMB_X61_Y68_N2
\Selector536~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~13_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector536~12_combout\ & ((\fifo_tfr_cmd[11][3]~q\))) # (!\Selector536~12_combout\ & (\fifo_tfr_cmd[9][3]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector536~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][3]~q\,
	datab => \fifo_tfr_cmd[11][3]~q\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \Selector536~12_combout\,
	combout => \Selector536~13_combout\);

-- Location: LCCOMB_X61_Y68_N12
\Selector536~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~16_combout\ = (fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2)) # ((\Selector536~13_combout\)))) # (!fifo_tfr_cmd_index_int(3) & (!fifo_tfr_cmd_index_int(2) & (\Selector536~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector536~15_combout\,
	datad => \Selector536~13_combout\,
	combout => \Selector536~16_combout\);

-- Location: LCCOMB_X61_Y68_N30
\Selector536~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~19_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector536~16_combout\ & ((\Selector536~18_combout\))) # (!\Selector536~16_combout\ & (\Selector536~11_combout\)))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector536~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~11_combout\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector536~18_combout\,
	datad => \Selector536~16_combout\,
	combout => \Selector536~19_combout\);

-- Location: LCCOMB_X63_Y69_N18
\MODE~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~19_combout\ = (\address[2]~input_o\ & (\address[1]~input_o\ & ((\MODE.mOP_CNT~q\) # (!\address[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \address[2]~input_o\,
	datab => \MODE.mOP_CNT~q\,
	datac => \address[1]~input_o\,
	datad => \address[0]~input_o\,
	combout => \MODE~19_combout\);

-- Location: LCCOMB_X63_Y69_N24
\MODE~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \MODE~20_combout\ = (!\RST~input_o\ & \MODE~19_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RST~input_o\,
	datad => \MODE~19_combout\,
	combout => \MODE~20_combout\);

-- Location: FF_X63_Y69_N25
\MODE.mOP_CNT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \MODE~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MODE.mOP_CNT~q\);

-- Location: LCCOMB_X63_Y69_N6
\readdata[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \readdata[15]~1_combout\ = (\MODE.mCTRL~q\) # ((\MODE.mOP_CNT~q\) # ((\MODE.mSTATUS~q\) # (\MODE.mRX_DATA~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mCTRL~q\,
	datab => \MODE.mOP_CNT~q\,
	datac => \MODE.mSTATUS~q\,
	datad => \MODE.mRX_DATA~q\,
	combout => \readdata[15]~1_combout\);

-- Location: LCCOMB_X65_Y66_N24
\Selector536~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~20_combout\ = (!\MODE.mTFR_CMD_FIFO~q\ & (!\MODE.mRX_DATA_FIFO~q\ & !\readdata[15]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => \readdata[15]~1_combout\,
	combout => \Selector536~20_combout\);

-- Location: LCCOMB_X65_Y66_N14
\Selector536~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~21_combout\ = (\MODE.mRX_DATA_FIFO~q\ & !\readdata[15]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MODE.mRX_DATA_FIFO~q\,
	datac => \readdata[15]~1_combout\,
	combout => \Selector536~21_combout\);

-- Location: LCCOMB_X66_Y66_N2
\Selector536~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~7_combout\ = (fifo_rx_data_index_int(3) & (((\fifo_rx_data[11][3]~q\) # (fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & (\fifo_rx_data[3][3]~q\ & ((!fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[3][3]~q\,
	datab => fifo_rx_data_index_int(3),
	datac => \fifo_rx_data[11][3]~q\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector536~7_combout\);

-- Location: LCCOMB_X66_Y66_N0
\Selector536~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~8_combout\ = (\Selector536~7_combout\ & (((\fifo_rx_data[15][3]~q\) # (!fifo_rx_data_index_int(2))))) # (!\Selector536~7_combout\ & (\fifo_rx_data[7][3]~q\ & ((fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[7][3]~q\,
	datab => \Selector536~7_combout\,
	datac => \fifo_rx_data[15][3]~q\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector536~8_combout\);

-- Location: LCCOMB_X67_Y66_N0
\Selector536~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~0_combout\ = (fifo_rx_data_index_int(3) & (((\fifo_rx_data[9][3]~q\) # (fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & (\fifo_rx_data[1][3]~q\ & ((!fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][3]~q\,
	datab => \fifo_rx_data[9][3]~q\,
	datac => fifo_rx_data_index_int(3),
	datad => fifo_rx_data_index_int(2),
	combout => \Selector536~0_combout\);

-- Location: LCCOMB_X67_Y66_N10
\Selector536~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~1_combout\ = (fifo_rx_data_index_int(2) & ((\Selector536~0_combout\ & ((\fifo_rx_data[13][3]~q\))) # (!\Selector536~0_combout\ & (\fifo_rx_data[5][3]~q\)))) # (!fifo_rx_data_index_int(2) & (((\Selector536~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(2),
	datab => \fifo_rx_data[5][3]~q\,
	datac => \fifo_rx_data[13][3]~q\,
	datad => \Selector536~0_combout\,
	combout => \Selector536~1_combout\);

-- Location: LCCOMB_X67_Y69_N16
\Selector536~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~2_combout\ = (fifo_rx_data_index_int(2) & (((\fifo_rx_data[6][3]~q\) # (fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[2][3]~q\ & ((!fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][3]~q\,
	datab => \fifo_rx_data[6][3]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector536~2_combout\);

-- Location: LCCOMB_X67_Y69_N22
\Selector536~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~3_combout\ = (fifo_rx_data_index_int(3) & ((\Selector536~2_combout\ & ((\fifo_rx_data[14][3]~q\))) # (!\Selector536~2_combout\ & (\fifo_rx_data[10][3]~q\)))) # (!fifo_rx_data_index_int(3) & (((\Selector536~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \fifo_rx_data[10][3]~q\,
	datac => \fifo_rx_data[14][3]~q\,
	datad => \Selector536~2_combout\,
	combout => \Selector536~3_combout\);

-- Location: LCCOMB_X67_Y69_N24
\Selector536~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~4_combout\ = (fifo_rx_data_index_int(2) & (((\fifo_rx_data[4][3]~q\) # (fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[0][3]~q\ & ((!fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[0][3]~q\,
	datab => \fifo_rx_data[4][3]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector536~4_combout\);

-- Location: LCCOMB_X67_Y69_N2
\Selector536~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~5_combout\ = (fifo_rx_data_index_int(3) & ((\Selector536~4_combout\ & ((\fifo_rx_data[12][3]~q\))) # (!\Selector536~4_combout\ & (\fifo_rx_data[8][3]~q\)))) # (!fifo_rx_data_index_int(3) & (((\Selector536~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \fifo_rx_data[8][3]~q\,
	datac => \fifo_rx_data[12][3]~q\,
	datad => \Selector536~4_combout\,
	combout => \Selector536~5_combout\);

-- Location: LCCOMB_X67_Y69_N28
\Selector536~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~6_combout\ = (fifo_rx_data_index_int(0) & (fifo_rx_data_index_int(1))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & (\Selector536~3_combout\)) # (!fifo_rx_data_index_int(1) & ((\Selector536~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => fifo_rx_data_index_int(1),
	datac => \Selector536~3_combout\,
	datad => \Selector536~5_combout\,
	combout => \Selector536~6_combout\);

-- Location: LCCOMB_X66_Y66_N6
\Selector536~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~9_combout\ = (fifo_rx_data_index_int(0) & ((\Selector536~6_combout\ & (\Selector536~8_combout\)) # (!\Selector536~6_combout\ & ((\Selector536~1_combout\))))) # (!fifo_rx_data_index_int(0) & (((\Selector536~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \Selector536~8_combout\,
	datac => \Selector536~1_combout\,
	datad => \Selector536~6_combout\,
	combout => \Selector536~9_combout\);

-- Location: LCCOMB_X65_Y66_N12
\Selector536~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector536~22_combout\ = (\Selector536~19_combout\ & ((\Selector536~20_combout\) # ((\Selector536~21_combout\ & \Selector536~9_combout\)))) # (!\Selector536~19_combout\ & (((\Selector536~21_combout\ & \Selector536~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~19_combout\,
	datab => \Selector536~20_combout\,
	datac => \Selector536~21_combout\,
	datad => \Selector536~9_combout\,
	combout => \Selector536~22_combout\);

-- Location: FF_X65_Y66_N13
\readdata[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector536~22_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[11]~reg0_q\);

-- Location: LCCOMB_X61_Y66_N28
\Selector535~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~7_combout\ = (fifo_tfr_cmd_index_int(2) & (((fifo_tfr_cmd_index_int(3))))) # (!fifo_tfr_cmd_index_int(2) & ((fifo_tfr_cmd_index_int(3) & (\fifo_tfr_cmd[11][4]~q\)) # (!fifo_tfr_cmd_index_int(3) & ((\fifo_tfr_cmd[3][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(2),
	datab => \fifo_tfr_cmd[11][4]~q\,
	datac => \fifo_tfr_cmd[3][4]~q\,
	datad => fifo_tfr_cmd_index_int(3),
	combout => \Selector535~7_combout\);

-- Location: LCCOMB_X61_Y66_N14
\Selector535~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~8_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector535~7_combout\ & (\fifo_tfr_cmd[15][4]~q\)) # (!\Selector535~7_combout\ & ((\fifo_tfr_cmd[7][4]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector535~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][4]~q\,
	datab => \fifo_tfr_cmd[7][4]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \Selector535~7_combout\,
	combout => \Selector535~8_combout\);

-- Location: LCCOMB_X62_Y66_N28
\Selector535~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~0_combout\ = (fifo_tfr_cmd_index_int(3) & (((\fifo_tfr_cmd[10][4]~q\) # (fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & (\fifo_tfr_cmd[2][4]~q\ & ((!fifo_tfr_cmd_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[2][4]~q\,
	datab => \fifo_tfr_cmd[10][4]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector535~0_combout\);

-- Location: LCCOMB_X62_Y66_N26
\Selector535~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~1_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector535~0_combout\ & ((\fifo_tfr_cmd[14][4]~q\))) # (!\Selector535~0_combout\ & (\fifo_tfr_cmd[6][4]~q\)))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector535~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][4]~q\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[14][4]~q\,
	datad => \Selector535~0_combout\,
	combout => \Selector535~1_combout\);

-- Location: LCCOMB_X62_Y66_N0
\Selector535~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~2_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[5][4]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[1][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[5][4]~q\,
	datac => \fifo_tfr_cmd[1][4]~q\,
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector535~2_combout\);

-- Location: LCCOMB_X62_Y66_N22
\Selector535~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~3_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector535~2_combout\ & (\fifo_tfr_cmd[13][4]~q\)) # (!\Selector535~2_combout\ & ((\fifo_tfr_cmd[9][4]~q\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector535~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][4]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[9][4]~q\,
	datad => \Selector535~2_combout\,
	combout => \Selector535~3_combout\);

-- Location: LCCOMB_X62_Y66_N20
\Selector535~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~4_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[4][4]~q\))) # (!fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][4]~q\,
	datab => \fifo_tfr_cmd[4][4]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector535~4_combout\);

-- Location: LCCOMB_X62_Y66_N10
\Selector535~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~5_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector535~4_combout\ & ((\fifo_tfr_cmd[12][4]~q\))) # (!\Selector535~4_combout\ & (\fifo_tfr_cmd[8][4]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector535~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[8][4]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[12][4]~q\,
	datad => \Selector535~4_combout\,
	combout => \Selector535~5_combout\);

-- Location: LCCOMB_X62_Y66_N16
\Selector535~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~6_combout\ = (fifo_tfr_cmd_index_int(1) & (fifo_tfr_cmd_index_int(0))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & (\Selector535~3_combout\)) # (!fifo_tfr_cmd_index_int(0) & ((\Selector535~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(0),
	datac => \Selector535~3_combout\,
	datad => \Selector535~5_combout\,
	combout => \Selector535~6_combout\);

-- Location: LCCOMB_X62_Y66_N6
\Selector535~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~9_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector535~6_combout\ & (\Selector535~8_combout\)) # (!\Selector535~6_combout\ & ((\Selector535~1_combout\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector535~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector535~8_combout\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \Selector535~1_combout\,
	datad => \Selector535~6_combout\,
	combout => \Selector535~9_combout\);

-- Location: LCCOMB_X68_Y68_N8
\Selector535~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~10_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & (\fifo_rx_data[9][4]~q\)) # (!fifo_rx_data_index_int(0) & ((\fifo_rx_data[8][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(1),
	datab => \fifo_rx_data[9][4]~q\,
	datac => \fifo_rx_data[8][4]~q\,
	datad => fifo_rx_data_index_int(0),
	combout => \Selector535~10_combout\);

-- Location: LCCOMB_X67_Y66_N20
\Selector535~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~11_combout\ = (fifo_rx_data_index_int(1) & ((\Selector535~10_combout\ & (\fifo_rx_data[11][4]~q\)) # (!\Selector535~10_combout\ & ((\fifo_rx_data[10][4]~q\))))) # (!fifo_rx_data_index_int(1) & (((\Selector535~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(1),
	datab => \fifo_rx_data[11][4]~q\,
	datac => \fifo_rx_data[10][4]~q\,
	datad => \Selector535~10_combout\,
	combout => \Selector535~11_combout\);

-- Location: LCCOMB_X66_Y66_N24
\Selector535~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~12_combout\ = (fifo_rx_data_index_int(0) & (((fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & (\fifo_rx_data[6][4]~q\)) # (!fifo_rx_data_index_int(1) & ((\fifo_rx_data[4][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \fifo_rx_data[6][4]~q\,
	datac => \fifo_rx_data[4][4]~q\,
	datad => fifo_rx_data_index_int(1),
	combout => \Selector535~12_combout\);

-- Location: LCCOMB_X66_Y66_N26
\Selector535~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~13_combout\ = (fifo_rx_data_index_int(0) & ((\Selector535~12_combout\ & ((\fifo_rx_data[7][4]~q\))) # (!\Selector535~12_combout\ & (\fifo_rx_data[5][4]~q\)))) # (!fifo_rx_data_index_int(0) & (((\Selector535~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[5][4]~q\,
	datab => \fifo_rx_data[7][4]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => \Selector535~12_combout\,
	combout => \Selector535~13_combout\);

-- Location: LCCOMB_X66_Y67_N10
\Selector535~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~14_combout\ = (fifo_rx_data_index_int(1) & (((fifo_rx_data_index_int(0))))) # (!fifo_rx_data_index_int(1) & ((fifo_rx_data_index_int(0) & (\fifo_rx_data[1][4]~q\)) # (!fifo_rx_data_index_int(0) & ((\fifo_rx_data[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][4]~q\,
	datab => \fifo_rx_data[0][4]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => fifo_rx_data_index_int(0),
	combout => \Selector535~14_combout\);

-- Location: LCCOMB_X66_Y67_N12
\Selector535~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~15_combout\ = (fifo_rx_data_index_int(1) & ((\Selector535~14_combout\ & ((\fifo_rx_data[3][4]~q\))) # (!\Selector535~14_combout\ & (\fifo_rx_data[2][4]~q\)))) # (!fifo_rx_data_index_int(1) & (((\Selector535~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][4]~q\,
	datab => \fifo_rx_data[3][4]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => \Selector535~14_combout\,
	combout => \Selector535~15_combout\);

-- Location: LCCOMB_X66_Y66_N8
\Selector535~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~16_combout\ = (fifo_rx_data_index_int(3) & (((fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & ((fifo_rx_data_index_int(2) & (\Selector535~13_combout\)) # (!fifo_rx_data_index_int(2) & ((\Selector535~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector535~13_combout\,
	datab => fifo_rx_data_index_int(3),
	datac => \Selector535~15_combout\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector535~16_combout\);

-- Location: LCCOMB_X70_Y69_N4
\Selector535~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~17_combout\ = (fifo_rx_data_index_int(0) & (((fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & ((\fifo_rx_data[14][4]~q\))) # (!fifo_rx_data_index_int(1) & (\fifo_rx_data[12][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \fifo_rx_data[12][4]~q\,
	datac => fifo_rx_data_index_int(1),
	datad => \fifo_rx_data[14][4]~q\,
	combout => \Selector535~17_combout\);

-- Location: LCCOMB_X66_Y66_N10
\Selector535~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~18_combout\ = (fifo_rx_data_index_int(0) & ((\Selector535~17_combout\ & (\fifo_rx_data[15][4]~q\)) # (!\Selector535~17_combout\ & ((\fifo_rx_data[13][4]~q\))))) # (!fifo_rx_data_index_int(0) & (((\Selector535~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[15][4]~q\,
	datab => \fifo_rx_data[13][4]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => \Selector535~17_combout\,
	combout => \Selector535~18_combout\);

-- Location: LCCOMB_X66_Y66_N20
\Selector535~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~19_combout\ = (fifo_rx_data_index_int(3) & ((\Selector535~16_combout\ & ((\Selector535~18_combout\))) # (!\Selector535~16_combout\ & (\Selector535~11_combout\)))) # (!fifo_rx_data_index_int(3) & (((\Selector535~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector535~11_combout\,
	datab => fifo_rx_data_index_int(3),
	datac => \Selector535~16_combout\,
	datad => \Selector535~18_combout\,
	combout => \Selector535~19_combout\);

-- Location: LCCOMB_X66_Y66_N28
\Selector535~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector535~20_combout\ = (\Selector536~21_combout\ & ((\Selector535~19_combout\) # ((\Selector536~20_combout\ & \Selector535~9_combout\)))) # (!\Selector536~21_combout\ & (\Selector536~20_combout\ & (\Selector535~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~21_combout\,
	datab => \Selector536~20_combout\,
	datac => \Selector535~9_combout\,
	datad => \Selector535~19_combout\,
	combout => \Selector535~20_combout\);

-- Location: FF_X66_Y66_N29
\readdata[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector535~20_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[12]~reg0_q\);

-- Location: LCCOMB_X67_Y69_N18
\Selector534~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~17_combout\ = (fifo_rx_data_index_int(2) & (((\fifo_rx_data[7][5]~q\) # (fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[3][5]~q\ & ((!fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[3][5]~q\,
	datab => \fifo_rx_data[7][5]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector534~17_combout\);

-- Location: LCCOMB_X67_Y69_N10
\Selector534~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~18_combout\ = (fifo_rx_data_index_int(3) & ((\Selector534~17_combout\ & ((\fifo_rx_data[15][5]~q\))) # (!\Selector534~17_combout\ & (\fifo_rx_data[11][5]~q\)))) # (!fifo_rx_data_index_int(3) & (((\Selector534~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \fifo_rx_data[11][5]~q\,
	datac => \fifo_rx_data[15][5]~q\,
	datad => \Selector534~17_combout\,
	combout => \Selector534~18_combout\);

-- Location: LCCOMB_X67_Y68_N10
\Selector534~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~10_combout\ = (fifo_rx_data_index_int(2) & (((fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\fifo_rx_data[10][5]~q\)) # (!fifo_rx_data_index_int(3) & ((\fifo_rx_data[2][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[10][5]~q\,
	datab => fifo_rx_data_index_int(2),
	datac => \fifo_rx_data[2][5]~q\,
	datad => fifo_rx_data_index_int(3),
	combout => \Selector534~10_combout\);

-- Location: LCCOMB_X67_Y69_N26
\Selector534~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~11_combout\ = (fifo_rx_data_index_int(2) & ((\Selector534~10_combout\ & ((\fifo_rx_data[14][5]~q\))) # (!\Selector534~10_combout\ & (\fifo_rx_data[6][5]~q\)))) # (!fifo_rx_data_index_int(2) & (((\Selector534~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[6][5]~q\,
	datab => \fifo_rx_data[14][5]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => \Selector534~10_combout\,
	combout => \Selector534~11_combout\);

-- Location: LCCOMB_X67_Y69_N4
\Selector534~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~12_combout\ = (fifo_rx_data_index_int(2) & ((\fifo_rx_data[5][5]~q\) # ((fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & (((\fifo_rx_data[1][5]~q\ & !fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[5][5]~q\,
	datab => \fifo_rx_data[1][5]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector534~12_combout\);

-- Location: LCCOMB_X67_Y69_N30
\Selector534~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~13_combout\ = (\Selector534~12_combout\ & ((\fifo_rx_data[13][5]~q\) # ((!fifo_rx_data_index_int(3))))) # (!\Selector534~12_combout\ & (((\fifo_rx_data[9][5]~q\ & fifo_rx_data_index_int(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[13][5]~q\,
	datab => \fifo_rx_data[9][5]~q\,
	datac => \Selector534~12_combout\,
	datad => fifo_rx_data_index_int(3),
	combout => \Selector534~13_combout\);

-- Location: LCCOMB_X67_Y69_N20
\Selector534~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~14_combout\ = (fifo_rx_data_index_int(2) & (((fifo_rx_data_index_int(3))))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\fifo_rx_data[8][5]~q\)) # (!fifo_rx_data_index_int(3) & ((\fifo_rx_data[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[8][5]~q\,
	datab => \fifo_rx_data[0][5]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => fifo_rx_data_index_int(3),
	combout => \Selector534~14_combout\);

-- Location: LCCOMB_X67_Y69_N6
\Selector534~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~15_combout\ = (fifo_rx_data_index_int(2) & ((\Selector534~14_combout\ & (\fifo_rx_data[12][5]~q\)) # (!\Selector534~14_combout\ & ((\fifo_rx_data[4][5]~q\))))) # (!fifo_rx_data_index_int(2) & (((\Selector534~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[12][5]~q\,
	datab => \fifo_rx_data[4][5]~q\,
	datac => fifo_rx_data_index_int(2),
	datad => \Selector534~14_combout\,
	combout => \Selector534~15_combout\);

-- Location: LCCOMB_X67_Y69_N0
\Selector534~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~16_combout\ = (fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1)) # ((\Selector534~13_combout\)))) # (!fifo_rx_data_index_int(0) & (!fifo_rx_data_index_int(1) & ((\Selector534~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => fifo_rx_data_index_int(1),
	datac => \Selector534~13_combout\,
	datad => \Selector534~15_combout\,
	combout => \Selector534~16_combout\);

-- Location: LCCOMB_X67_Y69_N12
\Selector534~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~19_combout\ = (fifo_rx_data_index_int(1) & ((\Selector534~16_combout\ & (\Selector534~18_combout\)) # (!\Selector534~16_combout\ & ((\Selector534~11_combout\))))) # (!fifo_rx_data_index_int(1) & (((\Selector534~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector534~18_combout\,
	datab => fifo_rx_data_index_int(1),
	datac => \Selector534~11_combout\,
	datad => \Selector534~16_combout\,
	combout => \Selector534~19_combout\);

-- Location: LCCOMB_X60_Y68_N8
\Selector534~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~0_combout\ = (fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1)) # ((\fifo_tfr_cmd[9][5]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[8][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[8][5]~q\,
	datad => \fifo_tfr_cmd[9][5]~q\,
	combout => \Selector534~0_combout\);

-- Location: LCCOMB_X60_Y68_N14
\Selector534~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~1_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector534~0_combout\ & (\fifo_tfr_cmd[11][5]~q\)) # (!\Selector534~0_combout\ & ((\fifo_tfr_cmd[10][5]~q\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector534~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][5]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \Selector534~0_combout\,
	datad => \fifo_tfr_cmd[10][5]~q\,
	combout => \Selector534~1_combout\);

-- Location: LCCOMB_X59_Y68_N30
\Selector534~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~7_combout\ = (fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1)) # ((\fifo_tfr_cmd[13][5]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (!fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[12][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[13][5]~q\,
	datad => \fifo_tfr_cmd[12][5]~q\,
	combout => \Selector534~7_combout\);

-- Location: LCCOMB_X59_Y68_N20
\Selector534~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~8_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector534~7_combout\ & (\fifo_tfr_cmd[15][5]~q\)) # (!\Selector534~7_combout\ & ((\fifo_tfr_cmd[14][5]~q\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector534~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => \fifo_tfr_cmd[15][5]~q\,
	datac => \Selector534~7_combout\,
	datad => \fifo_tfr_cmd[14][5]~q\,
	combout => \Selector534~8_combout\);

-- Location: LCCOMB_X59_Y68_N26
\Selector534~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~2_combout\ = (fifo_tfr_cmd_index_int(0) & (((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[6][5]~q\)) # (!fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[6][5]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => fifo_tfr_cmd_index_int(1),
	datad => \fifo_tfr_cmd[4][5]~q\,
	combout => \Selector534~2_combout\);

-- Location: LCCOMB_X59_Y68_N0
\Selector534~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~3_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector534~2_combout\ & ((\fifo_tfr_cmd[7][5]~q\))) # (!\Selector534~2_combout\ & (\fifo_tfr_cmd[5][5]~q\)))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector534~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][5]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \Selector534~2_combout\,
	datad => \fifo_tfr_cmd[7][5]~q\,
	combout => \Selector534~3_combout\);

-- Location: LCCOMB_X60_Y68_N12
\Selector534~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~4_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0)) # (\fifo_tfr_cmd[2][5]~q\)))) # (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[0][5]~q\ & (!fifo_tfr_cmd_index_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => \fifo_tfr_cmd[0][5]~q\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \fifo_tfr_cmd[2][5]~q\,
	combout => \Selector534~4_combout\);

-- Location: LCCOMB_X60_Y68_N22
\Selector534~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~5_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector534~4_combout\ & (\fifo_tfr_cmd[3][5]~q\)) # (!\Selector534~4_combout\ & ((\fifo_tfr_cmd[1][5]~q\))))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector534~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][5]~q\,
	datab => \fifo_tfr_cmd[1][5]~q\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \Selector534~4_combout\,
	combout => \Selector534~5_combout\);

-- Location: LCCOMB_X60_Y66_N20
\Selector534~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~6_combout\ = (fifo_tfr_cmd_index_int(3) & (fifo_tfr_cmd_index_int(2))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\Selector534~3_combout\)) # (!fifo_tfr_cmd_index_int(2) & ((\Selector534~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector534~3_combout\,
	datad => \Selector534~5_combout\,
	combout => \Selector534~6_combout\);

-- Location: LCCOMB_X60_Y66_N6
\Selector534~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~9_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector534~6_combout\ & ((\Selector534~8_combout\))) # (!\Selector534~6_combout\ & (\Selector534~1_combout\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector534~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \Selector534~1_combout\,
	datac => \Selector534~8_combout\,
	datad => \Selector534~6_combout\,
	combout => \Selector534~9_combout\);

-- Location: LCCOMB_X65_Y66_N22
\Selector534~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector534~20_combout\ = (\Selector536~21_combout\ & ((\Selector534~19_combout\) # ((\Selector536~20_combout\ & \Selector534~9_combout\)))) # (!\Selector536~21_combout\ & (\Selector536~20_combout\ & ((\Selector534~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~21_combout\,
	datab => \Selector536~20_combout\,
	datac => \Selector534~19_combout\,
	datad => \Selector534~9_combout\,
	combout => \Selector534~20_combout\);

-- Location: FF_X65_Y66_N23
\readdata[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector534~20_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[13]~reg0_q\);

-- Location: LCCOMB_X67_Y68_N8
\Selector533~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~12_combout\ = (fifo_rx_data_index_int(0) & (((fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & ((\fifo_rx_data[10][6]~q\))) # (!fifo_rx_data_index_int(1) & (\fifo_rx_data[8][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \fifo_rx_data[8][6]~q\,
	datac => \fifo_rx_data[10][6]~q\,
	datad => fifo_rx_data_index_int(1),
	combout => \Selector533~12_combout\);

-- Location: LCCOMB_X67_Y68_N14
\Selector533~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~13_combout\ = (\Selector533~12_combout\ & ((\fifo_rx_data[11][6]~q\) # ((!fifo_rx_data_index_int(0))))) # (!\Selector533~12_combout\ & (((\fifo_rx_data[9][6]~q\ & fifo_rx_data_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[11][6]~q\,
	datab => \fifo_rx_data[9][6]~q\,
	datac => \Selector533~12_combout\,
	datad => fifo_rx_data_index_int(0),
	combout => \Selector533~13_combout\);

-- Location: LCCOMB_X67_Y67_N6
\Selector533~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~14_combout\ = (fifo_rx_data_index_int(0) & (((fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & ((\fifo_rx_data[2][6]~q\))) # (!fifo_rx_data_index_int(1) & (\fifo_rx_data[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[0][6]~q\,
	datab => \fifo_rx_data[2][6]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => fifo_rx_data_index_int(1),
	combout => \Selector533~14_combout\);

-- Location: LCCOMB_X67_Y67_N24
\Selector533~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~15_combout\ = (fifo_rx_data_index_int(0) & ((\Selector533~14_combout\ & ((\fifo_rx_data[3][6]~q\))) # (!\Selector533~14_combout\ & (\fifo_rx_data[1][6]~q\)))) # (!fifo_rx_data_index_int(0) & (((\Selector533~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[1][6]~q\,
	datab => \fifo_rx_data[3][6]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => \Selector533~14_combout\,
	combout => \Selector533~15_combout\);

-- Location: LCCOMB_X66_Y66_N18
\Selector533~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~16_combout\ = (fifo_rx_data_index_int(2) & (fifo_rx_data_index_int(3))) # (!fifo_rx_data_index_int(2) & ((fifo_rx_data_index_int(3) & (\Selector533~13_combout\)) # (!fifo_rx_data_index_int(3) & ((\Selector533~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(2),
	datab => fifo_rx_data_index_int(3),
	datac => \Selector533~13_combout\,
	datad => \Selector533~15_combout\,
	combout => \Selector533~16_combout\);

-- Location: LCCOMB_X69_Y67_N28
\Selector533~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~17_combout\ = (fifo_rx_data_index_int(0) & (((\fifo_rx_data[13][6]~q\) # (fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & (\fifo_rx_data[12][6]~q\ & ((!fifo_rx_data_index_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[12][6]~q\,
	datab => \fifo_rx_data[13][6]~q\,
	datac => fifo_rx_data_index_int(0),
	datad => fifo_rx_data_index_int(1),
	combout => \Selector533~17_combout\);

-- Location: LCCOMB_X69_Y67_N30
\Selector533~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~18_combout\ = (fifo_rx_data_index_int(1) & ((\Selector533~17_combout\ & (\fifo_rx_data[15][6]~q\)) # (!\Selector533~17_combout\ & ((\fifo_rx_data[14][6]~q\))))) # (!fifo_rx_data_index_int(1) & (((\Selector533~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(1),
	datab => \fifo_rx_data[15][6]~q\,
	datac => \fifo_rx_data[14][6]~q\,
	datad => \Selector533~17_combout\,
	combout => \Selector533~18_combout\);

-- Location: LCCOMB_X66_Y66_N30
\Selector533~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~10_combout\ = (fifo_rx_data_index_int(0) & (((\fifo_rx_data[5][6]~q\) # (fifo_rx_data_index_int(1))))) # (!fifo_rx_data_index_int(0) & (\fifo_rx_data[4][6]~q\ & ((!fifo_rx_data_index_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \fifo_rx_data[4][6]~q\,
	datac => \fifo_rx_data[5][6]~q\,
	datad => fifo_rx_data_index_int(1),
	combout => \Selector533~10_combout\);

-- Location: LCCOMB_X66_Y66_N12
\Selector533~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~11_combout\ = (fifo_rx_data_index_int(1) & ((\Selector533~10_combout\ & ((\fifo_rx_data[7][6]~q\))) # (!\Selector533~10_combout\ & (\fifo_rx_data[6][6]~q\)))) # (!fifo_rx_data_index_int(1) & (((\Selector533~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[6][6]~q\,
	datab => fifo_rx_data_index_int(1),
	datac => \Selector533~10_combout\,
	datad => \fifo_rx_data[7][6]~q\,
	combout => \Selector533~11_combout\);

-- Location: LCCOMB_X66_Y66_N4
\Selector533~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~19_combout\ = (fifo_rx_data_index_int(2) & ((\Selector533~16_combout\ & (\Selector533~18_combout\)) # (!\Selector533~16_combout\ & ((\Selector533~11_combout\))))) # (!fifo_rx_data_index_int(2) & (\Selector533~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(2),
	datab => \Selector533~16_combout\,
	datac => \Selector533~18_combout\,
	datad => \Selector533~11_combout\,
	combout => \Selector533~19_combout\);

-- Location: LCCOMB_X61_Y66_N12
\Selector533~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~0_combout\ = (fifo_tfr_cmd_index_int(2) & (((fifo_tfr_cmd_index_int(3))))) # (!fifo_tfr_cmd_index_int(2) & ((fifo_tfr_cmd_index_int(3) & (\fifo_tfr_cmd[9][6]~q\)) # (!fifo_tfr_cmd_index_int(3) & ((\fifo_tfr_cmd[1][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(2),
	datab => \fifo_tfr_cmd[9][6]~q\,
	datac => \fifo_tfr_cmd[1][6]~q\,
	datad => fifo_tfr_cmd_index_int(3),
	combout => \Selector533~0_combout\);

-- Location: LCCOMB_X61_Y66_N10
\Selector533~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~1_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector533~0_combout\ & ((\fifo_tfr_cmd[13][6]~q\))) # (!\Selector533~0_combout\ & (\fifo_tfr_cmd[5][6]~q\)))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector533~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][6]~q\,
	datab => \fifo_tfr_cmd[13][6]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \Selector533~0_combout\,
	combout => \Selector533~1_combout\);

-- Location: LCCOMB_X59_Y66_N10
\Selector533~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~7_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[7][6]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[3][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][6]~q\,
	datab => \fifo_tfr_cmd[3][6]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector533~7_combout\);

-- Location: LCCOMB_X61_Y66_N4
\Selector533~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~8_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector533~7_combout\ & (\fifo_tfr_cmd[15][6]~q\)) # (!\Selector533~7_combout\ & ((\fifo_tfr_cmd[11][6]~q\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector533~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][6]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[11][6]~q\,
	datad => \Selector533~7_combout\,
	combout => \Selector533~8_combout\);

-- Location: LCCOMB_X60_Y66_N18
\Selector533~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~4_combout\ = (fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2)) # ((\fifo_tfr_cmd[8][6]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[8][6]~q\,
	datad => \fifo_tfr_cmd[0][6]~q\,
	combout => \Selector533~4_combout\);

-- Location: LCCOMB_X60_Y66_N8
\Selector533~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~5_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector533~4_combout\ & (\fifo_tfr_cmd[12][6]~q\)) # (!\Selector533~4_combout\ & ((\fifo_tfr_cmd[4][6]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector533~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][6]~q\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[4][6]~q\,
	datad => \Selector533~4_combout\,
	combout => \Selector533~5_combout\);

-- Location: LCCOMB_X60_Y66_N4
\Selector533~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~2_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[6][6]~q\))) # (!fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[2][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[2][6]~q\,
	datac => \fifo_tfr_cmd[6][6]~q\,
	datad => fifo_tfr_cmd_index_int(2),
	combout => \Selector533~2_combout\);

-- Location: LCCOMB_X60_Y66_N12
\Selector533~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~3_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector533~2_combout\ & ((\fifo_tfr_cmd[14][6]~q\))) # (!\Selector533~2_combout\ & (\fifo_tfr_cmd[10][6]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector533~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[10][6]~q\,
	datac => \Selector533~2_combout\,
	datad => \fifo_tfr_cmd[14][6]~q\,
	combout => \Selector533~3_combout\);

-- Location: LCCOMB_X60_Y66_N14
\Selector533~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~6_combout\ = (fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0)) # ((\Selector533~3_combout\)))) # (!fifo_tfr_cmd_index_int(1) & (!fifo_tfr_cmd_index_int(0) & (\Selector533~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => fifo_tfr_cmd_index_int(0),
	datac => \Selector533~5_combout\,
	datad => \Selector533~3_combout\,
	combout => \Selector533~6_combout\);

-- Location: LCCOMB_X61_Y66_N22
\Selector533~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~9_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector533~6_combout\ & ((\Selector533~8_combout\))) # (!\Selector533~6_combout\ & (\Selector533~1_combout\)))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector533~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector533~1_combout\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \Selector533~8_combout\,
	datad => \Selector533~6_combout\,
	combout => \Selector533~9_combout\);

-- Location: LCCOMB_X66_Y66_N14
\Selector533~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector533~20_combout\ = (\Selector536~21_combout\ & ((\Selector533~19_combout\) # ((\Selector536~20_combout\ & \Selector533~9_combout\)))) # (!\Selector536~21_combout\ & (\Selector536~20_combout\ & ((\Selector533~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~21_combout\,
	datab => \Selector536~20_combout\,
	datac => \Selector533~19_combout\,
	datad => \Selector533~9_combout\,
	combout => \Selector533~20_combout\);

-- Location: FF_X66_Y66_N15
\readdata[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector533~20_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[14]~reg0_q\);

-- Location: LCCOMB_X63_Y66_N14
\Selector532~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~0_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[5][7]~q\))) # (!fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][7]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => fifo_tfr_cmd_index_int(0),
	datad => \fifo_tfr_cmd[5][7]~q\,
	combout => \Selector532~0_combout\);

-- Location: LCCOMB_X63_Y66_N4
\Selector532~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~1_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector532~0_combout\ & (\fifo_tfr_cmd[7][7]~q\)) # (!\Selector532~0_combout\ & ((\fifo_tfr_cmd[6][7]~q\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector532~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[7][7]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \Selector532~0_combout\,
	datad => \fifo_tfr_cmd[6][7]~q\,
	combout => \Selector532~1_combout\);

-- Location: LCCOMB_X63_Y66_N2
\Selector532~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~7_combout\ = (fifo_tfr_cmd_index_int(0) & (((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[14][7]~q\)) # (!fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[12][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => \fifo_tfr_cmd[14][7]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => \fifo_tfr_cmd[12][7]~q\,
	combout => \Selector532~7_combout\);

-- Location: LCCOMB_X65_Y66_N4
\Selector532~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~8_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector532~7_combout\ & (\fifo_tfr_cmd[15][7]~q\)) # (!\Selector532~7_combout\ & ((\fifo_tfr_cmd[13][7]~q\))))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector532~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][7]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[13][7]~q\,
	datad => \Selector532~7_combout\,
	combout => \Selector532~8_combout\);

-- Location: LCCOMB_X62_Y65_N28
\Selector532~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~2_combout\ = (fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[10][7]~q\) # ((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & (((\fifo_tfr_cmd[8][7]~q\ & !fifo_tfr_cmd_index_int(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[10][7]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[8][7]~q\,
	datad => fifo_tfr_cmd_index_int(0),
	combout => \Selector532~2_combout\);

-- Location: LCCOMB_X62_Y65_N26
\Selector532~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~3_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector532~2_combout\ & (\fifo_tfr_cmd[11][7]~q\)) # (!\Selector532~2_combout\ & ((\fifo_tfr_cmd[9][7]~q\))))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector532~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[11][7]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[9][7]~q\,
	datad => \Selector532~2_combout\,
	combout => \Selector532~3_combout\);

-- Location: LCCOMB_X62_Y65_N20
\Selector532~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~4_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[1][7]~q\))) # (!fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[0][7]~q\,
	datab => \fifo_tfr_cmd[1][7]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => fifo_tfr_cmd_index_int(0),
	combout => \Selector532~4_combout\);

-- Location: LCCOMB_X62_Y65_N6
\Selector532~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~5_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector532~4_combout\ & (\fifo_tfr_cmd[3][7]~q\)) # (!\Selector532~4_combout\ & ((\fifo_tfr_cmd[2][7]~q\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector532~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][7]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[2][7]~q\,
	datad => \Selector532~4_combout\,
	combout => \Selector532~5_combout\);

-- Location: LCCOMB_X62_Y65_N24
\Selector532~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~6_combout\ = (fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2)) # ((\Selector532~3_combout\)))) # (!fifo_tfr_cmd_index_int(3) & (!fifo_tfr_cmd_index_int(2) & ((\Selector532~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector532~3_combout\,
	datad => \Selector532~5_combout\,
	combout => \Selector532~6_combout\);

-- Location: LCCOMB_X66_Y66_N22
\Selector532~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~9_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector532~6_combout\ & ((\Selector532~8_combout\))) # (!\Selector532~6_combout\ & (\Selector532~1_combout\)))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector532~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector532~1_combout\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector532~8_combout\,
	datad => \Selector532~6_combout\,
	combout => \Selector532~9_combout\);

-- Location: LCCOMB_X67_Y66_N12
\Selector532~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~17_combout\ = (fifo_rx_data_index_int(3) & ((\fifo_rx_data[11][7]~q\) # ((fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & (((\fifo_rx_data[3][7]~q\ & !fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \fifo_rx_data[11][7]~q\,
	datac => \fifo_rx_data[3][7]~q\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~17_combout\);

-- Location: LCCOMB_X67_Y66_N14
\Selector532~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~18_combout\ = (\Selector532~17_combout\ & (((\fifo_rx_data[15][7]~q\) # (!fifo_rx_data_index_int(2))))) # (!\Selector532~17_combout\ & (\fifo_rx_data[7][7]~q\ & ((fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector532~17_combout\,
	datab => \fifo_rx_data[7][7]~q\,
	datac => \fifo_rx_data[15][7]~q\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~18_combout\);

-- Location: LCCOMB_X67_Y66_N6
\Selector532~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~12_combout\ = (fifo_rx_data_index_int(3) & (((fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & ((fifo_rx_data_index_int(2) & ((\fifo_rx_data[6][7]~q\))) # (!fifo_rx_data_index_int(2) & (\fifo_rx_data[2][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[2][7]~q\,
	datab => \fifo_rx_data[6][7]~q\,
	datac => fifo_rx_data_index_int(3),
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~12_combout\);

-- Location: LCCOMB_X67_Y66_N8
\Selector532~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~13_combout\ = (fifo_rx_data_index_int(3) & ((\Selector532~12_combout\ & (\fifo_rx_data[14][7]~q\)) # (!\Selector532~12_combout\ & ((\fifo_rx_data[10][7]~q\))))) # (!fifo_rx_data_index_int(3) & (((\Selector532~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[14][7]~q\,
	datab => \fifo_rx_data[10][7]~q\,
	datac => fifo_rx_data_index_int(3),
	datad => \Selector532~12_combout\,
	combout => \Selector532~13_combout\);

-- Location: LCCOMB_X67_Y66_N2
\Selector532~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~14_combout\ = (fifo_rx_data_index_int(3) & (((fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & ((fifo_rx_data_index_int(2) & (\fifo_rx_data[4][7]~q\)) # (!fifo_rx_data_index_int(2) & ((\fifo_rx_data[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[4][7]~q\,
	datab => \fifo_rx_data[0][7]~q\,
	datac => fifo_rx_data_index_int(3),
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~14_combout\);

-- Location: LCCOMB_X67_Y66_N16
\Selector532~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~15_combout\ = (fifo_rx_data_index_int(3) & ((\Selector532~14_combout\ & (\fifo_rx_data[12][7]~q\)) # (!\Selector532~14_combout\ & ((\fifo_rx_data[8][7]~q\))))) # (!fifo_rx_data_index_int(3) & (((\Selector532~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(3),
	datab => \fifo_rx_data[12][7]~q\,
	datac => \fifo_rx_data[8][7]~q\,
	datad => \Selector532~14_combout\,
	combout => \Selector532~15_combout\);

-- Location: LCCOMB_X67_Y66_N22
\Selector532~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~16_combout\ = (fifo_rx_data_index_int(0) & (fifo_rx_data_index_int(1))) # (!fifo_rx_data_index_int(0) & ((fifo_rx_data_index_int(1) & (\Selector532~13_combout\)) # (!fifo_rx_data_index_int(1) & ((\Selector532~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => fifo_rx_data_index_int(1),
	datac => \Selector532~13_combout\,
	datad => \Selector532~15_combout\,
	combout => \Selector532~16_combout\);

-- Location: LCCOMB_X67_Y66_N18
\Selector532~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~10_combout\ = (fifo_rx_data_index_int(3) & ((\fifo_rx_data[9][7]~q\) # ((fifo_rx_data_index_int(2))))) # (!fifo_rx_data_index_int(3) & (((\fifo_rx_data[1][7]~q\ & !fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[9][7]~q\,
	datab => \fifo_rx_data[1][7]~q\,
	datac => fifo_rx_data_index_int(3),
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~10_combout\);

-- Location: LCCOMB_X67_Y66_N28
\Selector532~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~11_combout\ = (\Selector532~10_combout\ & (((\fifo_rx_data[13][7]~q\) # (!fifo_rx_data_index_int(2))))) # (!\Selector532~10_combout\ & (\fifo_rx_data[5][7]~q\ & ((fifo_rx_data_index_int(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_rx_data[5][7]~q\,
	datab => \Selector532~10_combout\,
	datac => \fifo_rx_data[13][7]~q\,
	datad => fifo_rx_data_index_int(2),
	combout => \Selector532~11_combout\);

-- Location: LCCOMB_X67_Y66_N24
\Selector532~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~19_combout\ = (fifo_rx_data_index_int(0) & ((\Selector532~16_combout\ & (\Selector532~18_combout\)) # (!\Selector532~16_combout\ & ((\Selector532~11_combout\))))) # (!fifo_rx_data_index_int(0) & (((\Selector532~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_rx_data_index_int(0),
	datab => \Selector532~18_combout\,
	datac => \Selector532~16_combout\,
	datad => \Selector532~11_combout\,
	combout => \Selector532~19_combout\);

-- Location: LCCOMB_X66_Y66_N16
\Selector532~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector532~20_combout\ = (\Selector536~21_combout\ & ((\Selector532~19_combout\) # ((\Selector536~20_combout\ & \Selector532~9_combout\)))) # (!\Selector536~21_combout\ & (\Selector536~20_combout\ & (\Selector532~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector536~21_combout\,
	datab => \Selector536~20_combout\,
	datac => \Selector532~9_combout\,
	datad => \Selector532~19_combout\,
	combout => \Selector532~20_combout\);

-- Location: FF_X66_Y66_N17
\readdata[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector532~20_combout\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[15]~reg0_q\);

-- Location: LCCOMB_X56_Y67_N22
\Selector531~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~7_combout\ = (fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2)) # ((\fifo_tfr_cmd[11][8]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[3][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[11][8]~q\,
	datad => \fifo_tfr_cmd[3][8]~q\,
	combout => \Selector531~7_combout\);

-- Location: LCCOMB_X56_Y67_N28
\Selector531~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~8_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector531~7_combout\ & (\fifo_tfr_cmd[15][8]~q\)) # (!\Selector531~7_combout\ & ((\fifo_tfr_cmd[7][8]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector531~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[15][8]~q\,
	datab => fifo_tfr_cmd_index_int(2),
	datac => \Selector531~7_combout\,
	datad => \fifo_tfr_cmd[7][8]~q\,
	combout => \Selector531~8_combout\);

-- Location: LCCOMB_X56_Y67_N16
\Selector531~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~2_combout\ = (fifo_tfr_cmd_index_int(3) & (fifo_tfr_cmd_index_int(2))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[5][8]~q\))) # (!fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[1][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[1][8]~q\,
	datad => \fifo_tfr_cmd[5][8]~q\,
	combout => \Selector531~2_combout\);

-- Location: LCCOMB_X56_Y67_N2
\Selector531~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~3_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector531~2_combout\ & ((\fifo_tfr_cmd[13][8]~q\))) # (!\Selector531~2_combout\ & (\fifo_tfr_cmd[9][8]~q\)))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector531~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][8]~q\,
	datab => \fifo_tfr_cmd[13][8]~q\,
	datac => fifo_tfr_cmd_index_int(3),
	datad => \Selector531~2_combout\,
	combout => \Selector531~3_combout\);

-- Location: LCCOMB_X57_Y67_N18
\Selector531~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~4_combout\ = (fifo_tfr_cmd_index_int(3) & (fifo_tfr_cmd_index_int(2))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\fifo_tfr_cmd[4][8]~q\)) # (!fifo_tfr_cmd_index_int(2) & ((\fifo_tfr_cmd[0][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => fifo_tfr_cmd_index_int(2),
	datac => \fifo_tfr_cmd[4][8]~q\,
	datad => \fifo_tfr_cmd[0][8]~q\,
	combout => \Selector531~4_combout\);

-- Location: LCCOMB_X57_Y67_N12
\Selector531~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~5_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector531~4_combout\ & (\fifo_tfr_cmd[12][8]~q\)) # (!\Selector531~4_combout\ & ((\fifo_tfr_cmd[8][8]~q\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector531~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[12][8]~q\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \fifo_tfr_cmd[8][8]~q\,
	datad => \Selector531~4_combout\,
	combout => \Selector531~5_combout\);

-- Location: LCCOMB_X56_Y67_N8
\Selector531~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~6_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector531~3_combout\) # ((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector531~5_combout\ & !fifo_tfr_cmd_index_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => \Selector531~3_combout\,
	datac => \Selector531~5_combout\,
	datad => fifo_tfr_cmd_index_int(1),
	combout => \Selector531~6_combout\);

-- Location: LCCOMB_X58_Y65_N24
\Selector531~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~0_combout\ = (fifo_tfr_cmd_index_int(3) & ((\fifo_tfr_cmd[10][8]~q\) # ((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & (((!fifo_tfr_cmd_index_int(2) & \fifo_tfr_cmd[2][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(3),
	datab => \fifo_tfr_cmd[10][8]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \fifo_tfr_cmd[2][8]~q\,
	combout => \Selector531~0_combout\);

-- Location: LCCOMB_X58_Y65_N6
\Selector531~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~1_combout\ = (fifo_tfr_cmd_index_int(2) & ((\Selector531~0_combout\ & (\fifo_tfr_cmd[14][8]~q\)) # (!\Selector531~0_combout\ & ((\fifo_tfr_cmd[6][8]~q\))))) # (!fifo_tfr_cmd_index_int(2) & (((\Selector531~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][8]~q\,
	datab => \fifo_tfr_cmd[6][8]~q\,
	datac => fifo_tfr_cmd_index_int(2),
	datad => \Selector531~0_combout\,
	combout => \Selector531~1_combout\);

-- Location: LCCOMB_X56_Y67_N18
\Selector531~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~9_combout\ = (fifo_tfr_cmd_index_int(1) & ((\Selector531~6_combout\ & (\Selector531~8_combout\)) # (!\Selector531~6_combout\ & ((\Selector531~1_combout\))))) # (!fifo_tfr_cmd_index_int(1) & (((\Selector531~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(1),
	datab => \Selector531~8_combout\,
	datac => \Selector531~6_combout\,
	datad => \Selector531~1_combout\,
	combout => \Selector531~9_combout\);

-- Location: LCCOMB_X56_Y67_N20
\Selector531~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector531~10_combout\ = (!\MODE.mTFR_CMD_FIFO~q\ & \Selector531~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MODE.mTFR_CMD_FIFO~q\,
	datad => \Selector531~9_combout\,
	combout => \Selector531~10_combout\);

-- Location: FF_X56_Y67_N21
\readdata[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector531~10_combout\,
	sclr => \MODE.mRX_DATA_FIFO~q\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[16]~reg0_q\);

-- Location: LCCOMB_X56_Y68_N22
\Selector530~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~7_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[13][9]~q\)) # (!fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[12][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[13][9]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[12][9]~q\,
	datad => fifo_tfr_cmd_index_int(0),
	combout => \Selector530~7_combout\);

-- Location: LCCOMB_X56_Y68_N16
\Selector530~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~8_combout\ = (\Selector530~7_combout\ & (((\fifo_tfr_cmd[15][9]~q\) # (!fifo_tfr_cmd_index_int(1))))) # (!\Selector530~7_combout\ & (\fifo_tfr_cmd[14][9]~q\ & ((fifo_tfr_cmd_index_int(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[14][9]~q\,
	datab => \fifo_tfr_cmd[15][9]~q\,
	datac => \Selector530~7_combout\,
	datad => fifo_tfr_cmd_index_int(1),
	combout => \Selector530~8_combout\);

-- Location: LCCOMB_X57_Y68_N26
\Selector530~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~0_combout\ = (fifo_tfr_cmd_index_int(1) & (((fifo_tfr_cmd_index_int(0))))) # (!fifo_tfr_cmd_index_int(1) & ((fifo_tfr_cmd_index_int(0) & (\fifo_tfr_cmd[9][9]~q\)) # (!fifo_tfr_cmd_index_int(0) & ((\fifo_tfr_cmd[8][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[9][9]~q\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => fifo_tfr_cmd_index_int(0),
	datad => \fifo_tfr_cmd[8][9]~q\,
	combout => \Selector530~0_combout\);

-- Location: LCCOMB_X57_Y68_N4
\Selector530~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~1_combout\ = (\Selector530~0_combout\ & (((\fifo_tfr_cmd[11][9]~q\)) # (!fifo_tfr_cmd_index_int(1)))) # (!\Selector530~0_combout\ & (fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[10][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector530~0_combout\,
	datab => fifo_tfr_cmd_index_int(1),
	datac => \fifo_tfr_cmd[10][9]~q\,
	datad => \fifo_tfr_cmd[11][9]~q\,
	combout => \Selector530~1_combout\);

-- Location: LCCOMB_X57_Y68_N14
\Selector530~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~2_combout\ = (fifo_tfr_cmd_index_int(0) & (((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[6][9]~q\))) # (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[4][9]~q\,
	datab => \fifo_tfr_cmd[6][9]~q\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => fifo_tfr_cmd_index_int(1),
	combout => \Selector530~2_combout\);

-- Location: LCCOMB_X57_Y68_N12
\Selector530~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~3_combout\ = (\Selector530~2_combout\ & (((\fifo_tfr_cmd[7][9]~q\) # (!fifo_tfr_cmd_index_int(0))))) # (!\Selector530~2_combout\ & (\fifo_tfr_cmd[5][9]~q\ & (fifo_tfr_cmd_index_int(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[5][9]~q\,
	datab => \Selector530~2_combout\,
	datac => fifo_tfr_cmd_index_int(0),
	datad => \fifo_tfr_cmd[7][9]~q\,
	combout => \Selector530~3_combout\);

-- Location: LCCOMB_X59_Y68_N2
\Selector530~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~4_combout\ = (fifo_tfr_cmd_index_int(0) & (((fifo_tfr_cmd_index_int(1))))) # (!fifo_tfr_cmd_index_int(0) & ((fifo_tfr_cmd_index_int(1) & ((\fifo_tfr_cmd[2][9]~q\))) # (!fifo_tfr_cmd_index_int(1) & (\fifo_tfr_cmd[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fifo_tfr_cmd_index_int(0),
	datab => \fifo_tfr_cmd[0][9]~q\,
	datac => fifo_tfr_cmd_index_int(1),
	datad => \fifo_tfr_cmd[2][9]~q\,
	combout => \Selector530~4_combout\);

-- Location: LCCOMB_X58_Y68_N28
\Selector530~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~5_combout\ = (fifo_tfr_cmd_index_int(0) & ((\Selector530~4_combout\ & (\fifo_tfr_cmd[3][9]~q\)) # (!\Selector530~4_combout\ & ((\fifo_tfr_cmd[1][9]~q\))))) # (!fifo_tfr_cmd_index_int(0) & (((\Selector530~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fifo_tfr_cmd[3][9]~q\,
	datab => fifo_tfr_cmd_index_int(0),
	datac => \fifo_tfr_cmd[1][9]~q\,
	datad => \Selector530~4_combout\,
	combout => \Selector530~5_combout\);

-- Location: LCCOMB_X57_Y68_N2
\Selector530~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~6_combout\ = (fifo_tfr_cmd_index_int(3) & (((fifo_tfr_cmd_index_int(2))))) # (!fifo_tfr_cmd_index_int(3) & ((fifo_tfr_cmd_index_int(2) & (\Selector530~3_combout\)) # (!fifo_tfr_cmd_index_int(2) & ((\Selector530~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector530~3_combout\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => fifo_tfr_cmd_index_int(2),
	datad => \Selector530~5_combout\,
	combout => \Selector530~6_combout\);

-- Location: LCCOMB_X57_Y68_N16
\Selector530~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~9_combout\ = (fifo_tfr_cmd_index_int(3) & ((\Selector530~6_combout\ & (\Selector530~8_combout\)) # (!\Selector530~6_combout\ & ((\Selector530~1_combout\))))) # (!fifo_tfr_cmd_index_int(3) & (((\Selector530~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector530~8_combout\,
	datab => fifo_tfr_cmd_index_int(3),
	datac => \Selector530~1_combout\,
	datad => \Selector530~6_combout\,
	combout => \Selector530~9_combout\);

-- Location: LCCOMB_X57_Y68_N20
\Selector530~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector530~10_combout\ = (!\MODE.mTFR_CMD_FIFO~q\ & \Selector530~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MODE.mTFR_CMD_FIFO~q\,
	datad => \Selector530~9_combout\,
	combout => \Selector530~10_combout\);

-- Location: FF_X57_Y68_N21
\readdata[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \Selector530~10_combout\,
	sclr => \MODE.mRX_DATA_FIFO~q\,
	ena => \readdata[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \readdata[17]~reg0_q\);

-- Location: FF_X65_Y69_N17
\WR_N~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd[0][9]~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_N~reg0_q\);

-- Location: LCCOMB_X59_Y70_N24
\STOP~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \STOP~reg0feeder_combout\ = \fifo_tfr_cmd[0][8]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][8]~q\,
	combout => \STOP~reg0feeder_combout\);

-- Location: FF_X59_Y70_N25
\STOP~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \STOP~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \STOP~reg0_q\);

-- Location: LCCOMB_X59_Y70_N6
\BAUD_RATE[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \BAUD_RATE[0]~0_combout\ = !\fast_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fast_mode~q\,
	combout => \BAUD_RATE[0]~0_combout\);

-- Location: FF_X59_Y70_N7
\BAUD_RATE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BAUD_RATE[0]~0_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUD_RATE[0]~reg0_q\);

-- Location: LCCOMB_X58_Y70_N12
\BAUD_RATE[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \BAUD_RATE[2]~1_combout\ = !\fast_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fast_mode~q\,
	combout => \BAUD_RATE[2]~1_combout\);

-- Location: FF_X58_Y70_N13
\BAUD_RATE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BAUD_RATE[2]~1_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUD_RATE[2]~reg0_q\);

-- Location: LCCOMB_X63_Y70_N20
\BAUD_RATE[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \BAUD_RATE[3]~reg0feeder_combout\ = \fast_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fast_mode~q\,
	combout => \BAUD_RATE[3]~reg0feeder_combout\);

-- Location: FF_X63_Y70_N21
\BAUD_RATE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BAUD_RATE[3]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUD_RATE[3]~reg0_q\);

-- Location: LCCOMB_X63_Y70_N30
\BAUD_RATE[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \BAUD_RATE[7]~2_combout\ = !\fast_mode~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fast_mode~q\,
	combout => \BAUD_RATE[7]~2_combout\);

-- Location: FF_X63_Y70_N31
\BAUD_RATE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \BAUD_RATE[7]~2_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \BAUD_RATE[7]~reg0_q\);

-- Location: LCCOMB_X59_Y70_N12
\WR_BYTE[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[0]~reg0feeder_combout\ = \fifo_tfr_cmd[0][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][0]~q\,
	combout => \WR_BYTE[0]~reg0feeder_combout\);

-- Location: FF_X59_Y70_N13
\WR_BYTE[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[0]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[0]~reg0_q\);

-- Location: LCCOMB_X58_Y70_N26
\WR_BYTE[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[1]~reg0feeder_combout\ = \fifo_tfr_cmd[0][1]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_tfr_cmd[0][1]~q\,
	combout => \WR_BYTE[1]~reg0feeder_combout\);

-- Location: FF_X58_Y70_N27
\WR_BYTE[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[1]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[1]~reg0_q\);

-- Location: FF_X65_Y69_N23
\WR_BYTE[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \fifo_tfr_cmd[0][2]~q\,
	sload => VCC,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[2]~reg0_q\);

-- Location: LCCOMB_X58_Y70_N0
\WR_BYTE[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[3]~reg0feeder_combout\ = \fifo_tfr_cmd[0][3]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][3]~q\,
	combout => \WR_BYTE[3]~reg0feeder_combout\);

-- Location: FF_X58_Y70_N1
\WR_BYTE[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[3]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[3]~reg0_q\);

-- Location: LCCOMB_X58_Y70_N2
\WR_BYTE[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[4]~reg0feeder_combout\ = \fifo_tfr_cmd[0][4]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][4]~q\,
	combout => \WR_BYTE[4]~reg0feeder_combout\);

-- Location: FF_X58_Y70_N3
\WR_BYTE[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[4]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[4]~reg0_q\);

-- Location: LCCOMB_X59_Y70_N2
\WR_BYTE[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[5]~reg0feeder_combout\ = \fifo_tfr_cmd[0][5]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][5]~q\,
	combout => \WR_BYTE[5]~reg0feeder_combout\);

-- Location: FF_X59_Y70_N3
\WR_BYTE[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[5]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[5]~reg0_q\);

-- Location: LCCOMB_X59_Y70_N0
\WR_BYTE[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[6]~reg0feeder_combout\ = \fifo_tfr_cmd[0][6]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \fifo_tfr_cmd[0][6]~q\,
	combout => \WR_BYTE[6]~reg0feeder_combout\);

-- Location: FF_X59_Y70_N1
\WR_BYTE[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[6]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[6]~reg0_q\);

-- Location: LCCOMB_X59_Y70_N22
\WR_BYTE[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \WR_BYTE[7]~reg0feeder_combout\ = \fifo_tfr_cmd[0][7]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \fifo_tfr_cmd[0][7]~q\,
	combout => \WR_BYTE[7]~reg0feeder_combout\);

-- Location: FF_X59_Y70_N23
\WR_BYTE[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \WR_BYTE[7]~reg0feeder_combout\,
	ena => \WR_N~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \WR_BYTE[7]~reg0_q\);

-- Location: IOIBUF_X0_Y36_N15
\writedata[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(10),
	o => \writedata[10]~input_o\);

-- Location: IOIBUF_X0_Y36_N22
\writedata[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(11),
	o => \writedata[11]~input_o\);

-- Location: IOIBUF_X0_Y67_N15
\writedata[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(12),
	o => \writedata[12]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\writedata[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(13),
	o => \writedata[13]~input_o\);

-- Location: IOIBUF_X87_Y73_N22
\writedata[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(14),
	o => \writedata[14]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\writedata[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(15),
	o => \writedata[15]~input_o\);

-- Location: IOIBUF_X16_Y73_N1
\writedata[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(16),
	o => \writedata[16]~input_o\);

-- Location: IOIBUF_X18_Y73_N22
\writedata[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(17),
	o => \writedata[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\writedata[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(18),
	o => \writedata[18]~input_o\);

-- Location: IOIBUF_X42_Y0_N22
\writedata[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(19),
	o => \writedata[19]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\writedata[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(20),
	o => \writedata[20]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\writedata[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(21),
	o => \writedata[21]~input_o\);

-- Location: IOIBUF_X1_Y0_N8
\writedata[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(22),
	o => \writedata[22]~input_o\);

-- Location: IOIBUF_X1_Y73_N8
\writedata[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(23),
	o => \writedata[23]~input_o\);

-- Location: IOIBUF_X0_Y34_N22
\writedata[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(24),
	o => \writedata[24]~input_o\);

-- Location: IOIBUF_X60_Y0_N8
\writedata[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(25),
	o => \writedata[25]~input_o\);

-- Location: IOIBUF_X38_Y0_N1
\writedata[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(26),
	o => \writedata[26]~input_o\);

-- Location: IOIBUF_X100_Y73_N15
\writedata[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(27),
	o => \writedata[27]~input_o\);

-- Location: IOIBUF_X13_Y73_N8
\writedata[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(28),
	o => \writedata[28]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\writedata[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(29),
	o => \writedata[29]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\writedata[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_writedata(30),
	o => \writedata[30]~input_o\);

ww_readdata(0) <= \readdata[0]~output_o\;

ww_readdata(1) <= \readdata[1]~output_o\;

ww_readdata(2) <= \readdata[2]~output_o\;

ww_readdata(3) <= \readdata[3]~output_o\;

ww_readdata(4) <= \readdata[4]~output_o\;

ww_readdata(5) <= \readdata[5]~output_o\;

ww_readdata(6) <= \readdata[6]~output_o\;

ww_readdata(7) <= \readdata[7]~output_o\;

ww_readdata(8) <= \readdata[8]~output_o\;

ww_readdata(9) <= \readdata[9]~output_o\;

ww_readdata(10) <= \readdata[10]~output_o\;

ww_readdata(11) <= \readdata[11]~output_o\;

ww_readdata(12) <= \readdata[12]~output_o\;

ww_readdata(13) <= \readdata[13]~output_o\;

ww_readdata(14) <= \readdata[14]~output_o\;

ww_readdata(15) <= \readdata[15]~output_o\;

ww_readdata(16) <= \readdata[16]~output_o\;

ww_readdata(17) <= \readdata[17]~output_o\;

ww_readdata(18) <= \readdata[18]~output_o\;

ww_readdata(19) <= \readdata[19]~output_o\;

ww_readdata(20) <= \readdata[20]~output_o\;

ww_readdata(21) <= \readdata[21]~output_o\;

ww_readdata(22) <= \readdata[22]~output_o\;

ww_readdata(23) <= \readdata[23]~output_o\;

ww_readdata(24) <= \readdata[24]~output_o\;

ww_readdata(25) <= \readdata[25]~output_o\;

ww_readdata(26) <= \readdata[26]~output_o\;

ww_readdata(27) <= \readdata[27]~output_o\;

ww_readdata(28) <= \readdata[28]~output_o\;

ww_readdata(29) <= \readdata[29]~output_o\;

ww_readdata(30) <= \readdata[30]~output_o\;

ww_readdata(31) <= \readdata[31]~output_o\;

ww_EN <= \EN~output_o\;

ww_WR_N <= \WR_N~output_o\;

ww_STOP <= \STOP~output_o\;

ww_BAUD_RATE(0) <= \BAUD_RATE[0]~output_o\;

ww_BAUD_RATE(1) <= \BAUD_RATE[1]~output_o\;

ww_BAUD_RATE(2) <= \BAUD_RATE[2]~output_o\;

ww_BAUD_RATE(3) <= \BAUD_RATE[3]~output_o\;

ww_BAUD_RATE(4) <= \BAUD_RATE[4]~output_o\;

ww_BAUD_RATE(5) <= \BAUD_RATE[5]~output_o\;

ww_BAUD_RATE(6) <= \BAUD_RATE[6]~output_o\;

ww_BAUD_RATE(7) <= \BAUD_RATE[7]~output_o\;

ww_WR_BYTE(0) <= \WR_BYTE[0]~output_o\;

ww_WR_BYTE(1) <= \WR_BYTE[1]~output_o\;

ww_WR_BYTE(2) <= \WR_BYTE[2]~output_o\;

ww_WR_BYTE(3) <= \WR_BYTE[3]~output_o\;

ww_WR_BYTE(4) <= \WR_BYTE[4]~output_o\;

ww_WR_BYTE(5) <= \WR_BYTE[5]~output_o\;

ww_WR_BYTE(6) <= \WR_BYTE[6]~output_o\;

ww_WR_BYTE(7) <= \WR_BYTE[7]~output_o\;
END structure;


