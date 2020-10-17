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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/17/2020 12:33:08"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	clock IS
    PORT (
	clock_50 : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	pintest : OUT std_logic_vector(8 DOWNTO 0);
	pintestULAA : OUT std_logic_vector(7 DOWNTO 0);
	pintestULAB : OUT std_logic_vector(7 DOWNTO 0);
	pintestULAFLAG : OUT std_logic;
	LEDR : OUT std_logic_vector(8 DOWNTO 0)
	);
END clock;

ARCHITECTURE structure OF clock IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_pintest : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_pintestULAA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pintestULAB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pintestULAFLAG : std_logic;
SIGNAL ww_LEDR : std_logic_vector(8 DOWNTO 0);
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~6\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~9_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~20_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~21_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~9_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~10_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~11_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~12_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~13_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~14_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~17_combout\ : std_logic;
SIGNAL \ram|ram~404_combout\ : std_logic;
SIGNAL \ram|ram~298_combout\ : std_logic;
SIGNAL \ram|ram~408_combout\ : std_logic;
SIGNAL \ram|ram~302_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~23_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~18\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~21_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~22\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~25_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~26\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~30\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~33_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~7_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~15_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~18_combout\ : std_logic;
SIGNAL \ram|ram~476_combout\ : std_logic;
SIGNAL \ram|ram~478_combout\ : std_logic;
SIGNAL \ram|ram~58_q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~19_combout\ : std_logic;
SIGNAL \ram|ram~379_combout\ : std_logic;
SIGNAL \ram|ram~479_combout\ : std_logic;
SIGNAL \ram|ram~74_q\ : std_logic;
SIGNAL \ram|ram~477_combout\ : std_logic;
SIGNAL \ram|ram~480_combout\ : std_logic;
SIGNAL \ram|ram~50_q\ : std_logic;
SIGNAL \ram|ram~377_combout\ : std_logic;
SIGNAL \ram|ram~481_combout\ : std_logic;
SIGNAL \ram|ram~26_q\ : std_logic;
SIGNAL \ram|ram~378_combout\ : std_logic;
SIGNAL \ram|ram~482_combout\ : std_logic;
SIGNAL \ram|ram~42_q\ : std_logic;
SIGNAL \ram|ram~376_combout\ : std_logic;
SIGNAL \ram|ram~483_combout\ : std_logic;
SIGNAL \ram|ram~18_q\ : std_logic;
SIGNAL \ram|ram~412_combout\ : std_logic;
SIGNAL \ram|ram~306_combout\ : std_logic;
SIGNAL \ram|ram~310_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ram|ram~392_combout\ : std_logic;
SIGNAL \ram|ram~285_combout\ : std_logic;
SIGNAL \ram|ram~396_combout\ : std_logic;
SIGNAL \ram|ram~289_combout\ : std_logic;
SIGNAL \ram|ram~57_q\ : std_logic;
SIGNAL \ram|ram~73_q\ : std_logic;
SIGNAL \ram|ram~49_q\ : std_logic;
SIGNAL \ram|ram~25_q\ : std_logic;
SIGNAL \ram|ram~41_q\ : std_logic;
SIGNAL \ram|ram~17_q\ : std_logic;
SIGNAL \ram|ram~400_combout\ : std_logic;
SIGNAL \ram|ram~293_combout\ : std_logic;
SIGNAL \ram|ram~297_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~35_cout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~2\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[1]~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~52_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~13_q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~53_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~21_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~54_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~29_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~55_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~37_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~45_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~6\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~9_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[2]~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~14_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~22_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~30_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~38_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~46_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~0_combout\ : std_logic;
SIGNAL \ram|ram~416_combout\ : std_logic;
SIGNAL \ram|ram~311_combout\ : std_logic;
SIGNAL \ram|ram~420_combout\ : std_logic;
SIGNAL \ram|ram~315_combout\ : std_logic;
SIGNAL \ram|ram~59_q\ : std_logic;
SIGNAL \ram|ram~75_q\ : std_logic;
SIGNAL \ram|ram~51_q\ : std_logic;
SIGNAL \ram|ram~27_q\ : std_logic;
SIGNAL \ram|ram~43_q\ : std_logic;
SIGNAL \ram|ram~19_q\ : std_logic;
SIGNAL \ram|ram~424_combout\ : std_logic;
SIGNAL \ram|ram~319_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~10\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~13_sumout\ : std_logic;
SIGNAL \ram|ram~323_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[3]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~15_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~23_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~31_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~39_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~47_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~22_combout\ : std_logic;
SIGNAL \ram|ram~428_combout\ : std_logic;
SIGNAL \ram|ram~324_combout\ : std_logic;
SIGNAL \ram|ram~432_combout\ : std_logic;
SIGNAL \ram|ram~328_combout\ : std_logic;
SIGNAL \ram|ram~60_q\ : std_logic;
SIGNAL \ram|ram~76_q\ : std_logic;
SIGNAL \ram|ram~52_q\ : std_logic;
SIGNAL \ram|ram~28_q\ : std_logic;
SIGNAL \ram|ram~44_q\ : std_logic;
SIGNAL \ram|ram~20_q\ : std_logic;
SIGNAL \ram|ram~436_combout\ : std_logic;
SIGNAL \ram|ram~332_combout\ : std_logic;
SIGNAL \ram|ram~336_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~14\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[4]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~16_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~24_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~32_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~40_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~48_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~2_combout\ : std_logic;
SIGNAL \ram|ram~464_combout\ : std_logic;
SIGNAL \ram|ram~363_combout\ : std_logic;
SIGNAL \ram|ram~468_combout\ : std_logic;
SIGNAL \ram|ram~367_combout\ : std_logic;
SIGNAL \ram|ram~63_q\ : std_logic;
SIGNAL \ram|ram~79_q\ : std_logic;
SIGNAL \ram|ram~55_q\ : std_logic;
SIGNAL \ram|ram~31_q\ : std_logic;
SIGNAL \ram|ram~47_q\ : std_logic;
SIGNAL \ram|ram~23_q\ : std_logic;
SIGNAL \ram|ram~472_combout\ : std_logic;
SIGNAL \ram|ram~371_combout\ : std_logic;
SIGNAL \ram|ram~375_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ram|ram~452_combout\ : std_logic;
SIGNAL \ram|ram~350_combout\ : std_logic;
SIGNAL \ram|ram~456_combout\ : std_logic;
SIGNAL \ram|ram~354_combout\ : std_logic;
SIGNAL \ram|ram~62_q\ : std_logic;
SIGNAL \ram|ram~78_q\ : std_logic;
SIGNAL \ram|ram~54_q\ : std_logic;
SIGNAL \ram|ram~30_q\ : std_logic;
SIGNAL \ram|ram~46_q\ : std_logic;
SIGNAL \ram|ram~22_q\ : std_logic;
SIGNAL \ram|ram~460_combout\ : std_logic;
SIGNAL \ram|ram~358_combout\ : std_logic;
SIGNAL \ram|ram~362_combout\ : std_logic;
SIGNAL \ram|ram~440_combout\ : std_logic;
SIGNAL \ram|ram~337_combout\ : std_logic;
SIGNAL \ram|ram~444_combout\ : std_logic;
SIGNAL \ram|ram~341_combout\ : std_logic;
SIGNAL \ram|ram~61_q\ : std_logic;
SIGNAL \ram|ram~77_q\ : std_logic;
SIGNAL \ram|ram~53_q\ : std_logic;
SIGNAL \ram|ram~29_q\ : std_logic;
SIGNAL \ram|ram~45_q\ : std_logic;
SIGNAL \ram|ram~21_q\ : std_logic;
SIGNAL \ram|ram~448_combout\ : std_logic;
SIGNAL \ram|ram~345_combout\ : std_logic;
SIGNAL \ram|ram~349_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~18\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~21_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[5]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~17_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~25_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~33_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~41_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~49_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~22\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~25_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[6]~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~18_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~26_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~34_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~42_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~50_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~26\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[7]~7_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~19_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~27_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~35_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~43_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~51_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~3_combout\ : std_logic;
SIGNAL \ram|ram~380_combout\ : std_logic;
SIGNAL \ram|ram~272_combout\ : std_logic;
SIGNAL \ram|ram~384_combout\ : std_logic;
SIGNAL \ram|ram~276_combout\ : std_logic;
SIGNAL \ram|ram~56_q\ : std_logic;
SIGNAL \ram|ram~72_q\ : std_logic;
SIGNAL \ram|ram~48_q\ : std_logic;
SIGNAL \ram|ram~24_q\ : std_logic;
SIGNAL \ram|ram~40_q\ : std_logic;
SIGNAL \ram|ram~16_q\ : std_logic;
SIGNAL \ram|ram~388_combout\ : std_logic;
SIGNAL \ram|ram~280_combout\ : std_logic;
SIGNAL \ram|ram~284_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|DOUT~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|DOUT~q\ : std_logic;
SIGNAL \cpu|instruction_search|selector_mux~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~10\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~13_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~14\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~16_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~2\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~6_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~8_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~32_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[0]~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~12_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~20_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~28_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~36_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~44_combout\ : std_logic;
SIGNAL \register_display0|process_0~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display0|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \register_display1|process_0~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display1|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \register_display1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu|instruction_search|pc|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~39_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~38_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~37_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~36_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~12_q\ : std_logic;
SIGNAL \cpu|instruction_search|pc|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \register_display1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ram|ALT_INV_ram~472_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~468_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~464_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~460_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~456_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~452_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~448_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~444_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~440_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~436_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~432_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~428_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~424_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~420_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~416_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~412_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~408_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~404_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~400_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~396_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~392_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~388_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~384_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~380_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~371_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~367_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~363_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~358_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~354_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~350_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~345_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~341_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~337_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~332_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~328_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~324_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~319_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~315_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~311_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~306_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~302_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~298_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~293_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~289_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~285_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~280_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~276_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~272_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~43_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~42_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~41_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~40_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~477_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~476_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~63_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~62_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~61_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~60_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~59_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~58_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~57_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~56_q\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~379_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~378_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~377_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~376_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~375_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~362_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~349_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~336_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~22_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~323_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~310_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~297_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~284_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~28_q\ : std_logic;

BEGIN

