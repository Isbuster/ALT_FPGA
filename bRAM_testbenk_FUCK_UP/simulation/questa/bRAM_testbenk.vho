-- Copyright (C) 2025  Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Altera and sold by Altera or its authorized distributors.  Please
-- refer to the Altera Software License Subscription Agreements 
-- on the Quartus Prime software download page.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 24.1std.0 Build 1077 03/04/2025 SC Lite Edition"

-- DATE "01/19/2026 10:52:53"

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

ENTITY 	bRAM_testkort IS
    PORT (
	clk : IN std_logic;
	reset_n : IN std_logic;
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END bRAM_testkort;

-- Design Ports Information
-- SW[0]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_R28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_C24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AE2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AE18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AG11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AH3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_AF16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_AE17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_AF17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_AC10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_AD10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_H8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_AF4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_AF20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset_n	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF bRAM_testkort IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset_n : std_logic;
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \reset_n~input_o\ : std_logic;
SIGNAL \testbenk:adress[0]~1_combout\ : std_logic;
SIGNAL \timer~0_combout\ : std_logic;
SIGNAL \testbenk:timer[0]~q\ : std_logic;
SIGNAL \timer~3_combout\ : std_logic;
SIGNAL \testbenk:timer[1]~q\ : std_logic;
SIGNAL \timer~2_combout\ : std_logic;
SIGNAL \testbenk:timer[2]~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \timer~1_combout\ : std_logic;
SIGNAL \testbenk:timer[3]~q\ : std_logic;
SIGNAL \testbenk:adress[2]~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \timer~4_combout\ : std_logic;
SIGNAL \testbenk:timer[4]~q\ : std_logic;
SIGNAL \testbenk:adress[2]~4_combout\ : std_logic;
SIGNAL \testbenk:adress[0]~q\ : std_logic;
SIGNAL \testbenk:adress[0]~2\ : std_logic;
SIGNAL \testbenk:adress[1]~1_combout\ : std_logic;
SIGNAL \testbenk:adress[1]~q\ : std_logic;
SIGNAL \testbenk:adress[1]~2\ : std_logic;
SIGNAL \testbenk:adress[2]~1_combout\ : std_logic;
SIGNAL \testbenk:adress[2]~q\ : std_logic;
SIGNAL \testbenk:adress[2]~2\ : std_logic;
SIGNAL \testbenk:adress[3]~1_combout\ : std_logic;
SIGNAL \testbenk:adress[3]~q\ : std_logic;
SIGNAL \testbenk:adress[3]~2\ : std_logic;
SIGNAL \testbenk:adress[4]~1_combout\ : std_logic;
SIGNAL \testbenk:adress[4]~q\ : std_logic;
SIGNAL \testbenk:adress[4]~2\ : std_logic;
SIGNAL \testbenk:adress[5]~1_combout\ : std_logic;
SIGNAL \testbenk:adress[5]~q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3009_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3094_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3013_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3011_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3033_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~393_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3032_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~329_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3092_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2286_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3064_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~361_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3093_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3065_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~297_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2680_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2681_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~369feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3014_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3031_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~369_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3090_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2256_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3062_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~337_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3091_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3015_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3030_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~305_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2271_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3063_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~273_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2677_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2678_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~353feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2226_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3060_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~353_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~385feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3029_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~385_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~321feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3028_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~321_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2241_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3061_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~289_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2675_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2676_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2679_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3012_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3027_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~377_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~313feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3010_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3026_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~313_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~345feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2196_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3058_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~345_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2211_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3059_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~281_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2673_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2674_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2682_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~505feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3017_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3054_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~505_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~521feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3057_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~521_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3056_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~497_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~513feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3055_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~513_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2711_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2712_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~489feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2601_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3085_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~489_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~481feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2556_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3082_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~481_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~465feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2586_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3084_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~465_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~473feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2571_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3083_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~473_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2704_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2705_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~409feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2631_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3087_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~409_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2646_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3088_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~401_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2708_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3089_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~425_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~417feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2616_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3086_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~417_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2709_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~449feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3051_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~449_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3052_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~433_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2706_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3053_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~457_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~441feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3050_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~441_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2707_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2710_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2713_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3101_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2436_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3074_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~89_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2481_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3077_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~105_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2451_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3075_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~97_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3102_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2466_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3076_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~81_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2693_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2694_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3105_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3016_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3046_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~129_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3049_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~137_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~113feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3018_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3048_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~113_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3106_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3047_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~121_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2700_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2701_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3104_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3081_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~41_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3078_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~25_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~33feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3079_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~33_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3080_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~17_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2697_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2698_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~65feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3042_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~65_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~73feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3045_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~73_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3103_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3044_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~49_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3043_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~57_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2695_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2696_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2699_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2702_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~193feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3034_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~193_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3096_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3037_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~201_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3035_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~185_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3095_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3036_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~177_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2683_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2684_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3100_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3041_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~265_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3038_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~257_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3099_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3040_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~241_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~249feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3039_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~249_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2690_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2691_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~153feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2316_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3070_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~153_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2361_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3073_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~169_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3098_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2391_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3071_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~161_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2406_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3072_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~145_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2687_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2688_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~217feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3066_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~217_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3069_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~233_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3097_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2346_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3068_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~209_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2331_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3067_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~225_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2685_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2686_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2689_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2692_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2703_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2714_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~0_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3019_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3117_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~394_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~522_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~138_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~266feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~266_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2753_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2754_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~234feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~234_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~490_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3114_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~362_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~106_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2746_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2747_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3115_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~170_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~426_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3116_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~42_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~298_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2750_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2751_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~330feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~330_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~458feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~458_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~202feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~202_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~74_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2748_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2749_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2752_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2755_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3107_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~322_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~450_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~194feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~194_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~66_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2715_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2716_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~386feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~386_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~514feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~514_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~258feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~258_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~130_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2722_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2723_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~162feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~162_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~418_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~290_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~34feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~34_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2719_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2720_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3108_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~226_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~482_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~354feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~354_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~98_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2717_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2718_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2721_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2724_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~218feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~218_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~474_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3109_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~346_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~90_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2725_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2726_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~154feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~154_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~410_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~26_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~282feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~282_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2729_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2730_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~314feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~314_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~442_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~186feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~186_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~58_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2727_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2728_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2731_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~378feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~378_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~506_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~122_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~250feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~250_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2732_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2733_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2734_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3112_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~370_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~498_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3113_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~242_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~114_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2742_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2743_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~306feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~306_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~434_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~50feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~50_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3110_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~178_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2735_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2736_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3111_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~146_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~402_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~274_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~18_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2739_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2740_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~210feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~210_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~466_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~82_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~338feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~338_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2737_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2738_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2741_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2744_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2745_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2756_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~1_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3020_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~523_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~515feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~515_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~499feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~499_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~507feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~507_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2795_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2796_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3128_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~267_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3127_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~259_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~243_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~251feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~251_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2788_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2789_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~123feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~123_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~139feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~139_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~115_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~131feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~131_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2792_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2793_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~379feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~379_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~395_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3129_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~387_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~371_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2790_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2791_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2794_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2797_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~107feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~107_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3121_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~235_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2764_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~363_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~491feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~491_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2765_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~483feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~483_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~227_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3118_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~99_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~355_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2757_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2758_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3120_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~211_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~467_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~83_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~339feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~339_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2761_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2762_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~347feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~347_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~475_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3119_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~91_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~219_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2759_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2760_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2763_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2766_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~411feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~411_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~427_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~419_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~403_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2784_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2785_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~155feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~155_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~171feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~171_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~147_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~163feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~163_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2777_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2778_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~35feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~35_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3126_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~43_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3125_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~27_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~19_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2781_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2782_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~291feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~291_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~299_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3124_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~275_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~283_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2779_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2780_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2783_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2786_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~443feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~443_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~459_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~435_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~451feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~451_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2774_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2775_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~323_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~331_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~315feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~315_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~307_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2767_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2768_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~67feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~67_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~75_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3123_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~51_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~59_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2771_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2772_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3122_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~187_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~203_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~195feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~195_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~179_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2769_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2770_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2773_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2776_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2787_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2798_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~2_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3021_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~524feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~524_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~492_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~460feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~460_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~428_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2837_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2838_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~500feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~500_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~436feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~436_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~468_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3138_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~404_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2834_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2835_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~476feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~476_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~508_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~444feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~444_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~412_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2832_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2833_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2836_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~516feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~516_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~452feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~452_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~420_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~484feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~484_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2830_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2831_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2839_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~268feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~268_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3131_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~236_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~172_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~204feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~204_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2806_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2807_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3130_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~260_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~196_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~228feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~228_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~164_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2799_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2800_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~220_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~252_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~156_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~188feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~188_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2801_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2802_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~180feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~180_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~244_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~212feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~212_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~148_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2803_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2804_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2805_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2808_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~364feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~364_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~396_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~332feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~332_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~300_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2816_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2817_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~348feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~348_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~380_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~284_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~316feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~316_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2809_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2810_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~308feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~308_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~372_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3133_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~276_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~340_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2813_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2814_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3132_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~388_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~324_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~292_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~356feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~356_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2811_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2812_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2815_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2818_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~92feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~92_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~124_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~28_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~60feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~60_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2819_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2820_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~108feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~108_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~140_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3136_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~76_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3137_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~44_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2826_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2827_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~68feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~68_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~132_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3134_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~100_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~36_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2821_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2822_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~52feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~52_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~116_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~20_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3135_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~84_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2823_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2824_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2825_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2828_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2829_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2840_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~3_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3022_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~525feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~525_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~461_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~493feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~493_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~429_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2879_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2880_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3149_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~365_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~397_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3151_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~301_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3150_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~333_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2872_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2873_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3155_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~269_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3152_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~205_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3154_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~173_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3153_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~237_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2874_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2875_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~109feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~109_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~141feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~141_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~77feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~77_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~45_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2876_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2877_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2878_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2881_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~253feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~253_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~509_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~381_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3141_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~125_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2848_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2849_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~477feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~477_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~349_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3139_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~93_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~221_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2841_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2842_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~189feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~189_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~445_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~317feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~317_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~61_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2843_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2844_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~285feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~285_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~413_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~29_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3140_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~157_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2845_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2846_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2847_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2850_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~261feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~261_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~517_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~133feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~133_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~389_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2858_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2859_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~197feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~197_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~453_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3143_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~69_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3142_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~325_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2851_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2852_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~357feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~357_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~485_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3144_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~229_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~101_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2853_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2854_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~293feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~293_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~421_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3145_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~165_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~37_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2855_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2856_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2857_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2860_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~245feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~245_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~501feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~501_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~117_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~373feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~373_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2868_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2869_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3146_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~181_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~437_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~309feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~309_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~53_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2861_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2862_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~277feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~277_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~405_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3148_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~149_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~21_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2865_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2866_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3147_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~341_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~469_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~213feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~213_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~85_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2863_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2864_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2867_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2870_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2871_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2882_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~4_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3023_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~142_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~398feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~398_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2921_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~526feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~526_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~270_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2922_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~254feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~254_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~510_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~382_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3175_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~126_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2914_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2915_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3176_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~390_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~518_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3178_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~134_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3177_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~262_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2916_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2917_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~374feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~374_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~502_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~246feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~246_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~118_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2918_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2919_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2920_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2923_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~334feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~334_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~318_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3157_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~310_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3156_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~326_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2883_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2884_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~454feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~454_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~462_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~446feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~446_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~438_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2890_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2891_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3162_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~78_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~62_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3160_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~70_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3161_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~54_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2887_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2888_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~198feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~198_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3159_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~206_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3158_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~190_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~182_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2885_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2886_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2889_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2892_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~166feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~166_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~174_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~158_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3168_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~150_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2903_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2904_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~422feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~422_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~430_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3174_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~406_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~414_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2910_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2911_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3169_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~286_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3170_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~278_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~294_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2905_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3171_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~302_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2906_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3172_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~30_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3173_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~46_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~38feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~38_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~22_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2907_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2908_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2909_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2912_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3163_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~230_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~238_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~222_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3164_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~214_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2893_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2894_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~486feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~486_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~494_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~478feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~478_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~470_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2900_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2901_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3167_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~110_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~94_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3165_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~102_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3166_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~86_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2897_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2898_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~350feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~350_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~366_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~358feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~358_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~342_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2895_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2896_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2899_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2902_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2913_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2924_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~5_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3024_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~527_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~495feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~495_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~463feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~463_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~431_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2963_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2964_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~519feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~519_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~455feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~455_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~423_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~487feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~487_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2956_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2957_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~479feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~479_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~447feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~447_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~415_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2958_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~511feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~511_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2959_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~439feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~439_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~503_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~471_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3182_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~407_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2960_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2961_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2962_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2965_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~383feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~383_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~399_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~375feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~375_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~391feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~391_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2932_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2933_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~351feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~351_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~343feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~343_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2925_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~367feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~367_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~359feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~359_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2926_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~319feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~319_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~335_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~327feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~327_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~311_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2927_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2928_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~295feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~295_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~303_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3179_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~279_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~287_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2929_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2930_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2931_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2934_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~271feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~271_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~207feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~207_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~175_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3180_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~239_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2942_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2943_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~231feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~231_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~263_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~199feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~199_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~167_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2937_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2938_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~215feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~215_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~247_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~183feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~183_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~151_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2939_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2940_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2941_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~159_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~223feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~223_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2935_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~255_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~191feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~191_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2936_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2944_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~71feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~71_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~39feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~39_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2945_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3181_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~103_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~135_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2946_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~143feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~143_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~79_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~111feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~111_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~47_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2952_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2953_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~87feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~87_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~119_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~23_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~55feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~55_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2949_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2950_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~63feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~63_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~127_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~95feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~95_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~31_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2947_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2948_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2951_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2954_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2955_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2966_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~6_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3025_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~184feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~184_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~440_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~56_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~312feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~312_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2987_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2988_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~248feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~248_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~504_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~376feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~376_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~120_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2994_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2995_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3183_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~408_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~280_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~24_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~152feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~152_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2991_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2992_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~344feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~344_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~472_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~216feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~216_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~88_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2989_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2990_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2993_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2996_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~352feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~352_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~480_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~224feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~224_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~96_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2977_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2978_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~416feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~416_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~288feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~288_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~32_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~160feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~160_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2981_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2982_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~192feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~192_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~448_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~64_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~320feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~320_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2979_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2980_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2983_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~256feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~256_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~512_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~384feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~384_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~128_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2984_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2985_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2986_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2997_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~456feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~456_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~200_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~328feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~328_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~72_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2967_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2968_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~520feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~520_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~264feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~264_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~392feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~392_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~136_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2974_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2975_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~296feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~296_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~424_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~168feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~168_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~40_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2971_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2972_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~360feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~360_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~488_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~232feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~232_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~104_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2969_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2970_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2973_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~2976_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~336feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~336_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~304_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2998_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~400_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~368feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~368_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~2999_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~208feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~208_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~272_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~176_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~240feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~240_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3000_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3001_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~112feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~112_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~144_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~80feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~80_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~48_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3002_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3003_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3004_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~528feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~528_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~464_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~496feeder_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~496_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~432_q\ : std_logic;
SIGNAL \bRAM_chip|RAM~3005_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3006_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3007_combout\ : std_logic;
SIGNAL \bRAM_chip|RAM~3008_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out~7_combout\ : std_logic;
SIGNAL \bRAM_chip|s_Data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset_n~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_reset_n <= reset_n;
ww_SW <= SW;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_reset_n~input_o\ <= NOT \reset_n~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X60_Y0_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(0),
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X65_Y0_N16
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(1),
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(2),
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X67_Y0_N9
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(3),
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X67_Y0_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(4),
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X67_Y0_N2
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(5),
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(6),
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X67_Y0_N23
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \bRAM_chip|s_Data_out\(7),
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X38_Y0_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X115_Y26_N16
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X11_Y73_N23
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X0_Y28_N23
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X85_Y0_N16
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X1_Y73_N9
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X65_Y0_N1
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X65_Y0_N8
\reset_n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset_n,
	o => \reset_n~input_o\);

-- Location: LCCOMB_X68_Y33_N6
\testbenk:adress[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[0]~1_combout\ = \testbenk:adress[0]~q\ $ (VCC)
-- \testbenk:adress[0]~2\ = CARRY(\testbenk:adress[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datad => VCC,
	combout => \testbenk:adress[0]~1_combout\,
	cout => \testbenk:adress[0]~2\);

-- Location: LCCOMB_X68_Y33_N20
\timer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~0_combout\ = (!\testbenk:adress[2]~4_combout\ & !\testbenk:timer[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[2]~4_combout\,
	datac => \testbenk:timer[0]~q\,
	combout => \timer~0_combout\);

-- Location: FF_X68_Y33_N21
\testbenk:timer[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:timer[0]~q\);

-- Location: LCCOMB_X68_Y33_N18
\timer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~3_combout\ = (!\testbenk:adress[2]~4_combout\ & (\testbenk:timer[0]~q\ $ (\testbenk:timer[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:timer[0]~q\,
	datab => \testbenk:adress[2]~4_combout\,
	datac => \testbenk:timer[1]~q\,
	combout => \timer~3_combout\);

-- Location: FF_X68_Y33_N19
\testbenk:timer[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:timer[1]~q\);

-- Location: LCCOMB_X68_Y33_N0
\timer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~2_combout\ = (!\testbenk:adress[2]~4_combout\ & (\testbenk:timer[2]~q\ $ (((\testbenk:timer[0]~q\ & \testbenk:timer[1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:timer[0]~q\,
	datab => \testbenk:adress[2]~4_combout\,
	datac => \testbenk:timer[2]~q\,
	datad => \testbenk:timer[1]~q\,
	combout => \timer~2_combout\);

-- Location: FF_X68_Y33_N1
\testbenk:timer[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:timer[2]~q\);

-- Location: LCCOMB_X68_Y33_N26
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \testbenk:timer[3]~q\ $ (((\testbenk:timer[2]~q\ & (\testbenk:timer[0]~q\ & \testbenk:timer[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:timer[2]~q\,
	datab => \testbenk:timer[3]~q\,
	datac => \testbenk:timer[0]~q\,
	datad => \testbenk:timer[1]~q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X68_Y33_N30
\timer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~1_combout\ = (!\testbenk:adress[2]~4_combout\ & \Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[2]~4_combout\,
	datac => \Add0~1_combout\,
	combout => \timer~1_combout\);

-- Location: FF_X68_Y33_N31
\testbenk:timer[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:timer[3]~q\);

-- Location: LCCOMB_X67_Y33_N8
\testbenk:adress[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[2]~3_combout\ = (((\testbenk:timer[0]~q\) # (!\testbenk:timer[1]~q\)) # (!\testbenk:timer[2]~q\)) # (!\testbenk:timer[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:timer[3]~q\,
	datab => \testbenk:timer[2]~q\,
	datac => \testbenk:timer[0]~q\,
	datad => \testbenk:timer[1]~q\,
	combout => \testbenk:adress[2]~3_combout\);

-- Location: LCCOMB_X68_Y33_N2
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\testbenk:timer[2]~q\ & (\testbenk:timer[3]~q\ & (\testbenk:timer[0]~q\ & \testbenk:timer[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:timer[2]~q\,
	datab => \testbenk:timer[3]~q\,
	datac => \testbenk:timer[0]~q\,
	datad => \testbenk:timer[1]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X68_Y33_N24
\timer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \timer~4_combout\ = (\testbenk:adress[2]~3_combout\ & (\reset_n~input_o\ & (\testbenk:timer[4]~q\ $ (\Add0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~3_combout\,
	datab => \reset_n~input_o\,
	datac => \testbenk:timer[4]~q\,
	datad => \Add0~0_combout\,
	combout => \timer~4_combout\);

-- Location: FF_X68_Y33_N25
\testbenk:timer[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \timer~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:timer[4]~q\);

-- Location: LCCOMB_X68_Y33_N4
\testbenk:adress[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[2]~4_combout\ = ((!\testbenk:adress[2]~3_combout\ & (\Add0~0_combout\ $ (\testbenk:timer[4]~q\)))) # (!\reset_n~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111101001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~3_combout\,
	datab => \Add0~0_combout\,
	datac => \reset_n~input_o\,
	datad => \testbenk:timer[4]~q\,
	combout => \testbenk:adress[2]~4_combout\);

-- Location: FF_X68_Y33_N7
\testbenk:adress[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[0]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[0]~q\);

-- Location: LCCOMB_X68_Y33_N8
\testbenk:adress[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[1]~1_combout\ = (\testbenk:adress[1]~q\ & (!\testbenk:adress[0]~2\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~2\) # (GND)))
-- \testbenk:adress[1]~2\ = CARRY((!\testbenk:adress[0]~2\) # (!\testbenk:adress[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[1]~q\,
	datad => VCC,
	cin => \testbenk:adress[0]~2\,
	combout => \testbenk:adress[1]~1_combout\,
	cout => \testbenk:adress[1]~2\);

-- Location: FF_X68_Y33_N9
\testbenk:adress[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[1]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[1]~q\);

-- Location: LCCOMB_X68_Y33_N10
\testbenk:adress[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[2]~1_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[1]~2\ $ (GND))) # (!\testbenk:adress[2]~q\ & (!\testbenk:adress[1]~2\ & VCC))
-- \testbenk:adress[2]~2\ = CARRY((\testbenk:adress[2]~q\ & !\testbenk:adress[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datad => VCC,
	cin => \testbenk:adress[1]~2\,
	combout => \testbenk:adress[2]~1_combout\,
	cout => \testbenk:adress[2]~2\);

-- Location: FF_X68_Y33_N11
\testbenk:adress[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[2]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[2]~q\);

-- Location: LCCOMB_X68_Y33_N12
\testbenk:adress[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[3]~1_combout\ = (\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~2\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~2\) # (GND)))
-- \testbenk:adress[3]~2\ = CARRY((!\testbenk:adress[2]~2\) # (!\testbenk:adress[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datad => VCC,
	cin => \testbenk:adress[2]~2\,
	combout => \testbenk:adress[3]~1_combout\,
	cout => \testbenk:adress[3]~2\);

-- Location: FF_X68_Y33_N13
\testbenk:adress[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[3]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[3]~q\);

-- Location: LCCOMB_X68_Y33_N14
\testbenk:adress[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[4]~1_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[3]~2\ $ (GND))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[3]~2\ & VCC))
-- \testbenk:adress[4]~2\ = CARRY((\testbenk:adress[4]~q\ & !\testbenk:adress[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[4]~q\,
	datad => VCC,
	cin => \testbenk:adress[3]~2\,
	combout => \testbenk:adress[4]~1_combout\,
	cout => \testbenk:adress[4]~2\);

-- Location: FF_X68_Y33_N15
\testbenk:adress[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[4]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[4]~q\);

-- Location: LCCOMB_X68_Y33_N16
\testbenk:adress[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \testbenk:adress[5]~1_combout\ = \testbenk:adress[4]~2\ $ (\testbenk:adress[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \testbenk:adress[5]~q\,
	cin => \testbenk:adress[4]~2\,
	combout => \testbenk:adress[5]~1_combout\);

-- Location: FF_X68_Y33_N17
\testbenk:adress[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \testbenk:adress[5]~1_combout\,
	sclr => \ALT_INV_reset_n~input_o\,
	ena => \testbenk:adress[2]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \testbenk:adress[5]~q\);

-- Location: LCCOMB_X63_Y31_N22
\bRAM_chip|RAM~3009\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3009_combout\ = (\bRAM_chip|RAM~2714_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2714_combout\,
	combout => \bRAM_chip|RAM~3009_combout\);

-- Location: LCCOMB_X66_Y32_N16
\bRAM_chip|RAM~3094\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3094_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3094_combout\);

-- Location: LCCOMB_X65_Y31_N26
\bRAM_chip|RAM~3013\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3013_combout\ = (\testbenk:adress[5]~q\ & \testbenk:adress[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3013_combout\);

-- Location: LCCOMB_X67_Y32_N22
\bRAM_chip|RAM~3011\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3011_combout\ = (\reset_n~input_o\ & (\testbenk:adress[2]~q\ & !\testbenk:adress[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3011_combout\);

-- Location: LCCOMB_X65_Y34_N2
\bRAM_chip|RAM~3033\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3033_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3013_combout\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3013_combout\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3033_combout\);

-- Location: FF_X66_Y32_N17
\bRAM_chip|RAM~393\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3094_combout\,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~393_q\);

-- Location: LCCOMB_X66_Y32_N26
\bRAM_chip|RAM~3032\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3032_combout\ = (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3013_combout\ & (!\testbenk:adress[3]~q\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~3013_combout\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3032_combout\);

-- Location: FF_X66_Y32_N21
\bRAM_chip|RAM~329\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~329_q\);

-- Location: LCCOMB_X66_Y31_N0
\bRAM_chip|RAM~3092\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3092_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3092_combout\);

-- Location: LCCOMB_X62_Y31_N26
\bRAM_chip|RAM~2286\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2286_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[4]~q\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[4]~q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2286_combout\);

-- Location: LCCOMB_X62_Y31_N8
\bRAM_chip|RAM~3064\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3064_combout\ = (\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (\bRAM_chip|RAM~2286_combout\ & \testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \bRAM_chip|RAM~2286_combout\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3064_combout\);

-- Location: FF_X66_Y31_N1
\bRAM_chip|RAM~361\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3092_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~361_q\);

-- Location: LCCOMB_X65_Y31_N8
\bRAM_chip|RAM~3093\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3093_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3093_combout\);

-- Location: LCCOMB_X62_Y31_N20
\bRAM_chip|RAM~3065\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3065_combout\ = (\bRAM_chip|RAM~2286_combout\ & (\reset_n~input_o\ & (!\testbenk:adress[3]~q\ & \testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2286_combout\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3065_combout\);

-- Location: FF_X65_Y31_N9
\bRAM_chip|RAM~297\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3093_combout\,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~297_q\);

-- Location: LCCOMB_X66_Y32_N2
\bRAM_chip|RAM~2680\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2680_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (!\bRAM_chip|RAM~361_q\)) # (!\testbenk:adress[3]~q\ & ((!\bRAM_chip|RAM~297_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~361_q\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~297_q\,
	combout => \bRAM_chip|RAM~2680_combout\);

-- Location: LCCOMB_X66_Y32_N20
\bRAM_chip|RAM~2681\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2681_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2680_combout\ & (!\bRAM_chip|RAM~393_q\)) # (!\bRAM_chip|RAM~2680_combout\ & ((\bRAM_chip|RAM~329_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2680_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~393_q\,
	datac => \bRAM_chip|RAM~329_q\,
	datad => \bRAM_chip|RAM~2680_combout\,
	combout => \bRAM_chip|RAM~2681_combout\);

-- Location: LCCOMB_X62_Y32_N30
\bRAM_chip|RAM~369feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~369feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~369feeder_combout\);

-- Location: LCCOMB_X62_Y32_N6
\bRAM_chip|RAM~3014\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3014_combout\ = (!\testbenk:adress[0]~q\ & \testbenk:adress[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3014_combout\);

-- Location: LCCOMB_X62_Y32_N14
\bRAM_chip|RAM~3031\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3031_combout\ = (!\testbenk:adress[1]~q\ & (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~3011_combout\ & \bRAM_chip|RAM~3014_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \bRAM_chip|RAM~3014_combout\,
	combout => \bRAM_chip|RAM~3031_combout\);

-- Location: FF_X62_Y32_N31
\bRAM_chip|RAM~369\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~369feeder_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~369_q\);

-- Location: LCCOMB_X61_Y30_N0
\bRAM_chip|RAM~3090\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3090_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3090_combout\);

-- Location: LCCOMB_X66_Y30_N6
\bRAM_chip|RAM~2256\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2256_combout\ = (!\testbenk:adress[2]~q\ & (!\testbenk:adress[0]~q\ & (\testbenk:adress[3]~q\ & !\testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2256_combout\);

-- Location: LCCOMB_X66_Y30_N0
\bRAM_chip|RAM~3062\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3062_combout\ = (\bRAM_chip|RAM~2256_combout\ & (\reset_n~input_o\ & (!\testbenk:adress[1]~q\ & \testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2256_combout\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~3062_combout\);

-- Location: FF_X61_Y30_N1
\bRAM_chip|RAM~337\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3090_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~337_q\);

-- Location: LCCOMB_X67_Y28_N16
\bRAM_chip|RAM~3091\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3091_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3091_combout\);

-- Location: LCCOMB_X65_Y34_N8
\bRAM_chip|RAM~3015\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3015_combout\ = (!\testbenk:adress[0]~q\ & !\testbenk:adress[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3015_combout\);

-- Location: LCCOMB_X66_Y35_N22
\bRAM_chip|RAM~3030\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3030_combout\ = (\bRAM_chip|RAM~3015_combout\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3015_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3030_combout\);

-- Location: FF_X67_Y28_N17
\bRAM_chip|RAM~305\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3091_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~305_q\);

-- Location: LCCOMB_X63_Y30_N24
\bRAM_chip|RAM~2271\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2271_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[2]~q\ & (!\testbenk:adress[3]~q\ & !\testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2271_combout\);

-- Location: LCCOMB_X63_Y30_N6
\bRAM_chip|RAM~3063\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3063_combout\ = (\reset_n~input_o\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~2271_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~2271_combout\,
	combout => \bRAM_chip|RAM~3063_combout\);

-- Location: FF_X67_Y31_N11
\bRAM_chip|RAM~273\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~273_q\);

-- Location: LCCOMB_X67_Y31_N10
\bRAM_chip|RAM~2677\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2677_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & (!\bRAM_chip|RAM~305_q\)) # (!\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~273_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~305_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~273_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2677_combout\);

-- Location: LCCOMB_X62_Y31_N4
\bRAM_chip|RAM~2678\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2678_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2677_combout\ & (\bRAM_chip|RAM~369_q\)) # (!\bRAM_chip|RAM~2677_combout\ & ((!\bRAM_chip|RAM~337_q\))))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2677_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~369_q\,
	datab => \bRAM_chip|RAM~337_q\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2677_combout\,
	combout => \bRAM_chip|RAM~2678_combout\);

-- Location: LCCOMB_X63_Y34_N28
\bRAM_chip|RAM~353feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~353feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~353feeder_combout\);

-- Location: LCCOMB_X63_Y34_N24
\bRAM_chip|RAM~2226\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2226_combout\ = (!\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[0]~q\ & \testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2226_combout\);

-- Location: LCCOMB_X63_Y34_N18
\bRAM_chip|RAM~3060\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3060_combout\ = (\reset_n~input_o\ & (\testbenk:adress[1]~q\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2226_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[1]~q\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2226_combout\,
	combout => \bRAM_chip|RAM~3060_combout\);

-- Location: FF_X63_Y34_N29
\bRAM_chip|RAM~353\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~353feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~353_q\);

-- Location: LCCOMB_X62_Y32_N12
\bRAM_chip|RAM~385feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~385feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~385feeder_combout\);

-- Location: LCCOMB_X62_Y32_N8
\bRAM_chip|RAM~3029\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3029_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~3011_combout\ & \bRAM_chip|RAM~3014_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \bRAM_chip|RAM~3014_combout\,
	combout => \bRAM_chip|RAM~3029_combout\);

-- Location: FF_X62_Y32_N13
\bRAM_chip|RAM~385\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~385feeder_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~385_q\);

-- Location: LCCOMB_X66_Y35_N4
\bRAM_chip|RAM~321feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~321feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~321feeder_combout\);

-- Location: LCCOMB_X66_Y35_N12
\bRAM_chip|RAM~3028\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3028_combout\ = (\bRAM_chip|RAM~3015_combout\ & (\testbenk:adress[5]~q\ & (\testbenk:adress[1]~q\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3015_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3028_combout\);

-- Location: FF_X66_Y35_N5
\bRAM_chip|RAM~321\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~321feeder_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~321_q\);

-- Location: LCCOMB_X63_Y34_N8
\bRAM_chip|RAM~2241\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2241_combout\ = (!\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[0]~q\ & !\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2241_combout\);

-- Location: LCCOMB_X63_Y34_N30
\bRAM_chip|RAM~3061\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3061_combout\ = (\bRAM_chip|RAM~2241_combout\ & (!\testbenk:adress[2]~q\ & (\testbenk:adress[1]~q\ & \reset_n~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2241_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \reset_n~input_o\,
	combout => \bRAM_chip|RAM~3061_combout\);

-- Location: FF_X66_Y33_N13
\bRAM_chip|RAM~289\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~289_q\);

-- Location: LCCOMB_X66_Y33_N12
\bRAM_chip|RAM~2675\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2675_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~321_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~289_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~321_q\,
	datac => \bRAM_chip|RAM~289_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2675_combout\);

-- Location: LCCOMB_X63_Y31_N28
\bRAM_chip|RAM~2676\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2676_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2675_combout\ & ((\bRAM_chip|RAM~385_q\))) # (!\bRAM_chip|RAM~2675_combout\ & (\bRAM_chip|RAM~353_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2675_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~353_q\,
	datac => \bRAM_chip|RAM~385_q\,
	datad => \bRAM_chip|RAM~2675_combout\,
	combout => \bRAM_chip|RAM~2676_combout\);

-- Location: LCCOMB_X63_Y31_N26
\bRAM_chip|RAM~2679\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2679_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2676_combout\))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2678_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2678_combout\,
	datad => \bRAM_chip|RAM~2676_combout\,
	combout => \bRAM_chip|RAM~2679_combout\);

-- Location: LCCOMB_X70_Y30_N4
\bRAM_chip|RAM~3012\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3012_combout\ = (\testbenk:adress[3]~q\ & \testbenk:adress[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3012_combout\);

-- Location: LCCOMB_X70_Y30_N6
\bRAM_chip|RAM~3027\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3027_combout\ = (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~3012_combout\ & (\bRAM_chip|RAM~3011_combout\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~3012_combout\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3027_combout\);

-- Location: FF_X69_Y31_N9
\bRAM_chip|RAM~377\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~377_q\);

-- Location: LCCOMB_X65_Y35_N0
\bRAM_chip|RAM~313feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~313feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~313feeder_combout\);

-- Location: LCCOMB_X66_Y35_N8
\bRAM_chip|RAM~3010\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3010_combout\ = (\testbenk:adress[0]~q\ & !\testbenk:adress[3]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3010_combout\);

-- Location: LCCOMB_X66_Y35_N14
\bRAM_chip|RAM~3026\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3026_combout\ = (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~3010_combout\ & (\testbenk:adress[5]~q\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~3010_combout\,
	datac => \testbenk:adress[5]~q\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3026_combout\);

-- Location: FF_X65_Y35_N1
\bRAM_chip|RAM~313\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~313feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~313_q\);

-- Location: LCCOMB_X63_Y33_N28
\bRAM_chip|RAM~345feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~345feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~345feeder_combout\);

-- Location: LCCOMB_X63_Y32_N6
\bRAM_chip|RAM~2196\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2196_combout\ = (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & (\testbenk:adress[0]~q\ & !\testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[2]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2196_combout\);

-- Location: LCCOMB_X63_Y32_N8
\bRAM_chip|RAM~3058\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3058_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~2196_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~2196_combout\,
	combout => \bRAM_chip|RAM~3058_combout\);

-- Location: FF_X63_Y33_N29
\bRAM_chip|RAM~345\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~345feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~345_q\);

-- Location: LCCOMB_X63_Y32_N2
\bRAM_chip|RAM~2211\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2211_combout\ = (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & (\reset_n~input_o\ & !\testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \reset_n~input_o\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2211_combout\);

-- Location: LCCOMB_X63_Y32_N24
\bRAM_chip|RAM~3059\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3059_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~2211_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~2211_combout\,
	combout => \bRAM_chip|RAM~3059_combout\);

-- Location: FF_X67_Y31_N25
\bRAM_chip|RAM~281\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~281_q\);

-- Location: LCCOMB_X67_Y31_N24
\bRAM_chip|RAM~2673\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2673_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~345_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~281_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~345_q\,
	datac => \bRAM_chip|RAM~281_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2673_combout\);

-- Location: LCCOMB_X68_Y31_N4
\bRAM_chip|RAM~2674\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2674_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2673_combout\ & (\bRAM_chip|RAM~377_q\)) # (!\bRAM_chip|RAM~2673_combout\ & ((\bRAM_chip|RAM~313_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2673_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~377_q\,
	datac => \bRAM_chip|RAM~313_q\,
	datad => \bRAM_chip|RAM~2673_combout\,
	combout => \bRAM_chip|RAM~2674_combout\);

-- Location: LCCOMB_X63_Y31_N24
\bRAM_chip|RAM~2682\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2682_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2679_combout\ & (\bRAM_chip|RAM~2681_combout\)) # (!\bRAM_chip|RAM~2679_combout\ & ((\bRAM_chip|RAM~2674_combout\))))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2679_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2681_combout\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2679_combout\,
	datad => \bRAM_chip|RAM~2674_combout\,
	combout => \bRAM_chip|RAM~2682_combout\);

-- Location: LCCOMB_X62_Y30_N24
\bRAM_chip|RAM~505feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~505feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~505feeder_combout\);

-- Location: LCCOMB_X66_Y34_N4
\bRAM_chip|RAM~3017\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3017_combout\ = (\testbenk:adress[2]~q\ & (\reset_n~input_o\ & \testbenk:adress[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datac => \reset_n~input_o\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3017_combout\);

-- Location: LCCOMB_X70_Y30_N16
\bRAM_chip|RAM~3054\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3054_combout\ = (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~3012_combout\ & (\bRAM_chip|RAM~3017_combout\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~3012_combout\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3054_combout\);

-- Location: FF_X62_Y30_N25
\bRAM_chip|RAM~505\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~505feeder_combout\,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~505_q\);

-- Location: LCCOMB_X68_Y31_N8
\bRAM_chip|RAM~521feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~521feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~521feeder_combout\);

-- Location: LCCOMB_X68_Y32_N22
\bRAM_chip|RAM~3057\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3057_combout\ = (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3013_combout\ & (\testbenk:adress[0]~q\ & \bRAM_chip|RAM~3017_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~3013_combout\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~3017_combout\,
	combout => \bRAM_chip|RAM~3057_combout\);

-- Location: FF_X68_Y31_N9
\bRAM_chip|RAM~521\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~521feeder_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~521_q\);

-- Location: LCCOMB_X67_Y30_N16
\bRAM_chip|RAM~3056\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3056_combout\ = (\bRAM_chip|RAM~3014_combout\ & (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~3017_combout\ & \testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3014_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~3056_combout\);

-- Location: FF_X67_Y30_N31
\bRAM_chip|RAM~497\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~497_q\);

-- Location: LCCOMB_X65_Y29_N0
\bRAM_chip|RAM~513feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~513feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~513feeder_combout\);

-- Location: LCCOMB_X65_Y29_N8
\bRAM_chip|RAM~3055\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3055_combout\ = (\bRAM_chip|RAM~3014_combout\ & (\bRAM_chip|RAM~3017_combout\ & (\testbenk:adress[1]~q\ & \testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3014_combout\,
	datab => \bRAM_chip|RAM~3017_combout\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~3055_combout\);

-- Location: FF_X65_Y29_N1
\bRAM_chip|RAM~513\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~513feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~513_q\);

-- Location: LCCOMB_X67_Y30_N30
\bRAM_chip|RAM~2711\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2711_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~513_q\))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~497_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~497_q\,
	datad => \bRAM_chip|RAM~513_q\,
	combout => \bRAM_chip|RAM~2711_combout\);

-- Location: LCCOMB_X63_Y30_N0
\bRAM_chip|RAM~2712\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2712_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2711_combout\ & ((\bRAM_chip|RAM~521_q\))) # (!\bRAM_chip|RAM~2711_combout\ & (\bRAM_chip|RAM~505_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2711_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~505_q\,
	datac => \bRAM_chip|RAM~521_q\,
	datad => \bRAM_chip|RAM~2711_combout\,
	combout => \bRAM_chip|RAM~2712_combout\);

