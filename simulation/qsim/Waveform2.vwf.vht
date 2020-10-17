-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/16/2020 18:35:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          clock
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY clock_vhd_vec_tst IS
END clock_vhd_vec_tst;
ARCHITECTURE clock_arch OF clock_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clock_50 : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL LEDR : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pintest : STD_LOGIC_VECTOR(8 DOWNTO 0);
SIGNAL pintestULAA : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pintestULAB : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL pintestULAFLAG : STD_LOGIC;
COMPONENT clock
	PORT (
	clock_50 : IN STD_LOGIC;
	HEX0 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX1 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX2 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX3 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX4 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	LEDR : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	pintest : OUT STD_LOGIC_VECTOR(8 DOWNTO 0);
	pintestULAA : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pintestULAB : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	pintestULAFLAG : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : clock
	PORT MAP (
-- list connections between master ports and signals
	clock_50 => clock_50,
	HEX0 => HEX0,
	HEX1 => HEX1,
	HEX2 => HEX2,
	HEX3 => HEX3,
	HEX4 => HEX4,
	HEX5 => HEX5,
	LEDR => LEDR,
	pintest => pintest,
	pintestULAA => pintestULAA,
	pintestULAB => pintestULAB,
	pintestULAFLAG => pintestULAFLAG
	);

-- clock_50
t_prcs_clock_50: PROCESS
BEGIN
	clock_50 <= '1';
	WAIT FOR 10000 ps;
	FOR i IN 1 TO 49
	LOOP
		clock_50 <= '0';
		WAIT FOR 10000 ps;
		clock_50 <= '1';
		WAIT FOR 10000 ps;
	END LOOP;
	clock_50 <= '0';
WAIT;
END PROCESS t_prcs_clock_50;
END clock_arch;