ww_clock_50 <= clock_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
pintest <= ww_pintest;
pintestULAA <= ww_pintestULAA;
pintestULAB <= ww_pintestULAB;
pintestULAFLAG <= ww_pintestULAFLAG;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\cpu|execution_operation|registers|ALT_INV_registrador~39_q\ <= NOT \cpu|execution_operation|registers|registrador~39_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~31_q\ <= NOT \cpu|execution_operation|registers|registrador~31_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~23_q\ <= NOT \cpu|execution_operation|registers|registrador~23_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~15_q\ <= NOT \cpu|execution_operation|registers|registrador~15_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~38_q\ <= NOT \cpu|execution_operation|registers|registrador~38_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~30_q\ <= NOT \cpu|execution_operation|registers|registrador~30_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~22_q\ <= NOT \cpu|execution_operation|registers|registrador~22_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~14_q\ <= NOT \cpu|execution_operation|registers|registrador~14_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~37_q\ <= NOT \cpu|execution_operation|registers|registrador~37_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~29_q\ <= NOT \cpu|execution_operation|registers|registrador~29_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~21_q\ <= NOT \cpu|execution_operation|registers|registrador~21_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~13_q\ <= NOT \cpu|execution_operation|registers|registrador~13_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~36_q\ <= NOT \cpu|execution_operation|registers|registrador~36_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~28_q\ <= NOT \cpu|execution_operation|registers|registrador~28_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~20_q\ <= NOT \cpu|execution_operation|registers|registrador~20_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~12_q\ <= NOT \cpu|execution_operation|registers|registrador~12_q\;
\cpu|instruction_search|pc|ALT_INV_DOUT\(8) <= NOT \cpu|instruction_search|pc|DOUT\(8);
\cpu|instruction_search|pc|ALT_INV_DOUT\(7) <= NOT \cpu|instruction_search|pc|DOUT\(7);
\cpu|instruction_search|pc|ALT_INV_DOUT\(6) <= NOT \cpu|instruction_search|pc|DOUT\(6);
\cpu|instruction_search|pc|ALT_INV_DOUT\(5) <= NOT \cpu|instruction_search|pc|DOUT\(5);
\cpu|instruction_search|pc|ALT_INV_DOUT\(4) <= NOT \cpu|instruction_search|pc|DOUT\(4);
\cpu|instruction_search|pc|ALT_INV_DOUT\(3) <= NOT \cpu|instruction_search|pc|DOUT\(3);
\cpu|instruction_search|pc|ALT_INV_DOUT\(2) <= NOT \cpu|instruction_search|pc|DOUT\(2);
\cpu|instruction_search|pc|ALT_INV_DOUT\(1) <= NOT \cpu|instruction_search|pc|DOUT\(1);
\cpu|instruction_search|pc|ALT_INV_DOUT\(0) <= NOT \cpu|instruction_search|pc|DOUT\(0);
\register_display1|ALT_INV_DOUT\(2) <= NOT \register_display1|DOUT\(2);
\register_display1|ALT_INV_DOUT\(3) <= NOT \register_display1|DOUT\(3);
\register_display1|ALT_INV_DOUT\(0) <= NOT \register_display1|DOUT\(0);
\register_display0|ALT_INV_DOUT\(1) <= NOT \register_display0|DOUT\(1);
\register_display0|ALT_INV_DOUT\(2) <= NOT \register_display0|DOUT\(2);
\register_display0|ALT_INV_DOUT\(3) <= NOT \register_display0|DOUT\(3);
\register_display0|ALT_INV_DOUT\(0) <= NOT \register_display0|DOUT\(0);
\ram|ALT_INV_ram~472_combout\ <= NOT \ram|ram~472_combout\;
\ram|ALT_INV_ram~468_combout\ <= NOT \ram|ram~468_combout\;
\ram|ALT_INV_ram~464_combout\ <= NOT \ram|ram~464_combout\;
\ram|ALT_INV_ram~460_combout\ <= NOT \ram|ram~460_combout\;
\ram|ALT_INV_ram~456_combout\ <= NOT \ram|ram~456_combout\;
\ram|ALT_INV_ram~452_combout\ <= NOT \ram|ram~452_combout\;
\ram|ALT_INV_ram~448_combout\ <= NOT \ram|ram~448_combout\;
\ram|ALT_INV_ram~444_combout\ <= NOT \ram|ram~444_combout\;
\ram|ALT_INV_ram~440_combout\ <= NOT \ram|ram~440_combout\;
\ram|ALT_INV_ram~436_combout\ <= NOT \ram|ram~436_combout\;
\ram|ALT_INV_ram~432_combout\ <= NOT \ram|ram~432_combout\;
\ram|ALT_INV_ram~428_combout\ <= NOT \ram|ram~428_combout\;
\ram|ALT_INV_ram~424_combout\ <= NOT \ram|ram~424_combout\;
\ram|ALT_INV_ram~420_combout\ <= NOT \ram|ram~420_combout\;
\ram|ALT_INV_ram~416_combout\ <= NOT \ram|ram~416_combout\;
\ram|ALT_INV_ram~412_combout\ <= NOT \ram|ram~412_combout\;
\ram|ALT_INV_ram~408_combout\ <= NOT \ram|ram~408_combout\;
\ram|ALT_INV_ram~404_combout\ <= NOT \ram|ram~404_combout\;
\ram|ALT_INV_ram~400_combout\ <= NOT \ram|ram~400_combout\;
\ram|ALT_INV_ram~396_combout\ <= NOT \ram|ram~396_combout\;
\ram|ALT_INV_ram~392_combout\ <= NOT \ram|ram~392_combout\;
\ram|ALT_INV_ram~388_combout\ <= NOT \ram|ram~388_combout\;
\ram|ALT_INV_ram~384_combout\ <= NOT \ram|ram~384_combout\;
\ram|ALT_INV_ram~380_combout\ <= NOT \ram|ram~380_combout\;
\ram|ALT_INV_ram~371_combout\ <= NOT \ram|ram~371_combout\;
\ram|ALT_INV_ram~367_combout\ <= NOT \ram|ram~367_combout\;
\ram|ALT_INV_ram~363_combout\ <= NOT \ram|ram~363_combout\;
\ram|ALT_INV_ram~358_combout\ <= NOT \ram|ram~358_combout\;
\ram|ALT_INV_ram~354_combout\ <= NOT \ram|ram~354_combout\;
\ram|ALT_INV_ram~350_combout\ <= NOT \ram|ram~350_combout\;
\ram|ALT_INV_ram~345_combout\ <= NOT \ram|ram~345_combout\;
\ram|ALT_INV_ram~341_combout\ <= NOT \ram|ram~341_combout\;
\ram|ALT_INV_ram~337_combout\ <= NOT \ram|ram~337_combout\;
\ram|ALT_INV_ram~332_combout\ <= NOT \ram|ram~332_combout\;
\ram|ALT_INV_ram~328_combout\ <= NOT \ram|ram~328_combout\;
\ram|ALT_INV_ram~324_combout\ <= NOT \ram|ram~324_combout\;
\ram|ALT_INV_ram~319_combout\ <= NOT \ram|ram~319_combout\;
\ram|ALT_INV_ram~315_combout\ <= NOT \ram|ram~315_combout\;
\ram|ALT_INV_ram~311_combout\ <= NOT \ram|ram~311_combout\;
\ram|ALT_INV_ram~306_combout\ <= NOT \ram|ram~306_combout\;
\ram|ALT_INV_ram~302_combout\ <= NOT \ram|ram~302_combout\;
\ram|ALT_INV_ram~298_combout\ <= NOT \ram|ram~298_combout\;
\ram|ALT_INV_ram~293_combout\ <= NOT \ram|ram~293_combout\;
\ram|ALT_INV_ram~289_combout\ <= NOT \ram|ram~289_combout\;
\ram|ALT_INV_ram~285_combout\ <= NOT \ram|ram~285_combout\;
\ram|ALT_INV_ram~280_combout\ <= NOT \ram|ram~280_combout\;
\ram|ALT_INV_ram~276_combout\ <= NOT \ram|ram~276_combout\;
\ram|ALT_INV_ram~272_combout\ <= NOT \ram|ram~272_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~43_q\ <= NOT \cpu|execution_operation|registers|registrador~43_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~35_q\ <= NOT \cpu|execution_operation|registers|registrador~35_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~27_q\ <= NOT \cpu|execution_operation|registers|registrador~27_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~19_q\ <= NOT \cpu|execution_operation|registers|registrador~19_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~42_q\ <= NOT \cpu|execution_operation|registers|registrador~42_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~34_q\ <= NOT \cpu|execution_operation|registers|registrador~34_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~26_q\ <= NOT \cpu|execution_operation|registers|registrador~26_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~18_q\ <= NOT \cpu|execution_operation|registers|registrador~18_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~41_q\ <= NOT \cpu|execution_operation|registers|registrador~41_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~33_q\ <= NOT \cpu|execution_operation|registers|registrador~33_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~25_q\ <= NOT \cpu|execution_operation|registers|registrador~25_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~17_q\ <= NOT \cpu|execution_operation|registers|registrador~17_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~40_q\ <= NOT \cpu|execution_operation|registers|registrador~40_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~32_q\ <= NOT \cpu|execution_operation|registers|registrador~32_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~24_q\ <= NOT \cpu|execution_operation|registers|registrador~24_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~16_q\ <= NOT \cpu|execution_operation|registers|registrador~16_q\;
\ram|ALT_INV_ram~19_q\ <= NOT \ram|ram~19_q\;
\ram|ALT_INV_ram~43_q\ <= NOT \ram|ram~43_q\;
\ram|ALT_INV_ram~27_q\ <= NOT \ram|ram~27_q\;
\ram|ALT_INV_ram~18_q\ <= NOT \ram|ram~18_q\;
\ram|ALT_INV_ram~42_q\ <= NOT \ram|ram~42_q\;
\ram|ALT_INV_ram~26_q\ <= NOT \ram|ram~26_q\;
\ram|ALT_INV_ram~17_q\ <= NOT \ram|ram~17_q\;
\ram|ALT_INV_ram~41_q\ <= NOT \ram|ram~41_q\;
\ram|ALT_INV_ram~25_q\ <= NOT \ram|ram~25_q\;
\ram|ALT_INV_ram~16_q\ <= NOT \ram|ram~16_q\;
\ram|ALT_INV_ram~40_q\ <= NOT \ram|ram~40_q\;
\ram|ALT_INV_ram~24_q\ <= NOT \ram|ram~24_q\;
\ram|ALT_INV_ram~477_combout\ <= NOT \ram|ram~477_combout\;
\ram|ALT_INV_ram~476_combout\ <= NOT \ram|ram~476_combout\;
\cpu|execution_operation|ula|ALT_INV_Add0~32_combout\ <= NOT \cpu|execution_operation|ula|Add0~32_combout\;
\ram|ALT_INV_ram~55_q\ <= NOT \ram|ram~55_q\;
\ram|ALT_INV_ram~79_q\ <= NOT \ram|ram~79_q\;
\ram|ALT_INV_ram~63_q\ <= NOT \ram|ram~63_q\;
\ram|ALT_INV_ram~54_q\ <= NOT \ram|ram~54_q\;
\ram|ALT_INV_ram~78_q\ <= NOT \ram|ram~78_q\;
\ram|ALT_INV_ram~62_q\ <= NOT \ram|ram~62_q\;
\ram|ALT_INV_ram~53_q\ <= NOT \ram|ram~53_q\;
\ram|ALT_INV_ram~77_q\ <= NOT \ram|ram~77_q\;
\ram|ALT_INV_ram~61_q\ <= NOT \ram|ram~61_q\;
\ram|ALT_INV_ram~52_q\ <= NOT \ram|ram~52_q\;
\ram|ALT_INV_ram~76_q\ <= NOT \ram|ram~76_q\;
\ram|ALT_INV_ram~60_q\ <= NOT \ram|ram~60_q\;
\ram|ALT_INV_ram~51_q\ <= NOT \ram|ram~51_q\;
\ram|ALT_INV_ram~75_q\ <= NOT \ram|ram~75_q\;
\ram|ALT_INV_ram~59_q\ <= NOT \ram|ram~59_q\;
\ram|ALT_INV_ram~50_q\ <= NOT \ram|ram~50_q\;
\ram|ALT_INV_ram~74_q\ <= NOT \ram|ram~74_q\;
\ram|ALT_INV_ram~58_q\ <= NOT \ram|ram~58_q\;
\ram|ALT_INV_ram~49_q\ <= NOT \ram|ram~49_q\;
\ram|ALT_INV_ram~73_q\ <= NOT \ram|ram~73_q\;
\ram|ALT_INV_ram~57_q\ <= NOT \ram|ram~57_q\;
\ram|ALT_INV_ram~48_q\ <= NOT \ram|ram~48_q\;
\ram|ALT_INV_ram~72_q\ <= NOT \ram|ram~72_q\;
\ram|ALT_INV_ram~56_q\ <= NOT \ram|ram~56_q\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~4_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~3_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~2_combout\;
\cpu|execution_operation|flipflop|ALT_INV_DOUT~q\ <= NOT \cpu|execution_operation|flipflop|DOUT~q\;
\ram|ALT_INV_ram~379_combout\ <= NOT \ram|ram~379_combout\;
\ram|ALT_INV_ram~378_combout\ <= NOT \ram|ram~378_combout\;
\ram|ALT_INV_ram~377_combout\ <= NOT \ram|ram~377_combout\;
\ram|ALT_INV_ram~376_combout\ <= NOT \ram|ram~376_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~1_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~6_combout\ <= NOT \cpu|execution_operation|ula|Equal8~6_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~5_combout\ <= NOT \cpu|execution_operation|ula|Equal8~5_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~4_combout\ <= NOT \cpu|execution_operation|ula|Equal8~4_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\ <= NOT \cpu|execution_operation|ula|Equal8~3_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ <= NOT \cpu|execution_operation|ula|Equal8~2_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\ <= NOT \cpu|execution_operation|ula|Equal8~1_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ <= NOT \cpu|execution_operation|ula|Equal8~0_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[7]~7_combout\;
\ram|ALT_INV_ram~375_combout\ <= NOT \ram|ram~375_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~23_combout\ <= NOT \cpu|instruction_search|rom|memROM~23_combout\;
\ram|ALT_INV_ram~362_combout\ <= NOT \ram|ram~362_combout\;
\ram|ALT_INV_ram~349_combout\ <= NOT \ram|ram~349_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~4_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[4]~4_combout\;
\ram|ALT_INV_ram~336_combout\ <= NOT \ram|ram~336_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~22_combout\ <= NOT \cpu|instruction_search|rom|memROM~22_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[3]~3_combout\;
\ram|ALT_INV_ram~323_combout\ <= NOT \ram|ram~323_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[2]~2_combout\;
\ram|ALT_INV_ram~310_combout\ <= NOT \ram|ram~310_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~21_combout\ <= NOT \cpu|instruction_search|rom|memROM~21_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~20_combout\ <= NOT \cpu|instruction_search|rom|memROM~20_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[1]~1_combout\;
\ram|ALT_INV_ram~297_combout\ <= NOT \ram|ram~297_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~19_combout\ <= NOT \cpu|instruction_search|rom|memROM~19_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~18_combout\ <= NOT \cpu|instruction_search|rom|memROM~18_combout\;
\ram|ALT_INV_ram~284_combout\ <= NOT \ram|ram~284_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~17_combout\ <= NOT \cpu|instruction_search|rom|memROM~17_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~16_combout\ <= NOT \cpu|instruction_search|rom|memROM~16_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~15_combout\ <= NOT \cpu|instruction_search|rom|memROM~15_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~0_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~14_combout\ <= NOT \cpu|instruction_search|rom|memROM~14_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~13_combout\ <= NOT \cpu|instruction_search|rom|memROM~13_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~12_combout\ <= NOT \cpu|instruction_search|rom|memROM~12_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~11_combout\ <= NOT \cpu|instruction_search|rom|memROM~11_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~10_combout\ <= NOT \cpu|instruction_search|rom|memROM~10_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~9_combout\ <= NOT \cpu|instruction_search|rom|memROM~9_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~8_combout\ <= NOT \cpu|instruction_search|rom|memROM~8_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~7_combout\ <= NOT \cpu|instruction_search|rom|memROM~7_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~6_combout\ <= NOT \cpu|instruction_search|rom|memROM~6_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~51_combout\ <= NOT \cpu|execution_operation|registers|registrador~51_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~50_combout\ <= NOT \cpu|execution_operation|registers|registrador~50_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~49_combout\ <= NOT \cpu|execution_operation|registers|registrador~49_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~48_combout\ <= NOT \cpu|execution_operation|registers|registrador~48_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~47_combout\ <= NOT \cpu|execution_operation|registers|registrador~47_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~46_combout\ <= NOT \cpu|execution_operation|registers|registrador~46_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~45_combout\ <= NOT \cpu|execution_operation|registers|registrador~45_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~44_combout\ <= NOT \cpu|execution_operation|registers|registrador~44_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~5_combout\ <= NOT \cpu|instruction_search|rom|memROM~5_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~4_combout\ <= NOT \cpu|instruction_search|rom|memROM~4_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~3_combout\ <= NOT \cpu|instruction_search|rom|memROM~3_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~2_combout\ <= NOT \cpu|instruction_search|rom|memROM~2_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~1_combout\ <= NOT \cpu|instruction_search|rom|memROM~1_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~0_combout\ <= NOT \cpu|instruction_search|rom|memROM~0_combout\;
\register_display1|ALT_INV_DOUT\(1) <= NOT \register_display1|DOUT\(1);
\ram|ALT_INV_ram~23_q\ <= NOT \ram|ram~23_q\;
\ram|ALT_INV_ram~47_q\ <= NOT \ram|ram~47_q\;
\ram|ALT_INV_ram~31_q\ <= NOT \ram|ram~31_q\;
\ram|ALT_INV_ram~22_q\ <= NOT \ram|ram~22_q\;
\ram|ALT_INV_ram~46_q\ <= NOT \ram|ram~46_q\;
\ram|ALT_INV_ram~30_q\ <= NOT \ram|ram~30_q\;
\ram|ALT_INV_ram~21_q\ <= NOT \ram|ram~21_q\;
\ram|ALT_INV_ram~45_q\ <= NOT \ram|ram~45_q\;
\ram|ALT_INV_ram~29_q\ <= NOT \ram|ram~29_q\;
\ram|ALT_INV_ram~20_q\ <= NOT \ram|ram~20_q\;
\ram|ALT_INV_ram~44_q\ <= NOT \ram|ram~44_q\;
\ram|ALT_INV_ram~28_q\ <= NOT \ram|ram~28_q\;