-- Location: LCCOMB_X70_Y31_N28
\bRAM_chip|RAM~489feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~489feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~489feeder_combout\);

-- Location: LCCOMB_X63_Y32_N16
\bRAM_chip|RAM~2601\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2601_combout\ = (\reset_n~input_o\ & (\testbenk:adress[1]~q\ & (\testbenk:adress[5]~q\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[1]~q\,
	datac => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2601_combout\);

-- Location: LCCOMB_X70_Y31_N14
\bRAM_chip|RAM~3085\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3085_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[0]~q\ & (\testbenk:adress[3]~q\ & \bRAM_chip|RAM~2601_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2601_combout\,
	combout => \bRAM_chip|RAM~3085_combout\);

-- Location: FF_X70_Y31_N29
\bRAM_chip|RAM~489\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~489feeder_combout\,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~489_q\);

-- Location: LCCOMB_X63_Y32_N28
\bRAM_chip|RAM~481feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~481feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~481feeder_combout\);

-- Location: LCCOMB_X63_Y32_N14
\bRAM_chip|RAM~2556\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2556_combout\ = (!\testbenk:adress[0]~q\ & (\testbenk:adress[5]~q\ & (\testbenk:adress[1]~q\ & \testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2556_combout\);

-- Location: LCCOMB_X63_Y32_N0
\bRAM_chip|RAM~3082\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3082_combout\ = (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2556_combout\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2556_combout\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3082_combout\);

-- Location: FF_X63_Y32_N29
\bRAM_chip|RAM~481\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~481feeder_combout\,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~481_q\);

-- Location: LCCOMB_X62_Y29_N2
\bRAM_chip|RAM~465feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~465feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~465feeder_combout\);

-- Location: LCCOMB_X68_Y29_N0
\bRAM_chip|RAM~2586\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2586_combout\ = (\reset_n~input_o\ & (\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & !\testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2586_combout\);

-- Location: LCCOMB_X68_Y29_N22
\bRAM_chip|RAM~3084\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3084_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2586_combout\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2586_combout\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3084_combout\);

-- Location: FF_X62_Y29_N3
\bRAM_chip|RAM~465\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~465feeder_combout\,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~465_q\);

-- Location: LCCOMB_X62_Y29_N0
\bRAM_chip|RAM~473feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~473feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~473feeder_combout\);

-- Location: LCCOMB_X66_Y30_N14
\bRAM_chip|RAM~2571\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2571_combout\ = (\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (\testbenk:adress[0]~q\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2571_combout\);

-- Location: LCCOMB_X68_Y29_N20
\bRAM_chip|RAM~3083\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3083_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2571_combout\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2571_combout\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3083_combout\);

-- Location: FF_X62_Y29_N1
\bRAM_chip|RAM~473\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~473feeder_combout\,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~473_q\);

-- Location: LCCOMB_X62_Y31_N30
\bRAM_chip|RAM~2704\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2704_combout\ = (\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~473_q\) # (\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~465_q\ & ((!\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~465_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~473_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2704_combout\);

-- Location: LCCOMB_X62_Y31_N16
\bRAM_chip|RAM~2705\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2705_combout\ = (\bRAM_chip|RAM~2704_combout\ & ((\bRAM_chip|RAM~489_q\) # ((!\testbenk:adress[1]~q\)))) # (!\bRAM_chip|RAM~2704_combout\ & (((\bRAM_chip|RAM~481_q\ & \testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~489_q\,
	datab => \bRAM_chip|RAM~481_q\,
	datac => \bRAM_chip|RAM~2704_combout\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2705_combout\);

-- Location: LCCOMB_X67_Y32_N20
\bRAM_chip|RAM~409feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~409feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~409feeder_combout\);

-- Location: LCCOMB_X66_Y34_N10
\bRAM_chip|RAM~2631\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2631_combout\ = (!\testbenk:adress[3]~q\ & (\testbenk:adress[0]~q\ & (\reset_n~input_o\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \reset_n~input_o\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2631_combout\);

-- Location: LCCOMB_X66_Y34_N8
\bRAM_chip|RAM~3087\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3087_combout\ = (\bRAM_chip|RAM~2631_combout\ & (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2631_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[4]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3087_combout\);

-- Location: FF_X67_Y32_N21
\bRAM_chip|RAM~409\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~409feeder_combout\,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~409_q\);

-- Location: LCCOMB_X63_Y30_N16
\bRAM_chip|RAM~2646\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2646_combout\ = (!\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & !\testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2646_combout\);

-- Location: LCCOMB_X63_Y30_N10
\bRAM_chip|RAM~3088\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3088_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~2646_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~2646_combout\,
	combout => \bRAM_chip|RAM~3088_combout\);

-- Location: FF_X68_Y31_N23
\bRAM_chip|RAM~401\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~401_q\);

-- Location: LCCOMB_X68_Y31_N22
\bRAM_chip|RAM~2708\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2708_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~409_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~401_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~409_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~401_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2708_combout\);

-- Location: LCCOMB_X68_Y31_N6
\bRAM_chip|RAM~3089\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3089_combout\ = (\testbenk:adress[4]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2601_combout\ & \testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2601_combout\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3089_combout\);

-- Location: FF_X65_Y31_N3
\bRAM_chip|RAM~425\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~425_q\);

-- Location: LCCOMB_X66_Y33_N10
\bRAM_chip|RAM~417feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~417feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~417feeder_combout\);

-- Location: LCCOMB_X63_Y32_N30
\bRAM_chip|RAM~2616\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2616_combout\ = (!\testbenk:adress[0]~q\ & (\testbenk:adress[5]~q\ & (\testbenk:adress[1]~q\ & !\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2616_combout\);

-- Location: LCCOMB_X65_Y32_N10
\bRAM_chip|RAM~3086\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3086_combout\ = (\testbenk:adress[4]~q\ & (\reset_n~input_o\ & (\bRAM_chip|RAM~2616_combout\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \reset_n~input_o\,
	datac => \bRAM_chip|RAM~2616_combout\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~3086_combout\);

-- Location: FF_X66_Y33_N11
\bRAM_chip|RAM~417\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~417feeder_combout\,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~417_q\);

-- Location: LCCOMB_X65_Y31_N2
\bRAM_chip|RAM~2709\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2709_combout\ = (\bRAM_chip|RAM~2708_combout\ & (((\bRAM_chip|RAM~425_q\)) # (!\testbenk:adress[1]~q\))) # (!\bRAM_chip|RAM~2708_combout\ & (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~417_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2708_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~425_q\,
	datad => \bRAM_chip|RAM~417_q\,
	combout => \bRAM_chip|RAM~2709_combout\);

-- Location: LCCOMB_X66_Y35_N18
\bRAM_chip|RAM~449feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~449feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~449feeder_combout\);

-- Location: LCCOMB_X65_Y34_N12
\bRAM_chip|RAM~3051\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3051_combout\ = (\bRAM_chip|RAM~3017_combout\ & (\bRAM_chip|RAM~3015_combout\ & (\testbenk:adress[5]~q\ & \testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3017_combout\,
	datab => \bRAM_chip|RAM~3015_combout\,
	datac => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3051_combout\);

-- Location: FF_X66_Y35_N19
\bRAM_chip|RAM~449\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~449feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~449_q\);

-- Location: LCCOMB_X66_Y35_N26
\bRAM_chip|RAM~3052\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3052_combout\ = (\bRAM_chip|RAM~3015_combout\ & (\testbenk:adress[5]~q\ & (!\testbenk:adress[1]~q\ & \bRAM_chip|RAM~3017_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3015_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~3017_combout\,
	combout => \bRAM_chip|RAM~3052_combout\);

-- Location: FF_X69_Y35_N31
\bRAM_chip|RAM~433\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~433_q\);

-- Location: LCCOMB_X69_Y35_N30
\bRAM_chip|RAM~2706\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2706_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~449_q\) # ((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~433_q\ & !\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~449_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~433_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2706_combout\);

-- Location: LCCOMB_X65_Y34_N22
\bRAM_chip|RAM~3053\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3053_combout\ = (\bRAM_chip|RAM~3013_combout\ & (!\testbenk:adress[3]~q\ & (\testbenk:adress[0]~q\ & \bRAM_chip|RAM~3017_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3013_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~3017_combout\,
	combout => \bRAM_chip|RAM~3053_combout\);

-- Location: FF_X65_Y34_N29
\bRAM_chip|RAM~457\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~457_q\);

-- Location: LCCOMB_X67_Y35_N8
\bRAM_chip|RAM~441feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~441feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~441feeder_combout\);

-- Location: LCCOMB_X66_Y35_N24
\bRAM_chip|RAM~3050\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3050_combout\ = (!\testbenk:adress[1]~q\ & (\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~3010_combout\ & \bRAM_chip|RAM~3017_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~3010_combout\,
	datad => \bRAM_chip|RAM~3017_combout\,
	combout => \bRAM_chip|RAM~3050_combout\);

-- Location: FF_X67_Y35_N9
\bRAM_chip|RAM~441\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~441feeder_combout\,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~441_q\);

-- Location: LCCOMB_X65_Y34_N28
\bRAM_chip|RAM~2707\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2707_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2706_combout\ & (\bRAM_chip|RAM~457_q\)) # (!\bRAM_chip|RAM~2706_combout\ & ((\bRAM_chip|RAM~441_q\))))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~2706_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~2706_combout\,
	datac => \bRAM_chip|RAM~457_q\,
	datad => \bRAM_chip|RAM~441_q\,
	combout => \bRAM_chip|RAM~2707_combout\);

-- Location: LCCOMB_X63_Y31_N0
\bRAM_chip|RAM~2710\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2710_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2707_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2709_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2709_combout\,
	datad => \bRAM_chip|RAM~2707_combout\,
	combout => \bRAM_chip|RAM~2710_combout\);

-- Location: LCCOMB_X63_Y31_N30
\bRAM_chip|RAM~2713\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2713_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2710_combout\ & (\bRAM_chip|RAM~2712_combout\)) # (!\bRAM_chip|RAM~2710_combout\ & ((\bRAM_chip|RAM~2705_combout\))))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2710_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~2712_combout\,
	datac => \bRAM_chip|RAM~2705_combout\,
	datad => \bRAM_chip|RAM~2710_combout\,
	combout => \bRAM_chip|RAM~2713_combout\);

-- Location: LCCOMB_X62_Y28_N16
\bRAM_chip|RAM~3101\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3101_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3101_combout\);

-- Location: LCCOMB_X63_Y30_N20
\bRAM_chip|RAM~2436\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2436_combout\ = (!\testbenk:adress[1]~q\ & (!\testbenk:adress[4]~q\ & (!\testbenk:adress[2]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2436_combout\);

-- Location: LCCOMB_X63_Y30_N26
\bRAM_chip|RAM~3074\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3074_combout\ = (\testbenk:adress[0]~q\ & (\reset_n~input_o\ & (\testbenk:adress[3]~q\ & \bRAM_chip|RAM~2436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2436_combout\,
	combout => \bRAM_chip|RAM~3074_combout\);

-- Location: FF_X62_Y28_N17
\bRAM_chip|RAM~89\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3101_combout\,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~89_q\);

-- Location: LCCOMB_X62_Y31_N24
\bRAM_chip|RAM~2481\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2481_combout\ = (\testbenk:adress[1]~q\ & (!\testbenk:adress[5]~q\ & (!\testbenk:adress[4]~q\ & !\testbenk:adress[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[4]~q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2481_combout\);

-- Location: LCCOMB_X62_Y31_N22
\bRAM_chip|RAM~3077\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3077_combout\ = (\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (\testbenk:adress[0]~q\ & \bRAM_chip|RAM~2481_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~2481_combout\,
	combout => \bRAM_chip|RAM~3077_combout\);

-- Location: FF_X63_Y31_N9
\bRAM_chip|RAM~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~105_q\);

-- Location: LCCOMB_X63_Y34_N16
\bRAM_chip|RAM~2451\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2451_combout\ = (!\testbenk:adress[4]~q\ & (\testbenk:adress[1]~q\ & (!\testbenk:adress[0]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2451_combout\);

-- Location: LCCOMB_X63_Y34_N10
\bRAM_chip|RAM~3075\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3075_combout\ = (\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2451_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2451_combout\,
	combout => \bRAM_chip|RAM~3075_combout\);

-- Location: FF_X63_Y34_N27
\bRAM_chip|RAM~97\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~97_q\);

-- Location: LCCOMB_X69_Y30_N20
\bRAM_chip|RAM~3102\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3102_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3102_combout\);

-- Location: LCCOMB_X63_Y30_N8
\bRAM_chip|RAM~2466\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2466_combout\ = (!\testbenk:adress[1]~q\ & (!\testbenk:adress[4]~q\ & (!\testbenk:adress[0]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2466_combout\);

-- Location: LCCOMB_X63_Y30_N14
\bRAM_chip|RAM~3076\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3076_combout\ = (\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2466_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2466_combout\,
	combout => \bRAM_chip|RAM~3076_combout\);

-- Location: FF_X69_Y30_N21
\bRAM_chip|RAM~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3102_combout\,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~81_q\);

-- Location: LCCOMB_X63_Y34_N26
\bRAM_chip|RAM~2693\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2693_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~97_q\)) # (!\testbenk:adress[1]~q\ & ((!\bRAM_chip|RAM~81_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~97_q\,
	datad => \bRAM_chip|RAM~81_q\,
	combout => \bRAM_chip|RAM~2693_combout\);

-- Location: LCCOMB_X63_Y31_N8
\bRAM_chip|RAM~2694\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2694_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2693_combout\ & ((\bRAM_chip|RAM~105_q\))) # (!\bRAM_chip|RAM~2693_combout\ & (!\bRAM_chip|RAM~89_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2693_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~89_q\,
	datac => \bRAM_chip|RAM~105_q\,
	datad => \bRAM_chip|RAM~2693_combout\,
	combout => \bRAM_chip|RAM~2694_combout\);

-- Location: LCCOMB_X62_Y28_N2
\bRAM_chip|RAM~3105\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3105_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3105_combout\);

-- Location: LCCOMB_X66_Y33_N18
\bRAM_chip|RAM~3016\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3016_combout\ = (!\testbenk:adress[5]~q\ & \testbenk:adress[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3016_combout\);

-- Location: LCCOMB_X62_Y32_N16
\bRAM_chip|RAM~3046\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3046_combout\ = (\testbenk:adress[3]~q\ & (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3011_combout\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3046_combout\);

-- Location: FF_X62_Y28_N3
\bRAM_chip|RAM~129\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3105_combout\,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~129_q\);

-- Location: LCCOMB_X62_Y32_N26
\bRAM_chip|RAM~3049\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3049_combout\ = (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3016_combout\ & (\bRAM_chip|RAM~3011_combout\ & \testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~3016_combout\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3049_combout\);

-- Location: FF_X62_Y31_N1
\bRAM_chip|RAM~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~137_q\);

-- Location: LCCOMB_X61_Y31_N14
\bRAM_chip|RAM~113feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~113feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~113feeder_combout\);

-- Location: LCCOMB_X69_Y32_N26
\bRAM_chip|RAM~3018\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3018_combout\ = (!\testbenk:adress[5]~q\ & !\testbenk:adress[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~3018_combout\);

-- Location: LCCOMB_X70_Y30_N26
\bRAM_chip|RAM~3048\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3048_combout\ = (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3018_combout\ & (\bRAM_chip|RAM~3011_combout\ & \testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~3018_combout\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3048_combout\);

-- Location: FF_X61_Y31_N15
\bRAM_chip|RAM~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~113feeder_combout\,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~113_q\);

-- Location: LCCOMB_X61_Y31_N24
\bRAM_chip|RAM~3106\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3106_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3106_combout\);

-- Location: LCCOMB_X70_Y30_N20
\bRAM_chip|RAM~3047\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3047_combout\ = (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3018_combout\ & (\bRAM_chip|RAM~3011_combout\ & \testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~3018_combout\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3047_combout\);

-- Location: FF_X61_Y31_N25
\bRAM_chip|RAM~121\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3106_combout\,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~121_q\);

-- Location: LCCOMB_X62_Y31_N2
\bRAM_chip|RAM~2700\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2700_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\) # (!\bRAM_chip|RAM~121_q\)))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~113_q\ & ((!\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~113_q\,
	datab => \bRAM_chip|RAM~121_q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2700_combout\);

-- Location: LCCOMB_X62_Y31_N0
\bRAM_chip|RAM~2701\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2701_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2700_combout\ & ((\bRAM_chip|RAM~137_q\))) # (!\bRAM_chip|RAM~2700_combout\ & (!\bRAM_chip|RAM~129_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2700_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~129_q\,
	datac => \bRAM_chip|RAM~137_q\,
	datad => \bRAM_chip|RAM~2700_combout\,
	combout => \bRAM_chip|RAM~2701_combout\);

-- Location: LCCOMB_X65_Y33_N28
\bRAM_chip|RAM~3104\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3104_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3104_combout\);

-- Location: LCCOMB_X62_Y31_N10
\bRAM_chip|RAM~3081\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3081_combout\ = (!\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (\testbenk:adress[0]~q\ & \bRAM_chip|RAM~2481_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~2481_combout\,
	combout => \bRAM_chip|RAM~3081_combout\);

-- Location: FF_X65_Y33_N29
\bRAM_chip|RAM~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3104_combout\,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~41_q\);

-- Location: LCCOMB_X63_Y30_N18
\bRAM_chip|RAM~3078\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3078_combout\ = (\testbenk:adress[0]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[3]~q\ & \bRAM_chip|RAM~2436_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2436_combout\,
	combout => \bRAM_chip|RAM~3078_combout\);

-- Location: FF_X68_Y30_N17
\bRAM_chip|RAM~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~25_q\);

-- Location: LCCOMB_X67_Y30_N28
\bRAM_chip|RAM~33feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~33feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~33feeder_combout\);

-- Location: LCCOMB_X63_Y34_N14
\bRAM_chip|RAM~3079\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3079_combout\ = (\reset_n~input_o\ & (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2451_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2451_combout\,
	combout => \bRAM_chip|RAM~3079_combout\);

-- Location: FF_X67_Y30_N29
\bRAM_chip|RAM~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~33feeder_combout\,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~33_q\);

-- Location: LCCOMB_X63_Y30_N12
\bRAM_chip|RAM~3080\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3080_combout\ = (!\testbenk:adress[3]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2466_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2466_combout\,
	combout => \bRAM_chip|RAM~3080_combout\);

-- Location: FF_X68_Y30_N7
\bRAM_chip|RAM~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~17_q\);

-- Location: LCCOMB_X68_Y30_N6
\bRAM_chip|RAM~2697\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2697_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~33_q\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~17_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~33_q\,
	datac => \bRAM_chip|RAM~17_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2697_combout\);

-- Location: LCCOMB_X68_Y30_N16
\bRAM_chip|RAM~2698\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2698_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2697_combout\ & (!\bRAM_chip|RAM~41_q\)) # (!\bRAM_chip|RAM~2697_combout\ & ((\bRAM_chip|RAM~25_q\))))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2697_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~41_q\,
	datac => \bRAM_chip|RAM~25_q\,
	datad => \bRAM_chip|RAM~2697_combout\,
	combout => \bRAM_chip|RAM~2698_combout\);

-- Location: LCCOMB_X62_Y35_N16
\bRAM_chip|RAM~65feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~65feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~65feeder_combout\);

-- Location: LCCOMB_X67_Y33_N22
\bRAM_chip|RAM~3042\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3042_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3011_combout\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3011_combout\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3042_combout\);

-- Location: FF_X62_Y35_N17
\bRAM_chip|RAM~65\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~65feeder_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~65_q\);

-- Location: LCCOMB_X62_Y35_N6
\bRAM_chip|RAM~73feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~73feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~73feeder_combout\);

-- Location: LCCOMB_X65_Y33_N10
\bRAM_chip|RAM~3045\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3045_combout\ = (\bRAM_chip|RAM~3016_combout\ & (!\testbenk:adress[3]~q\ & (\testbenk:adress[0]~q\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3016_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3045_combout\);

-- Location: FF_X62_Y35_N7
\bRAM_chip|RAM~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~73feeder_combout\,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~73_q\);

-- Location: LCCOMB_X68_Y35_N6
\bRAM_chip|RAM~3103\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3103_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3103_combout\);

-- Location: LCCOMB_X70_Y35_N18
\bRAM_chip|RAM~3044\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3044_combout\ = (\bRAM_chip|RAM~3011_combout\ & (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3018_combout\ & !\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3011_combout\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~3018_combout\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3044_combout\);

-- Location: FF_X68_Y35_N7
\bRAM_chip|RAM~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3103_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~49_q\);

-- Location: LCCOMB_X69_Y35_N10
\bRAM_chip|RAM~3043\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3043_combout\ = (\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3018_combout\ & \bRAM_chip|RAM~3011_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3018_combout\,
	datad => \bRAM_chip|RAM~3011_combout\,
	combout => \bRAM_chip|RAM~3043_combout\);

-- Location: FF_X68_Y35_N13
\bRAM_chip|RAM~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~57_q\);

-- Location: LCCOMB_X68_Y35_N12
\bRAM_chip|RAM~2695\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2695_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~57_q\))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~49_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~49_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~57_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2695_combout\);

-- Location: LCCOMB_X63_Y35_N20
\bRAM_chip|RAM~2696\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2696_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2695_combout\ & ((\bRAM_chip|RAM~73_q\))) # (!\bRAM_chip|RAM~2695_combout\ & (\bRAM_chip|RAM~65_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2695_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~65_q\,
	datab => \bRAM_chip|RAM~73_q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~2695_combout\,
	combout => \bRAM_chip|RAM~2696_combout\);

-- Location: LCCOMB_X63_Y31_N10
\bRAM_chip|RAM~2699\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2699_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2696_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2698_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2698_combout\,
	datad => \bRAM_chip|RAM~2696_combout\,
	combout => \bRAM_chip|RAM~2699_combout\);

-- Location: LCCOMB_X63_Y31_N4
\bRAM_chip|RAM~2702\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2702_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2699_combout\ & ((\bRAM_chip|RAM~2701_combout\))) # (!\bRAM_chip|RAM~2699_combout\ & (\bRAM_chip|RAM~2694_combout\)))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2699_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~2694_combout\,
	datac => \bRAM_chip|RAM~2701_combout\,
	datad => \bRAM_chip|RAM~2699_combout\,
	combout => \bRAM_chip|RAM~2702_combout\);

-- Location: LCCOMB_X70_Y35_N12
\bRAM_chip|RAM~193feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~193feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~193feeder_combout\);

-- Location: LCCOMB_X70_Y34_N22
\bRAM_chip|RAM~3034\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3034_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3017_combout\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3034_combout\);

-- Location: FF_X70_Y35_N13
\bRAM_chip|RAM~193\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~193feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~193_q\);

-- Location: LCCOMB_X70_Y34_N0
\bRAM_chip|RAM~3096\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3096_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3096_combout\);

-- Location: LCCOMB_X70_Y34_N24
\bRAM_chip|RAM~3037\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3037_combout\ = (\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3017_combout\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3037_combout\);

-- Location: FF_X70_Y34_N1
\bRAM_chip|RAM~201\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3096_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~201_q\);

-- Location: LCCOMB_X70_Y35_N26
\bRAM_chip|RAM~3035\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3035_combout\ = (\bRAM_chip|RAM~3018_combout\ & (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3017_combout\ & !\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3018_combout\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3035_combout\);

-- Location: FF_X67_Y35_N25
\bRAM_chip|RAM~185\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~185_q\);

-- Location: LCCOMB_X69_Y35_N24
\bRAM_chip|RAM~3095\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3095_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3095_combout\);

-- Location: LCCOMB_X70_Y35_N8
\bRAM_chip|RAM~3036\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3036_combout\ = (\bRAM_chip|RAM~3018_combout\ & (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3017_combout\ & !\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~3018_combout\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3036_combout\);

-- Location: FF_X69_Y35_N25
\bRAM_chip|RAM~177\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3095_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~177_q\);

-- Location: LCCOMB_X67_Y35_N24
\bRAM_chip|RAM~2683\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2683_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[0]~q\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~185_q\)) # (!\testbenk:adress[0]~q\ & ((!\bRAM_chip|RAM~177_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~185_q\,
	datad => \bRAM_chip|RAM~177_q\,
	combout => \bRAM_chip|RAM~2683_combout\);

-- Location: LCCOMB_X67_Y35_N26
\bRAM_chip|RAM~2684\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2684_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2683_combout\ & ((!\bRAM_chip|RAM~201_q\))) # (!\bRAM_chip|RAM~2683_combout\ & (\bRAM_chip|RAM~193_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2683_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~193_q\,
	datac => \bRAM_chip|RAM~201_q\,
	datad => \bRAM_chip|RAM~2683_combout\,
	combout => \bRAM_chip|RAM~2684_combout\);

-- Location: LCCOMB_X66_Y34_N0
\bRAM_chip|RAM~3100\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3100_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3100_combout\);

-- Location: LCCOMB_X66_Y34_N26
\bRAM_chip|RAM~3041\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3041_combout\ = (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~3017_combout\ & (\testbenk:adress[3]~q\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~3017_combout\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3041_combout\);

-- Location: FF_X66_Y34_N1
\bRAM_chip|RAM~265\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3100_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~265_q\);

-- Location: LCCOMB_X65_Y33_N0
\bRAM_chip|RAM~3038\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3038_combout\ = (!\testbenk:adress[0]~q\ & (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3017_combout\ & \bRAM_chip|RAM~3016_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~3017_combout\,
	datad => \bRAM_chip|RAM~3016_combout\,
	combout => \bRAM_chip|RAM~3038_combout\);

-- Location: FF_X62_Y33_N5
\bRAM_chip|RAM~257\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~257_q\);

-- Location: LCCOMB_X62_Y33_N18
\bRAM_chip|RAM~3099\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3099_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3099_combout\);

-- Location: LCCOMB_X69_Y29_N8
\bRAM_chip|RAM~3040\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3040_combout\ = (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3018_combout\ & (!\testbenk:adress[0]~q\ & \bRAM_chip|RAM~3017_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~3018_combout\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~3017_combout\,
	combout => \bRAM_chip|RAM~3040_combout\);

-- Location: FF_X62_Y33_N19
\bRAM_chip|RAM~241\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3099_combout\,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~241_q\);

-- Location: LCCOMB_X61_Y33_N16
\bRAM_chip|RAM~249feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~249feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~249feeder_combout\);

-- Location: LCCOMB_X69_Y34_N18
\bRAM_chip|RAM~3039\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3039_combout\ = (\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~3017_combout\ & (\bRAM_chip|RAM~3018_combout\ & \testbenk:adress[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~3017_combout\,
	datac => \bRAM_chip|RAM~3018_combout\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~3039_combout\);

-- Location: FF_X61_Y33_N17
\bRAM_chip|RAM~249\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~249feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~249_q\);

-- Location: LCCOMB_X62_Y33_N28
\bRAM_chip|RAM~2690\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2690_combout\ = (\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~249_q\) # (\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~241_q\ & ((!\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~241_q\,
	datac => \bRAM_chip|RAM~249_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2690_combout\);

-- Location: LCCOMB_X62_Y33_N4
\bRAM_chip|RAM~2691\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2691_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2690_combout\ & (!\bRAM_chip|RAM~265_q\)) # (!\bRAM_chip|RAM~2690_combout\ & ((\bRAM_chip|RAM~257_q\))))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2690_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~265_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~257_q\,
	datad => \bRAM_chip|RAM~2690_combout\,
	combout => \bRAM_chip|RAM~2691_combout\);

-- Location: LCCOMB_X63_Y29_N12
\bRAM_chip|RAM~153feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~153feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~153feeder_combout\);

-- Location: LCCOMB_X66_Y30_N28
\bRAM_chip|RAM~2316\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2316_combout\ = (!\testbenk:adress[1]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2316_combout\);

-- Location: LCCOMB_X66_Y30_N30
\bRAM_chip|RAM~3070\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3070_combout\ = (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2316_combout\ & (\testbenk:adress[0]~q\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~2316_combout\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3070_combout\);

-- Location: FF_X63_Y29_N13
\bRAM_chip|RAM~153\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~153feeder_combout\,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~153_q\);

-- Location: LCCOMB_X66_Y30_N4
\bRAM_chip|RAM~2361\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2361_combout\ = (\testbenk:adress[1]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2361_combout\);

-- Location: LCCOMB_X66_Y30_N8
\bRAM_chip|RAM~3073\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3073_combout\ = (!\testbenk:adress[3]~q\ & (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~2361_combout\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2361_combout\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3073_combout\);

-- Location: FF_X63_Y29_N23
\bRAM_chip|RAM~169\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~169_q\);

-- Location: LCCOMB_X69_Y32_N20
\bRAM_chip|RAM~3098\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3098_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3098_combout\);

-- Location: LCCOMB_X63_Y30_N28
\bRAM_chip|RAM~2391\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2391_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & (\testbenk:adress[1]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2391_combout\);

-- Location: LCCOMB_X63_Y30_N22
\bRAM_chip|RAM~3071\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3071_combout\ = (\testbenk:adress[4]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2391_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2391_combout\,
	combout => \bRAM_chip|RAM~3071_combout\);

-- Location: FF_X69_Y32_N21
\bRAM_chip|RAM~161\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3098_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~161_q\);

