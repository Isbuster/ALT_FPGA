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

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "05/07/2025 10:28:51"
                                                            
-- Vhdl Test Bench template for design  :  I2C_MASTER_ALL
-- 
-- Simulation tool : Questa Intel FPGA (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY I2C_MASTER_ALL_vhd_tst IS
END I2C_MASTER_ALL_vhd_tst;
ARCHITECTURE I2C_MASTER_ALL_arch OF I2C_MASTER_ALL_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL address : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL chipselect : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL rd : STD_LOGIC;
SIGNAL readdata : STD_LOGIC_VECTOR(31 DOWNTO 0);
SIGNAL RST : STD_LOGIC;
SIGNAL scl : STD_LOGIC;
SIGNAL sda : STD_LOGIC;
SIGNAL wr : STD_LOGIC;
SIGNAL writedata : STD_LOGIC_VECTOR(31 DOWNTO 0);
COMPONENT I2C_MASTER_ALL
	PORT (
	address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	chipselect : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	rd : IN STD_LOGIC;
	readdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
	RST : IN STD_LOGIC;
	scl : OUT STD_LOGIC;
	sda : INOUT STD_LOGIC;
	wr : IN STD_LOGIC;
	writedata : IN STD_LOGIC_VECTOR(31 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : I2C_MASTER_ALL
	PORT MAP (
-- list connections between master ports and signals
	address => address,
	chipselect => chipselect,
	CLK => CLK,
	rd => rd,
	readdata => readdata,
	RST => RST,
	scl => scl,
	sda => sda,
	wr => wr,
	writedata => writedata
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END I2C_MASTER_ALL_arch;