\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display0|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(0));

\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(1));

\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(2));

\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(3));

\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(4));

\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(5));

\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display1|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_HEX1(6));

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(2));

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(5));

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(6));

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(0));

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(1));

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(2));

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(3));

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(4));

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(5));

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX3(6));

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(0));

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(1));

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(2));

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(3));

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(4));

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(5));

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX4(6));

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(0));

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(1));

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(2));

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(3));

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(4));

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX5(5));

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX5(6));

\pintest[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(0),
	devoe => ww_devoe,
	o => ww_pintest(0));

\pintest[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(1),
	devoe => ww_devoe,
	o => ww_pintest(1));

\pintest[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(2),
	devoe => ww_devoe,
	o => ww_pintest(2));

\pintest[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(3),
	devoe => ww_devoe,
	o => ww_pintest(3));

\pintest[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(4),
	devoe => ww_devoe,
	o => ww_pintest(4));

\pintest[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(5),
	devoe => ww_devoe,
	o => ww_pintest(5));

\pintest[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(6),
	devoe => ww_devoe,
	o => ww_pintest(6));

\pintest[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(7),
	devoe => ww_devoe,
	o => ww_pintest(7));

\pintest[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(8),
	devoe => ww_devoe,
	o => ww_pintest(8));

\pintestULAA[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~44_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(0));

\pintestULAA[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~45_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(1));

\pintestULAA[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~46_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(2));

\pintestULAA[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~47_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(3));

\pintestULAA[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~48_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(4));

\pintestULAA[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~49_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(5));

\pintestULAA[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~50_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(6));

\pintestULAA[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|registers|registrador~51_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAA(7));

\pintestULAB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[0]~0_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(0));

\pintestULAB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(1));

\pintestULAB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[2]~2_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(2));

\pintestULAB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[3]~3_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(3));

\pintestULAB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[4]~4_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(4));

\pintestULAB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[5]~5_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(5));

\pintestULAB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[6]~6_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(6));

\pintestULAB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[7]~7_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAB(7));

\pintestULAFLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|ula|Equal8~6_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAFLAG);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|instruction_search|pc|DOUT\(8),
	devoe => ww_devoe,
	o => ww_LEDR(8));

\clock_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock_50,
	o => \clock_50~input_o\);

\cpu|instruction_search|adder|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~1_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \cpu|instruction_search|adder|Add0~2\ = CARRY(( \cpu|instruction_search|pc|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \cpu|instruction_search|adder|Add0~1_sumout\,
	cout => \cpu|instruction_search|adder|Add0~2\);

\cpu|instruction_search|adder|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~5_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(1) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~2\ ))
-- \cpu|instruction_search|adder|Add0~6\ = CARRY(( \cpu|instruction_search|pc|DOUT\(1) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	cin => \cpu|instruction_search|adder|Add0~2\,
	sumout => \cpu|instruction_search|adder|Add0~5_sumout\,
	cout => \cpu|instruction_search|adder|Add0~6\);

\cpu|instruction_search|adder|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~9_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(2) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~6\ ))
-- \cpu|instruction_search|adder|Add0~10\ = CARRY(( \cpu|instruction_search|pc|DOUT\(2) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	cin => \cpu|instruction_search|adder|Add0~6\,
	sumout => \cpu|instruction_search|adder|Add0~9_sumout\,
	cout => \cpu|instruction_search|adder|Add0~10\);

\cpu|instruction_search|rom|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~20_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(1) & 
-- (!\cpu|instruction_search|pc|DOUT\(3) & ((!\cpu|instruction_search|pc|DOUT\(0)) # (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001010000000001100101000000000110010100000000011001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~20_combout\);

\cpu|instruction_search|rom|memROM~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~21_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~20_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	combout => \cpu|instruction_search|rom|memROM~21_combout\);

\cpu|instruction_search|rom|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~9_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(2))))) # (\cpu|instruction_search|pc|DOUT\(1) & 
-- (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101001000000000010100100000000001010010000000000101001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~9_combout\);

\cpu|instruction_search|rom|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~10_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	combout => \cpu|instruction_search|rom|memROM~10_combout\);

\cpu|instruction_search|rom|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~11_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001001000000000000100100000000000010010000000000001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~11_combout\);

\cpu|instruction_search|rom|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~12_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~11_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	combout => \cpu|instruction_search|rom|memROM~12_combout\);

\cpu|instruction_search|rom|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~13_combout\ = (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(2) & 
-- (!\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011010000000000001101000000000000110100000000000011010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~13_combout\);

\cpu|instruction_search|rom|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~14_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~13_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\,
	combout => \cpu|instruction_search|rom|memROM~14_combout\);