-- Location: LCCOMB_X66_Y30_N2
\bRAM_chip|RAM~2406\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2406_combout\ = (!\testbenk:adress[1]~q\ & (!\testbenk:adress[0]~q\ & (!\testbenk:adress[3]~q\ & !\testbenk:adress[5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2406_combout\);

-- Location: LCCOMB_X66_Y30_N12
\bRAM_chip|RAM~3072\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3072_combout\ = (\testbenk:adress[4]~q\ & (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & \bRAM_chip|RAM~2406_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \reset_n~input_o\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2406_combout\,
	combout => \bRAM_chip|RAM~3072_combout\);

-- Location: FF_X69_Y29_N5
\bRAM_chip|RAM~145\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~145_q\);

-- Location: LCCOMB_X69_Y29_N4
\bRAM_chip|RAM~2687\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2687_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~161_q\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~145_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~161_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~145_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2687_combout\);

-- Location: LCCOMB_X63_Y29_N22
\bRAM_chip|RAM~2688\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2688_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2687_combout\ & ((\bRAM_chip|RAM~169_q\))) # (!\bRAM_chip|RAM~2687_combout\ & (\bRAM_chip|RAM~153_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2687_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~153_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~169_q\,
	datad => \bRAM_chip|RAM~2687_combout\,
	combout => \bRAM_chip|RAM~2688_combout\);

-- Location: LCCOMB_X73_Y31_N20
\bRAM_chip|RAM~217feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~217feeder_combout\ = \bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~217feeder_combout\);

-- Location: LCCOMB_X67_Y30_N26
\bRAM_chip|RAM~3066\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3066_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[3]~q\ & (\testbenk:adress[4]~q\ & \bRAM_chip|RAM~2316_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[4]~q\,
	datad => \bRAM_chip|RAM~2316_combout\,
	combout => \bRAM_chip|RAM~3066_combout\);

-- Location: FF_X73_Y31_N21
\bRAM_chip|RAM~217\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~217feeder_combout\,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~217_q\);

-- Location: LCCOMB_X66_Y30_N26
\bRAM_chip|RAM~3069\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3069_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~2361_combout\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2361_combout\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3069_combout\);

-- Location: FF_X63_Y31_N7
\bRAM_chip|RAM~233\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~233_q\);

-- Location: LCCOMB_X73_Y34_N16
\bRAM_chip|RAM~3097\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3097_combout\ = !\bRAM_chip|RAM~3009_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3009_combout\,
	combout => \bRAM_chip|RAM~3097_combout\);

-- Location: LCCOMB_X68_Y29_N26
\bRAM_chip|RAM~2346\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2346_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[5]~q\ & (\testbenk:adress[3]~q\ & !\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2346_combout\);

-- Location: LCCOMB_X68_Y29_N8
\bRAM_chip|RAM~3068\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3068_combout\ = (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2346_combout\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2346_combout\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3068_combout\);

-- Location: FF_X73_Y34_N17
\bRAM_chip|RAM~209\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3097_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~209_q\);

-- Location: LCCOMB_X63_Y32_N22
\bRAM_chip|RAM~2331\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2331_combout\ = (!\testbenk:adress[0]~q\ & (!\testbenk:adress[5]~q\ & (\testbenk:adress[1]~q\ & \testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2331_combout\);

-- Location: LCCOMB_X63_Y32_N4
\bRAM_chip|RAM~3067\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3067_combout\ = (\reset_n~input_o\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2331_combout\ & \testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2331_combout\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~3067_combout\);

-- Location: FF_X68_Y34_N9
\bRAM_chip|RAM~225\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3009_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~225_q\);

-- Location: LCCOMB_X68_Y34_N8
\bRAM_chip|RAM~2685\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2685_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~225_q\))) # (!\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~209_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~209_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~225_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2685_combout\);

-- Location: LCCOMB_X63_Y31_N6
\bRAM_chip|RAM~2686\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2686_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2685_combout\ & ((\bRAM_chip|RAM~233_q\))) # (!\bRAM_chip|RAM~2685_combout\ & (\bRAM_chip|RAM~217_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2685_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~217_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~233_q\,
	datad => \bRAM_chip|RAM~2685_combout\,
	combout => \bRAM_chip|RAM~2686_combout\);

-- Location: LCCOMB_X63_Y31_N20
\bRAM_chip|RAM~2689\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2689_combout\ = (\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\) # ((\bRAM_chip|RAM~2686_combout\)))) # (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2688_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2688_combout\,
	datad => \bRAM_chip|RAM~2686_combout\,
	combout => \bRAM_chip|RAM~2689_combout\);

-- Location: LCCOMB_X63_Y31_N2
\bRAM_chip|RAM~2692\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2692_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2689_combout\ & ((\bRAM_chip|RAM~2691_combout\))) # (!\bRAM_chip|RAM~2689_combout\ & (\bRAM_chip|RAM~2684_combout\)))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2689_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2684_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2691_combout\,
	datad => \bRAM_chip|RAM~2689_combout\,
	combout => \bRAM_chip|RAM~2692_combout\);

-- Location: LCCOMB_X63_Y31_N18
\bRAM_chip|RAM~2703\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2703_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~2692_combout\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2702_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2702_combout\,
	datad => \bRAM_chip|RAM~2692_combout\,
	combout => \bRAM_chip|RAM~2703_combout\);

-- Location: LCCOMB_X63_Y31_N16
\bRAM_chip|RAM~2714\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2714_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2703_combout\ & ((\bRAM_chip|RAM~2713_combout\))) # (!\bRAM_chip|RAM~2703_combout\ & (\bRAM_chip|RAM~2682_combout\)))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~2703_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~2682_combout\,
	datac => \bRAM_chip|RAM~2713_combout\,
	datad => \bRAM_chip|RAM~2703_combout\,
	combout => \bRAM_chip|RAM~2714_combout\);

-- Location: LCCOMB_X60_Y31_N8
\bRAM_chip|s_Data_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~0_combout\ = (\SW[17]~input_o\ & (\reset_n~input_o\ & \bRAM_chip|RAM~2714_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \reset_n~input_o\,
	datad => \bRAM_chip|RAM~2714_combout\,
	combout => \bRAM_chip|s_Data_out~0_combout\);

-- Location: FF_X60_Y31_N9
\bRAM_chip|s_Data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(0));

-- Location: LCCOMB_X68_Y32_N30
\bRAM_chip|RAM~3019\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3019_combout\ = (\SW[17]~input_o\ & \bRAM_chip|RAM~2756_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2756_combout\,
	combout => \bRAM_chip|RAM~3019_combout\);

-- Location: LCCOMB_X66_Y32_N8
\bRAM_chip|RAM~3117\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3117_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3117_combout\);

-- Location: FF_X66_Y32_N9
\bRAM_chip|RAM~394\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3117_combout\,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~394_q\);

-- Location: FF_X68_Y32_N31
\bRAM_chip|RAM~522\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3019_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~522_q\);

-- Location: FF_X66_Y34_N25
\bRAM_chip|RAM~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~138_q\);

-- Location: LCCOMB_X66_Y34_N6
\bRAM_chip|RAM~266feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~266feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~266feeder_combout\);

-- Location: FF_X66_Y34_N7
\bRAM_chip|RAM~266\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~266feeder_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~266_q\);

-- Location: LCCOMB_X66_Y34_N24
\bRAM_chip|RAM~2753\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2753_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~266_q\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~138_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~138_q\,
	datad => \bRAM_chip|RAM~266_q\,
	combout => \bRAM_chip|RAM~2753_combout\);

-- Location: LCCOMB_X68_Y32_N12
\bRAM_chip|RAM~2754\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2754_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2753_combout\ & ((\bRAM_chip|RAM~522_q\))) # (!\bRAM_chip|RAM~2753_combout\ & (!\bRAM_chip|RAM~394_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2753_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~394_q\,
	datac => \bRAM_chip|RAM~522_q\,
	datad => \bRAM_chip|RAM~2753_combout\,
	combout => \bRAM_chip|RAM~2754_combout\);

-- Location: LCCOMB_X70_Y31_N2
\bRAM_chip|RAM~234feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~234feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~234feeder_combout\);

-- Location: FF_X70_Y31_N3
\bRAM_chip|RAM~234\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~234feeder_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~234_q\);

-- Location: FF_X70_Y31_N1
\bRAM_chip|RAM~490\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~490_q\);

-- Location: LCCOMB_X72_Y31_N28
\bRAM_chip|RAM~3114\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3114_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3114_combout\);

-- Location: FF_X72_Y31_N29
\bRAM_chip|RAM~362\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3114_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~362_q\);

-- Location: FF_X72_Y31_N23
\bRAM_chip|RAM~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~106_q\);

-- Location: LCCOMB_X72_Y31_N22
\bRAM_chip|RAM~2746\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2746_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)) # (!\bRAM_chip|RAM~362_q\))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~106_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~362_q\,
	datac => \bRAM_chip|RAM~106_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2746_combout\);

-- Location: LCCOMB_X70_Y31_N0
\bRAM_chip|RAM~2747\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2747_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2746_combout\ & ((\bRAM_chip|RAM~490_q\))) # (!\bRAM_chip|RAM~2746_combout\ & (\bRAM_chip|RAM~234_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2746_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~234_q\,
	datac => \bRAM_chip|RAM~490_q\,
	datad => \bRAM_chip|RAM~2746_combout\,
	combout => \bRAM_chip|RAM~2747_combout\);

-- Location: LCCOMB_X67_Y33_N6
\bRAM_chip|RAM~3115\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3115_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3115_combout\);

-- Location: FF_X67_Y33_N7
\bRAM_chip|RAM~170\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3115_combout\,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~170_q\);

-- Location: FF_X65_Y31_N19
\bRAM_chip|RAM~426\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~426_q\);

-- Location: LCCOMB_X65_Y33_N20
\bRAM_chip|RAM~3116\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3116_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3116_combout\);

-- Location: FF_X65_Y33_N21
\bRAM_chip|RAM~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3116_combout\,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~42_q\);

-- Location: FF_X65_Y31_N25
\bRAM_chip|RAM~298\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~298_q\);

-- Location: LCCOMB_X65_Y31_N24
\bRAM_chip|RAM~2750\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2750_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~298_q\))) # (!\testbenk:adress[5]~q\ & (!\bRAM_chip|RAM~42_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~42_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~298_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2750_combout\);

-- Location: LCCOMB_X65_Y31_N18
\bRAM_chip|RAM~2751\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2751_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2750_combout\ & ((\bRAM_chip|RAM~426_q\))) # (!\bRAM_chip|RAM~2750_combout\ & (!\bRAM_chip|RAM~170_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2750_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~170_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~426_q\,
	datad => \bRAM_chip|RAM~2750_combout\,
	combout => \bRAM_chip|RAM~2751_combout\);

-- Location: LCCOMB_X66_Y32_N14
\bRAM_chip|RAM~330feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~330feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~330feeder_combout\);

-- Location: FF_X66_Y32_N15
\bRAM_chip|RAM~330\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~330feeder_combout\,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~330_q\);

-- Location: LCCOMB_X65_Y34_N4
\bRAM_chip|RAM~458feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~458feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~458feeder_combout\);

-- Location: FF_X65_Y34_N5
\bRAM_chip|RAM~458\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~458feeder_combout\,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~458_q\);

-- Location: LCCOMB_X70_Y34_N28
\bRAM_chip|RAM~202feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~202feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~202feeder_combout\);

-- Location: FF_X70_Y34_N29
\bRAM_chip|RAM~202\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~202feeder_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~202_q\);

-- Location: FF_X69_Y33_N7
\bRAM_chip|RAM~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~74_q\);

-- Location: LCCOMB_X69_Y33_N6
\bRAM_chip|RAM~2748\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2748_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~202_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~74_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~202_q\,
	datac => \bRAM_chip|RAM~74_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2748_combout\);

-- Location: LCCOMB_X69_Y33_N8
\bRAM_chip|RAM~2749\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2749_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2748_combout\ & ((\bRAM_chip|RAM~458_q\))) # (!\bRAM_chip|RAM~2748_combout\ & (\bRAM_chip|RAM~330_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2748_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~330_q\,
	datac => \bRAM_chip|RAM~458_q\,
	datad => \bRAM_chip|RAM~2748_combout\,
	combout => \bRAM_chip|RAM~2749_combout\);

-- Location: LCCOMB_X68_Y32_N0
\bRAM_chip|RAM~2752\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2752_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2749_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2751_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2751_combout\,
	datad => \bRAM_chip|RAM~2749_combout\,
	combout => \bRAM_chip|RAM~2752_combout\);

-- Location: LCCOMB_X68_Y32_N6
\bRAM_chip|RAM~2755\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2755_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2752_combout\ & (\bRAM_chip|RAM~2754_combout\)) # (!\bRAM_chip|RAM~2752_combout\ & ((\bRAM_chip|RAM~2747_combout\))))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2752_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2754_combout\,
	datab => \bRAM_chip|RAM~2747_combout\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2752_combout\,
	combout => \bRAM_chip|RAM~2755_combout\);

-- Location: LCCOMB_X68_Y32_N24
\bRAM_chip|RAM~3107\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3107_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3107_combout\);

-- Location: FF_X68_Y32_N25
\bRAM_chip|RAM~322\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3107_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~322_q\);

-- Location: FF_X65_Y34_N31
\bRAM_chip|RAM~450\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~450_q\);

-- Location: LCCOMB_X70_Y34_N30
\bRAM_chip|RAM~194feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~194feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~194feeder_combout\);

-- Location: FF_X70_Y34_N31
\bRAM_chip|RAM~194\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~194feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~194_q\);

-- Location: FF_X69_Y33_N13
\bRAM_chip|RAM~66\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~66_q\);

-- Location: LCCOMB_X69_Y33_N12
\bRAM_chip|RAM~2715\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2715_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~194_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~66_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~194_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~66_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2715_combout\);

-- Location: LCCOMB_X65_Y34_N30
\bRAM_chip|RAM~2716\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2716_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2715_combout\ & ((\bRAM_chip|RAM~450_q\))) # (!\bRAM_chip|RAM~2715_combout\ & (!\bRAM_chip|RAM~322_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2715_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~322_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~450_q\,
	datad => \bRAM_chip|RAM~2715_combout\,
	combout => \bRAM_chip|RAM~2716_combout\);

-- Location: LCCOMB_X62_Y32_N0
\bRAM_chip|RAM~386feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~386feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~386feeder_combout\);

-- Location: FF_X62_Y32_N1
\bRAM_chip|RAM~386\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~386feeder_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~386_q\);

-- Location: LCCOMB_X65_Y29_N18
\bRAM_chip|RAM~514feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~514feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~514feeder_combout\);

-- Location: FF_X65_Y29_N19
\bRAM_chip|RAM~514\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~514feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~514_q\);

-- Location: LCCOMB_X70_Y32_N0
\bRAM_chip|RAM~258feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~258feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~258feeder_combout\);

-- Location: FF_X70_Y32_N1
\bRAM_chip|RAM~258\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~258feeder_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~258_q\);

-- Location: FF_X70_Y32_N23
\bRAM_chip|RAM~130\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~130_q\);

-- Location: LCCOMB_X70_Y32_N22
\bRAM_chip|RAM~2722\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2722_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~258_q\) # ((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~130_q\ & !\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~258_q\,
	datac => \bRAM_chip|RAM~130_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2722_combout\);

-- Location: LCCOMB_X69_Y32_N12
\bRAM_chip|RAM~2723\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2723_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2722_combout\ & ((\bRAM_chip|RAM~514_q\))) # (!\bRAM_chip|RAM~2722_combout\ & (\bRAM_chip|RAM~386_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2722_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~386_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~514_q\,
	datad => \bRAM_chip|RAM~2722_combout\,
	combout => \bRAM_chip|RAM~2723_combout\);

-- Location: LCCOMB_X69_Y32_N2
\bRAM_chip|RAM~162feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~162feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~162feeder_combout\);

-- Location: FF_X69_Y32_N3
\bRAM_chip|RAM~162\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~162feeder_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~162_q\);

-- Location: FF_X66_Y33_N7
\bRAM_chip|RAM~418\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~418_q\);

-- Location: FF_X66_Y33_N17
\bRAM_chip|RAM~290\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~290_q\);

-- Location: LCCOMB_X65_Y33_N22
\bRAM_chip|RAM~34feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~34feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~34feeder_combout\);

-- Location: FF_X65_Y33_N23
\bRAM_chip|RAM~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~34feeder_combout\,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~34_q\);

-- Location: LCCOMB_X66_Y33_N16
\bRAM_chip|RAM~2719\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2719_combout\ = (\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\) # ((\bRAM_chip|RAM~290_q\)))) # (!\testbenk:adress[5]~q\ & (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~34_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~290_q\,
	datad => \bRAM_chip|RAM~34_q\,
	combout => \bRAM_chip|RAM~2719_combout\);

-- Location: LCCOMB_X66_Y33_N6
\bRAM_chip|RAM~2720\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2720_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2719_combout\ & ((\bRAM_chip|RAM~418_q\))) # (!\bRAM_chip|RAM~2719_combout\ & (\bRAM_chip|RAM~162_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2719_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~162_q\,
	datac => \bRAM_chip|RAM~418_q\,
	datad => \bRAM_chip|RAM~2719_combout\,
	combout => \bRAM_chip|RAM~2720_combout\);

-- Location: LCCOMB_X63_Y32_N18
\bRAM_chip|RAM~3108\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3108_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3108_combout\);

-- Location: FF_X63_Y32_N19
\bRAM_chip|RAM~226\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3108_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~226_q\);

-- Location: FF_X63_Y32_N13
\bRAM_chip|RAM~482\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~482_q\);

-- Location: LCCOMB_X63_Y34_N4
\bRAM_chip|RAM~354feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~354feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~354feeder_combout\);

-- Location: FF_X63_Y34_N5
\bRAM_chip|RAM~354\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~354feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~354_q\);

-- Location: FF_X63_Y34_N23
\bRAM_chip|RAM~98\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~98_q\);

-- Location: LCCOMB_X63_Y34_N22
\bRAM_chip|RAM~2717\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2717_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~354_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~98_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~354_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~98_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2717_combout\);

-- Location: LCCOMB_X63_Y32_N12
\bRAM_chip|RAM~2718\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2718_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2717_combout\ & ((\bRAM_chip|RAM~482_q\))) # (!\bRAM_chip|RAM~2717_combout\ & (!\bRAM_chip|RAM~226_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2717_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~226_q\,
	datac => \bRAM_chip|RAM~482_q\,
	datad => \bRAM_chip|RAM~2717_combout\,
	combout => \bRAM_chip|RAM~2718_combout\);

-- Location: LCCOMB_X68_Y32_N18
\bRAM_chip|RAM~2721\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2721_combout\ = (\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\) # ((\bRAM_chip|RAM~2718_combout\)))) # (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2720_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2720_combout\,
	datad => \bRAM_chip|RAM~2718_combout\,
	combout => \bRAM_chip|RAM~2721_combout\);

-- Location: LCCOMB_X68_Y32_N4
\bRAM_chip|RAM~2724\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2724_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2721_combout\ & ((\bRAM_chip|RAM~2723_combout\))) # (!\bRAM_chip|RAM~2721_combout\ & (\bRAM_chip|RAM~2716_combout\)))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2721_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2716_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2723_combout\,
	datad => \bRAM_chip|RAM~2721_combout\,
	combout => \bRAM_chip|RAM~2724_combout\);

-- Location: LCCOMB_X72_Y32_N20
\bRAM_chip|RAM~218feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~218feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~218feeder_combout\);

-- Location: FF_X72_Y32_N21
\bRAM_chip|RAM~218\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~218feeder_combout\,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~218_q\);

-- Location: FF_X67_Y32_N27
\bRAM_chip|RAM~474\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~474_q\);

-- Location: LCCOMB_X65_Y30_N20
\bRAM_chip|RAM~3109\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3109_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3109_combout\);

-- Location: FF_X65_Y30_N21
\bRAM_chip|RAM~346\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3109_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~346_q\);

-- Location: FF_X66_Y30_N17
\bRAM_chip|RAM~90\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~90_q\);

-- Location: LCCOMB_X66_Y30_N16
\bRAM_chip|RAM~2725\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2725_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (!\bRAM_chip|RAM~346_q\)) # (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~90_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~346_q\,
	datac => \bRAM_chip|RAM~90_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2725_combout\);

-- Location: LCCOMB_X67_Y32_N26
\bRAM_chip|RAM~2726\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2726_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2725_combout\ & ((\bRAM_chip|RAM~474_q\))) # (!\bRAM_chip|RAM~2725_combout\ & (\bRAM_chip|RAM~218_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2725_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~218_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~474_q\,
	datad => \bRAM_chip|RAM~2725_combout\,
	combout => \bRAM_chip|RAM~2726_combout\);

-- Location: LCCOMB_X67_Y33_N24
\bRAM_chip|RAM~154feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~154feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~154feeder_combout\);

-- Location: FF_X67_Y33_N25
\bRAM_chip|RAM~154\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~154feeder_combout\,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~154_q\);

-- Location: FF_X67_Y32_N17
\bRAM_chip|RAM~410\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~410_q\);

-- Location: FF_X68_Y30_N5
\bRAM_chip|RAM~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~26_q\);

-- Location: LCCOMB_X70_Y33_N20
\bRAM_chip|RAM~282feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~282feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~282feeder_combout\);

-- Location: FF_X70_Y33_N21
\bRAM_chip|RAM~282\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~282feeder_combout\,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~282_q\);

-- Location: LCCOMB_X68_Y30_N4
\bRAM_chip|RAM~2729\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2729_combout\ = (\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\) # ((\bRAM_chip|RAM~282_q\)))) # (!\testbenk:adress[5]~q\ & (!\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~26_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~26_q\,
	datad => \bRAM_chip|RAM~282_q\,
	combout => \bRAM_chip|RAM~2729_combout\);

-- Location: LCCOMB_X67_Y32_N16
\bRAM_chip|RAM~2730\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2730_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2729_combout\ & ((\bRAM_chip|RAM~410_q\))) # (!\bRAM_chip|RAM~2729_combout\ & (\bRAM_chip|RAM~154_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2729_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~154_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~410_q\,
	datad => \bRAM_chip|RAM~2729_combout\,
	combout => \bRAM_chip|RAM~2730_combout\);

-- Location: LCCOMB_X65_Y35_N30
\bRAM_chip|RAM~314feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~314feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~314feeder_combout\);

-- Location: FF_X65_Y35_N31
\bRAM_chip|RAM~314\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~314feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~314_q\);

-- Location: FF_X67_Y35_N29
\bRAM_chip|RAM~442\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~442_q\);

-- Location: LCCOMB_X67_Y35_N2
\bRAM_chip|RAM~186feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~186feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~186feeder_combout\);

-- Location: FF_X67_Y35_N3
\bRAM_chip|RAM~186\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~186feeder_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~186_q\);

-- Location: FF_X68_Y35_N25
\bRAM_chip|RAM~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~58_q\);

-- Location: LCCOMB_X68_Y35_N24
\bRAM_chip|RAM~2727\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2727_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~186_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~58_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~186_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~58_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2727_combout\);

-- Location: LCCOMB_X67_Y35_N28
\bRAM_chip|RAM~2728\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2728_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2727_combout\ & ((\bRAM_chip|RAM~442_q\))) # (!\bRAM_chip|RAM~2727_combout\ & (\bRAM_chip|RAM~314_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2727_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~314_q\,
	datac => \bRAM_chip|RAM~442_q\,
	datad => \bRAM_chip|RAM~2727_combout\,
	combout => \bRAM_chip|RAM~2728_combout\);

-- Location: LCCOMB_X68_Y32_N14
\bRAM_chip|RAM~2731\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2731_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2728_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2730_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2730_combout\,
	datad => \bRAM_chip|RAM~2728_combout\,
	combout => \bRAM_chip|RAM~2731_combout\);

-- Location: LCCOMB_X69_Y31_N14
\bRAM_chip|RAM~378feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~378feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~378feeder_combout\);

-- Location: FF_X69_Y31_N15
\bRAM_chip|RAM~378\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~378feeder_combout\,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~378_q\);

-- Location: FF_X70_Y30_N29
\bRAM_chip|RAM~506\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~506_q\);

-- Location: FF_X69_Y31_N21
\bRAM_chip|RAM~122\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~122_q\);

-- Location: LCCOMB_X69_Y34_N12
\bRAM_chip|RAM~250feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~250feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~250feeder_combout\);

-- Location: FF_X69_Y34_N13
\bRAM_chip|RAM~250\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~250feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~250_q\);

-- Location: LCCOMB_X69_Y31_N20
\bRAM_chip|RAM~2732\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2732_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~250_q\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~122_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~122_q\,
	datad => \bRAM_chip|RAM~250_q\,
	combout => \bRAM_chip|RAM~2732_combout\);

-- Location: LCCOMB_X70_Y30_N28
\bRAM_chip|RAM~2733\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2733_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2732_combout\ & ((\bRAM_chip|RAM~506_q\))) # (!\bRAM_chip|RAM~2732_combout\ & (\bRAM_chip|RAM~378_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2732_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~378_q\,
	datac => \bRAM_chip|RAM~506_q\,
	datad => \bRAM_chip|RAM~2732_combout\,
	combout => \bRAM_chip|RAM~2733_combout\);

-- Location: LCCOMB_X68_Y32_N8
\bRAM_chip|RAM~2734\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2734_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2731_combout\ & ((\bRAM_chip|RAM~2733_combout\))) # (!\bRAM_chip|RAM~2731_combout\ & (\bRAM_chip|RAM~2726_combout\)))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2731_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2726_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2731_combout\,
	datad => \bRAM_chip|RAM~2733_combout\,
	combout => \bRAM_chip|RAM~2734_combout\);

-- Location: LCCOMB_X67_Y29_N18
\bRAM_chip|RAM~3112\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3112_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3112_combout\);

-- Location: FF_X67_Y29_N19
\bRAM_chip|RAM~370\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3112_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~370_q\);

-- Location: FF_X67_Y30_N13
\bRAM_chip|RAM~498\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~498_q\);

-- Location: LCCOMB_X69_Y29_N0
\bRAM_chip|RAM~3113\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3113_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3113_combout\);

-- Location: FF_X69_Y29_N1
\bRAM_chip|RAM~242\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3113_combout\,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~242_q\);

-- Location: FF_X69_Y30_N25
\bRAM_chip|RAM~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~114_q\);

-- Location: LCCOMB_X69_Y30_N24
\bRAM_chip|RAM~2742\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2742_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)) # (!\bRAM_chip|RAM~242_q\))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~114_q\ & !\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~242_q\,
	datac => \bRAM_chip|RAM~114_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2742_combout\);

-- Location: LCCOMB_X67_Y30_N12
\bRAM_chip|RAM~2743\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2743_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2742_combout\ & ((\bRAM_chip|RAM~498_q\))) # (!\bRAM_chip|RAM~2742_combout\ & (!\bRAM_chip|RAM~370_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2742_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~370_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~498_q\,
	datad => \bRAM_chip|RAM~2742_combout\,
	combout => \bRAM_chip|RAM~2743_combout\);

-- Location: LCCOMB_X65_Y35_N16
\bRAM_chip|RAM~306feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~306feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~306feeder_combout\);

-- Location: FF_X65_Y35_N17
\bRAM_chip|RAM~306\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~306feeder_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~306_q\);

-- Location: FF_X69_Y35_N21
\bRAM_chip|RAM~434\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~434_q\);

-- Location: LCCOMB_X68_Y35_N26
\bRAM_chip|RAM~50feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~50feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~50feeder_combout\);

-- Location: FF_X68_Y35_N27
\bRAM_chip|RAM~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~50feeder_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~50_q\);

-- Location: LCCOMB_X69_Y35_N16
\bRAM_chip|RAM~3110\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3110_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3110_combout\);

-- Location: FF_X69_Y35_N17
\bRAM_chip|RAM~178\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3110_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~178_q\);

-- Location: LCCOMB_X69_Y35_N18
\bRAM_chip|RAM~2735\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2735_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((!\bRAM_chip|RAM~178_q\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~50_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~50_q\,
	datad => \bRAM_chip|RAM~178_q\,
	combout => \bRAM_chip|RAM~2735_combout\);

-- Location: LCCOMB_X69_Y35_N20
\bRAM_chip|RAM~2736\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2736_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2735_combout\ & ((\bRAM_chip|RAM~434_q\))) # (!\bRAM_chip|RAM~2735_combout\ & (\bRAM_chip|RAM~306_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2735_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~306_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~434_q\,
	datad => \bRAM_chip|RAM~2735_combout\,
	combout => \bRAM_chip|RAM~2736_combout\);

-- Location: LCCOMB_X69_Y29_N6
\bRAM_chip|RAM~3111\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3111_combout\ = !\bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~3111_combout\);

-- Location: FF_X69_Y29_N7
\bRAM_chip|RAM~146\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3111_combout\,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~146_q\);

-- Location: FF_X68_Y31_N11
\bRAM_chip|RAM~402\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~402_q\);

-- Location: FF_X67_Y31_N21
\bRAM_chip|RAM~274\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~274_q\);

-- Location: FF_X68_Y30_N31
\bRAM_chip|RAM~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~18_q\);

-- Location: LCCOMB_X68_Y30_N30
\bRAM_chip|RAM~2739\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2739_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~274_q\)) # (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~18_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~274_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~18_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2739_combout\);

-- Location: LCCOMB_X68_Y31_N10
\bRAM_chip|RAM~2740\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2740_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2739_combout\ & ((\bRAM_chip|RAM~402_q\))) # (!\bRAM_chip|RAM~2739_combout\ & (!\bRAM_chip|RAM~146_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2739_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~146_q\,
	datac => \bRAM_chip|RAM~402_q\,
	datad => \bRAM_chip|RAM~2739_combout\,
	combout => \bRAM_chip|RAM~2740_combout\);

-- Location: LCCOMB_X68_Y29_N28
\bRAM_chip|RAM~210feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~210feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~210feeder_combout\);

-- Location: FF_X68_Y29_N29
\bRAM_chip|RAM~210\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~210feeder_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~210_q\);

-- Location: FF_X68_Y29_N3
\bRAM_chip|RAM~466\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~466_q\);

-- Location: FF_X69_Y30_N27
\bRAM_chip|RAM~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3019_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~82_q\);

-- Location: LCCOMB_X67_Y29_N4
\bRAM_chip|RAM~338feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~338feeder_combout\ = \bRAM_chip|RAM~3019_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3019_combout\,
	combout => \bRAM_chip|RAM~338feeder_combout\);

-- Location: FF_X67_Y29_N5
\bRAM_chip|RAM~338\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~338feeder_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~338_q\);

-- Location: LCCOMB_X69_Y30_N26
\bRAM_chip|RAM~2737\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2737_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~338_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~82_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~82_q\,
	datad => \bRAM_chip|RAM~338_q\,
	combout => \bRAM_chip|RAM~2737_combout\);

-- Location: LCCOMB_X68_Y29_N2
\bRAM_chip|RAM~2738\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2738_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2737_combout\ & ((\bRAM_chip|RAM~466_q\))) # (!\bRAM_chip|RAM~2737_combout\ & (\bRAM_chip|RAM~210_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2737_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~210_q\,
	datac => \bRAM_chip|RAM~466_q\,
	datad => \bRAM_chip|RAM~2737_combout\,
	combout => \bRAM_chip|RAM~2738_combout\);

-- Location: LCCOMB_X68_Y32_N2
\bRAM_chip|RAM~2741\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2741_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2738_combout\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2740_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2740_combout\,
	datad => \bRAM_chip|RAM~2738_combout\,
	combout => \bRAM_chip|RAM~2741_combout\);

-- Location: LCCOMB_X68_Y32_N28
\bRAM_chip|RAM~2744\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2744_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2741_combout\ & (\bRAM_chip|RAM~2743_combout\)) # (!\bRAM_chip|RAM~2741_combout\ & ((\bRAM_chip|RAM~2736_combout\))))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2741_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2743_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2736_combout\,
	datad => \bRAM_chip|RAM~2741_combout\,
	combout => \bRAM_chip|RAM~2744_combout\);

-- Location: LCCOMB_X68_Y32_N10
\bRAM_chip|RAM~2745\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2745_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~2734_combout\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2744_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2734_combout\,
	datad => \bRAM_chip|RAM~2744_combout\,
	combout => \bRAM_chip|RAM~2745_combout\);

-- Location: LCCOMB_X68_Y32_N20
\bRAM_chip|RAM~2756\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2756_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2745_combout\ & (\bRAM_chip|RAM~2755_combout\)) # (!\bRAM_chip|RAM~2745_combout\ & ((\bRAM_chip|RAM~2724_combout\))))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2745_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2755_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2724_combout\,
	datad => \bRAM_chip|RAM~2745_combout\,
	combout => \bRAM_chip|RAM~2756_combout\);

-- Location: LCCOMB_X65_Y32_N24
\bRAM_chip|s_Data_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~1_combout\ = (\SW[17]~input_o\ & (\bRAM_chip|RAM~2756_combout\ & \reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \bRAM_chip|RAM~2756_combout\,
	datad => \reset_n~input_o\,
	combout => \bRAM_chip|s_Data_out~1_combout\);

-- Location: FF_X65_Y32_N25
\bRAM_chip|s_Data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(1));

-- Location: LCCOMB_X65_Y32_N14
\bRAM_chip|RAM~3020\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3020_combout\ = (\SW[17]~input_o\ & \bRAM_chip|RAM~2798_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2798_combout\,
	combout => \bRAM_chip|RAM~3020_combout\);

-- Location: FF_X65_Y32_N15
\bRAM_chip|RAM~523\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3020_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~523_q\);

-- Location: LCCOMB_X65_Y29_N4
\bRAM_chip|RAM~515feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~515feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~515feeder_combout\);

-- Location: FF_X65_Y29_N5
\bRAM_chip|RAM~515\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~515feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~515_q\);

-- Location: LCCOMB_X67_Y30_N2
\bRAM_chip|RAM~499feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~499feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~499feeder_combout\);

-- Location: FF_X67_Y30_N3
\bRAM_chip|RAM~499\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~499feeder_combout\,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~499_q\);

-- Location: LCCOMB_X62_Y30_N16
\bRAM_chip|RAM~507feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~507feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~507feeder_combout\);

-- Location: FF_X62_Y30_N17
\bRAM_chip|RAM~507\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~507feeder_combout\,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~507_q\);

-- Location: LCCOMB_X67_Y30_N8
\bRAM_chip|RAM~2795\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2795_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\) # (\bRAM_chip|RAM~507_q\)))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~499_q\ & (!\testbenk:adress[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~499_q\,
	datac => \testbenk:adress[1]~q\,
	datad => \bRAM_chip|RAM~507_q\,
	combout => \bRAM_chip|RAM~2795_combout\);

-- Location: LCCOMB_X65_Y32_N16
\bRAM_chip|RAM~2796\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2796_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2795_combout\ & (\bRAM_chip|RAM~523_q\)) # (!\bRAM_chip|RAM~2795_combout\ & ((\bRAM_chip|RAM~515_q\))))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2795_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~523_q\,
	datac => \bRAM_chip|RAM~515_q\,
	datad => \bRAM_chip|RAM~2795_combout\,
	combout => \bRAM_chip|RAM~2796_combout\);