\cpu|instruction_search|control_unit|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~3_combout\ = (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~12_combout\ & (!\cpu|instruction_search|rom|memROM~8_combout\ $ 
-- (!\cpu|instruction_search|rom|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000010000000010000001000000001000000100000000100000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~3_combout\);

\cpu|instruction_search|control_unit|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~2_combout\ = (\cpu|instruction_search|rom|memROM~8_combout\ & (!\cpu|instruction_search|rom|memROM~14_combout\ & ((!\cpu|instruction_search|rom|memROM~10_combout\) # 
-- (!\cpu|instruction_search|rom|memROM~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010000000000010101000000000001010100000000000101010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~2_combout\);

\cpu|instruction_search|rom|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~17_combout\ = (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(3) & \cpu|instruction_search|rom|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \cpu|instruction_search|rom|memROM~17_combout\);

\ram|ram~404\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~404_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~404_combout\);

\ram|ram~298\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~298_combout\ = ( \ram|ram~404_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~404_combout\,
	combout => \ram|ram~298_combout\);

\ram|ram~408\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~408_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~408_combout\);

\ram|ram~302\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~302_combout\ = ( \ram|ram~408_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~408_combout\,
	combout => \ram|ram~302_combout\);

\cpu|instruction_search|rom|memROM~23\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~23_combout\ = ( \cpu|instruction_search|rom|memROM~4_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & 
-- \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(3) & ((\cpu|instruction_search|pc|DOUT\(1)) # (\cpu|instruction_search|pc|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001111000000000000000000000000000011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \cpu|instruction_search|rom|memROM~23_combout\);

\cpu|instruction_search|adder|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~17_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(4) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~14\ ))
-- \cpu|instruction_search|adder|Add0~18\ = CARRY(( \cpu|instruction_search|pc|DOUT\(4) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(4),
	cin => \cpu|instruction_search|adder|Add0~14\,
	sumout => \cpu|instruction_search|adder|Add0~17_sumout\,
	cout => \cpu|instruction_search|adder|Add0~18\);

\cpu|instruction_search|adder|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~21_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(5) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~18\ ))
-- \cpu|instruction_search|adder|Add0~22\ = CARRY(( \cpu|instruction_search|pc|DOUT\(5) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(5),
	cin => \cpu|instruction_search|adder|Add0~18\,
	sumout => \cpu|instruction_search|adder|Add0~21_sumout\,
	cout => \cpu|instruction_search|adder|Add0~22\);

\~GND\ : cyclonev_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

\cpu|instruction_search|pc|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~21_sumout\,
	asdata => \~GND~combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(5));

\cpu|instruction_search|adder|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~25_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(6) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~22\ ))
-- \cpu|instruction_search|adder|Add0~26\ = CARRY(( \cpu|instruction_search|pc|DOUT\(6) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(6),
	cin => \cpu|instruction_search|adder|Add0~22\,
	sumout => \cpu|instruction_search|adder|Add0~25_sumout\,
	cout => \cpu|instruction_search|adder|Add0~26\);

\cpu|instruction_search|pc|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~25_sumout\,
	asdata => \~GND~combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(6));

\cpu|instruction_search|adder|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~29_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(7) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~26\ ))
-- \cpu|instruction_search|adder|Add0~30\ = CARRY(( \cpu|instruction_search|pc|DOUT\(7) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(7),
	cin => \cpu|instruction_search|adder|Add0~26\,
	sumout => \cpu|instruction_search|adder|Add0~29_sumout\,
	cout => \cpu|instruction_search|adder|Add0~30\);

\cpu|instruction_search|pc|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~29_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~23_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(7));

\cpu|instruction_search|adder|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~33_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(8) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(8),
	cin => \cpu|instruction_search|adder|Add0~30\,
	sumout => \cpu|instruction_search|adder|Add0~33_sumout\);

\cpu|instruction_search|pc|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~33_sumout\,
	asdata => \~GND~combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(8));

\cpu|instruction_search|rom|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~7_combout\ = (!\cpu|instruction_search|pc|DOUT\(5) & (!\cpu|instruction_search|pc|DOUT\(6) & (!\cpu|instruction_search|pc|DOUT\(7) & !\cpu|instruction_search|pc|DOUT\(8))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(5),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(6),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(7),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(8),
	combout => \cpu|instruction_search|rom|memROM~7_combout\);

\cpu|instruction_search|control_unit|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~1_combout\ = ( \cpu|instruction_search|rom|memROM~13_combout\ & ( \cpu|instruction_search|rom|memROM~7_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~6_combout\ & (!\cpu|instruction_search|rom|memROM~9_combout\ & !\cpu|instruction_search|rom|memROM~11_combout\))) ) ) ) # ( \cpu|instruction_search|rom|memROM~13_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~7_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~9_combout\ & !\cpu|instruction_search|rom|memROM~11_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010100000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~1_combout\);

\cpu|instruction_search|rom|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~15_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & ((!\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3))) # (\cpu|instruction_search|pc|DOUT\(1) & 
-- ((!\cpu|instruction_search|pc|DOUT\(3)))))) # (\cpu|instruction_search|pc|DOUT\(0) & (((\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011110000000001001111000000000100111100000000010011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~15_combout\);

\cpu|instruction_search|rom|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~18_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & ((!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3))) # (\cpu|instruction_search|pc|DOUT\(0) & 
-- (\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(3))))) # (\cpu|instruction_search|pc|DOUT\(1) & (((!\cpu|instruction_search|pc|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011110000000001101111000000000110111100000000011011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~18_combout\);

\ram|ram~476\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~476_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~20_combout\ & !\cpu|instruction_search|rom|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000010000000000000001000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\,
	combout => \ram|ram~476_combout\);

\ram|ram~478\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~478_combout\ = ( \ram|ram~476_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~476_combout\,
	combout => \ram|ram~478_combout\);

\ram|ram~58\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~58_q\);

\cpu|instruction_search|rom|memROM~19\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~19_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~18_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\,
	combout => \cpu|instruction_search|rom|memROM~19_combout\);

\ram|ram~379\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~379_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\ & \cpu|instruction_search|rom|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000000010000000100000001000000010000000100000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	combout => \ram|ram~379_combout\);

\ram|ram~479\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~479_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( \ram|ram~379_combout\ & ( (\cpu|instruction_search|rom|memROM~19_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & 
-- \cpu|instruction_search|rom|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	dataf => \ram|ALT_INV_ram~379_combout\,
	combout => \ram|ram~479_combout\);

\ram|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~74_q\);

\ram|ram~477\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~477_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~20_combout\ & !\cpu|instruction_search|rom|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\,
	combout => \ram|ram~477_combout\);

\ram|ram~480\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~480_combout\ = ( \ram|ram~477_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~477_combout\,
	combout => \ram|ram~480_combout\);

\ram|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~50_q\);

\ram|ram~377\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~377_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|instruction_search|rom|memROM~20_combout\ & !\cpu|instruction_search|rom|memROM~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\,
	combout => \ram|ram~377_combout\);

\ram|ram~481\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~481_combout\ = ( \ram|ram~377_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000110000000000000000000000000000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~377_combout\,
	combout => \ram|ram~481_combout\);

\ram|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~26_q\);

\ram|ram~378\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~378_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\ & !\cpu|instruction_search|rom|memROM~20_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	combout => \ram|ram~378_combout\);

\ram|ram~482\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~482_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( \ram|ram~378_combout\ & ( (\cpu|instruction_search|rom|memROM~19_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & 
-- \cpu|instruction_search|rom|memROM~23_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	dataf => \ram|ALT_INV_ram~378_combout\,
	combout => \ram|ram~482_combout\);

\ram|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~42_q\);

\ram|ram~376\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~376_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & (((\cpu|instruction_search|rom|memROM~18_combout\) # (\cpu|instruction_search|rom|memROM~20_combout\)) # (\cpu|instruction_search|rom|memROM~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010101000101010101010100010101010101010001010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\,
	combout => \ram|ram~376_combout\);

\ram|ram~483\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~483_combout\ = ( !\ram|ram~376_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001100000000000000000000000000000011000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~376_combout\,
	combout => \ram|ram~483_combout\);

\ram|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~18_q\);

\ram|ram~412\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~412_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~42_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~18_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~26_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~26_q\,
	datab => \ram|ALT_INV_ram~42_q\,
	datac => \ram|ALT_INV_ram~18_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~412_combout\);

\ram|ram~306\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~306_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~412_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~74_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~412_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~58_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~412_combout\ & ( (\ram|ram~50_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~58_q\,
	datab => \ram|ALT_INV_ram~74_q\,
	datac => \ram|ALT_INV_ram~50_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~412_combout\,
	combout => \ram|ram~306_combout\);

\ram|ram~310\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~310_combout\ = ( \ram|ram~302_combout\ & ( \ram|ram~306_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~298_combout\)) ) ) ) # ( !\ram|ram~302_combout\ & ( \ram|ram~306_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~298_combout\)) ) ) ) # ( \ram|ram~302_combout\ & ( !\ram|ram~306_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~298_combout\))) ) ) ) # ( !\ram|ram~302_combout\ & ( !\ram|ram~306_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~298_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~298_combout\,
	datae => \ram|ALT_INV_ram~302_combout\,
	dataf => \ram|ALT_INV_ram~306_combout\,
	combout => \ram|ram~310_combout\);

\cpu|execution_operation|mux|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~310_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~21_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datac => \ram|ALT_INV_ram~310_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[2]~2_combout\);

\ram|ram~392\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~392_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~392_combout\);

\ram|ram~285\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~285_combout\ = ( \ram|ram~392_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~392_combout\,
	combout => \ram|ram~285_combout\);

\ram|ram~396\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~396_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~396_combout\);

\ram|ram~289\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~289_combout\ = ( \ram|ram~396_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~396_combout\,
	combout => \ram|ram~289_combout\);

\ram|ram~57\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~57_q\);

\ram|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~73_q\);

\ram|ram~49\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~49_q\);

\ram|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~25_q\);

\ram|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~41_q\);

\ram|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~17_q\);

\ram|ram~400\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~400_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~41_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~17_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~25_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~25_q\,
	datab => \ram|ALT_INV_ram~41_q\,
	datac => \ram|ALT_INV_ram~17_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~400_combout\);

\ram|ram~293\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~293_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~400_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~73_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~400_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~57_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~400_combout\ & ( (\ram|ram~49_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~57_q\,
	datab => \ram|ALT_INV_ram~73_q\,
	datac => \ram|ALT_INV_ram~49_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~400_combout\,
	combout => \ram|ram~293_combout\);

\ram|ram~297\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~297_combout\ = ( \ram|ram~289_combout\ & ( \ram|ram~293_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~285_combout\)) ) ) ) # ( !\ram|ram~289_combout\ & ( \ram|ram~293_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~285_combout\)) ) ) ) # ( \ram|ram~289_combout\ & ( !\ram|ram~293_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~285_combout\))) ) ) ) # ( !\ram|ram~289_combout\ & ( !\ram|ram~293_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~285_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~285_combout\,
	datae => \ram|ALT_INV_ram~289_combout\,
	dataf => \ram|ALT_INV_ram~293_combout\,
	combout => \ram|ram~297_combout\);

\cpu|execution_operation|mux|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~297_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datac => \ram|ALT_INV_ram~297_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[1]~1_combout\);

\cpu|execution_operation|ula|Add0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~35_cout\ = CARRY(( (!\cpu|instruction_search|rom|memROM~14_combout\ & (\cpu|instruction_search|rom|memROM~8_combout\ & ((!\cpu|instruction_search|rom|memROM~10_combout\) # 
-- (!\cpu|instruction_search|rom|memROM~12_combout\)))) # (\cpu|instruction_search|rom|memROM~14_combout\ & (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~12_combout\ & 
-- !\cpu|instruction_search|rom|memROM~8_combout\))) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	cin => GND,
	cout => \cpu|execution_operation|ula|Add0~35_cout\);