-- Location: LCCOMB_X66_Y29_N16
\bRAM_chip|RAM~3128\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3128_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3128_combout\);

-- Location: FF_X66_Y29_N17
\bRAM_chip|RAM~267\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3128_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~267_q\);

-- Location: LCCOMB_X70_Y32_N20
\bRAM_chip|RAM~3127\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3127_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3127_combout\);

-- Location: FF_X70_Y32_N21
\bRAM_chip|RAM~259\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3127_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~259_q\);

-- Location: FF_X69_Y29_N13
\bRAM_chip|RAM~243\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~243_q\);

-- Location: LCCOMB_X69_Y34_N30
\bRAM_chip|RAM~251feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~251feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~251feeder_combout\);

-- Location: FF_X69_Y34_N31
\bRAM_chip|RAM~251\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~251feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~251_q\);

-- Location: LCCOMB_X69_Y29_N12
\bRAM_chip|RAM~2788\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2788_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[0]~q\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~251_q\))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~243_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~243_q\,
	datad => \bRAM_chip|RAM~251_q\,
	combout => \bRAM_chip|RAM~2788_combout\);

-- Location: LCCOMB_X69_Y29_N10
\bRAM_chip|RAM~2789\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2789_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2788_combout\ & (!\bRAM_chip|RAM~267_q\)) # (!\bRAM_chip|RAM~2788_combout\ & ((!\bRAM_chip|RAM~259_q\))))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2788_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~267_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~259_q\,
	datad => \bRAM_chip|RAM~2788_combout\,
	combout => \bRAM_chip|RAM~2789_combout\);

-- Location: LCCOMB_X61_Y30_N16
\bRAM_chip|RAM~123feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~123feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~123feeder_combout\);

-- Location: FF_X61_Y30_N17
\bRAM_chip|RAM~123\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~123feeder_combout\,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~123_q\);

-- Location: LCCOMB_X62_Y30_N22
\bRAM_chip|RAM~139feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~139feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~139feeder_combout\);

-- Location: FF_X62_Y30_N23
\bRAM_chip|RAM~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~139feeder_combout\,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~139_q\);

-- Location: FF_X69_Y30_N13
\bRAM_chip|RAM~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~115_q\);

-- Location: LCCOMB_X70_Y32_N14
\bRAM_chip|RAM~131feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~131feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~131feeder_combout\);

-- Location: FF_X70_Y32_N15
\bRAM_chip|RAM~131\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~131feeder_combout\,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~131_q\);

-- Location: LCCOMB_X69_Y30_N12
\bRAM_chip|RAM~2792\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2792_combout\ = (\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\) # ((\bRAM_chip|RAM~131_q\)))) # (!\testbenk:adress[1]~q\ & (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~115_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~115_q\,
	datad => \bRAM_chip|RAM~131_q\,
	combout => \bRAM_chip|RAM~2792_combout\);

-- Location: LCCOMB_X69_Y30_N10
\bRAM_chip|RAM~2793\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2793_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2792_combout\ & ((\bRAM_chip|RAM~139_q\))) # (!\bRAM_chip|RAM~2792_combout\ & (\bRAM_chip|RAM~123_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2792_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~123_q\,
	datab => \bRAM_chip|RAM~139_q\,
	datac => \testbenk:adress[0]~q\,
	datad => \bRAM_chip|RAM~2792_combout\,
	combout => \bRAM_chip|RAM~2793_combout\);

-- Location: LCCOMB_X70_Y33_N18
\bRAM_chip|RAM~379feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~379feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~379feeder_combout\);

-- Location: FF_X70_Y33_N19
\bRAM_chip|RAM~379\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~379feeder_combout\,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~379_q\);

-- Location: FF_X66_Y32_N29
\bRAM_chip|RAM~395\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~395_q\);

-- Location: LCCOMB_X62_Y32_N18
\bRAM_chip|RAM~3129\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3129_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3129_combout\);

-- Location: FF_X62_Y32_N19
\bRAM_chip|RAM~387\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3129_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~387_q\);

-- Location: FF_X62_Y32_N21
\bRAM_chip|RAM~371\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~371_q\);

-- Location: LCCOMB_X62_Y32_N20
\bRAM_chip|RAM~2790\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2790_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~387_q\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~371_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~387_q\,
	datac => \bRAM_chip|RAM~371_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2790_combout\);

-- Location: LCCOMB_X66_Y32_N28
\bRAM_chip|RAM~2791\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2791_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2790_combout\ & ((\bRAM_chip|RAM~395_q\))) # (!\bRAM_chip|RAM~2790_combout\ & (\bRAM_chip|RAM~379_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2790_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~379_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~395_q\,
	datad => \bRAM_chip|RAM~2790_combout\,
	combout => \bRAM_chip|RAM~2791_combout\);

-- Location: LCCOMB_X65_Y32_N20
\bRAM_chip|RAM~2794\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2794_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2791_combout\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2793_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2793_combout\,
	datad => \bRAM_chip|RAM~2791_combout\,
	combout => \bRAM_chip|RAM~2794_combout\);

-- Location: LCCOMB_X65_Y32_N22
\bRAM_chip|RAM~2797\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2797_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2794_combout\ & (\bRAM_chip|RAM~2796_combout\)) # (!\bRAM_chip|RAM~2794_combout\ & ((\bRAM_chip|RAM~2789_combout\))))) # (!\testbenk:adress[4]~q\ & 
-- (((\bRAM_chip|RAM~2794_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~2796_combout\,
	datac => \bRAM_chip|RAM~2789_combout\,
	datad => \bRAM_chip|RAM~2794_combout\,
	combout => \bRAM_chip|RAM~2797_combout\);

-- Location: LCCOMB_X63_Y31_N12
\bRAM_chip|RAM~107feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~107feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~107feeder_combout\);

-- Location: FF_X63_Y31_N13
\bRAM_chip|RAM~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~107feeder_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~107_q\);

-- Location: LCCOMB_X63_Y31_N14
\bRAM_chip|RAM~3121\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3121_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3121_combout\);

-- Location: FF_X63_Y31_N15
\bRAM_chip|RAM~235\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3121_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~235_q\);

-- Location: LCCOMB_X66_Y31_N4
\bRAM_chip|RAM~2764\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2764_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & ((!\bRAM_chip|RAM~235_q\))) # (!\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~107_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~107_q\,
	datad => \bRAM_chip|RAM~235_q\,
	combout => \bRAM_chip|RAM~2764_combout\);

-- Location: FF_X66_Y31_N11
\bRAM_chip|RAM~363\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~363_q\);

-- Location: LCCOMB_X70_Y31_N26
\bRAM_chip|RAM~491feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~491feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~491feeder_combout\);

-- Location: FF_X70_Y31_N27
\bRAM_chip|RAM~491\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~491feeder_combout\,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~491_q\);

-- Location: LCCOMB_X66_Y31_N10
\bRAM_chip|RAM~2765\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2765_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2764_combout\ & ((\bRAM_chip|RAM~491_q\))) # (!\bRAM_chip|RAM~2764_combout\ & (\bRAM_chip|RAM~363_q\)))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2764_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~2764_combout\,
	datac => \bRAM_chip|RAM~363_q\,
	datad => \bRAM_chip|RAM~491_q\,
	combout => \bRAM_chip|RAM~2765_combout\);

-- Location: LCCOMB_X63_Y32_N26
\bRAM_chip|RAM~483feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~483feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~483feeder_combout\);

-- Location: FF_X63_Y32_N27
\bRAM_chip|RAM~483\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~483feeder_combout\,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~483_q\);

-- Location: FF_X62_Y34_N1
\bRAM_chip|RAM~227\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~227_q\);

-- Location: LCCOMB_X63_Y34_N20
\bRAM_chip|RAM~3118\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3118_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3118_combout\);

-- Location: FF_X63_Y34_N21
\bRAM_chip|RAM~99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3118_combout\,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~99_q\);

-- Location: FF_X62_Y34_N19
\bRAM_chip|RAM~355\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~355_q\);

-- Location: LCCOMB_X62_Y34_N18
\bRAM_chip|RAM~2757\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2757_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~355_q\))) # (!\testbenk:adress[5]~q\ & (!\bRAM_chip|RAM~99_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~99_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~355_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2757_combout\);

-- Location: LCCOMB_X62_Y34_N0
\bRAM_chip|RAM~2758\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2758_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2757_combout\ & (\bRAM_chip|RAM~483_q\)) # (!\bRAM_chip|RAM~2757_combout\ & ((\bRAM_chip|RAM~227_q\))))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2757_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~483_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~227_q\,
	datad => \bRAM_chip|RAM~2757_combout\,
	combout => \bRAM_chip|RAM~2758_combout\);

-- Location: LCCOMB_X68_Y29_N16
\bRAM_chip|RAM~3120\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3120_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3120_combout\);

-- Location: FF_X68_Y29_N17
\bRAM_chip|RAM~211\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3120_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~211_q\);

-- Location: FF_X68_Y29_N15
\bRAM_chip|RAM~467\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~467_q\);

-- Location: FF_X69_Y30_N31
\bRAM_chip|RAM~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~83_q\);

-- Location: LCCOMB_X61_Y30_N10
\bRAM_chip|RAM~339feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~339feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~339feeder_combout\);

-- Location: FF_X61_Y30_N11
\bRAM_chip|RAM~339\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~339feeder_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~339_q\);

-- Location: LCCOMB_X69_Y30_N30
\bRAM_chip|RAM~2761\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2761_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~339_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~83_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~83_q\,
	datad => \bRAM_chip|RAM~339_q\,
	combout => \bRAM_chip|RAM~2761_combout\);

-- Location: LCCOMB_X68_Y29_N14
\bRAM_chip|RAM~2762\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2762_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2761_combout\ & ((\bRAM_chip|RAM~467_q\))) # (!\bRAM_chip|RAM~2761_combout\ & (!\bRAM_chip|RAM~211_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2761_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~211_q\,
	datac => \bRAM_chip|RAM~467_q\,
	datad => \bRAM_chip|RAM~2761_combout\,
	combout => \bRAM_chip|RAM~2762_combout\);

-- Location: LCCOMB_X63_Y33_N22
\bRAM_chip|RAM~347feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~347feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~347feeder_combout\);

-- Location: FF_X63_Y33_N23
\bRAM_chip|RAM~347\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~347feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~347_q\);

-- Location: FF_X67_Y32_N15
\bRAM_chip|RAM~475\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~475_q\);

-- Location: LCCOMB_X67_Y34_N26
\bRAM_chip|RAM~3119\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3119_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3119_combout\);

-- Location: FF_X67_Y34_N27
\bRAM_chip|RAM~91\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3119_combout\,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~91_q\);

-- Location: FF_X67_Y34_N5
\bRAM_chip|RAM~219\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~219_q\);

-- Location: LCCOMB_X67_Y34_N4
\bRAM_chip|RAM~2759\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2759_combout\ = (\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~219_q\) # (\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & (!\bRAM_chip|RAM~91_q\ & ((!\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~91_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~219_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2759_combout\);

-- Location: LCCOMB_X67_Y32_N14
\bRAM_chip|RAM~2760\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2760_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2759_combout\ & ((\bRAM_chip|RAM~475_q\))) # (!\bRAM_chip|RAM~2759_combout\ & (\bRAM_chip|RAM~347_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2759_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~347_q\,
	datac => \bRAM_chip|RAM~475_q\,
	datad => \bRAM_chip|RAM~2759_combout\,
	combout => \bRAM_chip|RAM~2760_combout\);

-- Location: LCCOMB_X65_Y32_N0
\bRAM_chip|RAM~2763\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2763_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~2760_combout\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2762_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2762_combout\,
	datad => \bRAM_chip|RAM~2760_combout\,
	combout => \bRAM_chip|RAM~2763_combout\);

-- Location: LCCOMB_X65_Y32_N26
\bRAM_chip|RAM~2766\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2766_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2763_combout\ & (\bRAM_chip|RAM~2765_combout\)) # (!\bRAM_chip|RAM~2763_combout\ & ((\bRAM_chip|RAM~2758_combout\))))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2763_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~2765_combout\,
	datac => \bRAM_chip|RAM~2758_combout\,
	datad => \bRAM_chip|RAM~2763_combout\,
	combout => \bRAM_chip|RAM~2766_combout\);

-- Location: LCCOMB_X67_Y32_N0
\bRAM_chip|RAM~411feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~411feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~411feeder_combout\);

-- Location: FF_X67_Y32_N1
\bRAM_chip|RAM~411\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~411feeder_combout\,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~411_q\);

-- Location: FF_X65_Y31_N31
\bRAM_chip|RAM~427\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~427_q\);

-- Location: FF_X66_Y33_N19
\bRAM_chip|RAM~419\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~419_q\);

-- Location: FF_X68_Y31_N17
\bRAM_chip|RAM~403\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~403_q\);

-- Location: LCCOMB_X68_Y31_N16
\bRAM_chip|RAM~2784\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2784_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~419_q\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~403_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~419_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~403_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2784_combout\);

-- Location: LCCOMB_X65_Y31_N30
\bRAM_chip|RAM~2785\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2785_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2784_combout\ & ((\bRAM_chip|RAM~427_q\))) # (!\bRAM_chip|RAM~2784_combout\ & (\bRAM_chip|RAM~411_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2784_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~411_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~427_q\,
	datad => \bRAM_chip|RAM~2784_combout\,
	combout => \bRAM_chip|RAM~2785_combout\);

-- Location: LCCOMB_X67_Y33_N4
\bRAM_chip|RAM~155feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~155feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~155feeder_combout\);

-- Location: FF_X67_Y33_N5
\bRAM_chip|RAM~155\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~155feeder_combout\,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~155_q\);

-- Location: LCCOMB_X67_Y33_N2
\bRAM_chip|RAM~171feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~171feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~171feeder_combout\);

-- Location: FF_X67_Y33_N3
\bRAM_chip|RAM~171\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~171feeder_combout\,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~171_q\);

-- Location: FF_X69_Y29_N15
\bRAM_chip|RAM~147\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~147_q\);

-- Location: LCCOMB_X69_Y32_N22
\bRAM_chip|RAM~163feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~163feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~163feeder_combout\);

-- Location: FF_X69_Y32_N23
\bRAM_chip|RAM~163\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~163feeder_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~163_q\);

-- Location: LCCOMB_X69_Y29_N14
\bRAM_chip|RAM~2777\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2777_combout\ = (\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\) # ((\bRAM_chip|RAM~163_q\)))) # (!\testbenk:adress[1]~q\ & (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~147_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~147_q\,
	datad => \bRAM_chip|RAM~163_q\,
	combout => \bRAM_chip|RAM~2777_combout\);

-- Location: LCCOMB_X65_Y32_N4
\bRAM_chip|RAM~2778\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2778_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2777_combout\ & ((\bRAM_chip|RAM~171_q\))) # (!\bRAM_chip|RAM~2777_combout\ & (\bRAM_chip|RAM~155_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2777_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~155_q\,
	datac => \bRAM_chip|RAM~171_q\,
	datad => \bRAM_chip|RAM~2777_combout\,
	combout => \bRAM_chip|RAM~2778_combout\);

-- Location: LCCOMB_X65_Y33_N26
\bRAM_chip|RAM~35feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~35feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~35feeder_combout\);

-- Location: FF_X65_Y33_N27
\bRAM_chip|RAM~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~35feeder_combout\,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~35_q\);

-- Location: LCCOMB_X65_Y33_N24
\bRAM_chip|RAM~3126\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3126_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3126_combout\);

-- Location: FF_X65_Y33_N25
\bRAM_chip|RAM~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3126_combout\,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~43_q\);

-- Location: LCCOMB_X68_Y30_N28
\bRAM_chip|RAM~3125\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3125_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3125_combout\);

-- Location: FF_X68_Y30_N29
\bRAM_chip|RAM~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3125_combout\,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~27_q\);

-- Location: FF_X68_Y30_N11
\bRAM_chip|RAM~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~19_q\);

-- Location: LCCOMB_X68_Y30_N10
\bRAM_chip|RAM~2781\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2781_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~27_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~19_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~27_q\,
	datac => \bRAM_chip|RAM~19_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2781_combout\);

-- Location: LCCOMB_X66_Y30_N10
\bRAM_chip|RAM~2782\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2782_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2781_combout\ & ((!\bRAM_chip|RAM~43_q\))) # (!\bRAM_chip|RAM~2781_combout\ & (\bRAM_chip|RAM~35_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2781_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~35_q\,
	datac => \bRAM_chip|RAM~43_q\,
	datad => \bRAM_chip|RAM~2781_combout\,
	combout => \bRAM_chip|RAM~2782_combout\);

-- Location: LCCOMB_X66_Y33_N4
\bRAM_chip|RAM~291feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~291feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~291feeder_combout\);

-- Location: FF_X66_Y33_N5
\bRAM_chip|RAM~291\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~291feeder_combout\,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~291_q\);

-- Location: FF_X65_Y31_N1
\bRAM_chip|RAM~299\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~299_q\);

-- Location: LCCOMB_X67_Y31_N4
\bRAM_chip|RAM~3124\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3124_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3124_combout\);

-- Location: FF_X67_Y31_N5
\bRAM_chip|RAM~275\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3124_combout\,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~275_q\);

-- Location: FF_X67_Y31_N19
\bRAM_chip|RAM~283\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~283_q\);

-- Location: LCCOMB_X67_Y31_N18
\bRAM_chip|RAM~2779\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2779_combout\ = (\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~283_q\) # (\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~275_q\ & ((!\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~275_q\,
	datac => \bRAM_chip|RAM~283_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2779_combout\);

-- Location: LCCOMB_X65_Y31_N0
\bRAM_chip|RAM~2780\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2780_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2779_combout\ & ((\bRAM_chip|RAM~299_q\))) # (!\bRAM_chip|RAM~2779_combout\ & (\bRAM_chip|RAM~291_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2779_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~291_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~299_q\,
	datad => \bRAM_chip|RAM~2779_combout\,
	combout => \bRAM_chip|RAM~2780_combout\);

-- Location: LCCOMB_X65_Y32_N2
\bRAM_chip|RAM~2783\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2783_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2780_combout\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2782_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2782_combout\,
	datad => \bRAM_chip|RAM~2780_combout\,
	combout => \bRAM_chip|RAM~2783_combout\);

-- Location: LCCOMB_X65_Y32_N8
\bRAM_chip|RAM~2786\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2786_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2783_combout\ & (\bRAM_chip|RAM~2785_combout\)) # (!\bRAM_chip|RAM~2783_combout\ & ((\bRAM_chip|RAM~2778_combout\))))) # (!\testbenk:adress[4]~q\ & 
-- (((\bRAM_chip|RAM~2783_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~2785_combout\,
	datac => \bRAM_chip|RAM~2778_combout\,
	datad => \bRAM_chip|RAM~2783_combout\,
	combout => \bRAM_chip|RAM~2786_combout\);

-- Location: LCCOMB_X67_Y35_N30
\bRAM_chip|RAM~443feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~443feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~443feeder_combout\);

-- Location: FF_X67_Y35_N31
\bRAM_chip|RAM~443\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~443feeder_combout\,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~443_q\);

-- Location: FF_X65_Y34_N27
\bRAM_chip|RAM~459\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~459_q\);

-- Location: FF_X69_Y35_N1
\bRAM_chip|RAM~435\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~435_q\);

-- Location: LCCOMB_X66_Y35_N30
\bRAM_chip|RAM~451feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~451feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~451feeder_combout\);

-- Location: FF_X66_Y35_N31
\bRAM_chip|RAM~451\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~451feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~451_q\);

-- Location: LCCOMB_X69_Y35_N0
\bRAM_chip|RAM~2774\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2774_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~451_q\))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~435_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~435_q\,
	datad => \bRAM_chip|RAM~451_q\,
	combout => \bRAM_chip|RAM~2774_combout\);

-- Location: LCCOMB_X65_Y34_N26
\bRAM_chip|RAM~2775\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2775_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2774_combout\ & ((\bRAM_chip|RAM~459_q\))) # (!\bRAM_chip|RAM~2774_combout\ & (\bRAM_chip|RAM~443_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2774_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~443_q\,
	datac => \bRAM_chip|RAM~459_q\,
	datad => \bRAM_chip|RAM~2774_combout\,
	combout => \bRAM_chip|RAM~2775_combout\);

-- Location: FF_X66_Y35_N9
\bRAM_chip|RAM~323\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~323_q\);

-- Location: FF_X66_Y32_N11
\bRAM_chip|RAM~331\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~331_q\);

-- Location: LCCOMB_X65_Y35_N26
\bRAM_chip|RAM~315feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~315feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~315feeder_combout\);

-- Location: FF_X65_Y35_N27
\bRAM_chip|RAM~315\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~315feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~315_q\);

-- Location: FF_X65_Y35_N13
\bRAM_chip|RAM~307\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~307_q\);

-- Location: LCCOMB_X65_Y35_N12
\bRAM_chip|RAM~2767\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2767_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~315_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~307_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~315_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~307_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2767_combout\);

-- Location: LCCOMB_X66_Y32_N10
\bRAM_chip|RAM~2768\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2768_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2767_combout\ & ((\bRAM_chip|RAM~331_q\))) # (!\bRAM_chip|RAM~2767_combout\ & (\bRAM_chip|RAM~323_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2767_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~323_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~331_q\,
	datad => \bRAM_chip|RAM~2767_combout\,
	combout => \bRAM_chip|RAM~2768_combout\);

-- Location: LCCOMB_X69_Y33_N2
\bRAM_chip|RAM~67feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~67feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~67feeder_combout\);

-- Location: FF_X69_Y33_N3
\bRAM_chip|RAM~67\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~67feeder_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~67_q\);

-- Location: FF_X69_Y33_N25
\bRAM_chip|RAM~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~75_q\);

-- Location: LCCOMB_X68_Y35_N22
\bRAM_chip|RAM~3123\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3123_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3123_combout\);

-- Location: FF_X68_Y35_N23
\bRAM_chip|RAM~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3123_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~51_q\);

-- Location: FF_X68_Y35_N29
\bRAM_chip|RAM~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~59_q\);

-- Location: LCCOMB_X68_Y35_N28
\bRAM_chip|RAM~2771\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2771_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~59_q\))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~51_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~51_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~59_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2771_combout\);

-- Location: LCCOMB_X69_Y33_N24
\bRAM_chip|RAM~2772\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2772_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2771_combout\ & ((\bRAM_chip|RAM~75_q\))) # (!\bRAM_chip|RAM~2771_combout\ & (\bRAM_chip|RAM~67_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2771_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~67_q\,
	datac => \bRAM_chip|RAM~75_q\,
	datad => \bRAM_chip|RAM~2771_combout\,
	combout => \bRAM_chip|RAM~2772_combout\);

-- Location: LCCOMB_X63_Y35_N10
\bRAM_chip|RAM~3122\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3122_combout\ = !\bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~3122_combout\);

-- Location: FF_X63_Y35_N11
\bRAM_chip|RAM~187\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3122_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~187_q\);

-- Location: FF_X63_Y35_N29
\bRAM_chip|RAM~203\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~203_q\);

-- Location: LCCOMB_X70_Y35_N2
\bRAM_chip|RAM~195feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~195feeder_combout\ = \bRAM_chip|RAM~3020_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3020_combout\,
	combout => \bRAM_chip|RAM~195feeder_combout\);

-- Location: FF_X70_Y35_N3
\bRAM_chip|RAM~195\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~195feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~195_q\);

-- Location: FF_X69_Y35_N7
\bRAM_chip|RAM~179\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3020_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~179_q\);

-- Location: LCCOMB_X69_Y35_N6
\bRAM_chip|RAM~2769\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2769_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~195_q\) # ((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~179_q\ & !\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~195_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~179_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2769_combout\);

-- Location: LCCOMB_X63_Y35_N28
\bRAM_chip|RAM~2770\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2770_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2769_combout\ & ((\bRAM_chip|RAM~203_q\))) # (!\bRAM_chip|RAM~2769_combout\ & (!\bRAM_chip|RAM~187_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2769_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~187_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~203_q\,
	datad => \bRAM_chip|RAM~2769_combout\,
	combout => \bRAM_chip|RAM~2770_combout\);

-- Location: LCCOMB_X65_Y32_N12
\bRAM_chip|RAM~2773\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2773_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~2770_combout\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2772_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2772_combout\,
	datad => \bRAM_chip|RAM~2770_combout\,
	combout => \bRAM_chip|RAM~2773_combout\);

-- Location: LCCOMB_X65_Y32_N6
\bRAM_chip|RAM~2776\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2776_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2773_combout\ & (\bRAM_chip|RAM~2775_combout\)) # (!\bRAM_chip|RAM~2773_combout\ & ((\bRAM_chip|RAM~2768_combout\))))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~2773_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2775_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2768_combout\,
	datad => \bRAM_chip|RAM~2773_combout\,
	combout => \bRAM_chip|RAM~2776_combout\);

-- Location: LCCOMB_X65_Y32_N18
\bRAM_chip|RAM~2787\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2787_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2776_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2786_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2786_combout\,
	datad => \bRAM_chip|RAM~2776_combout\,
	combout => \bRAM_chip|RAM~2787_combout\);

-- Location: LCCOMB_X65_Y32_N28
\bRAM_chip|RAM~2798\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2798_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2787_combout\ & (\bRAM_chip|RAM~2797_combout\)) # (!\bRAM_chip|RAM~2787_combout\ & ((\bRAM_chip|RAM~2766_combout\))))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2787_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2797_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2766_combout\,
	datad => \bRAM_chip|RAM~2787_combout\,
	combout => \bRAM_chip|RAM~2798_combout\);

-- Location: LCCOMB_X65_Y32_N30
\bRAM_chip|s_Data_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~2_combout\ = (\reset_n~input_o\ & (\SW[17]~input_o\ & \bRAM_chip|RAM~2798_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2798_combout\,
	combout => \bRAM_chip|s_Data_out~2_combout\);

-- Location: FF_X65_Y32_N31
\bRAM_chip|s_Data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(2));

-- Location: LCCOMB_X69_Y31_N8
\bRAM_chip|RAM~3021\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3021_combout\ = (\bRAM_chip|RAM~2840_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2840_combout\,
	combout => \bRAM_chip|RAM~3021_combout\);

-- Location: LCCOMB_X68_Y31_N2
\bRAM_chip|RAM~524feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~524feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~524feeder_combout\);

-- Location: FF_X68_Y31_N3
\bRAM_chip|RAM~524\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~524feeder_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~524_q\);

-- Location: FF_X70_Y31_N31
\bRAM_chip|RAM~492\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~492_q\);

-- Location: LCCOMB_X65_Y34_N14
\bRAM_chip|RAM~460feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~460feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~460feeder_combout\);

-- Location: FF_X65_Y34_N15
\bRAM_chip|RAM~460\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~460feeder_combout\,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~460_q\);

-- Location: FF_X65_Y31_N11
\bRAM_chip|RAM~428\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~428_q\);

-- Location: LCCOMB_X65_Y31_N10
\bRAM_chip|RAM~2837\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2837_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~460_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~428_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~460_q\,
	datac => \bRAM_chip|RAM~428_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2837_combout\);

-- Location: LCCOMB_X70_Y31_N30
\bRAM_chip|RAM~2838\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2838_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2837_combout\ & (\bRAM_chip|RAM~524_q\)) # (!\bRAM_chip|RAM~2837_combout\ & ((\bRAM_chip|RAM~492_q\))))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2837_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~524_q\,
	datac => \bRAM_chip|RAM~492_q\,
	datad => \bRAM_chip|RAM~2837_combout\,
	combout => \bRAM_chip|RAM~2838_combout\);

-- Location: LCCOMB_X67_Y30_N0
\bRAM_chip|RAM~500feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~500feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~500feeder_combout\);

-- Location: FF_X67_Y30_N1
\bRAM_chip|RAM~500\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~500feeder_combout\,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~500_q\);

-- Location: LCCOMB_X69_Y35_N14
\bRAM_chip|RAM~436feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~436feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~436feeder_combout\);

-- Location: FF_X69_Y35_N15
\bRAM_chip|RAM~436\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~436feeder_combout\,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~436_q\);

-- Location: FF_X68_Y29_N25
\bRAM_chip|RAM~468\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~468_q\);

-- Location: LCCOMB_X68_Y31_N28
\bRAM_chip|RAM~3138\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3138_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3138_combout\);

-- Location: FF_X68_Y31_N29
\bRAM_chip|RAM~404\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3138_combout\,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~404_q\);

-- Location: LCCOMB_X68_Y29_N24
\bRAM_chip|RAM~2834\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2834_combout\ = (\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\) # ((\bRAM_chip|RAM~468_q\)))) # (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & ((!\bRAM_chip|RAM~404_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~468_q\,
	datad => \bRAM_chip|RAM~404_q\,
	combout => \bRAM_chip|RAM~2834_combout\);

-- Location: LCCOMB_X69_Y31_N4
\bRAM_chip|RAM~2835\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2835_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2834_combout\ & (\bRAM_chip|RAM~500_q\)) # (!\bRAM_chip|RAM~2834_combout\ & ((\bRAM_chip|RAM~436_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2834_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~500_q\,
	datac => \bRAM_chip|RAM~436_q\,
	datad => \bRAM_chip|RAM~2834_combout\,
	combout => \bRAM_chip|RAM~2835_combout\);

-- Location: LCCOMB_X67_Y32_N18
\bRAM_chip|RAM~476feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~476feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~476feeder_combout\);

-- Location: FF_X67_Y32_N19
\bRAM_chip|RAM~476\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~476feeder_combout\,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~476_q\);

-- Location: FF_X70_Y30_N15
\bRAM_chip|RAM~508\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~508_q\);

-- Location: LCCOMB_X67_Y35_N22
\bRAM_chip|RAM~444feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~444feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~444feeder_combout\);

-- Location: FF_X67_Y35_N23
\bRAM_chip|RAM~444\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~444feeder_combout\,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~444_q\);

-- Location: FF_X67_Y32_N13
\bRAM_chip|RAM~412\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~412_q\);

-- Location: LCCOMB_X67_Y32_N12
\bRAM_chip|RAM~2832\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2832_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~444_q\)) # (!\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~412_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~444_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~412_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2832_combout\);

-- Location: LCCOMB_X70_Y30_N14
\bRAM_chip|RAM~2833\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2833_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2832_combout\ & ((\bRAM_chip|RAM~508_q\))) # (!\bRAM_chip|RAM~2832_combout\ & (\bRAM_chip|RAM~476_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2832_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~476_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~508_q\,
	datad => \bRAM_chip|RAM~2832_combout\,
	combout => \bRAM_chip|RAM~2833_combout\);

-- Location: LCCOMB_X69_Y31_N30
\bRAM_chip|RAM~2836\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2836_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~2833_combout\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2835_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2835_combout\,
	datad => \bRAM_chip|RAM~2833_combout\,
	combout => \bRAM_chip|RAM~2836_combout\);

-- Location: LCCOMB_X65_Y29_N10
\bRAM_chip|RAM~516feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~516feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~516feeder_combout\);

-- Location: FF_X65_Y29_N11
\bRAM_chip|RAM~516\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~516feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~516_q\);

-- Location: LCCOMB_X65_Y34_N24
\bRAM_chip|RAM~452feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~452feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~452feeder_combout\);

-- Location: FF_X65_Y34_N25
\bRAM_chip|RAM~452\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~452feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~452_q\);

-- Location: FF_X66_Y33_N3
\bRAM_chip|RAM~420\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~420_q\);

-- Location: LCCOMB_X69_Y34_N0
\bRAM_chip|RAM~484feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~484feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~484feeder_combout\);

-- Location: FF_X69_Y34_N1
\bRAM_chip|RAM~484\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~484feeder_combout\,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~484_q\);

-- Location: LCCOMB_X66_Y33_N2
\bRAM_chip|RAM~2830\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2830_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~484_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~420_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~420_q\,
	datad => \bRAM_chip|RAM~484_q\,
	combout => \bRAM_chip|RAM~2830_combout\);

-- Location: LCCOMB_X68_Y31_N18
\bRAM_chip|RAM~2831\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2831_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2830_combout\ & (\bRAM_chip|RAM~516_q\)) # (!\bRAM_chip|RAM~2830_combout\ & ((\bRAM_chip|RAM~452_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2830_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~516_q\,
	datac => \bRAM_chip|RAM~452_q\,
	datad => \bRAM_chip|RAM~2830_combout\,
	combout => \bRAM_chip|RAM~2831_combout\);

-- Location: LCCOMB_X69_Y31_N12
\bRAM_chip|RAM~2839\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2839_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2836_combout\ & (\bRAM_chip|RAM~2838_combout\)) # (!\bRAM_chip|RAM~2836_combout\ & ((\bRAM_chip|RAM~2831_combout\))))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2836_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2838_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2836_combout\,
	datad => \bRAM_chip|RAM~2831_combout\,
	combout => \bRAM_chip|RAM~2839_combout\);

-- Location: LCCOMB_X66_Y34_N30
\bRAM_chip|RAM~268feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~268feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~268feeder_combout\);

-- Location: FF_X66_Y34_N31
\bRAM_chip|RAM~268\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~268feeder_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~268_q\);

-- Location: LCCOMB_X70_Y31_N24
\bRAM_chip|RAM~3131\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3131_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3131_combout\);

-- Location: FF_X70_Y31_N25
\bRAM_chip|RAM~236\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3131_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~236_q\);

-- Location: FF_X67_Y33_N11
\bRAM_chip|RAM~172\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~172_q\);

-- Location: LCCOMB_X70_Y34_N16
\bRAM_chip|RAM~204feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~204feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~204feeder_combout\);

-- Location: FF_X70_Y34_N17
\bRAM_chip|RAM~204\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~204feeder_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~204_q\);

-- Location: LCCOMB_X67_Y33_N10
\bRAM_chip|RAM~2806\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2806_combout\ = (\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\) # ((\bRAM_chip|RAM~204_q\)))) # (!\testbenk:adress[2]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~172_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~172_q\,
	datad => \bRAM_chip|RAM~204_q\,
	combout => \bRAM_chip|RAM~2806_combout\);

-- Location: LCCOMB_X68_Y33_N22
\bRAM_chip|RAM~2807\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2807_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2806_combout\ & (\bRAM_chip|RAM~268_q\)) # (!\bRAM_chip|RAM~2806_combout\ & ((!\bRAM_chip|RAM~236_q\))))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2806_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~268_q\,
	datac => \bRAM_chip|RAM~236_q\,
	datad => \bRAM_chip|RAM~2806_combout\,
	combout => \bRAM_chip|RAM~2807_combout\);

-- Location: LCCOMB_X70_Y32_N24
\bRAM_chip|RAM~3130\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3130_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3130_combout\);

-- Location: FF_X70_Y32_N25
\bRAM_chip|RAM~260\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3130_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~260_q\);