\cpu|execution_operation|ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~1_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~44_combout\ ) + ( \cpu|execution_operation|ula|Add0~32_combout\ ) + ( \cpu|execution_operation|ula|Add0~35_cout\ ))
-- \cpu|execution_operation|ula|Add0~2\ = CARRY(( \cpu|execution_operation|registers|registrador~44_combout\ ) + ( \cpu|execution_operation|ula|Add0~32_combout\ ) + ( \cpu|execution_operation|ula|Add0~35_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Add0~32_combout\,
	cin => \cpu|execution_operation|ula|Add0~35_cout\,
	sumout => \cpu|execution_operation|ula|Add0~1_sumout\,
	cout => \cpu|execution_operation|ula|Add0~2\);

\cpu|execution_operation|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~5_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))
-- \cpu|execution_operation|ula|Add0~6\ = CARRY(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~2\,
	sumout => \cpu|execution_operation|ula|Add0~5_sumout\,
	cout => \cpu|execution_operation|ula|Add0~6\);

\cpu|execution_operation|ula|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[1]~1_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~297_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~19_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datad => \ram|ALT_INV_ram~297_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[1]~1_combout\);

\cpu|instruction_search|rom|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~0_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(1) $ (!\cpu|instruction_search|pc|DOUT\(3))))) # (\cpu|instruction_search|pc|DOUT\(0) & 
-- (((\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010110000000001001011000000000100101100000000010010110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~0_combout\);

\cpu|instruction_search|rom|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~3_combout\ = (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000000000000100100000000000010010000000000001001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~3_combout\);

\cpu|instruction_search|control_unit|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~4_combout\ = (!\cpu|instruction_search|rom|memROM~10_combout\ & ((!\cpu|instruction_search|rom|memROM~12_combout\ & ((\cpu|instruction_search|rom|memROM~14_combout\) # 
-- (\cpu|instruction_search|rom|memROM~8_combout\))) # (\cpu|instruction_search|rom|memROM~12_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\))))) # (\cpu|instruction_search|rom|memROM~10_combout\ & 
-- (((!\cpu|instruction_search|rom|memROM~12_combout\ & !\cpu|instruction_search|rom|memROM~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110011000000011111001100000001111100110000000111110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~4_combout\);

\cpu|execution_operation|registers|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~52_combout\ = (\cpu|instruction_search|control_unit|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~4_combout\) # ((!\cpu|instruction_search|rom|memROM~0_combout\ & 
-- !\cpu|instruction_search|rom|memROM~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111000000000001111100000000000111110000000000011111000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~3_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\,
	combout => \cpu|execution_operation|registers|registrador~52_combout\);

\cpu|execution_operation|registers|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~5_sumout\,
	asdata => \cpu|execution_operation|ula|saida[1]~1_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~13_q\);

\cpu|instruction_search|rom|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~1_combout\ = (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(5) & (!\cpu|instruction_search|pc|DOUT\(6) & !\cpu|instruction_search|pc|DOUT\(7))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000010000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(4),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(5),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(6),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(7),
	combout => \cpu|instruction_search|rom|memROM~1_combout\);

\cpu|instruction_search|rom|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~2_combout\ = (!\cpu|instruction_search|pc|DOUT\(8) & (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(8),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\,
	combout => \cpu|instruction_search|rom|memROM~2_combout\);

\cpu|instruction_search|rom|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~5_combout\ = (\cpu|instruction_search|rom|memROM~3_combout\ & \cpu|instruction_search|rom|memROM~4_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \cpu|instruction_search|rom|memROM~5_combout\);

\cpu|execution_operation|registers|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~53_combout\ = (\cpu|instruction_search|rom|memROM~2_combout\ & (!\cpu|instruction_search|rom|memROM~5_combout\ & \cpu|instruction_search|control_unit|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\,
	combout => \cpu|execution_operation|registers|registrador~53_combout\);

\cpu|execution_operation|registers|registrador~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~5_sumout\,
	asdata => \cpu|execution_operation|ula|saida[1]~1_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~21_q\);

\cpu|execution_operation|registers|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~54_combout\ = (!\cpu|instruction_search|rom|memROM~2_combout\ & (\cpu|instruction_search|rom|memROM~5_combout\ & \cpu|instruction_search|control_unit|memROM~4_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\,
	combout => \cpu|execution_operation|registers|registrador~54_combout\);

\cpu|execution_operation|registers|registrador~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~5_sumout\,
	asdata => \cpu|execution_operation|ula|saida[1]~1_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~29_q\);

\cpu|execution_operation|registers|registrador~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~55_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~1_combout\ & (\cpu|instruction_search|rom|memROM~5_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~4_combout\,
	combout => \cpu|execution_operation|registers|registrador~55_combout\);

\cpu|execution_operation|registers|registrador~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~5_sumout\,
	asdata => \cpu|execution_operation|ula|saida[1]~1_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~37_q\);

\cpu|execution_operation|registers|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~45_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~37_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~29_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~21_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~13_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~21_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~29_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~37_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~45_combout\);

\cpu|execution_operation|ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~9_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))
-- \cpu|execution_operation|ula|Add0~10\ = CARRY(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \cpu|execution_operation|ula|Add0~6\,
	sumout => \cpu|execution_operation|ula|Add0~9_sumout\,
	cout => \cpu|execution_operation|ula|Add0~10\);

\cpu|execution_operation|ula|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[2]~2_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~310_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~21_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datad => \ram|ALT_INV_ram~310_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[2]~2_combout\);

\cpu|execution_operation|registers|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~9_sumout\,
	asdata => \cpu|execution_operation|ula|saida[2]~2_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~14_q\);

\cpu|execution_operation|registers|registrador~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~9_sumout\,
	asdata => \cpu|execution_operation|ula|saida[2]~2_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~22_q\);

\cpu|execution_operation|registers|registrador~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~9_sumout\,
	asdata => \cpu|execution_operation|ula|saida[2]~2_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~30_q\);

\cpu|execution_operation|registers|registrador~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~9_sumout\,
	asdata => \cpu|execution_operation|ula|saida[2]~2_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~38_q\);

\cpu|execution_operation|registers|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~46_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~38_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~30_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~22_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~14_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~22_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~30_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~38_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~46_combout\);

\cpu|execution_operation|ula|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~0_combout\ = !\cpu|execution_operation|registers|registrador~46_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~310_combout\))) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010011010010101101001101001010110100110100101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datad => \ram|ALT_INV_ram~310_combout\,
	combout => \cpu|execution_operation|ula|Equal8~0_combout\);

\ram|ram~416\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~416_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~416_combout\);

\ram|ram~311\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~311_combout\ = ( \ram|ram~416_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~416_combout\,
	combout => \ram|ram~311_combout\);

\ram|ram~420\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~420_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~420_combout\);

\ram|ram~315\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~315_combout\ = ( \ram|ram~420_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~420_combout\,
	combout => \ram|ram~315_combout\);

\ram|ram~59\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~59_q\);

\ram|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~75_q\);

\ram|ram~51\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~51_q\);

\ram|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~27_q\);

\ram|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~43_q\);

\ram|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~19_q\);

\ram|ram~424\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~424_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~43_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~19_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~27_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~27_q\,
	datab => \ram|ALT_INV_ram~43_q\,
	datac => \ram|ALT_INV_ram~19_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~424_combout\);

\ram|ram~319\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~319_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~424_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~75_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~424_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~59_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~424_combout\ & ( (\ram|ram~51_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~59_q\,
	datab => \ram|ALT_INV_ram~75_q\,
	datac => \ram|ALT_INV_ram~51_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~424_combout\,
	combout => \ram|ram~319_combout\);

\cpu|execution_operation|mux|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ = ( \ram|ram~315_combout\ & ( \ram|ram~319_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\cpu|instruction_search|rom|memROM~17_combout\) # 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~311_combout\)))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\)) ) ) ) # ( !\ram|ram~315_combout\ & ( \ram|ram~319_combout\ & ( 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~311_combout\)))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (\cpu|instruction_search|rom|memROM~17_combout\)) ) ) ) # ( \ram|ram~315_combout\ & ( !\ram|ram~319_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & (((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~311_combout\)) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\ram|ram~315_combout\ & ( !\ram|ram~319_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & (((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~311_combout\)) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010011001100010011001110011001100110111011100110111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datad => \ram|ALT_INV_ram~311_combout\,
	datae => \ram|ALT_INV_ram~315_combout\,
	dataf => \ram|ALT_INV_ram~319_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[3]~3_combout\);

\cpu|execution_operation|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~13_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))
-- \cpu|execution_operation|ula|Add0~14\ = CARRY(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \cpu|execution_operation|ula|Add0~10\,
	sumout => \cpu|execution_operation|ula|Add0~13_sumout\,
	cout => \cpu|execution_operation|ula|Add0~14\);

\ram|ram~323\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~323_combout\ = ( \ram|ram~315_combout\ & ( \ram|ram~319_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~311_combout\)) ) ) ) # ( !\ram|ram~315_combout\ & ( \ram|ram~319_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~311_combout\)) ) ) ) # ( \ram|ram~315_combout\ & ( !\ram|ram~319_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~311_combout\))) ) ) ) # ( !\ram|ram~315_combout\ & ( !\ram|ram~319_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~311_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~311_combout\,
	datae => \ram|ALT_INV_ram~315_combout\,
	dataf => \ram|ALT_INV_ram~319_combout\,
	combout => \ram|ram~323_combout\);

\cpu|execution_operation|ula|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[3]~3_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~323_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~17_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~47_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_ram~323_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[3]~3_combout\);

\cpu|execution_operation|registers|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~13_sumout\,
	asdata => \cpu|execution_operation|ula|saida[3]~3_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~15_q\);

\cpu|execution_operation|registers|registrador~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~13_sumout\,
	asdata => \cpu|execution_operation|ula|saida[3]~3_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~23_q\);

\cpu|execution_operation|registers|registrador~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~13_sumout\,
	asdata => \cpu|execution_operation|ula|saida[3]~3_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~31_q\);

\cpu|execution_operation|registers|registrador~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~13_sumout\,
	asdata => \cpu|execution_operation|ula|saida[3]~3_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~39_q\);

\cpu|execution_operation|registers|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~47_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~39_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~31_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~23_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~15_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~23_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~31_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~39_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~47_combout\);

\cpu|execution_operation|ula|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~1_combout\ = !\cpu|execution_operation|registers|registrador~47_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~323_combout\))) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010011010010101101001101001010110100110100101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_ram~323_combout\,
	combout => \cpu|execution_operation|ula|Equal8~1_combout\);

\cpu|instruction_search|rom|memROM~22\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~22_combout\ = ( \cpu|instruction_search|rom|memROM~4_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & 
-- !\cpu|instruction_search|pc|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \cpu|instruction_search|rom|memROM~22_combout\);

\ram|ram~428\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~428_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~428_combout\);

\ram|ram~324\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~324_combout\ = ( \ram|ram~428_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~428_combout\,
	combout => \ram|ram~324_combout\);

\ram|ram~432\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~432_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~432_combout\);

\ram|ram~328\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~328_combout\ = ( \ram|ram~432_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~432_combout\,
	combout => \ram|ram~328_combout\);

\ram|ram~60\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~60_q\);

\ram|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~76_q\);

\ram|ram~52\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~52_q\);

\ram|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~28_q\);

\ram|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~44_q\);

\ram|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~20_q\);

\ram|ram~436\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~436_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~44_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~20_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~28_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~28_q\,
	datab => \ram|ALT_INV_ram~44_q\,
	datac => \ram|ALT_INV_ram~20_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~436_combout\);