-- Location: FF_X70_Y34_N11
\bRAM_chip|RAM~196\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~196_q\);

-- Location: LCCOMB_X68_Y34_N22
\bRAM_chip|RAM~228feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~228feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~228feeder_combout\);

-- Location: FF_X68_Y34_N23
\bRAM_chip|RAM~228\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~228feeder_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~228_q\);

-- Location: FF_X69_Y32_N9
\bRAM_chip|RAM~164\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~164_q\);

-- Location: LCCOMB_X69_Y32_N8
\bRAM_chip|RAM~2799\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2799_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~228_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~164_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~228_q\,
	datac => \bRAM_chip|RAM~164_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2799_combout\);

-- Location: LCCOMB_X70_Y34_N10
\bRAM_chip|RAM~2800\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2800_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2799_combout\ & (!\bRAM_chip|RAM~260_q\)) # (!\bRAM_chip|RAM~2799_combout\ & ((\bRAM_chip|RAM~196_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2799_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~260_q\,
	datac => \bRAM_chip|RAM~196_q\,
	datad => \bRAM_chip|RAM~2799_combout\,
	combout => \bRAM_chip|RAM~2800_combout\);

-- Location: FF_X67_Y34_N9
\bRAM_chip|RAM~220\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~220_q\);

-- Location: FF_X69_Y34_N5
\bRAM_chip|RAM~252\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~252_q\);

-- Location: FF_X67_Y33_N17
\bRAM_chip|RAM~156\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~156_q\);

-- Location: LCCOMB_X67_Y35_N12
\bRAM_chip|RAM~188feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~188feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~188feeder_combout\);

-- Location: FF_X67_Y35_N13
\bRAM_chip|RAM~188\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~188feeder_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~188_q\);

-- Location: LCCOMB_X67_Y33_N16
\bRAM_chip|RAM~2801\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2801_combout\ = (\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\) # ((\bRAM_chip|RAM~188_q\)))) # (!\testbenk:adress[2]~q\ & (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~156_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~156_q\,
	datad => \bRAM_chip|RAM~188_q\,
	combout => \bRAM_chip|RAM~2801_combout\);

-- Location: LCCOMB_X69_Y34_N4
\bRAM_chip|RAM~2802\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2802_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2801_combout\ & ((\bRAM_chip|RAM~252_q\))) # (!\bRAM_chip|RAM~2801_combout\ & (\bRAM_chip|RAM~220_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2801_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~220_q\,
	datac => \bRAM_chip|RAM~252_q\,
	datad => \bRAM_chip|RAM~2801_combout\,
	combout => \bRAM_chip|RAM~2802_combout\);

-- Location: LCCOMB_X69_Y28_N12
\bRAM_chip|RAM~180feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~180feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~180feeder_combout\);

-- Location: FF_X69_Y28_N13
\bRAM_chip|RAM~180\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~180feeder_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~180_q\);

-- Location: FF_X69_Y29_N27
\bRAM_chip|RAM~244\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~244_q\);

-- Location: LCCOMB_X70_Y29_N4
\bRAM_chip|RAM~212feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~212feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~212feeder_combout\);

-- Location: FF_X70_Y29_N5
\bRAM_chip|RAM~212\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~212feeder_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~212_q\);

-- Location: FF_X69_Y29_N25
\bRAM_chip|RAM~148\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~148_q\);

-- Location: LCCOMB_X69_Y29_N24
\bRAM_chip|RAM~2803\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2803_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~212_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~148_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~212_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~148_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2803_combout\);

-- Location: LCCOMB_X69_Y29_N26
\bRAM_chip|RAM~2804\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2804_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2803_combout\ & ((\bRAM_chip|RAM~244_q\))) # (!\bRAM_chip|RAM~2803_combout\ & (\bRAM_chip|RAM~180_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2803_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~180_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~244_q\,
	datad => \bRAM_chip|RAM~2803_combout\,
	combout => \bRAM_chip|RAM~2804_combout\);

-- Location: LCCOMB_X69_Y34_N26
\bRAM_chip|RAM~2805\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2805_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[0]~q\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~2802_combout\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2804_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2802_combout\,
	datad => \bRAM_chip|RAM~2804_combout\,
	combout => \bRAM_chip|RAM~2805_combout\);

-- Location: LCCOMB_X69_Y31_N22
\bRAM_chip|RAM~2808\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2808_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2805_combout\ & (\bRAM_chip|RAM~2807_combout\)) # (!\bRAM_chip|RAM~2805_combout\ & ((\bRAM_chip|RAM~2800_combout\))))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2805_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2807_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2800_combout\,
	datad => \bRAM_chip|RAM~2805_combout\,
	combout => \bRAM_chip|RAM~2808_combout\);

-- Location: LCCOMB_X66_Y31_N2
\bRAM_chip|RAM~364feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~364feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~364feeder_combout\);

-- Location: FF_X66_Y31_N3
\bRAM_chip|RAM~364\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~364feeder_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~364_q\);

-- Location: FF_X66_Y31_N25
\bRAM_chip|RAM~396\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~396_q\);

-- Location: LCCOMB_X66_Y32_N30
\bRAM_chip|RAM~332feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~332feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~332feeder_combout\);

-- Location: FF_X66_Y32_N31
\bRAM_chip|RAM~332\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~332feeder_combout\,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~332_q\);

-- Location: FF_X65_Y31_N13
\bRAM_chip|RAM~300\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~300_q\);

-- Location: LCCOMB_X65_Y31_N12
\bRAM_chip|RAM~2816\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2816_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~332_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~300_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~332_q\,
	datac => \bRAM_chip|RAM~300_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2816_combout\);

-- Location: LCCOMB_X66_Y31_N24
\bRAM_chip|RAM~2817\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2817_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2816_combout\ & ((\bRAM_chip|RAM~396_q\))) # (!\bRAM_chip|RAM~2816_combout\ & (\bRAM_chip|RAM~364_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2816_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~364_q\,
	datac => \bRAM_chip|RAM~396_q\,
	datad => \bRAM_chip|RAM~2816_combout\,
	combout => \bRAM_chip|RAM~2817_combout\);

-- Location: LCCOMB_X63_Y33_N24
\bRAM_chip|RAM~348feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~348feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~348feeder_combout\);

-- Location: FF_X63_Y33_N25
\bRAM_chip|RAM~348\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~348feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~348_q\);

-- Location: FF_X70_Y33_N31
\bRAM_chip|RAM~380\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~380_q\);

-- Location: FF_X70_Y33_N29
\bRAM_chip|RAM~284\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~284_q\);

-- Location: LCCOMB_X65_Y35_N6
\bRAM_chip|RAM~316feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~316feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~316feeder_combout\);

-- Location: FF_X65_Y35_N7
\bRAM_chip|RAM~316\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~316feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~316_q\);

-- Location: LCCOMB_X70_Y33_N28
\bRAM_chip|RAM~2809\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2809_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~316_q\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~284_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~284_q\,
	datad => \bRAM_chip|RAM~316_q\,
	combout => \bRAM_chip|RAM~2809_combout\);

-- Location: LCCOMB_X70_Y33_N30
\bRAM_chip|RAM~2810\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2810_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2809_combout\ & ((\bRAM_chip|RAM~380_q\))) # (!\bRAM_chip|RAM~2809_combout\ & (\bRAM_chip|RAM~348_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2809_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~348_q\,
	datac => \bRAM_chip|RAM~380_q\,
	datad => \bRAM_chip|RAM~2809_combout\,
	combout => \bRAM_chip|RAM~2810_combout\);

-- Location: LCCOMB_X67_Y28_N0
\bRAM_chip|RAM~308feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~308feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~308feeder_combout\);

-- Location: FF_X67_Y28_N1
\bRAM_chip|RAM~308\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~308feeder_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~308_q\);

-- Location: FF_X67_Y29_N11
\bRAM_chip|RAM~372\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~372_q\);

-- Location: LCCOMB_X67_Y31_N22
\bRAM_chip|RAM~3133\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3133_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3133_combout\);

-- Location: FF_X67_Y31_N23
\bRAM_chip|RAM~276\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3133_combout\,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~276_q\);

-- Location: FF_X67_Y29_N25
\bRAM_chip|RAM~340\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~340_q\);

-- Location: LCCOMB_X67_Y29_N24
\bRAM_chip|RAM~2813\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2813_combout\ = (\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~340_q\) # (\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & (!\bRAM_chip|RAM~276_q\ & ((!\testbenk:adress[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~276_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~340_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2813_combout\);

-- Location: LCCOMB_X67_Y29_N10
\bRAM_chip|RAM~2814\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2814_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2813_combout\ & ((\bRAM_chip|RAM~372_q\))) # (!\bRAM_chip|RAM~2813_combout\ & (\bRAM_chip|RAM~308_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2813_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~308_q\,
	datac => \bRAM_chip|RAM~372_q\,
	datad => \bRAM_chip|RAM~2813_combout\,
	combout => \bRAM_chip|RAM~2814_combout\);

-- Location: LCCOMB_X67_Y28_N10
\bRAM_chip|RAM~3132\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3132_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3132_combout\);

-- Location: FF_X67_Y28_N11
\bRAM_chip|RAM~388\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3132_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~388_q\);

-- Location: FF_X68_Y32_N27
\bRAM_chip|RAM~324\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~324_q\);

-- Location: FF_X66_Y33_N25
\bRAM_chip|RAM~292\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~292_q\);

-- Location: LCCOMB_X70_Y29_N26
\bRAM_chip|RAM~356feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~356feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~356feeder_combout\);

-- Location: FF_X70_Y29_N27
\bRAM_chip|RAM~356\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~356feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~356_q\);

-- Location: LCCOMB_X66_Y33_N24
\bRAM_chip|RAM~2811\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2811_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~356_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~292_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~292_q\,
	datad => \bRAM_chip|RAM~356_q\,
	combout => \bRAM_chip|RAM~2811_combout\);

-- Location: LCCOMB_X68_Y32_N26
\bRAM_chip|RAM~2812\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2812_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2811_combout\ & (!\bRAM_chip|RAM~388_q\)) # (!\bRAM_chip|RAM~2811_combout\ & ((\bRAM_chip|RAM~324_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2811_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~388_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~324_q\,
	datad => \bRAM_chip|RAM~2811_combout\,
	combout => \bRAM_chip|RAM~2812_combout\);

-- Location: LCCOMB_X69_Y31_N16
\bRAM_chip|RAM~2815\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2815_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2812_combout\))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2814_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2814_combout\,
	datad => \bRAM_chip|RAM~2812_combout\,
	combout => \bRAM_chip|RAM~2815_combout\);

-- Location: LCCOMB_X69_Y31_N26
\bRAM_chip|RAM~2818\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2818_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2815_combout\ & (\bRAM_chip|RAM~2817_combout\)) # (!\bRAM_chip|RAM~2815_combout\ & ((\bRAM_chip|RAM~2810_combout\))))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2815_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~2817_combout\,
	datac => \bRAM_chip|RAM~2810_combout\,
	datad => \bRAM_chip|RAM~2815_combout\,
	combout => \bRAM_chip|RAM~2818_combout\);

-- Location: LCCOMB_X68_Y28_N22
\bRAM_chip|RAM~92feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~92feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~92feeder_combout\);

-- Location: FF_X68_Y28_N23
\bRAM_chip|RAM~92\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~92feeder_combout\,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~92_q\);

-- Location: FF_X69_Y31_N25
\bRAM_chip|RAM~124\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~124_q\);

-- Location: FF_X68_Y30_N25
\bRAM_chip|RAM~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~28_q\);

-- Location: LCCOMB_X68_Y35_N8
\bRAM_chip|RAM~60feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~60feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~60feeder_combout\);

-- Location: FF_X68_Y35_N9
\bRAM_chip|RAM~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~60feeder_combout\,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~60_q\);

-- Location: LCCOMB_X68_Y30_N24
\bRAM_chip|RAM~2819\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2819_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~60_q\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~28_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~28_q\,
	datad => \bRAM_chip|RAM~60_q\,
	combout => \bRAM_chip|RAM~2819_combout\);

-- Location: LCCOMB_X69_Y31_N24
\bRAM_chip|RAM~2820\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2820_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2819_combout\ & ((\bRAM_chip|RAM~124_q\))) # (!\bRAM_chip|RAM~2819_combout\ & (\bRAM_chip|RAM~92_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2819_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~92_q\,
	datac => \bRAM_chip|RAM~124_q\,
	datad => \bRAM_chip|RAM~2819_combout\,
	combout => \bRAM_chip|RAM~2820_combout\);

-- Location: LCCOMB_X62_Y31_N18
\bRAM_chip|RAM~108feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~108feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~108feeder_combout\);

-- Location: FF_X62_Y31_N19
\bRAM_chip|RAM~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~108feeder_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~108_q\);

-- Location: FF_X62_Y31_N29
\bRAM_chip|RAM~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~140_q\);

-- Location: LCCOMB_X69_Y33_N16
\bRAM_chip|RAM~3136\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3136_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3136_combout\);

-- Location: FF_X69_Y33_N17
\bRAM_chip|RAM~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3136_combout\,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~76_q\);

-- Location: LCCOMB_X65_Y33_N18
\bRAM_chip|RAM~3137\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3137_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3137_combout\);

-- Location: FF_X65_Y33_N19
\bRAM_chip|RAM~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3137_combout\,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~44_q\);

-- Location: LCCOMB_X65_Y33_N4
\bRAM_chip|RAM~2826\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2826_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)) # (!\bRAM_chip|RAM~76_q\))) # (!\testbenk:adress[2]~q\ & (((!\bRAM_chip|RAM~44_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~76_q\,
	datab => \bRAM_chip|RAM~44_q\,
	datac => \testbenk:adress[2]~q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2826_combout\);

-- Location: LCCOMB_X62_Y31_N28
\bRAM_chip|RAM~2827\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2827_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2826_combout\ & ((\bRAM_chip|RAM~140_q\))) # (!\bRAM_chip|RAM~2826_combout\ & (\bRAM_chip|RAM~108_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2826_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~108_q\,
	datac => \bRAM_chip|RAM~140_q\,
	datad => \bRAM_chip|RAM~2826_combout\,
	combout => \bRAM_chip|RAM~2827_combout\);

-- Location: LCCOMB_X69_Y33_N30
\bRAM_chip|RAM~68feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~68feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~68feeder_combout\);

-- Location: FF_X69_Y33_N31
\bRAM_chip|RAM~68\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~68feeder_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~68_q\);

-- Location: FF_X70_Y32_N31
\bRAM_chip|RAM~132\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~132_q\);

-- Location: LCCOMB_X68_Y34_N28
\bRAM_chip|RAM~3134\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3134_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3134_combout\);

-- Location: FF_X68_Y34_N29
\bRAM_chip|RAM~100\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3134_combout\,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~100_q\);

-- Location: FF_X67_Y30_N23
\bRAM_chip|RAM~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~36_q\);

-- Location: LCCOMB_X67_Y30_N22
\bRAM_chip|RAM~2821\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2821_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)) # (!\bRAM_chip|RAM~100_q\))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~36_q\ & !\testbenk:adress[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~100_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~36_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2821_combout\);

-- Location: LCCOMB_X70_Y32_N30
\bRAM_chip|RAM~2822\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2822_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2821_combout\ & ((\bRAM_chip|RAM~132_q\))) # (!\bRAM_chip|RAM~2821_combout\ & (\bRAM_chip|RAM~68_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2821_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~68_q\,
	datac => \bRAM_chip|RAM~132_q\,
	datad => \bRAM_chip|RAM~2821_combout\,
	combout => \bRAM_chip|RAM~2822_combout\);

-- Location: LCCOMB_X68_Y35_N2
\bRAM_chip|RAM~52feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~52feeder_combout\ = \bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~52feeder_combout\);

-- Location: FF_X68_Y35_N3
\bRAM_chip|RAM~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~52feeder_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~52_q\);

-- Location: FF_X69_Y30_N3
\bRAM_chip|RAM~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~116_q\);

-- Location: FF_X68_Y30_N15
\bRAM_chip|RAM~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3021_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~20_q\);

-- Location: LCCOMB_X69_Y30_N4
\bRAM_chip|RAM~3135\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3135_combout\ = !\bRAM_chip|RAM~3021_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3021_combout\,
	combout => \bRAM_chip|RAM~3135_combout\);

-- Location: FF_X69_Y30_N5
\bRAM_chip|RAM~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3135_combout\,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~84_q\);

-- Location: LCCOMB_X68_Y30_N14
\bRAM_chip|RAM~2823\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2823_combout\ = (\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\) # ((!\bRAM_chip|RAM~84_q\)))) # (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~20_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~20_q\,
	datad => \bRAM_chip|RAM~84_q\,
	combout => \bRAM_chip|RAM~2823_combout\);

-- Location: LCCOMB_X69_Y30_N2
\bRAM_chip|RAM~2824\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2824_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2823_combout\ & ((\bRAM_chip|RAM~116_q\))) # (!\bRAM_chip|RAM~2823_combout\ & (\bRAM_chip|RAM~52_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2823_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~52_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~116_q\,
	datad => \bRAM_chip|RAM~2823_combout\,
	combout => \bRAM_chip|RAM~2824_combout\);

-- Location: LCCOMB_X69_Y31_N6
\bRAM_chip|RAM~2825\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2825_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2822_combout\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2824_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2822_combout\,
	datad => \bRAM_chip|RAM~2824_combout\,
	combout => \bRAM_chip|RAM~2825_combout\);

-- Location: LCCOMB_X69_Y31_N0
\bRAM_chip|RAM~2828\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2828_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2825_combout\ & ((\bRAM_chip|RAM~2827_combout\))) # (!\bRAM_chip|RAM~2825_combout\ & (\bRAM_chip|RAM~2820_combout\)))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2825_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~2820_combout\,
	datac => \bRAM_chip|RAM~2827_combout\,
	datad => \bRAM_chip|RAM~2825_combout\,
	combout => \bRAM_chip|RAM~2828_combout\);

-- Location: LCCOMB_X69_Y31_N10
\bRAM_chip|RAM~2829\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2829_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2818_combout\)) # (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2828_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2818_combout\,
	datad => \bRAM_chip|RAM~2828_combout\,
	combout => \bRAM_chip|RAM~2829_combout\);

-- Location: LCCOMB_X69_Y31_N18
\bRAM_chip|RAM~2840\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2840_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2829_combout\ & (\bRAM_chip|RAM~2839_combout\)) # (!\bRAM_chip|RAM~2829_combout\ & ((\bRAM_chip|RAM~2808_combout\))))) # (!\testbenk:adress[4]~q\ & 
-- (((\bRAM_chip|RAM~2829_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2839_combout\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~2808_combout\,
	datad => \bRAM_chip|RAM~2829_combout\,
	combout => \bRAM_chip|RAM~2840_combout\);

-- Location: LCCOMB_X68_Y28_N24
\bRAM_chip|s_Data_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~3_combout\ = (\reset_n~input_o\ & (\SW[17]~input_o\ & \bRAM_chip|RAM~2840_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \SW[17]~input_o\,
	datac => \bRAM_chip|RAM~2840_combout\,
	combout => \bRAM_chip|s_Data_out~3_combout\);

-- Location: FF_X68_Y28_N25
\bRAM_chip|s_Data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(3));

-- Location: LCCOMB_X65_Y30_N26
\bRAM_chip|RAM~3022\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3022_combout\ = (\SW[17]~input_o\ & \bRAM_chip|RAM~2882_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2882_combout\,
	combout => \bRAM_chip|RAM~3022_combout\);

-- Location: LCCOMB_X65_Y30_N14
\bRAM_chip|RAM~525feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~525feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~525feeder_combout\);

-- Location: FF_X65_Y30_N15
\bRAM_chip|RAM~525\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~525feeder_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~525_q\);

-- Location: FF_X65_Y34_N21
\bRAM_chip|RAM~461\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~461_q\);

-- Location: LCCOMB_X70_Y31_N22
\bRAM_chip|RAM~493feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~493feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~493feeder_combout\);

-- Location: FF_X70_Y31_N23
\bRAM_chip|RAM~493\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~493feeder_combout\,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~493_q\);

-- Location: FF_X65_Y31_N7
\bRAM_chip|RAM~429\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~429_q\);

-- Location: LCCOMB_X65_Y31_N6
\bRAM_chip|RAM~2879\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2879_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~493_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~429_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~493_q\,
	datac => \bRAM_chip|RAM~429_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2879_combout\);

-- Location: LCCOMB_X65_Y34_N20
\bRAM_chip|RAM~2880\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2880_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2879_combout\ & (\bRAM_chip|RAM~525_q\)) # (!\bRAM_chip|RAM~2879_combout\ & ((\bRAM_chip|RAM~461_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2879_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~525_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~461_q\,
	datad => \bRAM_chip|RAM~2879_combout\,
	combout => \bRAM_chip|RAM~2880_combout\);

-- Location: LCCOMB_X66_Y31_N6
\bRAM_chip|RAM~3149\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3149_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3149_combout\);

-- Location: FF_X66_Y31_N7
\bRAM_chip|RAM~365\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3149_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~365_q\);

-- Location: FF_X66_Y31_N31
\bRAM_chip|RAM~397\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~397_q\);

-- Location: LCCOMB_X65_Y31_N20
\bRAM_chip|RAM~3151\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3151_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3151_combout\);

-- Location: FF_X65_Y31_N21
\bRAM_chip|RAM~301\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3151_combout\,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~301_q\);

-- Location: LCCOMB_X66_Y32_N24
\bRAM_chip|RAM~3150\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3150_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3150_combout\);

-- Location: FF_X66_Y32_N25
\bRAM_chip|RAM~333\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3150_combout\,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~333_q\);

-- Location: LCCOMB_X66_Y31_N16
\bRAM_chip|RAM~2872\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2872_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\) # (!\bRAM_chip|RAM~333_q\)))) # (!\testbenk:adress[2]~q\ & (!\bRAM_chip|RAM~301_q\ & (!\testbenk:adress[3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~301_q\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~333_q\,
	combout => \bRAM_chip|RAM~2872_combout\);

-- Location: LCCOMB_X66_Y31_N30
\bRAM_chip|RAM~2873\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2873_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2872_combout\ & ((\bRAM_chip|RAM~397_q\))) # (!\bRAM_chip|RAM~2872_combout\ & (!\bRAM_chip|RAM~365_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2872_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~365_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~397_q\,
	datad => \bRAM_chip|RAM~2872_combout\,
	combout => \bRAM_chip|RAM~2873_combout\);

-- Location: LCCOMB_X66_Y34_N28
\bRAM_chip|RAM~3155\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3155_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3155_combout\);

-- Location: FF_X66_Y34_N29
\bRAM_chip|RAM~269\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3155_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~269_q\);

-- Location: LCCOMB_X70_Y34_N2
\bRAM_chip|RAM~3152\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3152_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3152_combout\);

-- Location: FF_X70_Y34_N3
\bRAM_chip|RAM~205\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3152_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~205_q\);

-- Location: LCCOMB_X67_Y33_N14
\bRAM_chip|RAM~3154\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3154_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3154_combout\);

-- Location: FF_X67_Y33_N15
\bRAM_chip|RAM~173\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3154_combout\,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~173_q\);

-- Location: LCCOMB_X70_Y31_N12
\bRAM_chip|RAM~3153\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3153_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3153_combout\);

-- Location: FF_X70_Y31_N13
\bRAM_chip|RAM~237\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3153_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~237_q\);

-- Location: LCCOMB_X67_Y30_N20
\bRAM_chip|RAM~2874\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2874_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\) # (!\bRAM_chip|RAM~237_q\)))) # (!\testbenk:adress[3]~q\ & (!\bRAM_chip|RAM~173_q\ & ((!\testbenk:adress[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~173_q\,
	datab => \bRAM_chip|RAM~237_q\,
	datac => \testbenk:adress[3]~q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2874_combout\);

-- Location: LCCOMB_X65_Y30_N30
\bRAM_chip|RAM~2875\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2875_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2874_combout\ & (!\bRAM_chip|RAM~269_q\)) # (!\bRAM_chip|RAM~2874_combout\ & ((!\bRAM_chip|RAM~205_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2874_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~269_q\,
	datac => \bRAM_chip|RAM~205_q\,
	datad => \bRAM_chip|RAM~2874_combout\,
	combout => \bRAM_chip|RAM~2875_combout\);

-- Location: LCCOMB_X62_Y31_N14
\bRAM_chip|RAM~109feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~109feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~109feeder_combout\);

-- Location: FF_X62_Y31_N15
\bRAM_chip|RAM~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~109feeder_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~109_q\);

-- Location: LCCOMB_X62_Y30_N6
\bRAM_chip|RAM~141feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~141feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~141feeder_combout\);

-- Location: FF_X62_Y30_N7
\bRAM_chip|RAM~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~141feeder_combout\,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~141_q\);

-- Location: LCCOMB_X69_Y33_N20
\bRAM_chip|RAM~77feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~77feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~77feeder_combout\);

-- Location: FF_X69_Y33_N21
\bRAM_chip|RAM~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~77feeder_combout\,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~77_q\);

-- Location: FF_X65_Y33_N17
\bRAM_chip|RAM~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~45_q\);

-- Location: LCCOMB_X65_Y33_N16
\bRAM_chip|RAM~2876\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2876_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~77_q\)) # (!\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~45_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~77_q\,
	datac => \bRAM_chip|RAM~45_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2876_combout\);

-- Location: LCCOMB_X65_Y33_N30
\bRAM_chip|RAM~2877\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2877_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2876_combout\ & ((\bRAM_chip|RAM~141_q\))) # (!\bRAM_chip|RAM~2876_combout\ & (\bRAM_chip|RAM~109_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2876_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~109_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~141_q\,
	datad => \bRAM_chip|RAM~2876_combout\,
	combout => \bRAM_chip|RAM~2877_combout\);

-- Location: LCCOMB_X65_Y30_N12
\bRAM_chip|RAM~2878\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2878_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~2875_combout\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2877_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2875_combout\,
	datad => \bRAM_chip|RAM~2877_combout\,
	combout => \bRAM_chip|RAM~2878_combout\);

-- Location: LCCOMB_X65_Y30_N16
\bRAM_chip|RAM~2881\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2881_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2878_combout\ & (\bRAM_chip|RAM~2880_combout\)) # (!\bRAM_chip|RAM~2878_combout\ & ((\bRAM_chip|RAM~2873_combout\))))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~2878_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2880_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2873_combout\,
	datad => \bRAM_chip|RAM~2878_combout\,
	combout => \bRAM_chip|RAM~2881_combout\);

-- Location: LCCOMB_X69_Y34_N6
\bRAM_chip|RAM~253feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~253feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~253feeder_combout\);

-- Location: FF_X69_Y34_N7
\bRAM_chip|RAM~253\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~253feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~253_q\);

-- Location: FF_X70_Y30_N9
\bRAM_chip|RAM~509\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~509_q\);

-- Location: FF_X69_Y31_N29
\bRAM_chip|RAM~381\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~381_q\);

-- Location: LCCOMB_X69_Y31_N2
\bRAM_chip|RAM~3141\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3141_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3141_combout\);

-- Location: FF_X69_Y31_N3
\bRAM_chip|RAM~125\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3141_combout\,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~125_q\);

-- Location: LCCOMB_X69_Y31_N28
\bRAM_chip|RAM~2848\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2848_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~381_q\)) # (!\testbenk:adress[5]~q\ & ((!\bRAM_chip|RAM~125_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~381_q\,
	datad => \bRAM_chip|RAM~125_q\,
	combout => \bRAM_chip|RAM~2848_combout\);

-- Location: LCCOMB_X70_Y30_N8
\bRAM_chip|RAM~2849\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2849_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2848_combout\ & ((\bRAM_chip|RAM~509_q\))) # (!\bRAM_chip|RAM~2848_combout\ & (\bRAM_chip|RAM~253_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2848_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~253_q\,
	datac => \bRAM_chip|RAM~509_q\,
	datad => \bRAM_chip|RAM~2848_combout\,
	combout => \bRAM_chip|RAM~2849_combout\);

-- Location: LCCOMB_X67_Y32_N6
\bRAM_chip|RAM~477feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~477feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~477feeder_combout\);

-- Location: FF_X67_Y32_N7
\bRAM_chip|RAM~477\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~477feeder_combout\,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~477_q\);

-- Location: FF_X65_Y30_N23
\bRAM_chip|RAM~349\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~349_q\);

-- Location: LCCOMB_X67_Y34_N12
\bRAM_chip|RAM~3139\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3139_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3139_combout\);

-- Location: FF_X67_Y34_N13
\bRAM_chip|RAM~93\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3139_combout\,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~93_q\);

-- Location: FF_X67_Y34_N11
\bRAM_chip|RAM~221\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~221_q\);

-- Location: LCCOMB_X67_Y34_N10
\bRAM_chip|RAM~2841\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2841_combout\ = (\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~221_q\) # (\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & (!\bRAM_chip|RAM~93_q\ & ((!\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~93_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~221_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2841_combout\);

-- Location: LCCOMB_X65_Y30_N22
\bRAM_chip|RAM~2842\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2842_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2841_combout\ & (\bRAM_chip|RAM~477_q\)) # (!\bRAM_chip|RAM~2841_combout\ & ((\bRAM_chip|RAM~349_q\))))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2841_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~477_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~349_q\,
	datad => \bRAM_chip|RAM~2841_combout\,
	combout => \bRAM_chip|RAM~2842_combout\);

-- Location: LCCOMB_X67_Y35_N20
\bRAM_chip|RAM~189feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~189feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~189feeder_combout\);

-- Location: FF_X67_Y35_N21
\bRAM_chip|RAM~189\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~189feeder_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~189_q\);

-- Location: FF_X67_Y35_N15
\bRAM_chip|RAM~445\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~445_q\);

-- Location: LCCOMB_X65_Y35_N20
\bRAM_chip|RAM~317feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~317feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~317feeder_combout\);

-- Location: FF_X65_Y35_N21
\bRAM_chip|RAM~317\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~317feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~317_q\);

-- Location: FF_X68_Y35_N5
\bRAM_chip|RAM~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~61_q\);

-- Location: LCCOMB_X68_Y35_N4
\bRAM_chip|RAM~2843\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2843_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~317_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~61_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~317_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~61_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2843_combout\);

-- Location: LCCOMB_X67_Y35_N14
\bRAM_chip|RAM~2844\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2844_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2843_combout\ & ((\bRAM_chip|RAM~445_q\))) # (!\bRAM_chip|RAM~2843_combout\ & (\bRAM_chip|RAM~189_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2843_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~189_q\,
	datac => \bRAM_chip|RAM~445_q\,
	datad => \bRAM_chip|RAM~2843_combout\,
	combout => \bRAM_chip|RAM~2844_combout\);

-- Location: LCCOMB_X70_Y33_N16
\bRAM_chip|RAM~285feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~285feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~285feeder_combout\);

-- Location: FF_X70_Y33_N17
\bRAM_chip|RAM~285\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~285feeder_combout\,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~285_q\);

-- Location: FF_X67_Y32_N5
\bRAM_chip|RAM~413\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~413_q\);

-- Location: FF_X68_Y30_N9
\bRAM_chip|RAM~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~29_q\);

-- Location: LCCOMB_X67_Y33_N20
\bRAM_chip|RAM~3140\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3140_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3140_combout\);

-- Location: FF_X67_Y33_N21
\bRAM_chip|RAM~157\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3140_combout\,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~157_q\);

-- Location: LCCOMB_X68_Y30_N8
\bRAM_chip|RAM~2845\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2845_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & ((!\bRAM_chip|RAM~157_q\))) # (!\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~29_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~29_q\,
	datad => \bRAM_chip|RAM~157_q\,
	combout => \bRAM_chip|RAM~2845_combout\);

-- Location: LCCOMB_X67_Y32_N4
\bRAM_chip|RAM~2846\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2846_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2845_combout\ & ((\bRAM_chip|RAM~413_q\))) # (!\bRAM_chip|RAM~2845_combout\ & (\bRAM_chip|RAM~285_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2845_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~285_q\,
	datac => \bRAM_chip|RAM~413_q\,
	datad => \bRAM_chip|RAM~2845_combout\,
	combout => \bRAM_chip|RAM~2846_combout\);

-- Location: LCCOMB_X66_Y30_N24
\bRAM_chip|RAM~2847\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2847_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2844_combout\)) # (!\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2846_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2844_combout\,
	datad => \bRAM_chip|RAM~2846_combout\,
	combout => \bRAM_chip|RAM~2847_combout\);

-- Location: LCCOMB_X65_Y30_N4
\bRAM_chip|RAM~2850\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2850_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2847_combout\ & (\bRAM_chip|RAM~2849_combout\)) # (!\bRAM_chip|RAM~2847_combout\ & ((\bRAM_chip|RAM~2842_combout\))))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2847_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2849_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2842_combout\,
	datad => \bRAM_chip|RAM~2847_combout\,
	combout => \bRAM_chip|RAM~2850_combout\);

-- Location: LCCOMB_X62_Y33_N10
\bRAM_chip|RAM~261feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~261feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~261feeder_combout\);

-- Location: FF_X62_Y33_N11
\bRAM_chip|RAM~261\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~261feeder_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~261_q\);

-- Location: FF_X65_Y29_N23
\bRAM_chip|RAM~517\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~517_q\);

-- Location: LCCOMB_X66_Y29_N6
\bRAM_chip|RAM~133feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~133feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~133feeder_combout\);

-- Location: FF_X66_Y29_N7
\bRAM_chip|RAM~133\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~133feeder_combout\,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~133_q\);

-- Location: FF_X65_Y29_N21
\bRAM_chip|RAM~389\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~389_q\);

-- Location: LCCOMB_X65_Y29_N20
\bRAM_chip|RAM~2858\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2858_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~389_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~133_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~133_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~389_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2858_combout\);

-- Location: LCCOMB_X65_Y29_N22
\bRAM_chip|RAM~2859\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2859_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2858_combout\ & ((\bRAM_chip|RAM~517_q\))) # (!\bRAM_chip|RAM~2858_combout\ & (\bRAM_chip|RAM~261_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2858_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~261_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~517_q\,
	datad => \bRAM_chip|RAM~2858_combout\,
	combout => \bRAM_chip|RAM~2859_combout\);

-- Location: LCCOMB_X70_Y35_N20
\bRAM_chip|RAM~197feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~197feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~197feeder_combout\);

-- Location: FF_X70_Y35_N21
\bRAM_chip|RAM~197\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~197feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~197_q\);

-- Location: FF_X66_Y35_N29
\bRAM_chip|RAM~453\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~453_q\);

-- Location: LCCOMB_X69_Y33_N22
\bRAM_chip|RAM~3143\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3143_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3143_combout\);

-- Location: FF_X69_Y33_N23
\bRAM_chip|RAM~69\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3143_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~69_q\);

-- Location: LCCOMB_X66_Y35_N0
\bRAM_chip|RAM~3142\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3142_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3142_combout\);

-- Location: FF_X66_Y35_N1
\bRAM_chip|RAM~325\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3142_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~325_q\);

-- Location: LCCOMB_X66_Y35_N6
\bRAM_chip|RAM~2851\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2851_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\) # (!\bRAM_chip|RAM~325_q\)))) # (!\testbenk:adress[5]~q\ & (!\bRAM_chip|RAM~69_q\ & ((!\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~69_q\,
	datab => \bRAM_chip|RAM~325_q\,
	datac => \testbenk:adress[5]~q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2851_combout\);

-- Location: LCCOMB_X66_Y35_N28
\bRAM_chip|RAM~2852\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2852_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2851_combout\ & ((\bRAM_chip|RAM~453_q\))) # (!\bRAM_chip|RAM~2851_combout\ & (\bRAM_chip|RAM~197_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2851_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~197_q\,
	datac => \bRAM_chip|RAM~453_q\,
	datad => \bRAM_chip|RAM~2851_combout\,
	combout => \bRAM_chip|RAM~2852_combout\);

-- Location: LCCOMB_X63_Y34_N6
\bRAM_chip|RAM~357feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~357feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~357feeder_combout\);

-- Location: FF_X63_Y34_N7
\bRAM_chip|RAM~357\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~357feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~357_q\);

-- Location: FF_X69_Y34_N25
\bRAM_chip|RAM~485\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~485_q\);

-- Location: LCCOMB_X68_Y34_N18
\bRAM_chip|RAM~3144\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3144_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3144_combout\);

-- Location: FF_X68_Y34_N19
\bRAM_chip|RAM~229\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3144_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~229_q\);

-- Location: FF_X68_Y34_N13
\bRAM_chip|RAM~101\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~101_q\);

-- Location: LCCOMB_X68_Y34_N12
\bRAM_chip|RAM~2853\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2853_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (!\bRAM_chip|RAM~229_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~101_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~229_q\,
	datac => \bRAM_chip|RAM~101_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2853_combout\);

-- Location: LCCOMB_X69_Y34_N24
\bRAM_chip|RAM~2854\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2854_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2853_combout\ & ((\bRAM_chip|RAM~485_q\))) # (!\bRAM_chip|RAM~2853_combout\ & (\bRAM_chip|RAM~357_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2853_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~357_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~485_q\,
	datad => \bRAM_chip|RAM~2853_combout\,
	combout => \bRAM_chip|RAM~2854_combout\);

-- Location: LCCOMB_X66_Y33_N28
\bRAM_chip|RAM~293feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~293feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~293feeder_combout\);

-- Location: FF_X66_Y33_N29
\bRAM_chip|RAM~293\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~293feeder_combout\,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~293_q\);

-- Location: FF_X66_Y33_N23
\bRAM_chip|RAM~421\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~421_q\);

-- Location: LCCOMB_X63_Y33_N2
\bRAM_chip|RAM~3145\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3145_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3145_combout\);

-- Location: FF_X63_Y33_N3
\bRAM_chip|RAM~165\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3145_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~165_q\);

-- Location: FF_X65_Y33_N15
\bRAM_chip|RAM~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~37_q\);

-- Location: LCCOMB_X65_Y33_N14
\bRAM_chip|RAM~2855\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2855_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (!\bRAM_chip|RAM~165_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~37_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~165_q\,
	datac => \bRAM_chip|RAM~37_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2855_combout\);

-- Location: LCCOMB_X66_Y33_N22
\bRAM_chip|RAM~2856\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2856_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2855_combout\ & ((\bRAM_chip|RAM~421_q\))) # (!\bRAM_chip|RAM~2855_combout\ & (\bRAM_chip|RAM~293_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2855_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~293_q\,
	datac => \bRAM_chip|RAM~421_q\,
	datad => \bRAM_chip|RAM~2855_combout\,
	combout => \bRAM_chip|RAM~2856_combout\);

-- Location: LCCOMB_X65_Y30_N2
\bRAM_chip|RAM~2857\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2857_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2854_combout\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2856_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2854_combout\,
	datad => \bRAM_chip|RAM~2856_combout\,
	combout => \bRAM_chip|RAM~2857_combout\);

-- Location: LCCOMB_X65_Y30_N8
\bRAM_chip|RAM~2860\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2860_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2857_combout\ & (\bRAM_chip|RAM~2859_combout\)) # (!\bRAM_chip|RAM~2857_combout\ & ((\bRAM_chip|RAM~2852_combout\))))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2857_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~2859_combout\,
	datac => \bRAM_chip|RAM~2852_combout\,
	datad => \bRAM_chip|RAM~2857_combout\,
	combout => \bRAM_chip|RAM~2860_combout\);

-- Location: LCCOMB_X69_Y29_N20
\bRAM_chip|RAM~245feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~245feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~245feeder_combout\);

-- Location: FF_X69_Y29_N21
\bRAM_chip|RAM~245\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~245feeder_combout\,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~245_q\);

-- Location: LCCOMB_X67_Y30_N10
\bRAM_chip|RAM~501feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~501feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~501feeder_combout\);

-- Location: FF_X67_Y30_N11
\bRAM_chip|RAM~501\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~501feeder_combout\,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~501_q\);

-- Location: FF_X69_Y30_N15
\bRAM_chip|RAM~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~117_q\);

-- Location: LCCOMB_X72_Y30_N26
\bRAM_chip|RAM~373feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~373feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~373feeder_combout\);

-- Location: FF_X72_Y30_N27
\bRAM_chip|RAM~373\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~373feeder_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~373_q\);

-- Location: LCCOMB_X69_Y30_N14
\bRAM_chip|RAM~2868\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2868_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~373_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~117_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~117_q\,
	datad => \bRAM_chip|RAM~373_q\,
	combout => \bRAM_chip|RAM~2868_combout\);

-- Location: LCCOMB_X65_Y30_N24
\bRAM_chip|RAM~2869\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2869_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2868_combout\ & ((\bRAM_chip|RAM~501_q\))) # (!\bRAM_chip|RAM~2868_combout\ & (\bRAM_chip|RAM~245_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2868_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~245_q\,
	datac => \bRAM_chip|RAM~501_q\,
	datad => \bRAM_chip|RAM~2868_combout\,
	combout => \bRAM_chip|RAM~2869_combout\);

-- Location: LCCOMB_X69_Y35_N28
\bRAM_chip|RAM~3146\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3146_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3146_combout\);

-- Location: FF_X69_Y35_N29
\bRAM_chip|RAM~181\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3146_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~181_q\);

-- Location: FF_X69_Y35_N23
\bRAM_chip|RAM~437\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~437_q\);

-- Location: LCCOMB_X65_Y35_N18
\bRAM_chip|RAM~309feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~309feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~309feeder_combout\);

-- Location: FF_X65_Y35_N19
\bRAM_chip|RAM~309\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~309feeder_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~309_q\);

-- Location: FF_X68_Y35_N11
\bRAM_chip|RAM~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~53_q\);

-- Location: LCCOMB_X68_Y35_N10
\bRAM_chip|RAM~2861\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2861_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~309_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~53_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~309_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~53_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2861_combout\);

-- Location: LCCOMB_X69_Y35_N22
\bRAM_chip|RAM~2862\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2862_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2861_combout\ & ((\bRAM_chip|RAM~437_q\))) # (!\bRAM_chip|RAM~2861_combout\ & (!\bRAM_chip|RAM~181_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2861_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~181_q\,
	datac => \bRAM_chip|RAM~437_q\,
	datad => \bRAM_chip|RAM~2861_combout\,
	combout => \bRAM_chip|RAM~2862_combout\);

-- Location: LCCOMB_X67_Y31_N28
\bRAM_chip|RAM~277feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~277feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~277feeder_combout\);

-- Location: FF_X67_Y31_N29
\bRAM_chip|RAM~277\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~277feeder_combout\,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~277_q\);

-- Location: FF_X63_Y30_N5
\bRAM_chip|RAM~405\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~405_q\);

-- Location: LCCOMB_X66_Y30_N22
\bRAM_chip|RAM~3148\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3148_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3148_combout\);

-- Location: FF_X66_Y30_N23
\bRAM_chip|RAM~149\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3148_combout\,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~149_q\);

-- Location: FF_X63_Y30_N3
\bRAM_chip|RAM~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~21_q\);

-- Location: LCCOMB_X63_Y30_N2
\bRAM_chip|RAM~2865\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2865_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)) # (!\bRAM_chip|RAM~149_q\))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~21_q\ & !\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~149_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~21_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2865_combout\);

-- Location: LCCOMB_X63_Y30_N4
\bRAM_chip|RAM~2866\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2866_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2865_combout\ & ((\bRAM_chip|RAM~405_q\))) # (!\bRAM_chip|RAM~2865_combout\ & (\bRAM_chip|RAM~277_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2865_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~277_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~405_q\,
	datad => \bRAM_chip|RAM~2865_combout\,
	combout => \bRAM_chip|RAM~2866_combout\);

-- Location: LCCOMB_X67_Y29_N16
\bRAM_chip|RAM~3147\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3147_combout\ = !\bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~3147_combout\);

-- Location: FF_X67_Y29_N17
\bRAM_chip|RAM~341\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3147_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~341_q\);

-- Location: FF_X68_Y29_N31
\bRAM_chip|RAM~469\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~469_q\);

-- Location: LCCOMB_X72_Y30_N4
\bRAM_chip|RAM~213feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~213feeder_combout\ = \bRAM_chip|RAM~3022_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3022_combout\,
	combout => \bRAM_chip|RAM~213feeder_combout\);

-- Location: FF_X72_Y30_N5
\bRAM_chip|RAM~213\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~213feeder_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~213_q\);

-- Location: FF_X69_Y30_N9
\bRAM_chip|RAM~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3022_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~85_q\);

-- Location: LCCOMB_X69_Y30_N8
\bRAM_chip|RAM~2863\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2863_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~213_q\) # ((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~85_q\ & !\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~213_q\,
	datac => \bRAM_chip|RAM~85_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2863_combout\);

-- Location: LCCOMB_X68_Y29_N30
\bRAM_chip|RAM~2864\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2864_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2863_combout\ & ((\bRAM_chip|RAM~469_q\))) # (!\bRAM_chip|RAM~2863_combout\ & (!\bRAM_chip|RAM~341_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2863_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~341_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~469_q\,
	datad => \bRAM_chip|RAM~2863_combout\,
	combout => \bRAM_chip|RAM~2864_combout\);

-- Location: LCCOMB_X65_Y30_N10
\bRAM_chip|RAM~2867\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2867_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2864_combout\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2866_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2866_combout\,
	datad => \bRAM_chip|RAM~2864_combout\,
	combout => \bRAM_chip|RAM~2867_combout\);

-- Location: LCCOMB_X65_Y30_N18
\bRAM_chip|RAM~2870\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2870_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2867_combout\ & (\bRAM_chip|RAM~2869_combout\)) # (!\bRAM_chip|RAM~2867_combout\ & ((\bRAM_chip|RAM~2862_combout\))))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2867_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~2869_combout\,
	datac => \bRAM_chip|RAM~2862_combout\,
	datad => \bRAM_chip|RAM~2867_combout\,
	combout => \bRAM_chip|RAM~2870_combout\);

-- Location: LCCOMB_X65_Y30_N28
\bRAM_chip|RAM~2871\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2871_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2860_combout\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2870_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2860_combout\,
	datad => \bRAM_chip|RAM~2870_combout\,
	combout => \bRAM_chip|RAM~2871_combout\);

-- Location: LCCOMB_X65_Y30_N6
\bRAM_chip|RAM~2882\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2882_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2871_combout\ & (\bRAM_chip|RAM~2881_combout\)) # (!\bRAM_chip|RAM~2871_combout\ & ((\bRAM_chip|RAM~2850_combout\))))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2871_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~2881_combout\,
	datac => \bRAM_chip|RAM~2850_combout\,
	datad => \bRAM_chip|RAM~2871_combout\,
	combout => \bRAM_chip|RAM~2882_combout\);

-- Location: LCCOMB_X66_Y28_N24
\bRAM_chip|s_Data_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~4_combout\ = (\SW[17]~input_o\ & (\bRAM_chip|RAM~2882_combout\ & \reset_n~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \bRAM_chip|RAM~2882_combout\,
	datad => \reset_n~input_o\,
	combout => \bRAM_chip|s_Data_out~4_combout\);

-- Location: FF_X66_Y28_N25
\bRAM_chip|s_Data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(4));

-- Location: LCCOMB_X67_Y34_N8
\bRAM_chip|RAM~3023\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3023_combout\ = (\bRAM_chip|RAM~2924_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2924_combout\,
	combout => \bRAM_chip|RAM~3023_combout\);

-- Location: FF_X66_Y34_N23
\bRAM_chip|RAM~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~142_q\);

-- Location: LCCOMB_X66_Y31_N22
\bRAM_chip|RAM~398feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~398feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~398feeder_combout\);

-- Location: FF_X66_Y31_N23
\bRAM_chip|RAM~398\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~398feeder_combout\,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~398_q\);

-- Location: LCCOMB_X66_Y34_N22
\bRAM_chip|RAM~2921\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2921_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~398_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~142_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~142_q\,
	datad => \bRAM_chip|RAM~398_q\,
	combout => \bRAM_chip|RAM~2921_combout\);

-- Location: LCCOMB_X68_Y31_N30
\bRAM_chip|RAM~526feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~526feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~526feeder_combout\);

-- Location: FF_X68_Y31_N31
\bRAM_chip|RAM~526\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~526feeder_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~526_q\);

-- Location: FF_X66_Y34_N13
\bRAM_chip|RAM~270\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~270_q\);

-- Location: LCCOMB_X66_Y34_N12
\bRAM_chip|RAM~2922\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2922_combout\ = (\bRAM_chip|RAM~2921_combout\ & ((\bRAM_chip|RAM~526_q\) # ((!\testbenk:adress[4]~q\)))) # (!\bRAM_chip|RAM~2921_combout\ & (((\bRAM_chip|RAM~270_q\ & \testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2921_combout\,
	datab => \bRAM_chip|RAM~526_q\,
	datac => \bRAM_chip|RAM~270_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2922_combout\);

-- Location: LCCOMB_X69_Y34_N20
\bRAM_chip|RAM~254feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~254feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~254feeder_combout\);

-- Location: FF_X69_Y34_N21
\bRAM_chip|RAM~254\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~254feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~254_q\);

-- Location: FF_X70_Y30_N13
\bRAM_chip|RAM~510\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~510_q\);

-- Location: FF_X70_Y33_N25
\bRAM_chip|RAM~382\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~382_q\);

-- Location: LCCOMB_X70_Y30_N18
\bRAM_chip|RAM~3175\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3175_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3175_combout\);

-- Location: FF_X70_Y30_N19
\bRAM_chip|RAM~126\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3175_combout\,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~126_q\);

-- Location: LCCOMB_X70_Y33_N24
\bRAM_chip|RAM~2914\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2914_combout\ = (\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\) # ((\bRAM_chip|RAM~382_q\)))) # (!\testbenk:adress[5]~q\ & (!\testbenk:adress[4]~q\ & ((!\bRAM_chip|RAM~126_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~382_q\,
	datad => \bRAM_chip|RAM~126_q\,
	combout => \bRAM_chip|RAM~2914_combout\);

-- Location: LCCOMB_X70_Y30_N12
\bRAM_chip|RAM~2915\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2915_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2914_combout\ & ((\bRAM_chip|RAM~510_q\))) # (!\bRAM_chip|RAM~2914_combout\ & (\bRAM_chip|RAM~254_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2914_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~254_q\,
	datac => \bRAM_chip|RAM~510_q\,
	datad => \bRAM_chip|RAM~2914_combout\,
	combout => \bRAM_chip|RAM~2915_combout\);

-- Location: LCCOMB_X65_Y29_N12
\bRAM_chip|RAM~3176\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3176_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3176_combout\);

-- Location: FF_X65_Y29_N13
\bRAM_chip|RAM~390\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3176_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~390_q\);

-- Location: FF_X65_Y29_N25
\bRAM_chip|RAM~518\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~518_q\);

-- Location: LCCOMB_X66_Y29_N12
\bRAM_chip|RAM~3178\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3178_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3178_combout\);

-- Location: FF_X66_Y29_N13
\bRAM_chip|RAM~134\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3178_combout\,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~134_q\);

-- Location: LCCOMB_X70_Y32_N28
\bRAM_chip|RAM~3177\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3177_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3177_combout\);

-- Location: FF_X70_Y32_N29
\bRAM_chip|RAM~262\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3177_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~262_q\);

-- Location: LCCOMB_X65_Y29_N2
\bRAM_chip|RAM~2916\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2916_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & ((!\bRAM_chip|RAM~262_q\))) # (!\testbenk:adress[4]~q\ & (!\bRAM_chip|RAM~134_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~134_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~262_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2916_combout\);

-- Location: LCCOMB_X65_Y29_N24
\bRAM_chip|RAM~2917\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2917_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2916_combout\ & ((\bRAM_chip|RAM~518_q\))) # (!\bRAM_chip|RAM~2916_combout\ & (!\bRAM_chip|RAM~390_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2916_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~390_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~518_q\,
	datad => \bRAM_chip|RAM~2916_combout\,
	combout => \bRAM_chip|RAM~2917_combout\);

-- Location: LCCOMB_X67_Y29_N28
\bRAM_chip|RAM~374feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~374feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~374feeder_combout\);

-- Location: FF_X67_Y29_N29
\bRAM_chip|RAM~374\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~374feeder_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~374_q\);

-- Location: FF_X67_Y30_N5
\bRAM_chip|RAM~502\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~502_q\);

-- Location: LCCOMB_X69_Y29_N22
\bRAM_chip|RAM~246feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~246feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~246feeder_combout\);

-- Location: FF_X69_Y29_N23
\bRAM_chip|RAM~246\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~246feeder_combout\,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~246_q\);

-- Location: FF_X69_Y30_N23
\bRAM_chip|RAM~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~118_q\);

-- Location: LCCOMB_X69_Y30_N22
\bRAM_chip|RAM~2918\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2918_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~246_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~118_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~246_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~118_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2918_combout\);

-- Location: LCCOMB_X67_Y30_N4
\bRAM_chip|RAM~2919\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2919_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2918_combout\ & ((\bRAM_chip|RAM~502_q\))) # (!\bRAM_chip|RAM~2918_combout\ & (\bRAM_chip|RAM~374_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2918_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~374_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~502_q\,
	datad => \bRAM_chip|RAM~2918_combout\,
	combout => \bRAM_chip|RAM~2919_combout\);

-- Location: LCCOMB_X66_Y34_N18
\bRAM_chip|RAM~2920\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2920_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2917_combout\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2919_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2917_combout\,
	datad => \bRAM_chip|RAM~2919_combout\,
	combout => \bRAM_chip|RAM~2920_combout\);

-- Location: LCCOMB_X66_Y34_N16
\bRAM_chip|RAM~2923\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2923_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2920_combout\ & (\bRAM_chip|RAM~2922_combout\)) # (!\bRAM_chip|RAM~2920_combout\ & ((\bRAM_chip|RAM~2915_combout\))))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2920_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2922_combout\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2915_combout\,
	datad => \bRAM_chip|RAM~2920_combout\,
	combout => \bRAM_chip|RAM~2923_combout\);

-- Location: LCCOMB_X66_Y32_N18
\bRAM_chip|RAM~334feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~334feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~334feeder_combout\);

-- Location: FF_X66_Y32_N19
\bRAM_chip|RAM~334\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~334feeder_combout\,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~334_q\);

-- Location: FF_X65_Y35_N25
\bRAM_chip|RAM~318\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~318_q\);

-- Location: LCCOMB_X65_Y35_N10
\bRAM_chip|RAM~3157\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3157_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3157_combout\);

-- Location: FF_X65_Y35_N11
\bRAM_chip|RAM~310\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3157_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~310_q\);

-- Location: LCCOMB_X66_Y35_N10
\bRAM_chip|RAM~3156\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3156_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3156_combout\);

-- Location: FF_X66_Y35_N11
\bRAM_chip|RAM~326\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3156_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~326_q\);

-- Location: LCCOMB_X65_Y35_N28
\bRAM_chip|RAM~2883\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2883_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\) # (!\bRAM_chip|RAM~326_q\)))) # (!\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~310_q\ & ((!\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~310_q\,
	datab => \bRAM_chip|RAM~326_q\,
	datac => \testbenk:adress[1]~q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2883_combout\);

-- Location: LCCOMB_X65_Y35_N24
\bRAM_chip|RAM~2884\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2884_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2883_combout\ & (\bRAM_chip|RAM~334_q\)) # (!\bRAM_chip|RAM~2883_combout\ & ((\bRAM_chip|RAM~318_q\))))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2883_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~334_q\,
	datac => \bRAM_chip|RAM~318_q\,
	datad => \bRAM_chip|RAM~2883_combout\,
	combout => \bRAM_chip|RAM~2884_combout\);

-- Location: LCCOMB_X65_Y34_N18
\bRAM_chip|RAM~454feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~454feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~454feeder_combout\);

-- Location: FF_X65_Y34_N19
\bRAM_chip|RAM~454\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~454feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~454_q\);

-- Location: FF_X65_Y34_N1
\bRAM_chip|RAM~462\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~462_q\);

-- Location: LCCOMB_X67_Y35_N6
\bRAM_chip|RAM~446feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~446feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~446feeder_combout\);

-- Location: FF_X67_Y35_N7
\bRAM_chip|RAM~446\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~446feeder_combout\,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~446_q\);

-- Location: FF_X69_Y35_N27
\bRAM_chip|RAM~438\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~438_q\);

-- Location: LCCOMB_X69_Y35_N26
\bRAM_chip|RAM~2890\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2890_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~446_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~438_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~446_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~438_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2890_combout\);

-- Location: LCCOMB_X65_Y34_N0
\bRAM_chip|RAM~2891\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2891_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2890_combout\ & ((\bRAM_chip|RAM~462_q\))) # (!\bRAM_chip|RAM~2890_combout\ & (\bRAM_chip|RAM~454_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2890_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~454_q\,
	datac => \bRAM_chip|RAM~462_q\,
	datad => \bRAM_chip|RAM~2890_combout\,
	combout => \bRAM_chip|RAM~2891_combout\);

-- Location: LCCOMB_X69_Y33_N26
\bRAM_chip|RAM~3162\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3162_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3162_combout\);

-- Location: FF_X69_Y33_N27
\bRAM_chip|RAM~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3162_combout\,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~78_q\);

-- Location: FF_X68_Y35_N21
\bRAM_chip|RAM~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~62_q\);

-- Location: LCCOMB_X69_Y33_N10
\bRAM_chip|RAM~3160\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3160_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3160_combout\);

-- Location: FF_X69_Y33_N11
\bRAM_chip|RAM~70\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3160_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~70_q\);

-- Location: LCCOMB_X68_Y35_N14
\bRAM_chip|RAM~3161\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3161_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3161_combout\);

-- Location: FF_X68_Y35_N15
\bRAM_chip|RAM~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3161_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~54_q\);

-- Location: LCCOMB_X69_Y33_N0
\bRAM_chip|RAM~2887\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2887_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~70_q\)) # (!\testbenk:adress[1]~q\ & ((!\bRAM_chip|RAM~54_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~70_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~54_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2887_combout\);

-- Location: LCCOMB_X68_Y35_N20
\bRAM_chip|RAM~2888\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2888_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2887_combout\ & (!\bRAM_chip|RAM~78_q\)) # (!\bRAM_chip|RAM~2887_combout\ & ((\bRAM_chip|RAM~62_q\))))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2887_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~78_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~62_q\,
	datad => \bRAM_chip|RAM~2887_combout\,
	combout => \bRAM_chip|RAM~2888_combout\);

-- Location: LCCOMB_X70_Y34_N4
\bRAM_chip|RAM~198feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~198feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~198feeder_combout\);

-- Location: FF_X70_Y34_N5
\bRAM_chip|RAM~198\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~198feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~198_q\);

-- Location: LCCOMB_X70_Y34_N6
\bRAM_chip|RAM~3159\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3159_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3159_combout\);

-- Location: FF_X70_Y34_N7
\bRAM_chip|RAM~206\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3159_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~206_q\);

-- Location: LCCOMB_X67_Y35_N4
\bRAM_chip|RAM~3158\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3158_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3158_combout\);

-- Location: FF_X67_Y35_N5
\bRAM_chip|RAM~190\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3158_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~190_q\);

-- Location: FF_X69_Y35_N13
\bRAM_chip|RAM~182\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~182_q\);

-- Location: LCCOMB_X69_Y35_N12
\bRAM_chip|RAM~2885\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2885_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~190_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~182_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~190_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~182_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2885_combout\);

-- Location: LCCOMB_X68_Y34_N6
\bRAM_chip|RAM~2886\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2886_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2885_combout\ & ((!\bRAM_chip|RAM~206_q\))) # (!\bRAM_chip|RAM~2885_combout\ & (\bRAM_chip|RAM~198_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2885_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~198_q\,
	datac => \bRAM_chip|RAM~206_q\,
	datad => \bRAM_chip|RAM~2885_combout\,
	combout => \bRAM_chip|RAM~2886_combout\);

-- Location: LCCOMB_X68_Y34_N4
\bRAM_chip|RAM~2889\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2889_combout\ = (\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\) # ((\bRAM_chip|RAM~2886_combout\)))) # (!\testbenk:adress[4]~q\ & (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2888_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2888_combout\,
	datad => \bRAM_chip|RAM~2886_combout\,
	combout => \bRAM_chip|RAM~2889_combout\);

-- Location: LCCOMB_X67_Y34_N30
\bRAM_chip|RAM~2892\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2892_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2889_combout\ & ((\bRAM_chip|RAM~2891_combout\))) # (!\bRAM_chip|RAM~2889_combout\ & (\bRAM_chip|RAM~2884_combout\)))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~2889_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2884_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2891_combout\,
	datad => \bRAM_chip|RAM~2889_combout\,
	combout => \bRAM_chip|RAM~2892_combout\);

-- Location: LCCOMB_X63_Y33_N16
\bRAM_chip|RAM~166feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~166feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~166feeder_combout\);

-- Location: FF_X63_Y33_N17
\bRAM_chip|RAM~166\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~166feeder_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~166_q\);

-- Location: FF_X67_Y33_N27
\bRAM_chip|RAM~174\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~174_q\);

-- Location: FF_X67_Y33_N13
\bRAM_chip|RAM~158\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~158_q\);

-- Location: LCCOMB_X66_Y30_N20
\bRAM_chip|RAM~3168\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3168_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3168_combout\);

-- Location: FF_X66_Y30_N21
\bRAM_chip|RAM~150\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3168_combout\,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~150_q\);

-- Location: LCCOMB_X67_Y33_N12
\bRAM_chip|RAM~2903\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2903_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~158_q\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & ((!\bRAM_chip|RAM~150_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~158_q\,
	datad => \bRAM_chip|RAM~150_q\,
	combout => \bRAM_chip|RAM~2903_combout\);

-- Location: LCCOMB_X67_Y33_N26
\bRAM_chip|RAM~2904\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2904_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2903_combout\ & ((\bRAM_chip|RAM~174_q\))) # (!\bRAM_chip|RAM~2903_combout\ & (\bRAM_chip|RAM~166_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2903_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~166_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~174_q\,
	datad => \bRAM_chip|RAM~2903_combout\,
	combout => \bRAM_chip|RAM~2904_combout\);

-- Location: LCCOMB_X66_Y33_N30
\bRAM_chip|RAM~422feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~422feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~422feeder_combout\);

-- Location: FF_X66_Y33_N31
\bRAM_chip|RAM~422\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~422feeder_combout\,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~422_q\);

-- Location: FF_X65_Y31_N27
\bRAM_chip|RAM~430\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~430_q\);

-- Location: LCCOMB_X68_Y31_N0
\bRAM_chip|RAM~3174\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3174_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3174_combout\);

-- Location: FF_X68_Y31_N1
\bRAM_chip|RAM~406\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3174_combout\,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~406_q\);

-- Location: FF_X67_Y32_N25
\bRAM_chip|RAM~414\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~414_q\);

-- Location: LCCOMB_X67_Y32_N24
\bRAM_chip|RAM~2910\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2910_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~414_q\))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~406_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~406_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~414_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2910_combout\);

-- Location: LCCOMB_X66_Y32_N4
\bRAM_chip|RAM~2911\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2911_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2910_combout\ & ((\bRAM_chip|RAM~430_q\))) # (!\bRAM_chip|RAM~2910_combout\ & (\bRAM_chip|RAM~422_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2910_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~422_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~430_q\,
	datad => \bRAM_chip|RAM~2910_combout\,
	combout => \bRAM_chip|RAM~2911_combout\);

-- Location: LCCOMB_X70_Y33_N6
\bRAM_chip|RAM~3169\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3169_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3169_combout\);

-- Location: FF_X70_Y33_N7
\bRAM_chip|RAM~286\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3169_combout\,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~286_q\);

-- Location: LCCOMB_X67_Y31_N26
\bRAM_chip|RAM~3170\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3170_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3170_combout\);

-- Location: FF_X67_Y31_N27
\bRAM_chip|RAM~278\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3170_combout\,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~278_q\);

-- Location: FF_X66_Y33_N1
\bRAM_chip|RAM~294\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~294_q\);

-- Location: LCCOMB_X66_Y33_N0
\bRAM_chip|RAM~2905\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2905_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~294_q\))) # (!\testbenk:adress[1]~q\ & (!\bRAM_chip|RAM~278_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~278_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~294_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2905_combout\);

-- Location: LCCOMB_X65_Y31_N28
\bRAM_chip|RAM~3171\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3171_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3171_combout\);

-- Location: FF_X65_Y31_N29
\bRAM_chip|RAM~302\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3171_combout\,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~302_q\);

-- Location: LCCOMB_X67_Y34_N14
\bRAM_chip|RAM~2906\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2906_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2905_combout\ & ((!\bRAM_chip|RAM~302_q\))) # (!\bRAM_chip|RAM~2905_combout\ & (!\bRAM_chip|RAM~286_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2905_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~286_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2905_combout\,
	datad => \bRAM_chip|RAM~302_q\,
	combout => \bRAM_chip|RAM~2906_combout\);

-- Location: LCCOMB_X68_Y30_N2
\bRAM_chip|RAM~3172\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3172_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3172_combout\);

-- Location: FF_X68_Y30_N3
\bRAM_chip|RAM~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3172_combout\,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~30_q\);

-- Location: LCCOMB_X65_Y33_N12
\bRAM_chip|RAM~3173\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3173_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3173_combout\);

-- Location: FF_X65_Y33_N13
\bRAM_chip|RAM~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3173_combout\,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~46_q\);

-- Location: LCCOMB_X67_Y30_N18
\bRAM_chip|RAM~38feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~38feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~38feeder_combout\);

-- Location: FF_X67_Y30_N19
\bRAM_chip|RAM~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~38feeder_combout\,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~38_q\);

-- Location: FF_X68_Y30_N13
\bRAM_chip|RAM~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~22_q\);

-- Location: LCCOMB_X68_Y30_N12
\bRAM_chip|RAM~2907\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2907_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~38_q\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~22_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~38_q\,
	datac => \bRAM_chip|RAM~22_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2907_combout\);

-- Location: LCCOMB_X68_Y30_N26
\bRAM_chip|RAM~2908\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2908_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2907_combout\ & ((!\bRAM_chip|RAM~46_q\))) # (!\bRAM_chip|RAM~2907_combout\ & (!\bRAM_chip|RAM~30_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2907_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~30_q\,
	datac => \bRAM_chip|RAM~46_q\,
	datad => \bRAM_chip|RAM~2907_combout\,
	combout => \bRAM_chip|RAM~2908_combout\);

-- Location: LCCOMB_X67_Y34_N24
\bRAM_chip|RAM~2909\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2909_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2906_combout\)) # (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2908_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2906_combout\,
	datad => \bRAM_chip|RAM~2908_combout\,
	combout => \bRAM_chip|RAM~2909_combout\);

-- Location: LCCOMB_X67_Y34_N2
\bRAM_chip|RAM~2912\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2912_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2909_combout\ & ((\bRAM_chip|RAM~2911_combout\))) # (!\bRAM_chip|RAM~2909_combout\ & (\bRAM_chip|RAM~2904_combout\)))) # (!\testbenk:adress[4]~q\ & 
-- (((\bRAM_chip|RAM~2909_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2904_combout\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~2911_combout\,
	datad => \bRAM_chip|RAM~2909_combout\,
	combout => \bRAM_chip|RAM~2912_combout\);

-- Location: LCCOMB_X68_Y34_N10
\bRAM_chip|RAM~3163\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3163_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3163_combout\);

-- Location: FF_X68_Y34_N11
\bRAM_chip|RAM~230\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3163_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~230_q\);

-- Location: FF_X72_Y34_N13
\bRAM_chip|RAM~238\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~238_q\);

-- Location: FF_X72_Y33_N1
\bRAM_chip|RAM~222\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~222_q\);

-- Location: LCCOMB_X72_Y33_N18
\bRAM_chip|RAM~3164\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3164_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3164_combout\);

-- Location: FF_X72_Y33_N19
\bRAM_chip|RAM~214\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3164_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~214_q\);

-- Location: LCCOMB_X72_Y33_N0
\bRAM_chip|RAM~2893\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2893_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[0]~q\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~222_q\)) # (!\testbenk:adress[0]~q\ & ((!\bRAM_chip|RAM~214_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~222_q\,
	datad => \bRAM_chip|RAM~214_q\,
	combout => \bRAM_chip|RAM~2893_combout\);

-- Location: LCCOMB_X72_Y34_N12
\bRAM_chip|RAM~2894\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2894_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2893_combout\ & ((\bRAM_chip|RAM~238_q\))) # (!\bRAM_chip|RAM~2893_combout\ & (!\bRAM_chip|RAM~230_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2893_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~230_q\,
	datac => \bRAM_chip|RAM~238_q\,
	datad => \bRAM_chip|RAM~2893_combout\,
	combout => \bRAM_chip|RAM~2894_combout\);

-- Location: LCCOMB_X69_Y34_N2
\bRAM_chip|RAM~486feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~486feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~486feeder_combout\);

-- Location: FF_X69_Y34_N3
\bRAM_chip|RAM~486\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~486feeder_combout\,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~486_q\);

-- Location: FF_X70_Y31_N5
\bRAM_chip|RAM~494\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~494_q\);

-- Location: LCCOMB_X67_Y32_N2
\bRAM_chip|RAM~478feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~478feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~478feeder_combout\);

-- Location: FF_X67_Y32_N3
\bRAM_chip|RAM~478\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~478feeder_combout\,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~478_q\);

-- Location: FF_X68_Y29_N13
\bRAM_chip|RAM~470\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~470_q\);