\ram|ram~332\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~332_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~436_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~76_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~436_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~60_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~436_combout\ & ( (\ram|ram~52_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~60_q\,
	datab => \ram|ALT_INV_ram~76_q\,
	datac => \ram|ALT_INV_ram~52_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~436_combout\,
	combout => \ram|ram~332_combout\);

\ram|ram~336\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~336_combout\ = ( \ram|ram~328_combout\ & ( \ram|ram~332_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~324_combout\)) ) ) ) # ( !\ram|ram~328_combout\ & ( \ram|ram~332_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~324_combout\)) ) ) ) # ( \ram|ram~328_combout\ & ( !\ram|ram~332_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~324_combout\))) ) ) ) # ( !\ram|ram~328_combout\ & ( !\ram|ram~332_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~324_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~324_combout\,
	datae => \ram|ALT_INV_ram~328_combout\,
	dataf => \ram|ALT_INV_ram~332_combout\,
	combout => \ram|ram~336_combout\);

\cpu|execution_operation|mux|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[4]~4_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~336_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~22_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~22_combout\,
	datac => \ram|ALT_INV_ram~336_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[4]~4_combout\);

\cpu|execution_operation|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~17_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[4]~4_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~14\ ))
-- \cpu|execution_operation|ula|Add0~18\ = CARRY(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[4]~4_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~4_combout\,
	cin => \cpu|execution_operation|ula|Add0~14\,
	sumout => \cpu|execution_operation|ula|Add0~17_sumout\,
	cout => \cpu|execution_operation|ula|Add0~18\);

\cpu|execution_operation|ula|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[4]~4_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~336_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~22_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~48_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~22_combout\,
	datad => \ram|ALT_INV_ram~336_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[4]~4_combout\);

\cpu|execution_operation|registers|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~17_sumout\,
	asdata => \cpu|execution_operation|ula|saida[4]~4_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~16_q\);

\cpu|execution_operation|registers|registrador~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~17_sumout\,
	asdata => \cpu|execution_operation|ula|saida[4]~4_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~24_q\);

\cpu|execution_operation|registers|registrador~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~17_sumout\,
	asdata => \cpu|execution_operation|ula|saida[4]~4_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~32_q\);

\cpu|execution_operation|registers|registrador~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~17_sumout\,
	asdata => \cpu|execution_operation|ula|saida[4]~4_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~40_q\);

\cpu|execution_operation|registers|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~48_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~40_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~32_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~24_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~16_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~24_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~32_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~40_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~48_combout\);

\cpu|execution_operation|ula|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~2_combout\ = !\cpu|execution_operation|registers|registrador~48_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~336_combout\))) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010011010010101101001101001010110100110100101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~22_combout\,
	datad => \ram|ALT_INV_ram~336_combout\,
	combout => \cpu|execution_operation|ula|Equal8~2_combout\);

\ram|ram~464\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~464_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~464_combout\);

\ram|ram~363\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~363_combout\ = ( \ram|ram~464_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~464_combout\,
	combout => \ram|ram~363_combout\);

\ram|ram~468\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~468_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~468_combout\);

\ram|ram~367\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~367_combout\ = ( \ram|ram~468_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~468_combout\,
	combout => \ram|ram~367_combout\);

\ram|ram~63\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~63_q\);

\ram|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~79_q\);

\ram|ram~55\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~55_q\);

\ram|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~31_q\);

\ram|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~47_q\);

\ram|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~23_q\);

\ram|ram~472\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~472_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~47_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~23_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~31_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~31_q\,
	datab => \ram|ALT_INV_ram~47_q\,
	datac => \ram|ALT_INV_ram~23_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~472_combout\);

\ram|ram~371\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~371_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~472_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~79_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~472_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~63_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~472_combout\ & ( (\ram|ram~55_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~63_q\,
	datab => \ram|ALT_INV_ram~79_q\,
	datac => \ram|ALT_INV_ram~55_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~472_combout\,
	combout => \ram|ram~371_combout\);

\ram|ram~375\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~375_combout\ = ( \ram|ram~367_combout\ & ( \ram|ram~371_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~363_combout\)) ) ) ) # ( !\ram|ram~367_combout\ & ( \ram|ram~371_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~363_combout\)) ) ) ) # ( \ram|ram~367_combout\ & ( !\ram|ram~371_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~363_combout\))) ) ) ) # ( !\ram|ram~367_combout\ & ( !\ram|ram~371_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~363_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~363_combout\,
	datae => \ram|ALT_INV_ram~367_combout\,
	dataf => \ram|ALT_INV_ram~371_combout\,
	combout => \ram|ram~375_combout\);

\cpu|execution_operation|mux|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[7]~7_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~375_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~23_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datac => \ram|ALT_INV_ram~375_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[7]~7_combout\);

\ram|ram~452\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~452_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~452_combout\);

\ram|ram~350\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~350_combout\ = ( \ram|ram~452_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~452_combout\,
	combout => \ram|ram~350_combout\);

\ram|ram~456\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~456_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~456_combout\);

\ram|ram~354\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~354_combout\ = ( \ram|ram~456_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~456_combout\,
	combout => \ram|ram~354_combout\);

\ram|ram~62\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~62_q\);

\ram|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~78_q\);

\ram|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~54_q\);

\ram|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~30_q\);

\ram|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~46_q\);

\ram|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~22_q\);

\ram|ram~460\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~460_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~46_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~22_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~30_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~30_q\,
	datab => \ram|ALT_INV_ram~46_q\,
	datac => \ram|ALT_INV_ram~22_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~460_combout\);

\ram|ram~358\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~358_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~460_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~78_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~460_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~62_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~460_combout\ & ( (\ram|ram~54_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~62_q\,
	datab => \ram|ALT_INV_ram~78_q\,
	datac => \ram|ALT_INV_ram~54_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~460_combout\,
	combout => \ram|ram~358_combout\);

\ram|ram~362\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~362_combout\ = ( \ram|ram~354_combout\ & ( \ram|ram~358_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~350_combout\)) ) ) ) # ( !\ram|ram~354_combout\ & ( \ram|ram~358_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~350_combout\)) ) ) ) # ( \ram|ram~354_combout\ & ( !\ram|ram~358_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~350_combout\))) ) ) ) # ( !\ram|ram~354_combout\ & ( !\ram|ram~358_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~350_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~350_combout\,
	datae => \ram|ALT_INV_ram~354_combout\,
	dataf => \ram|ALT_INV_ram~358_combout\,
	combout => \ram|ram~362_combout\);

\ram|ram~440\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~440_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~440_combout\);

\ram|ram~337\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~337_combout\ = ( \ram|ram~440_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~440_combout\,
	combout => \ram|ram~337_combout\);

\ram|ram~444\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~444_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~444_combout\);

\ram|ram~341\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~341_combout\ = ( \ram|ram~444_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~444_combout\,
	combout => \ram|ram~341_combout\);

\ram|ram~61\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~61_q\);

\ram|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~77_q\);

\ram|ram~53\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~53_q\);

\ram|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~29_q\);

\ram|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~45_q\);

\ram|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~21_q\);

\ram|ram~448\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~448_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~45_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~21_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~29_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~29_q\,
	datab => \ram|ALT_INV_ram~45_q\,
	datac => \ram|ALT_INV_ram~21_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~448_combout\);

\ram|ram~345\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~345_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~448_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~77_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~448_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~61_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~448_combout\ & ( (\ram|ram~53_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~61_q\,
	datab => \ram|ALT_INV_ram~77_q\,
	datac => \ram|ALT_INV_ram~53_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~448_combout\,
	combout => \ram|ram~345_combout\);

\ram|ram~349\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~349_combout\ = ( \ram|ram~341_combout\ & ( \ram|ram~345_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~337_combout\)) ) ) ) # ( !\ram|ram~341_combout\ & ( \ram|ram~345_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~337_combout\)) ) ) ) # ( \ram|ram~341_combout\ & ( !\ram|ram~345_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~337_combout\))) ) ) ) # ( !\ram|ram~341_combout\ & ( !\ram|ram~345_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~337_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~337_combout\,
	datae => \ram|ALT_INV_ram~341_combout\,
	dataf => \ram|ALT_INV_ram~345_combout\,
	combout => \ram|ram~349_combout\);

\cpu|execution_operation|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~21_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~3_combout\ & (!\cpu|instruction_search|control_unit|memROM~2_combout\ $ 
-- (((!\ram|ram~349_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~3_combout\ & (((!\ram|ram~349_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~18\ ))
-- \cpu|execution_operation|ula|Add0~22\ = CARRY(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~3_combout\ & (!\cpu|instruction_search|control_unit|memROM~2_combout\ $ 
-- (((!\ram|ram~349_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~3_combout\ & (((!\ram|ram~349_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	dataf => \ram|ALT_INV_ram~349_combout\,
	cin => \cpu|execution_operation|ula|Add0~18\,
	sumout => \cpu|execution_operation|ula|Add0~21_sumout\,
	cout => \cpu|execution_operation|ula|Add0~22\);

\cpu|execution_operation|ula|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[5]~5_combout\ = (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (\cpu|execution_operation|registers|registrador~49_combout\)) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~349_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \ram|ALT_INV_ram~349_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[5]~5_combout\);

\cpu|execution_operation|registers|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~21_sumout\,
	asdata => \cpu|execution_operation|ula|saida[5]~5_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~17_q\);

\cpu|execution_operation|registers|registrador~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~21_sumout\,
	asdata => \cpu|execution_operation|ula|saida[5]~5_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~25_q\);

\cpu|execution_operation|registers|registrador~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~21_sumout\,
	asdata => \cpu|execution_operation|ula|saida[5]~5_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~33_q\);

\cpu|execution_operation|registers|registrador~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~21_sumout\,
	asdata => \cpu|execution_operation|ula|saida[5]~5_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~41_q\);

\cpu|execution_operation|registers|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~49_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~41_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~33_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~25_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~17_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~25_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~33_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~41_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~49_combout\);

\cpu|execution_operation|ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~25_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~3_combout\ & (!\cpu|instruction_search|control_unit|memROM~2_combout\ $ 
-- (((!\ram|ram~362_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~3_combout\ & (((!\ram|ram~362_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~22\ ))
-- \cpu|execution_operation|ula|Add0~26\ = CARRY(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~3_combout\ & (!\cpu|instruction_search|control_unit|memROM~2_combout\ $ 
-- (((!\ram|ram~362_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~3_combout\ & (((!\ram|ram~362_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	dataf => \ram|ALT_INV_ram~362_combout\,
	cin => \cpu|execution_operation|ula|Add0~22\,
	sumout => \cpu|execution_operation|ula|Add0~25_sumout\,
	cout => \cpu|execution_operation|ula|Add0~26\);

\cpu|execution_operation|ula|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[6]~6_combout\ = (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (\cpu|execution_operation|registers|registrador~50_combout\)) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~362_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \ram|ALT_INV_ram~362_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[6]~6_combout\);

\cpu|execution_operation|registers|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~25_sumout\,
	asdata => \cpu|execution_operation|ula|saida[6]~6_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~18_q\);

\cpu|execution_operation|registers|registrador~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~25_sumout\,
	asdata => \cpu|execution_operation|ula|saida[6]~6_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~26_q\);

\cpu|execution_operation|registers|registrador~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~25_sumout\,
	asdata => \cpu|execution_operation|ula|saida[6]~6_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~34_q\);

\cpu|execution_operation|registers|registrador~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~25_sumout\,
	asdata => \cpu|execution_operation|ula|saida[6]~6_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~42_q\);

\cpu|execution_operation|registers|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~50_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~42_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~34_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~26_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~18_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~26_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~34_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~42_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~50_combout\);

\cpu|execution_operation|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~29_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~51_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[7]~7_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~3_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~2_combout\))) ) + ( \cpu|execution_operation|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\,
	cin => \cpu|execution_operation|ula|Add0~26\,
	sumout => \cpu|execution_operation|ula|Add0~29_sumout\);

\cpu|execution_operation|ula|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[7]~7_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~375_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~23_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \ram|ALT_INV_ram~375_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[7]~7_combout\);

\cpu|execution_operation|registers|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~29_sumout\,
	asdata => \cpu|execution_operation|ula|saida[7]~7_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~19_q\);

\cpu|execution_operation|registers|registrador~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~29_sumout\,
	asdata => \cpu|execution_operation|ula|saida[7]~7_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~27_q\);

\cpu|execution_operation|registers|registrador~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~29_sumout\,
	asdata => \cpu|execution_operation|ula|saida[7]~7_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~35_q\);

\cpu|execution_operation|registers|registrador~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~29_sumout\,
	asdata => \cpu|execution_operation|ula|saida[7]~7_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~43_q\);

\cpu|execution_operation|registers|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~51_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~43_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~35_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~27_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~19_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~27_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~35_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~43_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~51_combout\);

\cpu|execution_operation|ula|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~3_combout\ = !\cpu|execution_operation|registers|registrador~51_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~375_combout\))) # 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011010011010010101101001101001010110100110100101011010011010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \ram|ALT_INV_ram~375_combout\,
	combout => \cpu|execution_operation|ula|Equal8~3_combout\);