-- Location: LCCOMB_X68_Y29_N12
\bRAM_chip|RAM~2900\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2900_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~478_q\) # ((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~470_q\ & !\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~478_q\,
	datac => \bRAM_chip|RAM~470_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2900_combout\);

-- Location: LCCOMB_X70_Y31_N4
\bRAM_chip|RAM~2901\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2901_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2900_combout\ & ((\bRAM_chip|RAM~494_q\))) # (!\bRAM_chip|RAM~2900_combout\ & (\bRAM_chip|RAM~486_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2900_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~486_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~494_q\,
	datad => \bRAM_chip|RAM~2900_combout\,
	combout => \bRAM_chip|RAM~2901_combout\);

-- Location: LCCOMB_X72_Y34_N6
\bRAM_chip|RAM~3167\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3167_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3167_combout\);

-- Location: FF_X72_Y34_N7
\bRAM_chip|RAM~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3167_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~110_q\);

-- Location: FF_X67_Y34_N17
\bRAM_chip|RAM~94\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~94_q\);

-- Location: LCCOMB_X68_Y34_N20
\bRAM_chip|RAM~3165\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3165_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3165_combout\);

-- Location: FF_X68_Y34_N21
\bRAM_chip|RAM~102\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3165_combout\,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~102_q\);

-- Location: LCCOMB_X69_Y30_N0
\bRAM_chip|RAM~3166\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3166_combout\ = !\bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~3166_combout\);

-- Location: FF_X69_Y30_N1
\bRAM_chip|RAM~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3166_combout\,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~86_q\);

-- Location: LCCOMB_X68_Y34_N26
\bRAM_chip|RAM~2897\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2897_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)) # (!\bRAM_chip|RAM~102_q\))) # (!\testbenk:adress[1]~q\ & (((!\bRAM_chip|RAM~86_q\ & !\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~102_q\,
	datac => \bRAM_chip|RAM~86_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2897_combout\);

-- Location: LCCOMB_X67_Y34_N16
\bRAM_chip|RAM~2898\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2898_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2897_combout\ & (!\bRAM_chip|RAM~110_q\)) # (!\bRAM_chip|RAM~2897_combout\ & ((\bRAM_chip|RAM~94_q\))))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2897_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~110_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~94_q\,
	datad => \bRAM_chip|RAM~2897_combout\,
	combout => \bRAM_chip|RAM~2898_combout\);

-- Location: LCCOMB_X65_Y30_N0
\bRAM_chip|RAM~350feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~350feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~350feeder_combout\);

-- Location: FF_X65_Y30_N1
\bRAM_chip|RAM~350\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~350feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~350_q\);

-- Location: FF_X66_Y31_N21
\bRAM_chip|RAM~366\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~366_q\);

-- Location: LCCOMB_X70_Y29_N20
\bRAM_chip|RAM~358feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~358feeder_combout\ = \bRAM_chip|RAM~3023_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3023_combout\,
	combout => \bRAM_chip|RAM~358feeder_combout\);

-- Location: FF_X70_Y29_N21
\bRAM_chip|RAM~358\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~358feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~358_q\);

-- Location: FF_X67_Y29_N27
\bRAM_chip|RAM~342\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3023_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~342_q\);

-- Location: LCCOMB_X67_Y29_N26
\bRAM_chip|RAM~2895\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2895_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~358_q\) # ((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~342_q\ & !\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~358_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~342_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2895_combout\);

-- Location: LCCOMB_X66_Y31_N20
\bRAM_chip|RAM~2896\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2896_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2895_combout\ & ((\bRAM_chip|RAM~366_q\))) # (!\bRAM_chip|RAM~2895_combout\ & (\bRAM_chip|RAM~350_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2895_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~350_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~366_q\,
	datad => \bRAM_chip|RAM~2895_combout\,
	combout => \bRAM_chip|RAM~2896_combout\);

-- Location: LCCOMB_X67_Y34_N18
\bRAM_chip|RAM~2899\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2899_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\) # (\bRAM_chip|RAM~2896_combout\)))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~2898_combout\ & (!\testbenk:adress[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~2898_combout\,
	datac => \testbenk:adress[4]~q\,
	datad => \bRAM_chip|RAM~2896_combout\,
	combout => \bRAM_chip|RAM~2899_combout\);

-- Location: LCCOMB_X67_Y34_N0
\bRAM_chip|RAM~2902\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2902_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2899_combout\ & ((\bRAM_chip|RAM~2901_combout\))) # (!\bRAM_chip|RAM~2899_combout\ & (\bRAM_chip|RAM~2894_combout\)))) # (!\testbenk:adress[4]~q\ & 
-- (((\bRAM_chip|RAM~2899_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2894_combout\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~2901_combout\,
	datad => \bRAM_chip|RAM~2899_combout\,
	combout => \bRAM_chip|RAM~2902_combout\);

-- Location: LCCOMB_X67_Y34_N20
\bRAM_chip|RAM~2913\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2913_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2902_combout\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2912_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~2912_combout\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2902_combout\,
	combout => \bRAM_chip|RAM~2913_combout\);

-- Location: LCCOMB_X67_Y34_N6
\bRAM_chip|RAM~2924\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2924_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2913_combout\ & (\bRAM_chip|RAM~2923_combout\)) # (!\bRAM_chip|RAM~2913_combout\ & ((\bRAM_chip|RAM~2892_combout\))))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2913_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2923_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~2892_combout\,
	datad => \bRAM_chip|RAM~2913_combout\,
	combout => \bRAM_chip|RAM~2924_combout\);

-- Location: LCCOMB_X68_Y33_N28
\bRAM_chip|s_Data_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~5_combout\ = (\SW[17]~input_o\ & (\reset_n~input_o\ & \bRAM_chip|RAM~2924_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[17]~input_o\,
	datac => \reset_n~input_o\,
	datad => \bRAM_chip|RAM~2924_combout\,
	combout => \bRAM_chip|s_Data_out~5_combout\);

-- Location: FF_X68_Y33_N29
\bRAM_chip|s_Data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(5));

-- Location: LCCOMB_X69_Y32_N30
\bRAM_chip|RAM~3024\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3024_combout\ = (\bRAM_chip|RAM~2966_combout\) # (!\SW[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~2966_combout\,
	combout => \bRAM_chip|RAM~3024_combout\);

-- Location: FF_X69_Y32_N31
\bRAM_chip|RAM~527\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3024_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~527_q\);

-- Location: LCCOMB_X70_Y31_N8
\bRAM_chip|RAM~495feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~495feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~495feeder_combout\);

-- Location: FF_X70_Y31_N9
\bRAM_chip|RAM~495\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~495feeder_combout\,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~495_q\);

-- Location: LCCOMB_X65_Y34_N16
\bRAM_chip|RAM~463feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~463feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~463feeder_combout\);

-- Location: FF_X65_Y34_N17
\bRAM_chip|RAM~463\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~463feeder_combout\,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~463_q\);

-- Location: FF_X65_Y31_N23
\bRAM_chip|RAM~431\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~431_q\);

-- Location: LCCOMB_X65_Y31_N22
\bRAM_chip|RAM~2963\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2963_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~463_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~431_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~463_q\,
	datac => \bRAM_chip|RAM~431_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2963_combout\);

-- Location: LCCOMB_X69_Y32_N0
\bRAM_chip|RAM~2964\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2964_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2963_combout\ & (\bRAM_chip|RAM~527_q\)) # (!\bRAM_chip|RAM~2963_combout\ & ((\bRAM_chip|RAM~495_q\))))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2963_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~527_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~495_q\,
	datad => \bRAM_chip|RAM~2963_combout\,
	combout => \bRAM_chip|RAM~2964_combout\);

-- Location: LCCOMB_X65_Y29_N14
\bRAM_chip|RAM~519feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~519feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~519feeder_combout\);

-- Location: FF_X65_Y29_N15
\bRAM_chip|RAM~519\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~519feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~519_q\);

-- Location: LCCOMB_X65_Y34_N6
\bRAM_chip|RAM~455feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~455feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~455feeder_combout\);

-- Location: FF_X65_Y34_N7
\bRAM_chip|RAM~455\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~455feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~455_q\);

-- Location: FF_X66_Y33_N15
\bRAM_chip|RAM~423\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~423_q\);

-- Location: LCCOMB_X69_Y34_N28
\bRAM_chip|RAM~487feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~487feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~487feeder_combout\);

-- Location: FF_X69_Y34_N29
\bRAM_chip|RAM~487\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~487feeder_combout\,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~487_q\);

-- Location: LCCOMB_X66_Y33_N14
\bRAM_chip|RAM~2956\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2956_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~487_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~423_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~423_q\,
	datad => \bRAM_chip|RAM~487_q\,
	combout => \bRAM_chip|RAM~2956_combout\);

-- Location: LCCOMB_X66_Y30_N18
\bRAM_chip|RAM~2957\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2957_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2956_combout\ & (\bRAM_chip|RAM~519_q\)) # (!\bRAM_chip|RAM~2956_combout\ & ((\bRAM_chip|RAM~455_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2956_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~519_q\,
	datab => \bRAM_chip|RAM~455_q\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2956_combout\,
	combout => \bRAM_chip|RAM~2957_combout\);

-- Location: LCCOMB_X67_Y32_N10
\bRAM_chip|RAM~479feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~479feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~479feeder_combout\);

-- Location: FF_X67_Y32_N11
\bRAM_chip|RAM~479\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~479feeder_combout\,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~479_q\);

-- Location: LCCOMB_X67_Y35_N18
\bRAM_chip|RAM~447feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~447feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~447feeder_combout\);

-- Location: FF_X67_Y35_N19
\bRAM_chip|RAM~447\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~447feeder_combout\,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~447_q\);

-- Location: FF_X67_Y32_N29
\bRAM_chip|RAM~415\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~415_q\);

-- Location: LCCOMB_X67_Y32_N28
\bRAM_chip|RAM~2958\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2958_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~447_q\)) # (!\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~415_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~447_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~415_q\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2958_combout\);

-- Location: LCCOMB_X70_Y30_N22
\bRAM_chip|RAM~511feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~511feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~511feeder_combout\);

-- Location: FF_X70_Y30_N23
\bRAM_chip|RAM~511\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~511feeder_combout\,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~511_q\);

-- Location: LCCOMB_X68_Y32_N16
\bRAM_chip|RAM~2959\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2959_combout\ = (\bRAM_chip|RAM~2958_combout\ & (((\bRAM_chip|RAM~511_q\) # (!\testbenk:adress[3]~q\)))) # (!\bRAM_chip|RAM~2958_combout\ & (\bRAM_chip|RAM~479_q\ & ((\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~479_q\,
	datab => \bRAM_chip|RAM~2958_combout\,
	datac => \bRAM_chip|RAM~511_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2959_combout\);

-- Location: LCCOMB_X69_Y35_N8
\bRAM_chip|RAM~439feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~439feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~439feeder_combout\);

-- Location: FF_X69_Y35_N9
\bRAM_chip|RAM~439\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~439feeder_combout\,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~439_q\);

-- Location: FF_X69_Y28_N25
\bRAM_chip|RAM~503\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~503_q\);

-- Location: FF_X68_Y29_N19
\bRAM_chip|RAM~471\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~471_q\);

-- Location: LCCOMB_X68_Y31_N20
\bRAM_chip|RAM~3182\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3182_combout\ = !\bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~3182_combout\);

-- Location: FF_X68_Y31_N21
\bRAM_chip|RAM~407\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3182_combout\,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~407_q\);

-- Location: LCCOMB_X68_Y29_N18
\bRAM_chip|RAM~2960\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2960_combout\ = (\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\) # ((\bRAM_chip|RAM~471_q\)))) # (!\testbenk:adress[3]~q\ & (!\testbenk:adress[2]~q\ & ((!\bRAM_chip|RAM~407_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~471_q\,
	datad => \bRAM_chip|RAM~407_q\,
	combout => \bRAM_chip|RAM~2960_combout\);

-- Location: LCCOMB_X69_Y28_N24
\bRAM_chip|RAM~2961\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2961_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2960_combout\ & ((\bRAM_chip|RAM~503_q\))) # (!\bRAM_chip|RAM~2960_combout\ & (\bRAM_chip|RAM~439_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2960_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~439_q\,
	datac => \bRAM_chip|RAM~503_q\,
	datad => \bRAM_chip|RAM~2960_combout\,
	combout => \bRAM_chip|RAM~2961_combout\);

-- Location: LCCOMB_X69_Y32_N16
\bRAM_chip|RAM~2962\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2962_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~2959_combout\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2961_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2959_combout\,
	datad => \bRAM_chip|RAM~2961_combout\,
	combout => \bRAM_chip|RAM~2962_combout\);

-- Location: LCCOMB_X69_Y32_N10
\bRAM_chip|RAM~2965\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2965_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2962_combout\ & (\bRAM_chip|RAM~2964_combout\)) # (!\bRAM_chip|RAM~2962_combout\ & ((\bRAM_chip|RAM~2957_combout\))))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2962_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~2964_combout\,
	datac => \bRAM_chip|RAM~2957_combout\,
	datad => \bRAM_chip|RAM~2962_combout\,
	combout => \bRAM_chip|RAM~2965_combout\);

-- Location: LCCOMB_X70_Y33_N22
\bRAM_chip|RAM~383feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~383feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~383feeder_combout\);

-- Location: FF_X70_Y33_N23
\bRAM_chip|RAM~383\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~383feeder_combout\,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~383_q\);

-- Location: FF_X66_Y32_N7
\bRAM_chip|RAM~399\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~399_q\);

-- Location: LCCOMB_X62_Y32_N24
\bRAM_chip|RAM~375feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~375feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~375feeder_combout\);

-- Location: FF_X62_Y32_N25
\bRAM_chip|RAM~375\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~375feeder_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~375_q\);

-- Location: LCCOMB_X62_Y32_N2
\bRAM_chip|RAM~391feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~391feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~391feeder_combout\);

-- Location: FF_X62_Y32_N3
\bRAM_chip|RAM~391\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~391feeder_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~391_q\);

-- Location: LCCOMB_X66_Y32_N12
\bRAM_chip|RAM~2932\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2932_combout\ = (\testbenk:adress[0]~q\ & (((\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~391_q\))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~375_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~375_q\,
	datab => \bRAM_chip|RAM~391_q\,
	datac => \testbenk:adress[0]~q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2932_combout\);

-- Location: LCCOMB_X66_Y32_N6
\bRAM_chip|RAM~2933\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2933_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2932_combout\ & ((\bRAM_chip|RAM~399_q\))) # (!\bRAM_chip|RAM~2932_combout\ & (\bRAM_chip|RAM~383_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2932_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~383_q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~399_q\,
	datad => \bRAM_chip|RAM~2932_combout\,
	combout => \bRAM_chip|RAM~2933_combout\);

-- Location: LCCOMB_X63_Y33_N30
\bRAM_chip|RAM~351feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~351feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~351feeder_combout\);

-- Location: FF_X63_Y33_N31
\bRAM_chip|RAM~351\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~351feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~351_q\);

-- Location: LCCOMB_X67_Y29_N14
\bRAM_chip|RAM~343feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~343feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~343feeder_combout\);

-- Location: FF_X67_Y29_N15
\bRAM_chip|RAM~343\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~343feeder_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~343_q\);

-- Location: LCCOMB_X69_Y32_N18
\bRAM_chip|RAM~2925\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2925_combout\ = (\testbenk:adress[1]~q\ & (((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~351_q\)) # (!\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~343_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~351_q\,
	datac => \bRAM_chip|RAM~343_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2925_combout\);

-- Location: LCCOMB_X72_Y31_N0
\bRAM_chip|RAM~367feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~367feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~367feeder_combout\);

-- Location: FF_X72_Y31_N1
\bRAM_chip|RAM~367\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~367feeder_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~367_q\);

-- Location: LCCOMB_X70_Y29_N2
\bRAM_chip|RAM~359feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~359feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~359feeder_combout\);

-- Location: FF_X70_Y29_N3
\bRAM_chip|RAM~359\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~359feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~359_q\);

-- Location: LCCOMB_X69_Y32_N28
\bRAM_chip|RAM~2926\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2926_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2925_combout\ & (\bRAM_chip|RAM~367_q\)) # (!\bRAM_chip|RAM~2925_combout\ & ((\bRAM_chip|RAM~359_q\))))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2925_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~2925_combout\,
	datac => \bRAM_chip|RAM~367_q\,
	datad => \bRAM_chip|RAM~359_q\,
	combout => \bRAM_chip|RAM~2926_combout\);

-- Location: LCCOMB_X65_Y35_N22
\bRAM_chip|RAM~319feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~319feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~319feeder_combout\);

-- Location: FF_X65_Y35_N23
\bRAM_chip|RAM~319\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~319feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~319_q\);

-- Location: FF_X66_Y32_N23
\bRAM_chip|RAM~335\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~335_q\);

-- Location: LCCOMB_X66_Y35_N20
\bRAM_chip|RAM~327feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~327feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~327feeder_combout\);

-- Location: FF_X66_Y35_N21
\bRAM_chip|RAM~327\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~327feeder_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~327_q\);

-- Location: FF_X65_Y35_N9
\bRAM_chip|RAM~311\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~311_q\);

-- Location: LCCOMB_X65_Y35_N8
\bRAM_chip|RAM~2927\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2927_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~327_q\) # ((\testbenk:adress[0]~q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~311_q\ & !\testbenk:adress[0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~327_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~311_q\,
	datad => \testbenk:adress[0]~q\,
	combout => \bRAM_chip|RAM~2927_combout\);

-- Location: LCCOMB_X66_Y32_N22
\bRAM_chip|RAM~2928\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2928_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2927_combout\ & ((\bRAM_chip|RAM~335_q\))) # (!\bRAM_chip|RAM~2927_combout\ & (\bRAM_chip|RAM~319_q\)))) # (!\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~2927_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~319_q\,
	datac => \bRAM_chip|RAM~335_q\,
	datad => \bRAM_chip|RAM~2927_combout\,
	combout => \bRAM_chip|RAM~2928_combout\);

-- Location: LCCOMB_X66_Y33_N20
\bRAM_chip|RAM~295feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~295feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~295feeder_combout\);

-- Location: FF_X66_Y33_N21
\bRAM_chip|RAM~295\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~295feeder_combout\,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~295_q\);

-- Location: FF_X65_Y31_N5
\bRAM_chip|RAM~303\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~303_q\);

-- Location: LCCOMB_X67_Y31_N2
\bRAM_chip|RAM~3179\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3179_combout\ = !\bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~3179_combout\);

-- Location: FF_X67_Y31_N3
\bRAM_chip|RAM~279\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3179_combout\,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~279_q\);

-- Location: FF_X67_Y31_N9
\bRAM_chip|RAM~287\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~287_q\);

-- Location: LCCOMB_X67_Y31_N8
\bRAM_chip|RAM~2929\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2929_combout\ = (\testbenk:adress[0]~q\ & (((\bRAM_chip|RAM~287_q\) # (\testbenk:adress[1]~q\)))) # (!\testbenk:adress[0]~q\ & (!\bRAM_chip|RAM~279_q\ & ((!\testbenk:adress[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~279_q\,
	datac => \bRAM_chip|RAM~287_q\,
	datad => \testbenk:adress[1]~q\,
	combout => \bRAM_chip|RAM~2929_combout\);

-- Location: LCCOMB_X65_Y31_N4
\bRAM_chip|RAM~2930\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2930_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2929_combout\ & ((\bRAM_chip|RAM~303_q\))) # (!\bRAM_chip|RAM~2929_combout\ & (\bRAM_chip|RAM~295_q\)))) # (!\testbenk:adress[1]~q\ & (((\bRAM_chip|RAM~2929_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~295_q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~303_q\,
	datad => \bRAM_chip|RAM~2929_combout\,
	combout => \bRAM_chip|RAM~2930_combout\);

-- Location: LCCOMB_X69_Y32_N6
\bRAM_chip|RAM~2931\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2931_combout\ = (\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\) # ((\bRAM_chip|RAM~2928_combout\)))) # (!\testbenk:adress[2]~q\ & (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2930_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2928_combout\,
	datad => \bRAM_chip|RAM~2930_combout\,
	combout => \bRAM_chip|RAM~2931_combout\);

-- Location: LCCOMB_X69_Y32_N4
\bRAM_chip|RAM~2934\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2934_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2931_combout\ & (\bRAM_chip|RAM~2933_combout\)) # (!\bRAM_chip|RAM~2931_combout\ & ((\bRAM_chip|RAM~2926_combout\))))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2931_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2933_combout\,
	datab => \bRAM_chip|RAM~2926_combout\,
	datac => \testbenk:adress[3]~q\,
	datad => \bRAM_chip|RAM~2931_combout\,
	combout => \bRAM_chip|RAM~2934_combout\);

-- Location: LCCOMB_X66_Y34_N14
\bRAM_chip|RAM~271feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~271feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~271feeder_combout\);

-- Location: FF_X66_Y34_N15
\bRAM_chip|RAM~271\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~271feeder_combout\,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~271_q\);

-- Location: LCCOMB_X70_Y34_N14
\bRAM_chip|RAM~207feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~207feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~207feeder_combout\);

-- Location: FF_X70_Y34_N15
\bRAM_chip|RAM~207\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~207feeder_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~207_q\);

-- Location: FF_X67_Y33_N31
\bRAM_chip|RAM~175\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~175_q\);

-- Location: LCCOMB_X70_Y31_N18
\bRAM_chip|RAM~3180\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3180_combout\ = !\bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~3180_combout\);

-- Location: FF_X70_Y31_N19
\bRAM_chip|RAM~239\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3180_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~239_q\);

-- Location: LCCOMB_X67_Y33_N30
\bRAM_chip|RAM~2942\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2942_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((!\bRAM_chip|RAM~239_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~175_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~175_q\,
	datad => \bRAM_chip|RAM~239_q\,
	combout => \bRAM_chip|RAM~2942_combout\);

-- Location: LCCOMB_X70_Y32_N18
\bRAM_chip|RAM~2943\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2943_combout\ = (\bRAM_chip|RAM~2942_combout\ & ((\bRAM_chip|RAM~271_q\) # ((!\testbenk:adress[2]~q\)))) # (!\bRAM_chip|RAM~2942_combout\ & (((\bRAM_chip|RAM~207_q\ & \testbenk:adress[2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~271_q\,
	datab => \bRAM_chip|RAM~207_q\,
	datac => \bRAM_chip|RAM~2942_combout\,
	datad => \testbenk:adress[2]~q\,
	combout => \bRAM_chip|RAM~2943_combout\);

-- Location: LCCOMB_X68_Y34_N16
\bRAM_chip|RAM~231feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~231feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~231feeder_combout\);

-- Location: FF_X68_Y34_N17
\bRAM_chip|RAM~231\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~231feeder_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~231_q\);

-- Location: FF_X70_Y32_N27
\bRAM_chip|RAM~263\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~263_q\);

-- Location: LCCOMB_X70_Y34_N8
\bRAM_chip|RAM~199feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~199feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~199feeder_combout\);

-- Location: FF_X70_Y34_N9
\bRAM_chip|RAM~199\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~199feeder_combout\,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~199_q\);

-- Location: FF_X69_Y32_N15
\bRAM_chip|RAM~167\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~167_q\);

-- Location: LCCOMB_X69_Y32_N14
\bRAM_chip|RAM~2937\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2937_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~199_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~167_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~199_q\,
	datac => \bRAM_chip|RAM~167_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2937_combout\);

-- Location: LCCOMB_X70_Y32_N26
\bRAM_chip|RAM~2938\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2938_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2937_combout\ & ((\bRAM_chip|RAM~263_q\))) # (!\bRAM_chip|RAM~2937_combout\ & (\bRAM_chip|RAM~231_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2937_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~231_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~263_q\,
	datad => \bRAM_chip|RAM~2937_combout\,
	combout => \bRAM_chip|RAM~2938_combout\);

-- Location: LCCOMB_X70_Y29_N8
\bRAM_chip|RAM~215feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~215feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~215feeder_combout\);

-- Location: FF_X70_Y29_N9
\bRAM_chip|RAM~215\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~215feeder_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~215_q\);

-- Location: FF_X69_Y29_N19
\bRAM_chip|RAM~247\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~247_q\);

-- Location: LCCOMB_X69_Y28_N10
\bRAM_chip|RAM~183feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~183feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~183feeder_combout\);

-- Location: FF_X69_Y28_N11
\bRAM_chip|RAM~183\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~183feeder_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~183_q\);

-- Location: FF_X69_Y29_N29
\bRAM_chip|RAM~151\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~151_q\);

-- Location: LCCOMB_X69_Y29_N28
\bRAM_chip|RAM~2939\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2939_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~183_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~151_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~183_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~151_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2939_combout\);

-- Location: LCCOMB_X69_Y29_N18
\bRAM_chip|RAM~2940\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2940_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2939_combout\ & ((\bRAM_chip|RAM~247_q\))) # (!\bRAM_chip|RAM~2939_combout\ & (\bRAM_chip|RAM~215_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2939_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~215_q\,
	datac => \bRAM_chip|RAM~247_q\,
	datad => \bRAM_chip|RAM~2939_combout\,
	combout => \bRAM_chip|RAM~2940_combout\);

-- Location: LCCOMB_X70_Y32_N8
\bRAM_chip|RAM~2941\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2941_combout\ = (\testbenk:adress[0]~q\ & (\testbenk:adress[1]~q\)) # (!\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2938_combout\)) # (!\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2940_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2938_combout\,
	datad => \bRAM_chip|RAM~2940_combout\,
	combout => \bRAM_chip|RAM~2941_combout\);

-- Location: FF_X67_Y33_N1
\bRAM_chip|RAM~159\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~159_q\);

-- Location: LCCOMB_X72_Y33_N24
\bRAM_chip|RAM~223feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~223feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~223feeder_combout\);

-- Location: FF_X72_Y33_N25
\bRAM_chip|RAM~223\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~223feeder_combout\,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~223_q\);

-- Location: LCCOMB_X67_Y33_N0
\bRAM_chip|RAM~2935\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2935_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~223_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~159_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~159_q\,
	datad => \bRAM_chip|RAM~223_q\,
	combout => \bRAM_chip|RAM~2935_combout\);

-- Location: FF_X69_Y34_N15
\bRAM_chip|RAM~255\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~255_q\);

-- Location: LCCOMB_X67_Y35_N16
\bRAM_chip|RAM~191feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~191feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~191feeder_combout\);

-- Location: FF_X67_Y35_N17
\bRAM_chip|RAM~191\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~191feeder_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~191_q\);

-- Location: LCCOMB_X69_Y34_N14
\bRAM_chip|RAM~2936\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2936_combout\ = (\bRAM_chip|RAM~2935_combout\ & (((\bRAM_chip|RAM~255_q\)) # (!\testbenk:adress[2]~q\))) # (!\bRAM_chip|RAM~2935_combout\ & (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~191_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2935_combout\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~255_q\,
	datad => \bRAM_chip|RAM~191_q\,
	combout => \bRAM_chip|RAM~2936_combout\);

-- Location: LCCOMB_X70_Y32_N4
\bRAM_chip|RAM~2944\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2944_combout\ = (\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2941_combout\ & (\bRAM_chip|RAM~2943_combout\)) # (!\bRAM_chip|RAM~2941_combout\ & ((\bRAM_chip|RAM~2936_combout\))))) # (!\testbenk:adress[0]~q\ & 
-- (((\bRAM_chip|RAM~2941_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \bRAM_chip|RAM~2943_combout\,
	datac => \bRAM_chip|RAM~2941_combout\,
	datad => \bRAM_chip|RAM~2936_combout\,
	combout => \bRAM_chip|RAM~2944_combout\);

-- Location: LCCOMB_X69_Y33_N4
\bRAM_chip|RAM~71feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~71feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~71feeder_combout\);

-- Location: FF_X69_Y33_N5
\bRAM_chip|RAM~71\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~71feeder_combout\,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~71_q\);

-- Location: LCCOMB_X72_Y32_N14
\bRAM_chip|RAM~39feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~39feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~39feeder_combout\);

-- Location: FF_X72_Y32_N15
\bRAM_chip|RAM~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~39feeder_combout\,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~39_q\);

-- Location: LCCOMB_X70_Y32_N6
\bRAM_chip|RAM~2945\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2945_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~71_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~39_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~71_q\,
	datac => \bRAM_chip|RAM~39_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2945_combout\);

-- Location: LCCOMB_X68_Y34_N30
\bRAM_chip|RAM~3181\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3181_combout\ = !\bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~3181_combout\);

-- Location: FF_X68_Y34_N31
\bRAM_chip|RAM~103\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3181_combout\,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~103_q\);

-- Location: FF_X70_Y32_N13
\bRAM_chip|RAM~135\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~135_q\);

-- Location: LCCOMB_X70_Y32_N12
\bRAM_chip|RAM~2946\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2946_combout\ = (\bRAM_chip|RAM~2945_combout\ & (((\bRAM_chip|RAM~135_q\) # (!\testbenk:adress[3]~q\)))) # (!\bRAM_chip|RAM~2945_combout\ & (!\bRAM_chip|RAM~103_q\ & ((\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2945_combout\,
	datab => \bRAM_chip|RAM~103_q\,
	datac => \bRAM_chip|RAM~135_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2946_combout\);

-- Location: LCCOMB_X66_Y34_N20
\bRAM_chip|RAM~143feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~143feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~143feeder_combout\);

-- Location: FF_X66_Y34_N21
\bRAM_chip|RAM~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~143feeder_combout\,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~143_q\);

-- Location: FF_X69_Y33_N15
\bRAM_chip|RAM~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~79_q\);

-- Location: LCCOMB_X61_Y33_N6
\bRAM_chip|RAM~111feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~111feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~111feeder_combout\);

-- Location: FF_X61_Y33_N7
\bRAM_chip|RAM~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~111feeder_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~111_q\);

-- Location: FF_X65_Y33_N3
\bRAM_chip|RAM~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~47_q\);

-- Location: LCCOMB_X65_Y33_N2
\bRAM_chip|RAM~2952\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2952_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~111_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~47_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~111_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~47_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2952_combout\);

-- Location: LCCOMB_X69_Y33_N14
\bRAM_chip|RAM~2953\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2953_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2952_combout\ & (\bRAM_chip|RAM~143_q\)) # (!\bRAM_chip|RAM~2952_combout\ & ((\bRAM_chip|RAM~79_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2952_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~143_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~79_q\,
	datad => \bRAM_chip|RAM~2952_combout\,
	combout => \bRAM_chip|RAM~2953_combout\);

-- Location: LCCOMB_X69_Y30_N28
\bRAM_chip|RAM~87feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~87feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~87feeder_combout\);

-- Location: FF_X69_Y30_N29
\bRAM_chip|RAM~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~87feeder_combout\,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~87_q\);

-- Location: FF_X69_Y30_N7
\bRAM_chip|RAM~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~119_q\);

-- Location: FF_X68_Y30_N23
\bRAM_chip|RAM~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~23_q\);

-- Location: LCCOMB_X68_Y35_N30
\bRAM_chip|RAM~55feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~55feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~55feeder_combout\);

-- Location: FF_X68_Y35_N31
\bRAM_chip|RAM~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~55feeder_combout\,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~55_q\);

-- Location: LCCOMB_X68_Y30_N22
\bRAM_chip|RAM~2949\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2949_combout\ = (\testbenk:adress[3]~q\ & (\testbenk:adress[2]~q\)) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~55_q\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~23_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~23_q\,
	datad => \bRAM_chip|RAM~55_q\,
	combout => \bRAM_chip|RAM~2949_combout\);

-- Location: LCCOMB_X69_Y30_N6
\bRAM_chip|RAM~2950\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2950_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2949_combout\ & ((\bRAM_chip|RAM~119_q\))) # (!\bRAM_chip|RAM~2949_combout\ & (\bRAM_chip|RAM~87_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~2949_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[3]~q\,
	datab => \bRAM_chip|RAM~87_q\,
	datac => \bRAM_chip|RAM~119_q\,
	datad => \bRAM_chip|RAM~2949_combout\,
	combout => \bRAM_chip|RAM~2950_combout\);

-- Location: LCCOMB_X68_Y35_N0
\bRAM_chip|RAM~63feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~63feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~63feeder_combout\);

-- Location: FF_X68_Y35_N1
\bRAM_chip|RAM~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~63feeder_combout\,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~63_q\);

-- Location: FF_X70_Y30_N11
\bRAM_chip|RAM~127\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~127_q\);

-- Location: LCCOMB_X68_Y28_N16
\bRAM_chip|RAM~95feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~95feeder_combout\ = \bRAM_chip|RAM~3024_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3024_combout\,
	combout => \bRAM_chip|RAM~95feeder_combout\);

-- Location: FF_X68_Y28_N17
\bRAM_chip|RAM~95\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~95feeder_combout\,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~95_q\);

-- Location: FF_X68_Y30_N21
\bRAM_chip|RAM~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3024_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~31_q\);

-- Location: LCCOMB_X68_Y30_N20
\bRAM_chip|RAM~2947\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2947_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~95_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~31_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~95_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~31_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2947_combout\);

-- Location: LCCOMB_X70_Y30_N10
\bRAM_chip|RAM~2948\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2948_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2947_combout\ & ((\bRAM_chip|RAM~127_q\))) # (!\bRAM_chip|RAM~2947_combout\ & (\bRAM_chip|RAM~63_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~2947_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~63_q\,
	datac => \bRAM_chip|RAM~127_q\,
	datad => \bRAM_chip|RAM~2947_combout\,
	combout => \bRAM_chip|RAM~2948_combout\);

-- Location: LCCOMB_X70_Y30_N0
\bRAM_chip|RAM~2951\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2951_combout\ = (\testbenk:adress[1]~q\ & (\testbenk:adress[0]~q\)) # (!\testbenk:adress[1]~q\ & ((\testbenk:adress[0]~q\ & ((\bRAM_chip|RAM~2948_combout\))) # (!\testbenk:adress[0]~q\ & (\bRAM_chip|RAM~2950_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \testbenk:adress[0]~q\,
	datac => \bRAM_chip|RAM~2950_combout\,
	datad => \bRAM_chip|RAM~2948_combout\,
	combout => \bRAM_chip|RAM~2951_combout\);

-- Location: LCCOMB_X70_Y32_N10
\bRAM_chip|RAM~2954\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2954_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2951_combout\ & ((\bRAM_chip|RAM~2953_combout\))) # (!\bRAM_chip|RAM~2951_combout\ & (\bRAM_chip|RAM~2946_combout\)))) # (!\testbenk:adress[1]~q\ & 
-- (((\bRAM_chip|RAM~2951_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2946_combout\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2953_combout\,
	datad => \bRAM_chip|RAM~2951_combout\,
	combout => \bRAM_chip|RAM~2954_combout\);

-- Location: LCCOMB_X70_Y32_N16
\bRAM_chip|RAM~2955\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2955_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~2944_combout\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2954_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~2944_combout\,
	datad => \bRAM_chip|RAM~2954_combout\,
	combout => \bRAM_chip|RAM~2955_combout\);

-- Location: LCCOMB_X69_Y32_N24
\bRAM_chip|RAM~2966\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2966_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2955_combout\ & (\bRAM_chip|RAM~2965_combout\)) # (!\bRAM_chip|RAM~2955_combout\ & ((\bRAM_chip|RAM~2934_combout\))))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~2955_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2965_combout\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~2934_combout\,
	datad => \bRAM_chip|RAM~2955_combout\,
	combout => \bRAM_chip|RAM~2966_combout\);

-- Location: LCCOMB_X68_Y28_N18
\bRAM_chip|s_Data_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~6_combout\ = (\SW[17]~input_o\ & (\reset_n~input_o\ & \bRAM_chip|RAM~2966_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datac => \reset_n~input_o\,
	datad => \bRAM_chip|RAM~2966_combout\,
	combout => \bRAM_chip|s_Data_out~6_combout\);

-- Location: FF_X68_Y28_N19
\bRAM_chip|s_Data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(6));

-- Location: LCCOMB_X67_Y31_N20
\bRAM_chip|RAM~3025\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3025_combout\ = (\SW[17]~input_o\ & \bRAM_chip|RAM~3008_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[17]~input_o\,
	datad => \bRAM_chip|RAM~3008_combout\,
	combout => \bRAM_chip|RAM~3025_combout\);

-- Location: LCCOMB_X69_Y35_N2
\bRAM_chip|RAM~184feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~184feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~184feeder_combout\);

-- Location: FF_X69_Y35_N3
\bRAM_chip|RAM~184\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~184feeder_combout\,
	ena => \bRAM_chip|RAM~3036_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~184_q\);

-- Location: FF_X69_Y35_N5
\bRAM_chip|RAM~440\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3052_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~440_q\);

-- Location: FF_X68_Y35_N19
\bRAM_chip|RAM~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3044_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~56_q\);

-- Location: LCCOMB_X65_Y35_N4
\bRAM_chip|RAM~312feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~312feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~312feeder_combout\);

-- Location: FF_X65_Y35_N5
\bRAM_chip|RAM~312\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~312feeder_combout\,
	ena => \bRAM_chip|RAM~3030_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~312_q\);

-- Location: LCCOMB_X68_Y35_N18
\bRAM_chip|RAM~2987\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2987_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~312_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~56_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~56_q\,
	datad => \bRAM_chip|RAM~312_q\,
	combout => \bRAM_chip|RAM~2987_combout\);

-- Location: LCCOMB_X69_Y35_N4
\bRAM_chip|RAM~2988\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2988_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2987_combout\ & ((\bRAM_chip|RAM~440_q\))) # (!\bRAM_chip|RAM~2987_combout\ & (\bRAM_chip|RAM~184_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2987_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~184_q\,
	datac => \bRAM_chip|RAM~440_q\,
	datad => \bRAM_chip|RAM~2987_combout\,
	combout => \bRAM_chip|RAM~2988_combout\);

-- Location: LCCOMB_X69_Y29_N30
\bRAM_chip|RAM~248feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~248feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~248feeder_combout\);

-- Location: FF_X69_Y29_N31
\bRAM_chip|RAM~248\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~248feeder_combout\,
	ena => \bRAM_chip|RAM~3040_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~248_q\);

-- Location: FF_X67_Y30_N7
\bRAM_chip|RAM~504\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3056_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~504_q\);

-- Location: LCCOMB_X67_Y29_N22
\bRAM_chip|RAM~376feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~376feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~376feeder_combout\);

-- Location: FF_X67_Y29_N23
\bRAM_chip|RAM~376\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~376feeder_combout\,
	ena => \bRAM_chip|RAM~3031_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~376_q\);

-- Location: FF_X69_Y30_N19
\bRAM_chip|RAM~120\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3048_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~120_q\);

-- Location: LCCOMB_X69_Y30_N18
\bRAM_chip|RAM~2994\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2994_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~376_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~120_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~376_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~120_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2994_combout\);

-- Location: LCCOMB_X67_Y30_N6
\bRAM_chip|RAM~2995\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2995_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2994_combout\ & ((\bRAM_chip|RAM~504_q\))) # (!\bRAM_chip|RAM~2994_combout\ & (\bRAM_chip|RAM~248_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2994_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~248_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~504_q\,
	datad => \bRAM_chip|RAM~2994_combout\,
	combout => \bRAM_chip|RAM~2995_combout\);

-- Location: LCCOMB_X68_Y31_N14
\bRAM_chip|RAM~3183\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3183_combout\ = !\bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~3183_combout\);

-- Location: FF_X68_Y31_N15
\bRAM_chip|RAM~408\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~3183_combout\,
	ena => \bRAM_chip|RAM~3088_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~408_q\);

-- Location: FF_X67_Y31_N31
\bRAM_chip|RAM~280\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3063_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~280_q\);

-- Location: FF_X68_Y30_N19
\bRAM_chip|RAM~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3080_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~24_q\);

-- Location: LCCOMB_X69_Y29_N16
\bRAM_chip|RAM~152feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~152feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~152feeder_combout\);

-- Location: FF_X69_Y29_N17
\bRAM_chip|RAM~152\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~152feeder_combout\,
	ena => \bRAM_chip|RAM~3072_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~152_q\);

-- Location: LCCOMB_X68_Y30_N18
\bRAM_chip|RAM~2991\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2991_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~152_q\))) # (!\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~24_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~24_q\,
	datad => \bRAM_chip|RAM~152_q\,
	combout => \bRAM_chip|RAM~2991_combout\);

-- Location: LCCOMB_X67_Y31_N30
\bRAM_chip|RAM~2992\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2992_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2991_combout\ & (!\bRAM_chip|RAM~408_q\)) # (!\bRAM_chip|RAM~2991_combout\ & ((\bRAM_chip|RAM~280_q\))))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2991_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~408_q\,
	datac => \bRAM_chip|RAM~280_q\,
	datad => \bRAM_chip|RAM~2991_combout\,
	combout => \bRAM_chip|RAM~2992_combout\);

-- Location: LCCOMB_X67_Y29_N8
\bRAM_chip|RAM~344feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~344feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~344feeder_combout\);

-- Location: FF_X67_Y29_N9
\bRAM_chip|RAM~344\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~344feeder_combout\,
	ena => \bRAM_chip|RAM~3062_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~344_q\);

-- Location: FF_X68_Y29_N11
\bRAM_chip|RAM~472\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3084_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~472_q\);

-- Location: LCCOMB_X68_Y29_N4
\bRAM_chip|RAM~216feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~216feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~216feeder_combout\);

-- Location: FF_X68_Y29_N5
\bRAM_chip|RAM~216\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~216feeder_combout\,
	ena => \bRAM_chip|RAM~3068_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~216_q\);

-- Location: FF_X69_Y30_N17
\bRAM_chip|RAM~88\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3076_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~88_q\);

-- Location: LCCOMB_X69_Y30_N16
\bRAM_chip|RAM~2989\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2989_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~216_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~88_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~216_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~88_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2989_combout\);

-- Location: LCCOMB_X68_Y29_N10
\bRAM_chip|RAM~2990\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2990_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2989_combout\ & ((\bRAM_chip|RAM~472_q\))) # (!\bRAM_chip|RAM~2989_combout\ & (\bRAM_chip|RAM~344_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2989_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~344_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~472_q\,
	datad => \bRAM_chip|RAM~2989_combout\,
	combout => \bRAM_chip|RAM~2990_combout\);

-- Location: LCCOMB_X67_Y31_N16
\bRAM_chip|RAM~2993\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2993_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2990_combout\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2992_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2992_combout\,
	datad => \bRAM_chip|RAM~2990_combout\,
	combout => \bRAM_chip|RAM~2993_combout\);

-- Location: LCCOMB_X67_Y31_N14
\bRAM_chip|RAM~2996\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2996_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2993_combout\ & ((\bRAM_chip|RAM~2995_combout\))) # (!\bRAM_chip|RAM~2993_combout\ & (\bRAM_chip|RAM~2988_combout\)))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2993_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~2988_combout\,
	datac => \bRAM_chip|RAM~2995_combout\,
	datad => \bRAM_chip|RAM~2993_combout\,
	combout => \bRAM_chip|RAM~2996_combout\);

-- Location: LCCOMB_X63_Y33_N6
\bRAM_chip|RAM~352feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~352feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~352feeder_combout\);

-- Location: FF_X63_Y33_N7
\bRAM_chip|RAM~352\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~352feeder_combout\,
	ena => \bRAM_chip|RAM~3058_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~352_q\);

-- Location: FF_X67_Y32_N31
\bRAM_chip|RAM~480\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3083_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~480_q\);

-- Location: LCCOMB_X67_Y34_N28
\bRAM_chip|RAM~224feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~224feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~224feeder_combout\);

-- Location: FF_X67_Y34_N29
\bRAM_chip|RAM~224\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~224feeder_combout\,
	ena => \bRAM_chip|RAM~3066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~224_q\);

-- Location: FF_X67_Y34_N23
\bRAM_chip|RAM~96\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3074_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~96_q\);

-- Location: LCCOMB_X67_Y34_N22
\bRAM_chip|RAM~2977\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2977_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~224_q\) # ((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~96_q\ & !\testbenk:adress[5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~224_q\,
	datac => \bRAM_chip|RAM~96_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2977_combout\);

-- Location: LCCOMB_X67_Y32_N30
\bRAM_chip|RAM~2978\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2978_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2977_combout\ & ((\bRAM_chip|RAM~480_q\))) # (!\bRAM_chip|RAM~2977_combout\ & (\bRAM_chip|RAM~352_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2977_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~352_q\,
	datac => \bRAM_chip|RAM~480_q\,
	datad => \bRAM_chip|RAM~2977_combout\,
	combout => \bRAM_chip|RAM~2978_combout\);

-- Location: LCCOMB_X67_Y32_N8
\bRAM_chip|RAM~416feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~416feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~416feeder_combout\);

-- Location: FF_X67_Y32_N9
\bRAM_chip|RAM~416\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~416feeder_combout\,
	ena => \bRAM_chip|RAM~3087_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~416_q\);

-- Location: LCCOMB_X70_Y33_N8
\bRAM_chip|RAM~288feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~288feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~288feeder_combout\);

-- Location: FF_X70_Y33_N9
\bRAM_chip|RAM~288\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~288feeder_combout\,
	ena => \bRAM_chip|RAM~3059_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~288_q\);

-- Location: FF_X68_Y30_N1
\bRAM_chip|RAM~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3078_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~32_q\);

-- Location: LCCOMB_X67_Y33_N28
\bRAM_chip|RAM~160feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~160feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~160feeder_combout\);

-- Location: FF_X67_Y33_N29
\bRAM_chip|RAM~160\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~160feeder_combout\,
	ena => \bRAM_chip|RAM~3070_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~160_q\);

-- Location: LCCOMB_X68_Y30_N0
\bRAM_chip|RAM~2981\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2981_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~160_q\))) # (!\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~32_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~32_q\,
	datad => \bRAM_chip|RAM~160_q\,
	combout => \bRAM_chip|RAM~2981_combout\);

-- Location: LCCOMB_X68_Y31_N26
\bRAM_chip|RAM~2982\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2982_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2981_combout\ & (\bRAM_chip|RAM~416_q\)) # (!\bRAM_chip|RAM~2981_combout\ & ((\bRAM_chip|RAM~288_q\))))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2981_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~416_q\,
	datac => \bRAM_chip|RAM~288_q\,
	datad => \bRAM_chip|RAM~2981_combout\,
	combout => \bRAM_chip|RAM~2982_combout\);

-- Location: LCCOMB_X67_Y35_N0
\bRAM_chip|RAM~192feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~192feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~192feeder_combout\);

-- Location: FF_X67_Y35_N1
\bRAM_chip|RAM~192\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~192feeder_combout\,
	ena => \bRAM_chip|RAM~3035_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~192_q\);

-- Location: FF_X67_Y35_N11
\bRAM_chip|RAM~448\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3050_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~448_q\);

-- Location: FF_X68_Y35_N17
\bRAM_chip|RAM~64\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3043_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~64_q\);

-- Location: LCCOMB_X65_Y35_N2
\bRAM_chip|RAM~320feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~320feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~320feeder_combout\);

-- Location: FF_X65_Y35_N3
\bRAM_chip|RAM~320\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~320feeder_combout\,
	ena => \bRAM_chip|RAM~3026_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~320_q\);

-- Location: LCCOMB_X68_Y35_N16
\bRAM_chip|RAM~2979\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2979_combout\ = (\testbenk:adress[4]~q\ & (\testbenk:adress[5]~q\)) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~320_q\))) # (!\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~64_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~64_q\,
	datad => \bRAM_chip|RAM~320_q\,
	combout => \bRAM_chip|RAM~2979_combout\);

-- Location: LCCOMB_X67_Y35_N10
\bRAM_chip|RAM~2980\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2980_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2979_combout\ & ((\bRAM_chip|RAM~448_q\))) # (!\bRAM_chip|RAM~2979_combout\ & (\bRAM_chip|RAM~192_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2979_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~192_q\,
	datac => \bRAM_chip|RAM~448_q\,
	datad => \bRAM_chip|RAM~2979_combout\,
	combout => \bRAM_chip|RAM~2980_combout\);

-- Location: LCCOMB_X68_Y31_N12
\bRAM_chip|RAM~2983\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2983_combout\ = (\testbenk:adress[3]~q\ & (((\testbenk:adress[2]~q\)))) # (!\testbenk:adress[3]~q\ & ((\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2980_combout\))) # (!\testbenk:adress[2]~q\ & (\bRAM_chip|RAM~2982_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2982_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \testbenk:adress[2]~q\,
	datad => \bRAM_chip|RAM~2980_combout\,
	combout => \bRAM_chip|RAM~2983_combout\);

-- Location: LCCOMB_X69_Y34_N8
\bRAM_chip|RAM~256feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~256feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~256feeder_combout\);

-- Location: FF_X69_Y34_N9
\bRAM_chip|RAM~256\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~256feeder_combout\,
	ena => \bRAM_chip|RAM~3039_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~256_q\);

-- Location: FF_X70_Y30_N31
\bRAM_chip|RAM~512\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3054_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~512_q\);

-- Location: LCCOMB_X70_Y33_N26
\bRAM_chip|RAM~384feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~384feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~384feeder_combout\);

-- Location: FF_X70_Y33_N27
\bRAM_chip|RAM~384\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~384feeder_combout\,
	ena => \bRAM_chip|RAM~3027_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~384_q\);

-- Location: FF_X70_Y30_N25
\bRAM_chip|RAM~128\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3047_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~128_q\);

-- Location: LCCOMB_X70_Y30_N24
\bRAM_chip|RAM~2984\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2984_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~384_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~128_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~384_q\,
	datac => \bRAM_chip|RAM~128_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2984_combout\);

-- Location: LCCOMB_X70_Y30_N30
\bRAM_chip|RAM~2985\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2985_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2984_combout\ & ((\bRAM_chip|RAM~512_q\))) # (!\bRAM_chip|RAM~2984_combout\ & (\bRAM_chip|RAM~256_q\)))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2984_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~256_q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~512_q\,
	datad => \bRAM_chip|RAM~2984_combout\,
	combout => \bRAM_chip|RAM~2985_combout\);

-- Location: LCCOMB_X67_Y31_N12
\bRAM_chip|RAM~2986\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2986_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2983_combout\ & ((\bRAM_chip|RAM~2985_combout\))) # (!\bRAM_chip|RAM~2983_combout\ & (\bRAM_chip|RAM~2978_combout\)))) # (!\testbenk:adress[3]~q\ & 
-- (((\bRAM_chip|RAM~2983_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2978_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2983_combout\,
	datad => \bRAM_chip|RAM~2985_combout\,
	combout => \bRAM_chip|RAM~2986_combout\);

-- Location: LCCOMB_X67_Y31_N0
\bRAM_chip|RAM~2997\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2997_combout\ = (\testbenk:adress[0]~q\ & ((\testbenk:adress[1]~q\) # ((\bRAM_chip|RAM~2986_combout\)))) # (!\testbenk:adress[0]~q\ & (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2996_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[0]~q\,
	datab => \testbenk:adress[1]~q\,
	datac => \bRAM_chip|RAM~2996_combout\,
	datad => \bRAM_chip|RAM~2986_combout\,
	combout => \bRAM_chip|RAM~2997_combout\);

-- Location: LCCOMB_X66_Y35_N16
\bRAM_chip|RAM~456feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~456feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~456feeder_combout\);

-- Location: FF_X66_Y35_N17
\bRAM_chip|RAM~456\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~456feeder_combout\,
	ena => \bRAM_chip|RAM~3051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~456_q\);

-- Location: FF_X70_Y35_N15
\bRAM_chip|RAM~200\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3034_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~200_q\);

-- Location: LCCOMB_X66_Y35_N2
\bRAM_chip|RAM~328feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~328feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~328feeder_combout\);

-- Location: FF_X66_Y35_N3
\bRAM_chip|RAM~328\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~328feeder_combout\,
	ena => \bRAM_chip|RAM~3028_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~328_q\);

-- Location: FF_X70_Y35_N29
\bRAM_chip|RAM~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3042_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~72_q\);

-- Location: LCCOMB_X70_Y35_N28
\bRAM_chip|RAM~2967\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2967_combout\ = (\testbenk:adress[4]~q\ & (((\testbenk:adress[5]~q\)))) # (!\testbenk:adress[4]~q\ & ((\testbenk:adress[5]~q\ & (\bRAM_chip|RAM~328_q\)) # (!\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~72_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~328_q\,
	datac => \bRAM_chip|RAM~72_q\,
	datad => \testbenk:adress[5]~q\,
	combout => \bRAM_chip|RAM~2967_combout\);

-- Location: LCCOMB_X70_Y35_N14
\bRAM_chip|RAM~2968\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2968_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2967_combout\ & (\bRAM_chip|RAM~456_q\)) # (!\bRAM_chip|RAM~2967_combout\ & ((\bRAM_chip|RAM~200_q\))))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2967_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~456_q\,
	datac => \bRAM_chip|RAM~200_q\,
	datad => \bRAM_chip|RAM~2967_combout\,
	combout => \bRAM_chip|RAM~2968_combout\);

-- Location: LCCOMB_X65_Y29_N6
\bRAM_chip|RAM~520feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~520feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~520feeder_combout\);

-- Location: FF_X65_Y29_N7
\bRAM_chip|RAM~520\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~520feeder_combout\,
	ena => \bRAM_chip|RAM~3055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~520_q\);

-- Location: LCCOMB_X70_Y32_N2
\bRAM_chip|RAM~264feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~264feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~264feeder_combout\);

-- Location: FF_X70_Y32_N3
\bRAM_chip|RAM~264\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~264feeder_combout\,
	ena => \bRAM_chip|RAM~3038_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~264_q\);

-- Location: LCCOMB_X65_Y29_N16
\bRAM_chip|RAM~392feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~392feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~392feeder_combout\);

-- Location: FF_X65_Y29_N17
\bRAM_chip|RAM~392\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~392feeder_combout\,
	ena => \bRAM_chip|RAM~3029_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~392_q\);

-- Location: FF_X66_Y29_N19
\bRAM_chip|RAM~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3046_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~136_q\);

-- Location: LCCOMB_X66_Y29_N18
\bRAM_chip|RAM~2974\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2974_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~392_q\) # ((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~136_q\ & !\testbenk:adress[4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~392_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~136_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2974_combout\);

-- Location: LCCOMB_X66_Y29_N20
\bRAM_chip|RAM~2975\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2975_combout\ = (\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~2974_combout\ & (\bRAM_chip|RAM~520_q\)) # (!\bRAM_chip|RAM~2974_combout\ & ((\bRAM_chip|RAM~264_q\))))) # (!\testbenk:adress[4]~q\ & (((\bRAM_chip|RAM~2974_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[4]~q\,
	datab => \bRAM_chip|RAM~520_q\,
	datac => \bRAM_chip|RAM~264_q\,
	datad => \bRAM_chip|RAM~2974_combout\,
	combout => \bRAM_chip|RAM~2975_combout\);

-- Location: LCCOMB_X66_Y33_N8
\bRAM_chip|RAM~296feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~296feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~296feeder_combout\);

-- Location: FF_X66_Y33_N9
\bRAM_chip|RAM~296\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~296feeder_combout\,
	ena => \bRAM_chip|RAM~3061_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~296_q\);

-- Location: FF_X66_Y33_N27
\bRAM_chip|RAM~424\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3086_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~424_q\);

-- Location: LCCOMB_X63_Y33_N20
\bRAM_chip|RAM~168feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~168feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~168feeder_combout\);

-- Location: FF_X63_Y33_N21
\bRAM_chip|RAM~168\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~168feeder_combout\,
	ena => \bRAM_chip|RAM~3071_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~168_q\);

-- Location: FF_X65_Y33_N9
\bRAM_chip|RAM~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3079_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~40_q\);

-- Location: LCCOMB_X65_Y33_N8
\bRAM_chip|RAM~2971\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2971_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~168_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~40_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~168_q\,
	datac => \bRAM_chip|RAM~40_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2971_combout\);

-- Location: LCCOMB_X66_Y33_N26
\bRAM_chip|RAM~2972\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2972_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2971_combout\ & ((\bRAM_chip|RAM~424_q\))) # (!\bRAM_chip|RAM~2971_combout\ & (\bRAM_chip|RAM~296_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2971_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~296_q\,
	datac => \bRAM_chip|RAM~424_q\,
	datad => \bRAM_chip|RAM~2971_combout\,
	combout => \bRAM_chip|RAM~2972_combout\);

-- Location: LCCOMB_X63_Y34_N12
\bRAM_chip|RAM~360feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~360feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~360feeder_combout\);

-- Location: FF_X63_Y34_N13
\bRAM_chip|RAM~360\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~360feeder_combout\,
	ena => \bRAM_chip|RAM~3060_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~360_q\);

-- Location: FF_X69_Y34_N23
\bRAM_chip|RAM~488\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3082_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~488_q\);

-- Location: LCCOMB_X68_Y34_N24
\bRAM_chip|RAM~232feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~232feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~232feeder_combout\);

-- Location: FF_X68_Y34_N25
\bRAM_chip|RAM~232\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~232feeder_combout\,
	ena => \bRAM_chip|RAM~3067_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~232_q\);

-- Location: FF_X68_Y34_N15
\bRAM_chip|RAM~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3075_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~104_q\);

-- Location: LCCOMB_X68_Y34_N14
\bRAM_chip|RAM~2969\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2969_combout\ = (\testbenk:adress[5]~q\ & (((\testbenk:adress[4]~q\)))) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~232_q\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~104_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~232_q\,
	datac => \bRAM_chip|RAM~104_q\,
	datad => \testbenk:adress[4]~q\,
	combout => \bRAM_chip|RAM~2969_combout\);

-- Location: LCCOMB_X69_Y34_N22
\bRAM_chip|RAM~2970\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2970_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~2969_combout\ & ((\bRAM_chip|RAM~488_q\))) # (!\bRAM_chip|RAM~2969_combout\ & (\bRAM_chip|RAM~360_q\)))) # (!\testbenk:adress[5]~q\ & (((\bRAM_chip|RAM~2969_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~360_q\,
	datab => \testbenk:adress[5]~q\,
	datac => \bRAM_chip|RAM~488_q\,
	datad => \bRAM_chip|RAM~2969_combout\,
	combout => \bRAM_chip|RAM~2970_combout\);

-- Location: LCCOMB_X66_Y31_N12
\bRAM_chip|RAM~2973\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2973_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~2970_combout\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~2972_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~2972_combout\,
	datad => \bRAM_chip|RAM~2970_combout\,
	combout => \bRAM_chip|RAM~2973_combout\);

-- Location: LCCOMB_X66_Y31_N26
\bRAM_chip|RAM~2976\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2976_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~2973_combout\ & ((\bRAM_chip|RAM~2975_combout\))) # (!\bRAM_chip|RAM~2973_combout\ & (\bRAM_chip|RAM~2968_combout\)))) # (!\testbenk:adress[2]~q\ & 
-- (((\bRAM_chip|RAM~2973_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~2968_combout\,
	datac => \bRAM_chip|RAM~2975_combout\,
	datad => \bRAM_chip|RAM~2973_combout\,
	combout => \bRAM_chip|RAM~2976_combout\);

-- Location: LCCOMB_X66_Y32_N0
\bRAM_chip|RAM~336feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~336feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~336feeder_combout\);

-- Location: FF_X66_Y32_N1
\bRAM_chip|RAM~336\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~336feeder_combout\,
	ena => \bRAM_chip|RAM~3032_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~336_q\);

-- Location: FF_X65_Y31_N17
\bRAM_chip|RAM~304\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3065_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~304_q\);

-- Location: LCCOMB_X65_Y31_N16
\bRAM_chip|RAM~2998\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2998_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~336_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~304_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~336_q\,
	datac => \bRAM_chip|RAM~304_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~2998_combout\);

-- Location: FF_X66_Y31_N19
\bRAM_chip|RAM~400\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3033_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~400_q\);

-- Location: LCCOMB_X66_Y31_N28
\bRAM_chip|RAM~368feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~368feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~368feeder_combout\);

-- Location: FF_X66_Y31_N29
\bRAM_chip|RAM~368\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~368feeder_combout\,
	ena => \bRAM_chip|RAM~3064_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~368_q\);

-- Location: LCCOMB_X66_Y31_N18
\bRAM_chip|RAM~2999\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~2999_combout\ = (\bRAM_chip|RAM~2998_combout\ & (((\bRAM_chip|RAM~400_q\)) # (!\testbenk:adress[3]~q\))) # (!\bRAM_chip|RAM~2998_combout\ & (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~368_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~2998_combout\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~400_q\,
	datad => \bRAM_chip|RAM~368_q\,
	combout => \bRAM_chip|RAM~2999_combout\);

-- Location: LCCOMB_X70_Y34_N12
\bRAM_chip|RAM~208feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~208feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~208feeder_combout\);

-- Location: FF_X70_Y34_N13
\bRAM_chip|RAM~208\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~208feeder_combout\,
	ena => \bRAM_chip|RAM~3037_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~208_q\);

-- Location: FF_X66_Y34_N3
\bRAM_chip|RAM~272\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3041_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~272_q\);

-- Location: FF_X67_Y33_N19
\bRAM_chip|RAM~176\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3073_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~176_q\);

-- Location: LCCOMB_X70_Y31_N10
\bRAM_chip|RAM~240feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~240feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~240feeder_combout\);

-- Location: FF_X70_Y31_N11
\bRAM_chip|RAM~240\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~240feeder_combout\,
	ena => \bRAM_chip|RAM~3069_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~240_q\);

-- Location: LCCOMB_X67_Y33_N18
\bRAM_chip|RAM~3000\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3000_combout\ = (\testbenk:adress[2]~q\ & (\testbenk:adress[3]~q\)) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~240_q\))) # (!\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~176_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~176_q\,
	datad => \bRAM_chip|RAM~240_q\,
	combout => \bRAM_chip|RAM~3000_combout\);

-- Location: LCCOMB_X66_Y34_N2
\bRAM_chip|RAM~3001\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3001_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~3000_combout\ & ((\bRAM_chip|RAM~272_q\))) # (!\bRAM_chip|RAM~3000_combout\ & (\bRAM_chip|RAM~208_q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~3000_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~208_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~272_q\,
	datad => \bRAM_chip|RAM~3000_combout\,
	combout => \bRAM_chip|RAM~3001_combout\);

-- Location: LCCOMB_X62_Y31_N12
\bRAM_chip|RAM~112feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~112feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~112feeder_combout\);

-- Location: FF_X62_Y31_N13
\bRAM_chip|RAM~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~112feeder_combout\,
	ena => \bRAM_chip|RAM~3077_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~112_q\);

-- Location: FF_X62_Y31_N7
\bRAM_chip|RAM~144\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~144_q\);

-- Location: LCCOMB_X69_Y33_N28
\bRAM_chip|RAM~80feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~80feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~80feeder_combout\);

-- Location: FF_X69_Y33_N29
\bRAM_chip|RAM~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~80feeder_combout\,
	ena => \bRAM_chip|RAM~3045_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~80_q\);

-- Location: FF_X65_Y33_N7
\bRAM_chip|RAM~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3081_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~48_q\);

-- Location: LCCOMB_X65_Y33_N6
\bRAM_chip|RAM~3002\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3002_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~80_q\) # ((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~48_q\ & !\testbenk:adress[3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~80_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~48_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3002_combout\);

-- Location: LCCOMB_X62_Y31_N6
\bRAM_chip|RAM~3003\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3003_combout\ = (\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~3002_combout\ & ((\bRAM_chip|RAM~144_q\))) # (!\bRAM_chip|RAM~3002_combout\ & (\bRAM_chip|RAM~112_q\)))) # (!\testbenk:adress[3]~q\ & (((\bRAM_chip|RAM~3002_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~112_q\,
	datab => \testbenk:adress[3]~q\,
	datac => \bRAM_chip|RAM~144_q\,
	datad => \bRAM_chip|RAM~3002_combout\,
	combout => \bRAM_chip|RAM~3003_combout\);

-- Location: LCCOMB_X66_Y31_N8
\bRAM_chip|RAM~3004\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3004_combout\ = (\testbenk:adress[5]~q\ & (\testbenk:adress[4]~q\)) # (!\testbenk:adress[5]~q\ & ((\testbenk:adress[4]~q\ & (\bRAM_chip|RAM~3001_combout\)) # (!\testbenk:adress[4]~q\ & ((\bRAM_chip|RAM~3003_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \testbenk:adress[4]~q\,
	datac => \bRAM_chip|RAM~3001_combout\,
	datad => \bRAM_chip|RAM~3003_combout\,
	combout => \bRAM_chip|RAM~3004_combout\);

-- Location: LCCOMB_X68_Y31_N24
\bRAM_chip|RAM~528feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~528feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~528feeder_combout\);

-- Location: FF_X68_Y31_N25
\bRAM_chip|RAM~528\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~528feeder_combout\,
	ena => \bRAM_chip|RAM~3057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~528_q\);

-- Location: FF_X65_Y34_N11
\bRAM_chip|RAM~464\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~464_q\);

-- Location: LCCOMB_X70_Y31_N20
\bRAM_chip|RAM~496feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~496feeder_combout\ = \bRAM_chip|RAM~3025_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \bRAM_chip|RAM~3025_combout\,
	combout => \bRAM_chip|RAM~496feeder_combout\);

-- Location: FF_X70_Y31_N21
\bRAM_chip|RAM~496\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|RAM~496feeder_combout\,
	ena => \bRAM_chip|RAM~3085_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~496_q\);

-- Location: FF_X65_Y31_N15
\bRAM_chip|RAM~432\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \bRAM_chip|RAM~3025_combout\,
	sload => VCC,
	ena => \bRAM_chip|RAM~3089_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|RAM~432_q\);

-- Location: LCCOMB_X65_Y31_N14
\bRAM_chip|RAM~3005\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3005_combout\ = (\testbenk:adress[2]~q\ & (((\testbenk:adress[3]~q\)))) # (!\testbenk:adress[2]~q\ & ((\testbenk:adress[3]~q\ & (\bRAM_chip|RAM~496_q\)) # (!\testbenk:adress[3]~q\ & ((\bRAM_chip|RAM~432_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[2]~q\,
	datab => \bRAM_chip|RAM~496_q\,
	datac => \bRAM_chip|RAM~432_q\,
	datad => \testbenk:adress[3]~q\,
	combout => \bRAM_chip|RAM~3005_combout\);

-- Location: LCCOMB_X65_Y34_N10
\bRAM_chip|RAM~3006\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3006_combout\ = (\testbenk:adress[2]~q\ & ((\bRAM_chip|RAM~3005_combout\ & (\bRAM_chip|RAM~528_q\)) # (!\bRAM_chip|RAM~3005_combout\ & ((\bRAM_chip|RAM~464_q\))))) # (!\testbenk:adress[2]~q\ & (((\bRAM_chip|RAM~3005_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bRAM_chip|RAM~528_q\,
	datab => \testbenk:adress[2]~q\,
	datac => \bRAM_chip|RAM~464_q\,
	datad => \bRAM_chip|RAM~3005_combout\,
	combout => \bRAM_chip|RAM~3006_combout\);

-- Location: LCCOMB_X66_Y31_N14
\bRAM_chip|RAM~3007\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3007_combout\ = (\testbenk:adress[5]~q\ & ((\bRAM_chip|RAM~3004_combout\ & ((\bRAM_chip|RAM~3006_combout\))) # (!\bRAM_chip|RAM~3004_combout\ & (\bRAM_chip|RAM~2999_combout\)))) # (!\testbenk:adress[5]~q\ & 
-- (((\bRAM_chip|RAM~3004_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[5]~q\,
	datab => \bRAM_chip|RAM~2999_combout\,
	datac => \bRAM_chip|RAM~3004_combout\,
	datad => \bRAM_chip|RAM~3006_combout\,
	combout => \bRAM_chip|RAM~3007_combout\);

-- Location: LCCOMB_X67_Y31_N6
\bRAM_chip|RAM~3008\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|RAM~3008_combout\ = (\testbenk:adress[1]~q\ & ((\bRAM_chip|RAM~2997_combout\ & ((\bRAM_chip|RAM~3007_combout\))) # (!\bRAM_chip|RAM~2997_combout\ & (\bRAM_chip|RAM~2976_combout\)))) # (!\testbenk:adress[1]~q\ & (\bRAM_chip|RAM~2997_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \testbenk:adress[1]~q\,
	datab => \bRAM_chip|RAM~2997_combout\,
	datac => \bRAM_chip|RAM~2976_combout\,
	datad => \bRAM_chip|RAM~3007_combout\,
	combout => \bRAM_chip|RAM~3008_combout\);

-- Location: LCCOMB_X68_Y28_N0
\bRAM_chip|s_Data_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \bRAM_chip|s_Data_out~7_combout\ = (\reset_n~input_o\ & (\SW[17]~input_o\ & \bRAM_chip|RAM~3008_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset_n~input_o\,
	datab => \SW[17]~input_o\,
	datac => \bRAM_chip|RAM~3008_combout\,
	combout => \bRAM_chip|s_Data_out~7_combout\);

-- Location: FF_X68_Y28_N1
\bRAM_chip|s_Data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \bRAM_chip|s_Data_out~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bRAM_chip|s_Data_out\(7));

-- Location: IOIBUF_X1_Y73_N15
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X115_Y34_N22
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X98_Y73_N15
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X0_Y4_N22
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X87_Y73_N15
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X0_Y17_N15
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X20_Y73_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X81_Y73_N8
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X94_Y73_N1
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X79_Y0_N22
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X107_Y73_N8
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X38_Y73_N22
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X52_Y0_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X16_Y73_N15
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;
END structure;