\ram|ram~380\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~380_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~380_combout\);

\ram|ram~272\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~272_combout\ = ( \ram|ram~380_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~380_combout\,
	combout => \ram|ram~272_combout\);

\ram|ram~384\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~384_combout\ = ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~384_combout\);

\ram|ram~276\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~276_combout\ = ( \ram|ram~384_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	dataf => \ram|ALT_INV_ram~384_combout\,
	combout => \ram|ram~276_combout\);

\ram|ram~56\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~478_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~56_q\);

\ram|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~479_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~72_q\);

\ram|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~480_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~48_q\);

\ram|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~481_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~24_q\);

\ram|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~482_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~40_q\);

\ram|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~483_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~16_q\);

\ram|ram~388\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~388_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~21_combout\ & ( \cpu|instruction_search|rom|memROM~16_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (\ram|ram~40_q\ & 
-- \cpu|instruction_search|rom|memROM~16_combout\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\cpu|instruction_search|rom|memROM~21_combout\ & ( (!\cpu|instruction_search|rom|memROM~16_combout\ & ((\ram|ram~16_q\))) # 
-- (\cpu|instruction_search|rom|memROM~16_combout\ & (\ram|ram~24_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111101010101000000000011001100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~24_q\,
	datab => \ram|ALT_INV_ram~40_q\,
	datac => \ram|ALT_INV_ram~16_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	combout => \ram|ram~388_combout\);

\ram|ram~280\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~280_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~388_combout\ & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~72_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~388_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~21_combout\) # (\ram|ram~56_q\) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~388_combout\ & ( (\ram|ram~48_q\ & \cpu|instruction_search|rom|memROM~21_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001111000000000000000011111111010101011111111100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~56_q\,
	datab => \ram|ALT_INV_ram~72_q\,
	datac => \ram|ALT_INV_ram~48_q\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~21_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~388_combout\,
	combout => \ram|ram~280_combout\);

\ram|ram~284\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~284_combout\ = ( \ram|ram~276_combout\ & ( \ram|ram~280_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0)) # ((!\cpu|instruction_search|rom|memROM~17_combout\) # (\ram|ram~272_combout\)) ) ) ) # ( !\ram|ram~276_combout\ & ( \ram|ram~280_combout\ 
-- & ( (!\cpu|instruction_search|rom|memROM~17_combout\) # ((\cpu|instruction_search|pc|DOUT\(0) & \ram|ram~272_combout\)) ) ) ) # ( \ram|ram~276_combout\ & ( !\ram|ram~280_combout\ & ( (\cpu|instruction_search|rom|memROM~17_combout\ & 
-- ((!\cpu|instruction_search|pc|DOUT\(0)) # (\ram|ram~272_combout\))) ) ) ) # ( !\ram|ram~276_combout\ & ( !\ram|ram~280_combout\ & ( (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|ram~272_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001001000110010001111001101110011011110111111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~272_combout\,
	datae => \ram|ALT_INV_ram~276_combout\,
	dataf => \ram|ALT_INV_ram~280_combout\,
	combout => \ram|ram~284_combout\);

\cpu|execution_operation|ula|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~4_combout\ = ( \ram|ram~284_combout\ & ( \ram|ram~349_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~44_combout\ $ (\cpu|instruction_search|rom|memROM~16_combout\)))) # (\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|execution_operation|registers|registrador~44_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\ram|ram~284_combout\ & ( \ram|ram~349_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~44_combout\ $ (\cpu|instruction_search|rom|memROM~16_combout\)))) # (\cpu|execution_operation|registers|registrador~49_combout\ & (!\cpu|execution_operation|registers|registrador~44_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( \ram|ram~284_combout\ & ( !\ram|ram~349_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (!\cpu|execution_operation|registers|registrador~44_combout\ $ 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~16_combout\))))) ) ) ) # ( !\ram|ram~284_combout\ & ( !\ram|ram~349_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~44_combout\ $ (((\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~16_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000100010010000100010000101000001001000001100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \ram|ALT_INV_ram~284_combout\,
	dataf => \ram|ALT_INV_ram~349_combout\,
	combout => \cpu|execution_operation|ula|Equal8~4_combout\);

\cpu|execution_operation|ula|Equal8~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~5_combout\ = ( \ram|ram~297_combout\ & ( \ram|ram~362_combout\ & ( (!\cpu|execution_operation|registers|registrador~50_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~45_combout\ $ (\cpu|instruction_search|rom|memROM~19_combout\)))) # (\cpu|execution_operation|registers|registrador~50_combout\ & (\cpu|execution_operation|registers|registrador~45_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\ram|ram~297_combout\ & ( \ram|ram~362_combout\ & ( (!\cpu|execution_operation|registers|registrador~50_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~45_combout\ $ (\cpu|instruction_search|rom|memROM~19_combout\)))) # (\cpu|execution_operation|registers|registrador~50_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( \ram|ram~297_combout\ & ( !\ram|ram~362_combout\ & ( (!\cpu|execution_operation|registers|registrador~50_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ $ 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~19_combout\))))) ) ) ) # ( !\ram|ram~297_combout\ & ( !\ram|ram~362_combout\ & ( (!\cpu|execution_operation|registers|registrador~50_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~45_combout\ $ (((\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~19_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000100010010000100010000101000001001000001100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datae => \ram|ALT_INV_ram~297_combout\,
	dataf => \ram|ALT_INV_ram~362_combout\,
	combout => \cpu|execution_operation|ula|Equal8~5_combout\);

\cpu|execution_operation|ula|Equal8~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~6_combout\ = ( \cpu|execution_operation|ula|Equal8~4_combout\ & ( \cpu|execution_operation|ula|Equal8~5_combout\ & ( (!\cpu|execution_operation|ula|Equal8~0_combout\ & (!\cpu|execution_operation|ula|Equal8~1_combout\ & 
-- (!\cpu|execution_operation|ula|Equal8~2_combout\ & !\cpu|execution_operation|ula|Equal8~3_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\,
	datad => \cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\,
	datae => \cpu|execution_operation|ula|ALT_INV_Equal8~4_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal8~5_combout\,
	combout => \cpu|execution_operation|ula|Equal8~6_combout\);

\cpu|execution_operation|flipflop|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|flipflop|DOUT~0_combout\ = ( \cpu|execution_operation|flipflop|DOUT~q\ & ( \cpu|execution_operation|ula|Equal8~6_combout\ ) ) # ( !\cpu|execution_operation|flipflop|DOUT~q\ & ( \cpu|execution_operation|ula|Equal8~6_combout\ & ( 
-- (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~12_combout\ & (\cpu|instruction_search|rom|memROM~14_combout\ & \cpu|instruction_search|rom|memROM~8_combout\))) ) ) ) # ( \cpu|execution_operation|flipflop|DOUT~q\ & 
-- ( !\cpu|execution_operation|ula|Equal8~6_combout\ & ( (((!\cpu|instruction_search|rom|memROM~14_combout\) # (!\cpu|instruction_search|rom|memROM~8_combout\)) # (\cpu|instruction_search|rom|memROM~12_combout\)) # 
-- (\cpu|instruction_search|rom|memROM~10_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111011100000000000010001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datae => \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal8~6_combout\,
	combout => \cpu|execution_operation|flipflop|DOUT~0_combout\);

\cpu|execution_operation|flipflop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|flipflop|DOUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|flipflop|DOUT~q\);

\cpu|instruction_search|selector_mux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|selector_mux~0_combout\ = ( \cpu|execution_operation|flipflop|DOUT~q\ & ( (\cpu|instruction_search|rom|memROM~10_combout\ & (\cpu|instruction_search|rom|memROM~12_combout\ & !\cpu|instruction_search|rom|memROM~14_combout\)) ) ) # ( 
-- !\cpu|execution_operation|flipflop|DOUT~q\ & ( (\cpu|instruction_search|rom|memROM~10_combout\ & (\cpu|instruction_search|rom|memROM~12_combout\ & (!\cpu|instruction_search|rom|memROM~14_combout\ & !\cpu|instruction_search|rom|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000001000000010000000000000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datae => \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\,
	combout => \cpu|instruction_search|selector_mux~0_combout\);

\cpu|instruction_search|pc|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~9_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~21_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(2));

\cpu|instruction_search|adder|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|adder|Add0~13_sumout\ = SUM(( \cpu|instruction_search|pc|DOUT\(3) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~10\ ))
-- \cpu|instruction_search|adder|Add0~14\ = CARRY(( \cpu|instruction_search|pc|DOUT\(3) ) + ( GND ) + ( \cpu|instruction_search|adder|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	cin => \cpu|instruction_search|adder|Add0~10\,
	sumout => \cpu|instruction_search|adder|Add0~13_sumout\,
	cout => \cpu|instruction_search|adder|Add0~14\);

\cpu|instruction_search|pc|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~13_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~17_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(3));

\cpu|instruction_search|pc|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~17_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~22_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(4));

\cpu|instruction_search|rom|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~4_combout\ = ( !\cpu|instruction_search|pc|DOUT\(8) & ( (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(5) & (!\cpu|instruction_search|pc|DOUT\(6) & !\cpu|instruction_search|pc|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(4),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(5),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(6),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(7),
	datae => \cpu|instruction_search|pc|ALT_INV_DOUT\(8),
	combout => \cpu|instruction_search|rom|memROM~4_combout\);

\cpu|instruction_search|rom|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~16_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~15_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	combout => \cpu|instruction_search|rom|memROM~16_combout\);

\cpu|instruction_search|pc|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~1_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~16_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(0));

\cpu|instruction_search|pc|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~5_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~19_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(1));

\cpu|instruction_search|rom|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~6_combout\ = (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(1) $ (!\cpu|instruction_search|pc|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100000000000010010000000000001001000000000000100100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(4),
	combout => \cpu|instruction_search|rom|memROM~6_combout\);

\cpu|instruction_search|rom|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~8_combout\ = (\cpu|instruction_search|rom|memROM~6_combout\ & \cpu|instruction_search|rom|memROM~7_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|instruction_search|rom|memROM~8_combout\);

\cpu|instruction_search|control_unit|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~0_combout\ = (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~14_combout\ $ (((!\cpu|instruction_search|rom|memROM~8_combout\ & 
-- !\cpu|instruction_search|rom|memROM~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110010000000010011001000000001001100100000000100110010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~0_combout\);

\cpu|execution_operation|ula|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~32_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~284_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~16_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( !\cpu|instruction_search|control_unit|memROM~3_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- ((!\ram|ram~284_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~16_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111100100111001001110010000011011111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \ram|ALT_INV_ram~284_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|Add0~32_combout\);

\cpu|execution_operation|ula|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[0]~0_combout\ = ( \cpu|instruction_search|control_unit|memROM~2_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~284_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~16_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~2_combout\ & ( \cpu|execution_operation|registers|registrador~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datad => \ram|ALT_INV_ram~284_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	combout => \cpu|execution_operation|ula|saida[0]~0_combout\);

\cpu|execution_operation|registers|registrador~12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~1_sumout\,
	asdata => \cpu|execution_operation|ula|saida[0]~0_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~12_q\);

\cpu|execution_operation|registers|registrador~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~1_sumout\,
	asdata => \cpu|execution_operation|ula|saida[0]~0_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~20_q\);

\cpu|execution_operation|registers|registrador~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~1_sumout\,
	asdata => \cpu|execution_operation|ula|saida[0]~0_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~28_q\);

\cpu|execution_operation|registers|registrador~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~1_sumout\,
	asdata => \cpu|execution_operation|ula|saida[0]~0_combout\,
	sload => \cpu|instruction_search|control_unit|memROM~3_combout\,
	ena => \cpu|execution_operation|registers|registrador~55_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~36_q\);

\cpu|execution_operation|registers|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~44_combout\ = ( \cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~36_q\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~28_q\ ) ) ) # ( \cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~5_combout\ & ( \cpu|execution_operation|registers|registrador~20_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~5_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~12_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~20_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~28_q\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~36_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	combout => \cpu|execution_operation|registers|registrador~44_combout\);

\register_display0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display0|process_0~0_combout\ = ( !\ram|ram~376_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (!\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000000000000000000000110000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~376_combout\,
	combout => \register_display0|process_0~0_combout\);

\register_display0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display0|DOUT\(0));

\register_display0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display0|DOUT\(3));

\register_display0|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display0|DOUT\(2));

\register_display0|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display0|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display0|DOUT\(1));

\display0|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[0]~0_combout\ = (!\register_display0|DOUT\(3) & (!\register_display0|DOUT\(1) & (!\register_display0|DOUT\(0) $ (!\register_display0|DOUT\(2))))) # (\register_display0|DOUT\(3) & (\register_display0|DOUT\(0) & 
-- (!\register_display0|DOUT\(2) $ (!\register_display0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(3),
	datac => \register_display0|ALT_INV_DOUT\(2),
	datad => \register_display0|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[0]~0_combout\);

\display0|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[1]~1_combout\ = (!\register_display0|DOUT\(3) & (\register_display0|DOUT\(2) & (!\register_display0|DOUT\(0) $ (!\register_display0|DOUT\(1))))) # (\register_display0|DOUT\(3) & ((!\register_display0|DOUT\(0) & 
-- (\register_display0|DOUT\(2))) # (\register_display0|DOUT\(0) & ((\register_display0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(3),
	datac => \register_display0|ALT_INV_DOUT\(2),
	datad => \register_display0|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[1]~1_combout\);

\display0|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[2]~2_combout\ = (!\register_display0|DOUT\(3) & (!\register_display0|DOUT\(0) & (!\register_display0|DOUT\(2) & \register_display0|DOUT\(1)))) # (\register_display0|DOUT\(3) & (\register_display0|DOUT\(2) & 
-- ((!\register_display0|DOUT\(0)) # (\register_display0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(3),
	datac => \register_display0|ALT_INV_DOUT\(2),
	datad => \register_display0|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[2]~2_combout\);

\display0|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[3]~3_combout\ = (!\register_display0|DOUT\(1) & (!\register_display0|DOUT\(3) & (!\register_display0|DOUT\(0) $ (!\register_display0|DOUT\(2))))) # (\register_display0|DOUT\(1) & ((!\register_display0|DOUT\(0) & 
-- (!\register_display0|DOUT\(2) & \register_display0|DOUT\(3))) # (\register_display0|DOUT\(0) & (\register_display0|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(1),
	datac => \register_display0|ALT_INV_DOUT\(2),
	datad => \register_display0|ALT_INV_DOUT\(3),
	combout => \display0|rascSaida7seg[3]~3_combout\);

\display0|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[4]~4_combout\ = (!\register_display0|DOUT\(1) & ((!\register_display0|DOUT\(2) & ((\register_display0|DOUT\(0)))) # (\register_display0|DOUT\(2) & (!\register_display0|DOUT\(3))))) # (\register_display0|DOUT\(1) & 
-- (!\register_display0|DOUT\(3) & ((\register_display0|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(3),
	datab => \register_display0|ALT_INV_DOUT\(2),
	datac => \register_display0|ALT_INV_DOUT\(1),
	datad => \register_display0|ALT_INV_DOUT\(0),
	combout => \display0|rascSaida7seg[4]~4_combout\);

\display0|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[5]~5_combout\ = (!\register_display0|DOUT\(0) & (!\register_display0|DOUT\(2) & (\register_display0|DOUT\(1) & !\register_display0|DOUT\(3)))) # (\register_display0|DOUT\(0) & (!\register_display0|DOUT\(3) $ 
-- (((\register_display0|DOUT\(2) & !\register_display0|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(2),
	datac => \register_display0|ALT_INV_DOUT\(1),
	datad => \register_display0|ALT_INV_DOUT\(3),
	combout => \display0|rascSaida7seg[5]~5_combout\);

\display0|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display0|rascSaida7seg[6]~6_combout\ = (!\register_display0|DOUT\(0) & (!\register_display0|DOUT\(1) & (!\register_display0|DOUT\(3) $ (\register_display0|DOUT\(2))))) # (\register_display0|DOUT\(0) & (!\register_display0|DOUT\(3) & 
-- (!\register_display0|DOUT\(2) $ (\register_display0|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display0|ALT_INV_DOUT\(0),
	datab => \register_display0|ALT_INV_DOUT\(3),
	datac => \register_display0|ALT_INV_DOUT\(2),
	datad => \register_display0|ALT_INV_DOUT\(1),
	combout => \display0|rascSaida7seg[6]~6_combout\);

\register_display1|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display1|process_0~0_combout\ = ( \ram|ram~377_combout\ & ( (!\cpu|instruction_search|rom|memROM~17_combout\ & (!\cpu|instruction_search|rom|memROM~23_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000001100000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~23_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datae => \ram|ALT_INV_ram~377_combout\,
	combout => \register_display1|process_0~0_combout\);

\register_display1|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display1|DOUT\(0));

\register_display1|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display1|DOUT\(3));

\register_display1|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display1|DOUT\(2));

\register_display1|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display1|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display1|DOUT\(1));

\display1|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[0]~0_combout\ = (!\register_display1|DOUT\(3) & (!\register_display1|DOUT\(1) & (!\register_display1|DOUT\(0) $ (!\register_display1|DOUT\(2))))) # (\register_display1|DOUT\(3) & (\register_display1|DOUT\(0) & 
-- (!\register_display1|DOUT\(2) $ (!\register_display1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(3),
	datac => \register_display1|ALT_INV_DOUT\(2),
	datad => \register_display1|ALT_INV_DOUT\(1),
	combout => \display1|rascSaida7seg[0]~0_combout\);

\display1|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[1]~1_combout\ = (!\register_display1|DOUT\(3) & (\register_display1|DOUT\(2) & (!\register_display1|DOUT\(0) $ (!\register_display1|DOUT\(1))))) # (\register_display1|DOUT\(3) & ((!\register_display1|DOUT\(0) & 
-- (\register_display1|DOUT\(2))) # (\register_display1|DOUT\(0) & ((\register_display1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(3),
	datac => \register_display1|ALT_INV_DOUT\(2),
	datad => \register_display1|ALT_INV_DOUT\(1),
	combout => \display1|rascSaida7seg[1]~1_combout\);

\display1|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[2]~2_combout\ = (!\register_display1|DOUT\(3) & (!\register_display1|DOUT\(0) & (!\register_display1|DOUT\(2) & \register_display1|DOUT\(1)))) # (\register_display1|DOUT\(3) & (\register_display1|DOUT\(2) & 
-- ((!\register_display1|DOUT\(0)) # (\register_display1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(3),
	datac => \register_display1|ALT_INV_DOUT\(2),
	datad => \register_display1|ALT_INV_DOUT\(1),
	combout => \display1|rascSaida7seg[2]~2_combout\);

\display1|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[3]~3_combout\ = (!\register_display1|DOUT\(1) & (!\register_display1|DOUT\(3) & (!\register_display1|DOUT\(0) $ (!\register_display1|DOUT\(2))))) # (\register_display1|DOUT\(1) & ((!\register_display1|DOUT\(0) & 
-- (!\register_display1|DOUT\(2) & \register_display1|DOUT\(3))) # (\register_display1|DOUT\(0) & (\register_display1|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(1),
	datac => \register_display1|ALT_INV_DOUT\(2),
	datad => \register_display1|ALT_INV_DOUT\(3),
	combout => \display1|rascSaida7seg[3]~3_combout\);

\display1|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[4]~4_combout\ = (!\register_display1|DOUT\(1) & ((!\register_display1|DOUT\(2) & ((\register_display1|DOUT\(0)))) # (\register_display1|DOUT\(2) & (!\register_display1|DOUT\(3))))) # (\register_display1|DOUT\(1) & 
-- (!\register_display1|DOUT\(3) & ((\register_display1|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(3),
	datab => \register_display1|ALT_INV_DOUT\(2),
	datac => \register_display1|ALT_INV_DOUT\(1),
	datad => \register_display1|ALT_INV_DOUT\(0),
	combout => \display1|rascSaida7seg[4]~4_combout\);

\display1|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[5]~5_combout\ = (!\register_display1|DOUT\(0) & (!\register_display1|DOUT\(2) & (\register_display1|DOUT\(1) & !\register_display1|DOUT\(3)))) # (\register_display1|DOUT\(0) & (!\register_display1|DOUT\(3) $ 
-- (((\register_display1|DOUT\(2) & !\register_display1|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(2),
	datac => \register_display1|ALT_INV_DOUT\(1),
	datad => \register_display1|ALT_INV_DOUT\(3),
	combout => \display1|rascSaida7seg[5]~5_combout\);

\display1|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display1|rascSaida7seg[6]~6_combout\ = (!\register_display1|DOUT\(0) & (!\register_display1|DOUT\(1) & (!\register_display1|DOUT\(3) $ (\register_display1|DOUT\(2))))) # (\register_display1|DOUT\(0) & (!\register_display1|DOUT\(3) & 
-- (!\register_display1|DOUT\(2) $ (\register_display1|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display1|ALT_INV_DOUT\(0),
	datab => \register_display1|ALT_INV_DOUT\(3),
	datac => \register_display1|ALT_INV_DOUT\(2),
	datad => \register_display1|ALT_INV_DOUT\(1),
	combout => \display1|rascSaida7seg[6]~6_combout\);

\cpu|execution_operation|mux|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~284_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \ram|ALT_INV_ram~284_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[0]~0_combout\);

\cpu|execution_operation|mux|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[5]~5_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~349_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \ram|ALT_INV_ram~349_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[5]~5_combout\);

\cpu|execution_operation|mux|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[6]~6_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~362_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \ram|ALT_INV_ram~362_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[6]~6_combout\);
END structure;


