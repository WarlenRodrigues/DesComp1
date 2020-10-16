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

-- DATE "10/16/2020 14:12:24"

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
	pintest : OUT std_logic_vector(8 DOWNTO 0);
	pintestULAA : OUT std_logic_vector(7 DOWNTO 0);
	pintestULAB : OUT std_logic_vector(7 DOWNTO 0);
	pintestULAFLAG : OUT std_logic
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
SIGNAL ww_pintest : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_pintestULAA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pintestULAB : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_pintestULAFLAG : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~2\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~6_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~7_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~8_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~9_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~10_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~11_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~12_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~13_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|DOUT~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~14_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~18\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~21_sumout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~22\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~25_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~26\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~18_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~19_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~30\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~33_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~20_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~16_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~17_combout\ : std_logic;
SIGNAL \ram|process_0~0_combout\ : std_logic;
SIGNAL \ram|ram~184_combout\ : std_logic;
SIGNAL \ram|ram~46_q\ : std_logic;
SIGNAL \ram|ram~185_combout\ : std_logic;
SIGNAL \ram|ram~22_q\ : std_logic;
SIGNAL \ram|ram~174_combout\ : std_logic;
SIGNAL \ram|ram~186_combout\ : std_logic;
SIGNAL \ram|ram~78_q\ : std_logic;
SIGNAL \ram|ram~187_combout\ : std_logic;
SIGNAL \ram|ram~54_q\ : std_logic;
SIGNAL \ram|ram~175_combout\ : std_logic;
SIGNAL \ram|ram~188_combout\ : std_logic;
SIGNAL \ram|ram~110_q\ : std_logic;
SIGNAL \ram|ram~189_combout\ : std_logic;
SIGNAL \ram|ram~86_q\ : std_logic;
SIGNAL \ram|ram~176_combout\ : std_logic;
SIGNAL \ram|ram~190_combout\ : std_logic;
SIGNAL \ram|ram~142_q\ : std_logic;
SIGNAL \ram|ram~191_combout\ : std_logic;
SIGNAL \ram|ram~118_q\ : std_logic;
SIGNAL \ram|ram~177_combout\ : std_logic;
SIGNAL \ram|ram~178_combout\ : std_logic;
SIGNAL \ram|ram~45_q\ : std_logic;
SIGNAL \ram|ram~21_q\ : std_logic;
SIGNAL \ram|ram~169_combout\ : std_logic;
SIGNAL \ram|ram~77_q\ : std_logic;
SIGNAL \ram|ram~53_q\ : std_logic;
SIGNAL \ram|ram~170_combout\ : std_logic;
SIGNAL \ram|ram~109_q\ : std_logic;
SIGNAL \ram|ram~85_q\ : std_logic;
SIGNAL \ram|ram~171_combout\ : std_logic;
SIGNAL \ram|ram~141_q\ : std_logic;
SIGNAL \ram|ram~117_q\ : std_logic;
SIGNAL \ram|ram~172_combout\ : std_logic;
SIGNAL \ram|ram~173_combout\ : std_logic;
SIGNAL \ram|ram~44_q\ : std_logic;
SIGNAL \ram|ram~20_q\ : std_logic;
SIGNAL \ram|ram~164_combout\ : std_logic;
SIGNAL \ram|ram~76_q\ : std_logic;
SIGNAL \ram|ram~52_q\ : std_logic;
SIGNAL \ram|ram~165_combout\ : std_logic;
SIGNAL \ram|ram~108_q\ : std_logic;
SIGNAL \ram|ram~84_q\ : std_logic;
SIGNAL \ram|ram~166_combout\ : std_logic;
SIGNAL \ram|ram~140_q\ : std_logic;
SIGNAL \ram|ram~116_q\ : std_logic;
SIGNAL \ram|ram~167_combout\ : std_logic;
SIGNAL \ram|ram~168_combout\ : std_logic;
SIGNAL \ram|ram~43_q\ : std_logic;
SIGNAL \ram|ram~19_q\ : std_logic;
SIGNAL \ram|ram~159_combout\ : std_logic;
SIGNAL \ram|ram~75_q\ : std_logic;
SIGNAL \ram|ram~51_q\ : std_logic;
SIGNAL \ram|ram~160_combout\ : std_logic;
SIGNAL \ram|ram~107_q\ : std_logic;
SIGNAL \ram|ram~83_q\ : std_logic;
SIGNAL \ram|ram~161_combout\ : std_logic;
SIGNAL \ram|ram~139_q\ : std_logic;
SIGNAL \ram|ram~115_q\ : std_logic;
SIGNAL \ram|ram~162_combout\ : std_logic;
SIGNAL \ram|ram~163_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ram|ram~42_q\ : std_logic;
SIGNAL \ram|ram~18_q\ : std_logic;
SIGNAL \ram|ram~154_combout\ : std_logic;
SIGNAL \ram|ram~74_q\ : std_logic;
SIGNAL \ram|ram~50_q\ : std_logic;
SIGNAL \ram|ram~155_combout\ : std_logic;
SIGNAL \ram|ram~106_q\ : std_logic;
SIGNAL \ram|ram~82_q\ : std_logic;
SIGNAL \ram|ram~156_combout\ : std_logic;
SIGNAL \ram|ram~138_q\ : std_logic;
SIGNAL \ram|ram~114_q\ : std_logic;
SIGNAL \ram|ram~157_combout\ : std_logic;
SIGNAL \ram|ram~158_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ram|ram~41_q\ : std_logic;
SIGNAL \ram|ram~17_q\ : std_logic;
SIGNAL \ram|ram~149_combout\ : std_logic;
SIGNAL \ram|ram~73_q\ : std_logic;
SIGNAL \ram|ram~49_q\ : std_logic;
SIGNAL \ram|ram~150_combout\ : std_logic;
SIGNAL \ram|ram~105_q\ : std_logic;
SIGNAL \ram|ram~81_q\ : std_logic;
SIGNAL \ram|ram~151_combout\ : std_logic;
SIGNAL \ram|ram~137_q\ : std_logic;
SIGNAL \ram|ram~113_q\ : std_logic;
SIGNAL \ram|ram~152_combout\ : std_logic;
SIGNAL \ram|ram~153_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ram|ram~40_q\ : std_logic;
SIGNAL \ram|ram~16_q\ : std_logic;
SIGNAL \ram|ram~144_combout\ : std_logic;
SIGNAL \ram|ram~72_q\ : std_logic;
SIGNAL \ram|ram~48_q\ : std_logic;
SIGNAL \ram|ram~145_combout\ : std_logic;
SIGNAL \ram|ram~104_q\ : std_logic;
SIGNAL \ram|ram~80_q\ : std_logic;
SIGNAL \ram|ram~146_combout\ : std_logic;
SIGNAL \ram|ram~136_q\ : std_logic;
SIGNAL \ram|ram~112_q\ : std_logic;
SIGNAL \ram|ram~147_combout\ : std_logic;
SIGNAL \ram|ram~148_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~32_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~35_cout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[0]~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~52_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~12_q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~53_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~20_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~54_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~28_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~55_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~36_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~44_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~2\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[1]~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~13_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~21_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~29_q\ : std_logic;
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
SIGNAL \cpu|execution_operation|ula|Add0~10\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~13_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[3]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~15_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~23_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~31_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~39_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~47_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~14\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[4]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~16_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~24_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~32_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~40_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~48_combout\ : std_logic;
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
SIGNAL \ram|ram~47_q\ : std_logic;
SIGNAL \ram|ram~23_q\ : std_logic;
SIGNAL \ram|ram~179_combout\ : std_logic;
SIGNAL \ram|ram~79_q\ : std_logic;
SIGNAL \ram|ram~55_q\ : std_logic;
SIGNAL \ram|ram~180_combout\ : std_logic;
SIGNAL \ram|ram~111_q\ : std_logic;
SIGNAL \ram|ram~87_q\ : std_logic;
SIGNAL \ram|ram~181_combout\ : std_logic;
SIGNAL \ram|ram~143_q\ : std_logic;
SIGNAL \ram|ram~119_q\ : std_logic;
SIGNAL \ram|ram~182_combout\ : std_logic;
SIGNAL \ram|ram~183_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~26\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[7]~7_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~19_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~27_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~35_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~43_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~51_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|DOUT~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|DOUT~q\ : std_logic;
SIGNAL \cpu|instruction_search|selector_mux~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~6\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~9_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~10\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~13_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~14\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~15_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|pc|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ram|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Add0~32_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~183_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~182_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~119_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~143_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~181_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~87_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~111_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~180_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~55_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~79_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~179_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~18_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~178_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~177_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~118_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~142_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~176_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~86_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~110_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~175_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~54_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~78_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~174_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~173_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~117_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~141_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~85_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~109_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~53_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~77_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~116_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~140_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~84_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~108_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~52_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~76_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~115_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~139_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~83_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~107_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~51_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~75_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~114_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~138_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~82_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~106_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~50_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~74_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~113_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~137_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~81_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~105_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~49_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~73_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~112_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~136_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~80_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~104_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~72_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~144_combout\ : std_logic;
SIGNAL \ram|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \ram|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ : std_logic;
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

BEGIN

ww_clock_50 <= clock_50;
pintest <= ww_pintest;
pintestULAA <= ww_pintestULAA;
pintestULAB <= ww_pintestULAB;
pintestULAFLAG <= ww_pintestULAFLAG;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ram|ALT_INV_process_0~0_combout\ <= NOT \ram|process_0~0_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~20_combout\ <= NOT \cpu|instruction_search|rom|memROM~20_combout\;
\cpu|execution_operation|ula|ALT_INV_Add0~32_combout\ <= NOT \cpu|execution_operation|ula|Add0~32_combout\;
\cpu|execution_operation|flipflop|ALT_INV_DOUT~0_combout\ <= NOT \cpu|execution_operation|flipflop|DOUT~0_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~3_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~2_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~1_combout\;
\cpu|execution_operation|flipflop|ALT_INV_DOUT~q\ <= NOT \cpu|execution_operation|flipflop|DOUT~q\;
\cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\ <= NOT \cpu|execution_operation|ula|Equal8~3_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ <= NOT \cpu|execution_operation|ula|Equal8~2_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\ <= NOT \cpu|execution_operation|ula|Equal8~1_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ <= NOT \cpu|execution_operation|ula|Equal8~0_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[7]~7_combout\;
\ram|ALT_INV_ram~183_combout\ <= NOT \ram|ram~183_combout\;
\ram|ALT_INV_ram~182_combout\ <= NOT \ram|ram~182_combout\;
\ram|ALT_INV_ram~119_q\ <= NOT \ram|ram~119_q\;
\ram|ALT_INV_ram~143_q\ <= NOT \ram|ram~143_q\;
\ram|ALT_INV_ram~181_combout\ <= NOT \ram|ram~181_combout\;
\ram|ALT_INV_ram~87_q\ <= NOT \ram|ram~87_q\;
\ram|ALT_INV_ram~111_q\ <= NOT \ram|ram~111_q\;
\ram|ALT_INV_ram~180_combout\ <= NOT \ram|ram~180_combout\;
\ram|ALT_INV_ram~55_q\ <= NOT \ram|ram~55_q\;
\ram|ALT_INV_ram~79_q\ <= NOT \ram|ram~79_q\;
\ram|ALT_INV_ram~179_combout\ <= NOT \ram|ram~179_combout\;
\ram|ALT_INV_ram~23_q\ <= NOT \ram|ram~23_q\;
\ram|ALT_INV_ram~47_q\ <= NOT \ram|ram~47_q\;
\cpu|instruction_search|rom|ALT_INV_memROM~19_combout\ <= NOT \cpu|instruction_search|rom|memROM~19_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~18_combout\ <= NOT \cpu|instruction_search|rom|memROM~18_combout\;
\ram|ALT_INV_ram~178_combout\ <= NOT \ram|ram~178_combout\;
\ram|ALT_INV_ram~177_combout\ <= NOT \ram|ram~177_combout\;
\ram|ALT_INV_ram~118_q\ <= NOT \ram|ram~118_q\;
\ram|ALT_INV_ram~142_q\ <= NOT \ram|ram~142_q\;
\ram|ALT_INV_ram~176_combout\ <= NOT \ram|ram~176_combout\;
\ram|ALT_INV_ram~86_q\ <= NOT \ram|ram~86_q\;
\ram|ALT_INV_ram~110_q\ <= NOT \ram|ram~110_q\;
\ram|ALT_INV_ram~175_combout\ <= NOT \ram|ram~175_combout\;
\ram|ALT_INV_ram~54_q\ <= NOT \ram|ram~54_q\;
\ram|ALT_INV_ram~78_q\ <= NOT \ram|ram~78_q\;
\ram|ALT_INV_ram~174_combout\ <= NOT \ram|ram~174_combout\;
\ram|ALT_INV_ram~22_q\ <= NOT \ram|ram~22_q\;
\ram|ALT_INV_ram~46_q\ <= NOT \ram|ram~46_q\;
\ram|ALT_INV_ram~173_combout\ <= NOT \ram|ram~173_combout\;
\ram|ALT_INV_ram~172_combout\ <= NOT \ram|ram~172_combout\;
\ram|ALT_INV_ram~117_q\ <= NOT \ram|ram~117_q\;
\ram|ALT_INV_ram~141_q\ <= NOT \ram|ram~141_q\;
\ram|ALT_INV_ram~171_combout\ <= NOT \ram|ram~171_combout\;
\ram|ALT_INV_ram~85_q\ <= NOT \ram|ram~85_q\;
\ram|ALT_INV_ram~109_q\ <= NOT \ram|ram~109_q\;
\ram|ALT_INV_ram~170_combout\ <= NOT \ram|ram~170_combout\;
\ram|ALT_INV_ram~53_q\ <= NOT \ram|ram~53_q\;
\ram|ALT_INV_ram~77_q\ <= NOT \ram|ram~77_q\;
\ram|ALT_INV_ram~169_combout\ <= NOT \ram|ram~169_combout\;
\ram|ALT_INV_ram~21_q\ <= NOT \ram|ram~21_q\;
\ram|ALT_INV_ram~45_q\ <= NOT \ram|ram~45_q\;
\ram|ALT_INV_ram~168_combout\ <= NOT \ram|ram~168_combout\;
\ram|ALT_INV_ram~167_combout\ <= NOT \ram|ram~167_combout\;
\ram|ALT_INV_ram~116_q\ <= NOT \ram|ram~116_q\;
\ram|ALT_INV_ram~140_q\ <= NOT \ram|ram~140_q\;
\ram|ALT_INV_ram~166_combout\ <= NOT \ram|ram~166_combout\;
\ram|ALT_INV_ram~84_q\ <= NOT \ram|ram~84_q\;
\ram|ALT_INV_ram~108_q\ <= NOT \ram|ram~108_q\;
\ram|ALT_INV_ram~165_combout\ <= NOT \ram|ram~165_combout\;
\ram|ALT_INV_ram~52_q\ <= NOT \ram|ram~52_q\;
\ram|ALT_INV_ram~76_q\ <= NOT \ram|ram~76_q\;
\ram|ALT_INV_ram~164_combout\ <= NOT \ram|ram~164_combout\;
\ram|ALT_INV_ram~20_q\ <= NOT \ram|ram~20_q\;
\ram|ALT_INV_ram~44_q\ <= NOT \ram|ram~44_q\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[3]~3_combout\;
\ram|ALT_INV_ram~163_combout\ <= NOT \ram|ram~163_combout\;
\ram|ALT_INV_ram~162_combout\ <= NOT \ram|ram~162_combout\;
\ram|ALT_INV_ram~115_q\ <= NOT \ram|ram~115_q\;
\ram|ALT_INV_ram~139_q\ <= NOT \ram|ram~139_q\;
\ram|ALT_INV_ram~161_combout\ <= NOT \ram|ram~161_combout\;
\ram|ALT_INV_ram~83_q\ <= NOT \ram|ram~83_q\;
\ram|ALT_INV_ram~107_q\ <= NOT \ram|ram~107_q\;
\ram|ALT_INV_ram~160_combout\ <= NOT \ram|ram~160_combout\;
\ram|ALT_INV_ram~51_q\ <= NOT \ram|ram~51_q\;
\ram|ALT_INV_ram~75_q\ <= NOT \ram|ram~75_q\;
\ram|ALT_INV_ram~159_combout\ <= NOT \ram|ram~159_combout\;
\ram|ALT_INV_ram~19_q\ <= NOT \ram|ram~19_q\;
\ram|ALT_INV_ram~43_q\ <= NOT \ram|ram~43_q\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[2]~2_combout\;
\ram|ALT_INV_ram~158_combout\ <= NOT \ram|ram~158_combout\;
\ram|ALT_INV_ram~157_combout\ <= NOT \ram|ram~157_combout\;
\ram|ALT_INV_ram~114_q\ <= NOT \ram|ram~114_q\;
\ram|ALT_INV_ram~138_q\ <= NOT \ram|ram~138_q\;
\ram|ALT_INV_ram~156_combout\ <= NOT \ram|ram~156_combout\;
\ram|ALT_INV_ram~82_q\ <= NOT \ram|ram~82_q\;
\ram|ALT_INV_ram~106_q\ <= NOT \ram|ram~106_q\;
\ram|ALT_INV_ram~155_combout\ <= NOT \ram|ram~155_combout\;
\ram|ALT_INV_ram~50_q\ <= NOT \ram|ram~50_q\;
\ram|ALT_INV_ram~74_q\ <= NOT \ram|ram~74_q\;
\ram|ALT_INV_ram~154_combout\ <= NOT \ram|ram~154_combout\;
\ram|ALT_INV_ram~18_q\ <= NOT \ram|ram~18_q\;
\ram|ALT_INV_ram~42_q\ <= NOT \ram|ram~42_q\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[1]~1_combout\;
\ram|ALT_INV_ram~153_combout\ <= NOT \ram|ram~153_combout\;
\ram|ALT_INV_ram~152_combout\ <= NOT \ram|ram~152_combout\;
\ram|ALT_INV_ram~113_q\ <= NOT \ram|ram~113_q\;
\ram|ALT_INV_ram~137_q\ <= NOT \ram|ram~137_q\;
\ram|ALT_INV_ram~151_combout\ <= NOT \ram|ram~151_combout\;
\ram|ALT_INV_ram~81_q\ <= NOT \ram|ram~81_q\;
\ram|ALT_INV_ram~105_q\ <= NOT \ram|ram~105_q\;
\ram|ALT_INV_ram~150_combout\ <= NOT \ram|ram~150_combout\;
\ram|ALT_INV_ram~49_q\ <= NOT \ram|ram~49_q\;
\ram|ALT_INV_ram~73_q\ <= NOT \ram|ram~73_q\;
\ram|ALT_INV_ram~149_combout\ <= NOT \ram|ram~149_combout\;
\ram|ALT_INV_ram~17_q\ <= NOT \ram|ram~17_q\;
\ram|ALT_INV_ram~41_q\ <= NOT \ram|ram~41_q\;
\ram|ALT_INV_ram~148_combout\ <= NOT \ram|ram~148_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~17_combout\ <= NOT \cpu|instruction_search|rom|memROM~17_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~16_combout\ <= NOT \cpu|instruction_search|rom|memROM~16_combout\;
\ram|ALT_INV_ram~147_combout\ <= NOT \ram|ram~147_combout\;
\ram|ALT_INV_ram~112_q\ <= NOT \ram|ram~112_q\;
\ram|ALT_INV_ram~136_q\ <= NOT \ram|ram~136_q\;
\ram|ALT_INV_ram~146_combout\ <= NOT \ram|ram~146_combout\;
\ram|ALT_INV_ram~80_q\ <= NOT \ram|ram~80_q\;
\ram|ALT_INV_ram~104_q\ <= NOT \ram|ram~104_q\;
\ram|ALT_INV_ram~145_combout\ <= NOT \ram|ram~145_combout\;
\ram|ALT_INV_ram~48_q\ <= NOT \ram|ram~48_q\;
\ram|ALT_INV_ram~72_q\ <= NOT \ram|ram~72_q\;
\ram|ALT_INV_ram~144_combout\ <= NOT \ram|ram~144_combout\;
\ram|ALT_INV_ram~16_q\ <= NOT \ram|ram~16_q\;
\ram|ALT_INV_ram~40_q\ <= NOT \ram|ram~40_q\;
\cpu|instruction_search|rom|ALT_INV_memROM~15_combout\ <= NOT \cpu|instruction_search|rom|memROM~15_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~14_combout\ <= NOT \cpu|instruction_search|rom|memROM~14_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~0_combout\;
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
	i => \cpu|execution_operation|ula|Equal8~4_combout\,
	devoe => ww_devoe,
	o => ww_pintestULAFLAG);

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

\cpu|instruction_search|rom|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~6_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (((!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3))))) # (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(3) & 
-- ((!\cpu|instruction_search|pc|DOUT\(2)) # (\cpu|instruction_search|pc|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000111000000001100011100000000110001110000000011000111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~6_combout\);

\cpu|instruction_search|rom|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~7_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~6_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	combout => \cpu|instruction_search|rom|memROM~7_combout\);

\cpu|instruction_search|rom|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~8_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(2))))) # (\cpu|instruction_search|pc|DOUT\(1) & 
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
	combout => \cpu|instruction_search|rom|memROM~8_combout\);

\cpu|instruction_search|rom|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~9_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	combout => \cpu|instruction_search|rom|memROM~9_combout\);

\cpu|instruction_search|rom|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~10_combout\ = (!\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) $ (!\cpu|instruction_search|pc|DOUT\(2)))))

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
	combout => \cpu|instruction_search|rom|memROM~10_combout\);

\cpu|instruction_search|rom|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~11_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~10_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	combout => \cpu|instruction_search|rom|memROM~11_combout\);

\cpu|instruction_search|rom|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~12_combout\ = (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(2) & 
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
	combout => \cpu|instruction_search|rom|memROM~12_combout\);

\cpu|instruction_search|rom|memROM~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~13_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~12_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|instruction_search|rom|memROM~13_combout\);

\cpu|execution_operation|flipflop|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|flipflop|DOUT~0_combout\ = ( \cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~6_combout\ & (!\cpu|instruction_search|rom|memROM~8_combout\ & 
-- !\cpu|instruction_search|rom|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|flipflop|DOUT~0_combout\);

\cpu|instruction_search|control_unit|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~2_combout\ = ( \cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~6_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~8_combout\ & !\cpu|instruction_search|rom|memROM~10_combout\))) ) ) # ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & 
-- (\cpu|instruction_search|rom|memROM~6_combout\ & (!\cpu|instruction_search|rom|memROM~8_combout\ & !\cpu|instruction_search|rom|memROM~10_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000010000000000000000010000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~2_combout\);

\cpu|instruction_search|control_unit|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~1_combout\ = ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~6_combout\ & 
-- ((!\cpu|instruction_search|rom|memROM~8_combout\) # (!\cpu|instruction_search|rom|memROM~10_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010000000000000000000000010001000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~1_combout\);

\cpu|instruction_search|control_unit|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~0_combout\ = ( \cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~6_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~8_combout\ & !\cpu|instruction_search|rom|memROM~10_combout\))) ) ) # ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~8_combout\ & ((\cpu|instruction_search|rom|memROM~10_combout\) # (\cpu|instruction_search|rom|memROM~6_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000001010000010000000000000000010000010100000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~0_combout\);

\cpu|instruction_search|rom|memROM~14\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~14_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & ((!\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3))) # (\cpu|instruction_search|pc|DOUT\(1) & 
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
	combout => \cpu|instruction_search|rom|memROM~14_combout\);

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

\cpu|instruction_search|rom|memROM~18\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~18_combout\ = (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(2) & 
-- (!\cpu|instruction_search|pc|DOUT\(3) & ((\cpu|instruction_search|pc|DOUT\(1)) # (\cpu|instruction_search|pc|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011110000000000001111000000000000111100000000000011110000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~18_combout\);

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

\cpu|instruction_search|pc|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~29_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~19_combout\,
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

\cpu|instruction_search|rom|memROM~20\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~20_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & ((!\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3))) # (\cpu|instruction_search|pc|DOUT\(1) & 
-- ((!\cpu|instruction_search|pc|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001010000000001000101000000000100010100000000010001010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~20_combout\);

\cpu|instruction_search|rom|memROM~16\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~16_combout\ = ( !\cpu|instruction_search|pc|DOUT\(8) & ( \cpu|instruction_search|rom|memROM~20_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(5) & 
-- (!\cpu|instruction_search|pc|DOUT\(6) & !\cpu|instruction_search|pc|DOUT\(7)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(4),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(5),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(6),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(7),
	datae => \cpu|instruction_search|pc|ALT_INV_DOUT\(8),
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~20_combout\,
	combout => \cpu|instruction_search|rom|memROM~16_combout\);

\cpu|instruction_search|rom|memROM~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~17_combout\ = ( \cpu|instruction_search|rom|memROM~4_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & 
-- !\cpu|instruction_search|pc|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \cpu|instruction_search|rom|memROM~17_combout\);

\ram|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|process_0~0_combout\ = ( \cpu|instruction_search|rom|memROM~4_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(3) & (\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(1) $ (!\cpu|instruction_search|pc|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100010000000000000000000000000001000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	combout => \ram|process_0~0_combout\);

\ram|ram~184\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~184_combout\ = (\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|instruction_search|rom|memROM~16_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~184_combout\);

\ram|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~46_q\);

\ram|ram~185\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~185_combout\ = (!\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|instruction_search|rom|memROM~16_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010000000000000001000000000000000100000000000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~185_combout\);

\ram|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~22_q\);

\ram|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~174_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~22_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~22_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~46_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~46_q\,
	datad => \ram|ALT_INV_ram~22_q\,
	combout => \ram|ram~174_combout\);

\ram|ram~186\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~186_combout\ = (\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000001000000000000000100000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~186_combout\);

\ram|ram~78\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~78_q\);

\ram|ram~187\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~187_combout\ = (!\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\ & (!\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000000000000010000000000000001000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~187_combout\);

\ram|ram~54\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~54_q\);

\ram|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~175_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~54_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~54_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~78_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~78_q\,
	datad => \ram|ALT_INV_ram~54_q\,
	combout => \ram|ram~175_combout\);

\ram|ram~188\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~188_combout\ = (\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|instruction_search|rom|memROM~16_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000100000000000000010000000000000001000000000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~188_combout\);

\ram|ram~110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~110_q\);

\ram|ram~189\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~189_combout\ = (!\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|instruction_search|rom|memROM~16_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000001000000000000000100000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~189_combout\);

\ram|ram~86\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~86_q\);

\ram|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~176_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~86_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~86_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~110_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~110_q\,
	datad => \ram|ALT_INV_ram~86_q\,
	combout => \ram|ram~176_combout\);

\ram|ram~190\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~190_combout\ = (\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~190_combout\);

\ram|ram~142\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~142_q\);

\ram|ram~191\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~191_combout\ = (!\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\ & \ram|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000001000000000000000100000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datad => \ram|ALT_INV_process_0~0_combout\,
	combout => \ram|ram~191_combout\);

\ram|ram~118\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~50_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~118_q\);

\ram|ram~177\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~177_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~118_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~118_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~142_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~142_q\,
	datad => \ram|ALT_INV_ram~118_q\,
	combout => \ram|ram~177_combout\);

\ram|ram~178\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~178_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~177_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~176_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~175_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~174_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~174_combout\,
	datab => \ram|ALT_INV_ram~175_combout\,
	datac => \ram|ALT_INV_ram~176_combout\,
	datad => \ram|ALT_INV_ram~177_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~178_combout\);

\ram|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~21_q\);

\ram|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~169_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~21_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~21_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~45_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~45_q\,
	datad => \ram|ALT_INV_ram~21_q\,
	combout => \ram|ram~169_combout\);

\ram|ram~77\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~53_q\);

\ram|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~170_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~53_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~53_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~77_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~77_q\,
	datad => \ram|ALT_INV_ram~53_q\,
	combout => \ram|ram~170_combout\);

\ram|ram~109\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~109_q\);

\ram|ram~85\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~85_q\);

\ram|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~171_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~85_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~85_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~109_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~109_q\,
	datad => \ram|ALT_INV_ram~85_q\,
	combout => \ram|ram~171_combout\);

\ram|ram~141\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~141_q\);

\ram|ram~117\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~49_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~117_q\);

\ram|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~172_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~117_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~117_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~141_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~141_q\,
	datad => \ram|ALT_INV_ram~117_q\,
	combout => \ram|ram~172_combout\);

\ram|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~173_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~172_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~171_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~170_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~169_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~169_combout\,
	datab => \ram|ALT_INV_ram~170_combout\,
	datac => \ram|ALT_INV_ram~171_combout\,
	datad => \ram|ALT_INV_ram~172_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~173_combout\);

\ram|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~20_q\);

\ram|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~164_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~20_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~20_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~44_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~44_q\,
	datad => \ram|ALT_INV_ram~20_q\,
	combout => \ram|ram~164_combout\);

\ram|ram~76\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~52_q\);

\ram|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~165_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~52_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~52_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~76_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~76_q\,
	datad => \ram|ALT_INV_ram~52_q\,
	combout => \ram|ram~165_combout\);

\ram|ram~108\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~108_q\);

\ram|ram~84\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~84_q\);

\ram|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~166_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~84_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~84_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~108_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~108_q\,
	datad => \ram|ALT_INV_ram~84_q\,
	combout => \ram|ram~166_combout\);

\ram|ram~140\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~140_q\);

\ram|ram~116\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~48_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~116_q\);

\ram|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~167_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~116_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~116_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~140_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~140_q\,
	datad => \ram|ALT_INV_ram~116_q\,
	combout => \ram|ram~167_combout\);

\ram|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~168_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~167_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~166_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~165_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~164_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~164_combout\,
	datab => \ram|ALT_INV_ram~165_combout\,
	datac => \ram|ALT_INV_ram~166_combout\,
	datad => \ram|ALT_INV_ram~167_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~168_combout\);

\ram|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~19_q\);

\ram|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~159_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~19_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~19_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~43_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~43_q\,
	datad => \ram|ALT_INV_ram~19_q\,
	combout => \ram|ram~159_combout\);

\ram|ram~75\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~51_q\);

\ram|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~160_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~51_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~51_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~75_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~75_q\,
	datad => \ram|ALT_INV_ram~51_q\,
	combout => \ram|ram~160_combout\);

\ram|ram~107\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~107_q\);

\ram|ram~83\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~83_q\);

\ram|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~161_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~83_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~83_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~107_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~107_q\,
	datad => \ram|ALT_INV_ram~83_q\,
	combout => \ram|ram~161_combout\);

\ram|ram~139\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~139_q\);

\ram|ram~115\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~115_q\);

\ram|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~162_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~115_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~115_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~139_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~139_q\,
	datad => \ram|ALT_INV_ram~115_q\,
	combout => \ram|ram~162_combout\);

\ram|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~163_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~162_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~161_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~160_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~159_combout\,
	datab => \ram|ALT_INV_ram~160_combout\,
	datac => \ram|ALT_INV_ram~161_combout\,
	datad => \ram|ALT_INV_ram~162_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~163_combout\);

\cpu|execution_operation|mux|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~163_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~17_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datac => \ram|ALT_INV_ram~163_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[3]~3_combout\);

\ram|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~184_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~42_q\);

\ram|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~18_q\);

\ram|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~154_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~18_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~18_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~42_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~42_q\,
	datad => \ram|ALT_INV_ram~18_q\,
	combout => \ram|ram~154_combout\);

\ram|ram~74\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~186_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~74_q\);

\ram|ram~50\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~50_q\);

\ram|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~155_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~50_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~50_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~74_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~74_q\,
	datad => \ram|ALT_INV_ram~50_q\,
	combout => \ram|ram~155_combout\);

\ram|ram~106\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~106_q\);

\ram|ram~82\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~82_q\);

\ram|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~156_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~82_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~82_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~106_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~106_q\,
	datad => \ram|ALT_INV_ram~82_q\,
	combout => \ram|ram~156_combout\);

\ram|ram~138\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~138_q\);

\ram|ram~114\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~114_q\);

\ram|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~157_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~114_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~114_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~138_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~138_q\,
	datad => \ram|ALT_INV_ram~114_q\,
	combout => \ram|ram~157_combout\);

\ram|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~158_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~157_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~156_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~155_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~154_combout\,
	datab => \ram|ALT_INV_ram~155_combout\,
	datac => \ram|ALT_INV_ram~156_combout\,
	datad => \ram|ALT_INV_ram~157_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~158_combout\);

\cpu|execution_operation|mux|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~158_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~16_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datac => \ram|ALT_INV_ram~158_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[2]~2_combout\);

\ram|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~17_q\);

\ram|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~149_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~17_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~17_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~41_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~41_q\,
	datad => \ram|ALT_INV_ram~17_q\,
	combout => \ram|ram~149_combout\);

\ram|ram~73\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~49_q\);

\ram|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~150_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~49_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~49_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~73_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~73_q\,
	datad => \ram|ALT_INV_ram~49_q\,
	combout => \ram|ram~150_combout\);

\ram|ram~105\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~105_q\);

\ram|ram~81\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~81_q\);

\ram|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~151_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~81_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~81_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~105_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~105_q\,
	datad => \ram|ALT_INV_ram~81_q\,
	combout => \ram|ram~151_combout\);

\ram|ram~137\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~137_q\);

\ram|ram~113\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~113_q\);

\ram|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~152_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~113_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~113_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~137_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~137_q\,
	datad => \ram|ALT_INV_ram~113_q\,
	combout => \ram|ram~152_combout\);

\ram|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~153_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~152_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~151_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~150_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~149_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~149_combout\,
	datab => \ram|ALT_INV_ram~150_combout\,
	datac => \ram|ALT_INV_ram~151_combout\,
	datad => \ram|ALT_INV_ram~152_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~153_combout\);

\cpu|execution_operation|mux|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~153_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \ram|ALT_INV_ram~153_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[1]~1_combout\);

\ram|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~16_q\);

\ram|ram~144\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~144_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~16_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~16_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~40_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111111011000000011111101100000001111110110000000111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \ram|ALT_INV_ram~40_q\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datad => \ram|ALT_INV_ram~16_q\,
	combout => \ram|ram~144_combout\);

\ram|ram~72\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~48_q\);

\ram|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~145_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~48_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~48_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~72_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~72_q\,
	datad => \ram|ALT_INV_ram~48_q\,
	combout => \ram|ram~145_combout\);

\ram|ram~104\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~104_q\);

\ram|ram~80\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~80_q\);

\ram|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~146_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~80_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~80_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~104_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~104_q\,
	datad => \ram|ALT_INV_ram~80_q\,
	combout => \ram|ram~146_combout\);

\ram|ram~136\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~136_q\);

\ram|ram~112\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~112_q\);

\ram|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~147_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~112_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~112_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~136_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~136_q\,
	datad => \ram|ALT_INV_ram~112_q\,
	combout => \ram|ram~147_combout\);

\ram|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~148_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~147_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~146_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~145_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~144_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~144_combout\,
	datab => \ram|ALT_INV_ram~145_combout\,
	datac => \ram|ALT_INV_ram~146_combout\,
	datad => \ram|ALT_INV_ram~147_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~148_combout\);

\cpu|execution_operation|ula|Add0~32\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~32_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\ram|ram~148_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|instruction_search|rom|memROM~15_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( !\cpu|instruction_search|control_unit|memROM~2_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- ((!\ram|ram~148_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~15_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101111100100111001001110010000011011111001001110010011100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \ram|ALT_INV_ram~148_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	combout => \cpu|execution_operation|ula|Add0~32_combout\);

\cpu|execution_operation|ula|Add0~35\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~35_cout\ = CARRY(( (!\cpu|instruction_search|rom|memROM~13_combout\ & (\cpu|instruction_search|rom|memROM~7_combout\ & ((!\cpu|instruction_search|rom|memROM~9_combout\) # 
-- (!\cpu|instruction_search|rom|memROM~11_combout\)))) # (\cpu|instruction_search|rom|memROM~13_combout\ & (!\cpu|instruction_search|rom|memROM~9_combout\ & (!\cpu|instruction_search|rom|memROM~11_combout\ & !\cpu|instruction_search|rom|memROM~7_combout\))) 
-- ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000100011100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
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

\cpu|execution_operation|ula|saida[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[0]~0_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~148_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~15_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( \cpu|execution_operation|registers|registrador~44_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datad => \ram|ALT_INV_ram~148_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	combout => \cpu|execution_operation|ula|saida[0]~0_combout\);

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

\cpu|instruction_search|control_unit|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~3_combout\ = (!\cpu|instruction_search|rom|memROM~9_combout\ & ((!\cpu|instruction_search|rom|memROM~11_combout\ & ((\cpu|instruction_search|rom|memROM~13_combout\) # 
-- (\cpu|instruction_search|rom|memROM~7_combout\))) # (\cpu|instruction_search|rom|memROM~11_combout\ & ((!\cpu|instruction_search|rom|memROM~13_combout\))))) # (\cpu|instruction_search|rom|memROM~9_combout\ & 
-- (((!\cpu|instruction_search|rom|memROM~11_combout\ & !\cpu|instruction_search|rom|memROM~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111110011000000011111001100000001111100110000000111110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~3_combout\);

\cpu|execution_operation|registers|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~52_combout\ = (\cpu|instruction_search|control_unit|memROM~3_combout\ & ((!\cpu|instruction_search|rom|memROM~4_combout\) # ((!\cpu|instruction_search|rom|memROM~0_combout\ & 
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
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	combout => \cpu|execution_operation|registers|registrador~52_combout\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~12_q\);

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
-- \cpu|execution_operation|registers|registrador~53_combout\ = (\cpu|instruction_search|rom|memROM~2_combout\ & (!\cpu|instruction_search|rom|memROM~5_combout\ & \cpu|instruction_search|control_unit|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	combout => \cpu|execution_operation|registers|registrador~53_combout\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~20_q\);

\cpu|execution_operation|registers|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~54_combout\ = (!\cpu|instruction_search|rom|memROM~2_combout\ & (\cpu|instruction_search|rom|memROM~5_combout\ & \cpu|instruction_search|control_unit|memROM~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	combout => \cpu|execution_operation|registers|registrador~54_combout\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~28_q\);

\cpu|execution_operation|registers|registrador~55\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~55_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~1_combout\ & (\cpu|instruction_search|rom|memROM~5_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~3_combout\)))

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
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~3_combout\,
	combout => \cpu|execution_operation|registers|registrador~55_combout\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\cpu|execution_operation|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~5_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))
-- \cpu|execution_operation|ula|Add0~6\ = CARRY(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~2\,
	sumout => \cpu|execution_operation|ula|Add0~5_sumout\,
	cout => \cpu|execution_operation|ula|Add0~6\);

\cpu|execution_operation|ula|saida[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[1]~1_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~153_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~15_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( \cpu|execution_operation|registers|registrador~45_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datad => \ram|ALT_INV_ram~153_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	combout => \cpu|execution_operation|ula|saida[1]~1_combout\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~13_q\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~21_q\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~29_q\);

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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
-- \cpu|execution_operation|ula|Add0~9_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))
-- \cpu|execution_operation|ula|Add0~10\ = CARRY(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\,
	cin => \cpu|execution_operation|ula|Add0~6\,
	sumout => \cpu|execution_operation|ula|Add0~9_sumout\,
	cout => \cpu|execution_operation|ula|Add0~10\);

\cpu|execution_operation|ula|saida[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[2]~2_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~158_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~16_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( \cpu|execution_operation|registers|registrador~46_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datad => \ram|ALT_INV_ram~158_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\cpu|execution_operation|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~13_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))
-- \cpu|execution_operation|ula|Add0~14\ = CARRY(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\,
	cin => \cpu|execution_operation|ula|Add0~10\,
	sumout => \cpu|execution_operation|ula|Add0~13_sumout\,
	cout => \cpu|execution_operation|ula|Add0~14\);

\cpu|execution_operation|ula|saida[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[3]~3_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~163_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~17_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( \cpu|execution_operation|registers|registrador~47_combout\ ) )

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
	datad => \ram|ALT_INV_ram~163_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\cpu|execution_operation|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~17_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~168_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~168_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~14\ ))
-- \cpu|execution_operation|ula|Add0~18\ = CARRY(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~168_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~168_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	dataf => \ram|ALT_INV_ram~168_combout\,
	cin => \cpu|execution_operation|ula|Add0~14\,
	sumout => \cpu|execution_operation|ula|Add0~17_sumout\,
	cout => \cpu|execution_operation|ula|Add0~18\);

\cpu|execution_operation|ula|saida[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[4]~4_combout\ = (!\cpu|instruction_search|control_unit|memROM~1_combout\ & (\cpu|execution_operation|registers|registrador~48_combout\)) # (\cpu|instruction_search|control_unit|memROM~1_combout\ & 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~168_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \ram|ALT_INV_ram~168_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\cpu|execution_operation|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~21_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~173_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~173_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~18\ ))
-- \cpu|execution_operation|ula|Add0~22\ = CARRY(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~173_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~173_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	dataf => \ram|ALT_INV_ram~173_combout\,
	cin => \cpu|execution_operation|ula|Add0~18\,
	sumout => \cpu|execution_operation|ula|Add0~21_sumout\,
	cout => \cpu|execution_operation|ula|Add0~22\);

\cpu|execution_operation|ula|saida[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[5]~5_combout\ = (!\cpu|instruction_search|control_unit|memROM~1_combout\ & (\cpu|execution_operation|registers|registrador~49_combout\)) # (\cpu|instruction_search|control_unit|memROM~1_combout\ & 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~173_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \ram|ALT_INV_ram~173_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
-- \cpu|execution_operation|ula|Add0~25_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~178_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~178_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~22\ ))
-- \cpu|execution_operation|ula|Add0~26\ = CARRY(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|instruction_search|control_unit|memROM~2_combout\ & (!\cpu|instruction_search|control_unit|memROM~1_combout\ $ 
-- (((!\ram|ram~178_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|instruction_search|control_unit|memROM~2_combout\ & (((!\ram|ram~178_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111100000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	dataf => \ram|ALT_INV_ram~178_combout\,
	cin => \cpu|execution_operation|ula|Add0~22\,
	sumout => \cpu|execution_operation|ula|Add0~25_sumout\,
	cout => \cpu|execution_operation|ula|Add0~26\);

\cpu|execution_operation|ula|saida[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[6]~6_combout\ = (!\cpu|instruction_search|control_unit|memROM~1_combout\ & (\cpu|execution_operation|registers|registrador~50_combout\)) # (\cpu|instruction_search|control_unit|memROM~1_combout\ & 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~178_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100001100010101010000110001010101000011000101010100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \ram|ALT_INV_ram~178_combout\,
	datad => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\ram|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~184_combout\,
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
	ena => \ram|ram~185_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~23_q\);

\ram|ram~179\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~179_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~23_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~23_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~47_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~47_q\,
	datad => \ram|ALT_INV_ram~23_q\,
	combout => \ram|ram~179_combout\);

\ram|ram~79\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~186_combout\,
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
	ena => \ram|ram~187_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~55_q\);

\ram|ram~180\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~180_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~55_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~55_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~79_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~79_q\,
	datad => \ram|ALT_INV_ram~55_q\,
	combout => \ram|ram~180_combout\);

\ram|ram~111\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~188_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~111_q\);

\ram|ram~87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~189_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~87_q\);

\ram|ram~181\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~181_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~87_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~87_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~111_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~111_q\,
	datad => \ram|ALT_INV_ram~87_q\,
	combout => \ram|ram~181_combout\);

\ram|ram~143\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~190_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~143_q\);

\ram|ram~119\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~51_combout\,
	ena => \ram|ram~191_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ram|ram~119_q\);

\ram|ram~182\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~182_combout\ = (!\cpu|instruction_search|rom|memROM~4_combout\ & (((\ram|ram~119_q\)))) # (\cpu|instruction_search|rom|memROM~4_combout\ & ((!\cpu|instruction_search|rom|memROM~14_combout\ & ((\ram|ram~119_q\))) # 
-- (\cpu|instruction_search|rom|memROM~14_combout\ & (\ram|ram~143_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000111101111000000011110111100000001111011110000000111101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	datac => \ram|ALT_INV_ram~143_q\,
	datad => \ram|ALT_INV_ram~119_q\,
	combout => \ram|ram~182_combout\);

\ram|ram~183\ : cyclonev_lcell_comb
-- Equation(s):
-- \ram|ram~183_combout\ = ( \cpu|instruction_search|rom|memROM~16_combout\ & ( \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~182_combout\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~16_combout\ & ( 
-- \cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~181_combout\ ) ) ) # ( \cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~180_combout\ ) ) ) # ( 
-- !\cpu|instruction_search|rom|memROM~16_combout\ & ( !\cpu|instruction_search|rom|memROM~17_combout\ & ( \ram|ram~179_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ram|ALT_INV_ram~179_combout\,
	datab => \ram|ALT_INV_ram~180_combout\,
	datac => \ram|ALT_INV_ram~181_combout\,
	datad => \ram|ALT_INV_ram~182_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	combout => \ram|ram~183_combout\);

\cpu|execution_operation|mux|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[7]~7_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~183_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~19_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datac => \ram|ALT_INV_ram~183_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[7]~7_combout\);

\cpu|execution_operation|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~29_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~51_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[7]~7_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~2_combout\ & 
-- !\cpu|instruction_search|control_unit|memROM~1_combout\))) ) + ( \cpu|execution_operation|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100010000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[7]~7_combout\,
	cin => \cpu|execution_operation|ula|Add0~26\,
	sumout => \cpu|execution_operation|ula|Add0~29_sumout\);

\cpu|execution_operation|ula|saida[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[7]~7_combout\ = ( \cpu|instruction_search|control_unit|memROM~1_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~183_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ 
-- & (\cpu|instruction_search|rom|memROM~19_combout\)) ) ) # ( !\cpu|instruction_search|control_unit|memROM~1_combout\ & ( \cpu|execution_operation|registers|registrador~51_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000000111100111101010101010101010000001111001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	datad => \ram|ALT_INV_ram~183_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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
	sload => \cpu|instruction_search|control_unit|memROM~2_combout\,
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

\cpu|execution_operation|ula|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~0_combout\ = ( \cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~183_combout\ & ( (\cpu|execution_operation|registers|registrador~51_combout\ & (!\cpu|execution_operation|registers|registrador~50_combout\ $ 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~178_combout\))))) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( \ram|ram~183_combout\ & ( (!\cpu|execution_operation|registers|registrador~51_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~50_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\))) # (\cpu|execution_operation|registers|registrador~51_combout\ & (!\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~50_combout\ $ (\ram|ram~178_combout\)))) ) ) ) # ( \cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~183_combout\ & ( (!\cpu|execution_operation|registers|registrador~51_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\ & (!\cpu|execution_operation|registers|registrador~50_combout\ $ (\ram|ram~178_combout\)))) # (\cpu|execution_operation|registers|registrador~51_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~50_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\cpu|instruction_search|rom|memROM~19_combout\ & ( !\ram|ram~183_combout\ & ( 
-- (!\cpu|execution_operation|registers|registrador~51_combout\ & (!\cpu|execution_operation|registers|registrador~50_combout\ $ (((!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~178_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100001001000100000100100001000101000000110000010001000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \ram|ALT_INV_ram~178_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~19_combout\,
	dataf => \ram|ALT_INV_ram~183_combout\,
	combout => \cpu|execution_operation|ula|Equal8~0_combout\);

\cpu|execution_operation|ula|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~1_combout\ = ( \ram|ram~163_combout\ & ( \ram|ram~173_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~47_combout\ $ (\cpu|instruction_search|rom|memROM~17_combout\)))) # (\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|execution_operation|registers|registrador~47_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\ram|ram~163_combout\ & ( \ram|ram~173_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~47_combout\ $ (\cpu|instruction_search|rom|memROM~17_combout\)))) # (\cpu|execution_operation|registers|registrador~49_combout\ & (!\cpu|execution_operation|registers|registrador~47_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( \ram|ram~163_combout\ & ( !\ram|ram~173_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & (!\cpu|execution_operation|registers|registrador~47_combout\ $ 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~17_combout\))))) ) ) ) # ( !\ram|ram~163_combout\ & ( !\ram|ram~173_combout\ & ( (!\cpu|execution_operation|registers|registrador~49_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~47_combout\ $ (((\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~17_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000100010010000100010000101000001001000001100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~17_combout\,
	datae => \ram|ALT_INV_ram~163_combout\,
	dataf => \ram|ALT_INV_ram~173_combout\,
	combout => \cpu|execution_operation|ula|Equal8~1_combout\);

\cpu|execution_operation|ula|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~2_combout\ = ( \ram|ram~148_combout\ & ( \ram|ram~153_combout\ & ( (!\cpu|execution_operation|registers|registrador~44_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ & 
-- (\cpu|instruction_search|control_unit|memROM~0_combout\ & !\cpu|instruction_search|rom|memROM~15_combout\))) # (\cpu|execution_operation|registers|registrador~44_combout\ & (\cpu|execution_operation|registers|registrador~45_combout\ & 
-- ((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~15_combout\)))) ) ) ) # ( !\ram|ram~148_combout\ & ( \ram|ram~153_combout\ & ( (!\cpu|instruction_search|rom|memROM~15_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~44_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ $ (!\cpu|instruction_search|control_unit|memROM~0_combout\)))) # (\cpu|instruction_search|rom|memROM~15_combout\ & 
-- (\cpu|execution_operation|registers|registrador~45_combout\ & (!\cpu|execution_operation|registers|registrador~44_combout\ $ (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) ) ) # ( \ram|ram~148_combout\ & ( !\ram|ram~153_combout\ & ( 
-- (!\cpu|instruction_search|rom|memROM~15_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ & (!\cpu|execution_operation|registers|registrador~44_combout\ $ (!\cpu|instruction_search|control_unit|memROM~0_combout\)))) # 
-- (\cpu|instruction_search|rom|memROM~15_combout\ & (\cpu|execution_operation|registers|registrador~44_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ $ (\cpu|instruction_search|control_unit|memROM~0_combout\)))) ) ) ) # ( 
-- !\ram|ram~148_combout\ & ( !\ram|ram~153_combout\ & ( (!\cpu|execution_operation|registers|registrador~44_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ & ((!\cpu|instruction_search|control_unit|memROM~0_combout\) # 
-- (!\cpu|instruction_search|rom|memROM~15_combout\)))) # (\cpu|execution_operation|registers|registrador~44_combout\ & (\cpu|execution_operation|registers|registrador~45_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- \cpu|instruction_search|rom|memROM~15_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000001010010000100000100101000001000010001100000010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datae => \ram|ALT_INV_ram~148_combout\,
	dataf => \ram|ALT_INV_ram~153_combout\,
	combout => \cpu|execution_operation|ula|Equal8~2_combout\);

\cpu|execution_operation|ula|Equal8~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~3_combout\ = ( \ram|ram~158_combout\ & ( \ram|ram~168_combout\ & ( (!\cpu|execution_operation|registers|registrador~48_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~46_combout\ $ (\cpu|instruction_search|rom|memROM~16_combout\)))) # (\cpu|execution_operation|registers|registrador~48_combout\ & (\cpu|execution_operation|registers|registrador~46_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( !\ram|ram~158_combout\ & ( \ram|ram~168_combout\ & ( (!\cpu|execution_operation|registers|registrador~48_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~46_combout\ $ (\cpu|instruction_search|rom|memROM~16_combout\)))) # (\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ & 
-- (!\cpu|instruction_search|control_unit|memROM~0_combout\))) ) ) ) # ( \ram|ram~158_combout\ & ( !\ram|ram~168_combout\ & ( (!\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ $ 
-- (((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~16_combout\))))) ) ) ) # ( !\ram|ram~158_combout\ & ( !\ram|ram~168_combout\ & ( (!\cpu|execution_operation|registers|registrador~48_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~46_combout\ $ (((\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~16_combout\))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000100010010000100010000101000001001000001100000010100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~16_combout\,
	datae => \ram|ALT_INV_ram~158_combout\,
	dataf => \ram|ALT_INV_ram~168_combout\,
	combout => \cpu|execution_operation|ula|Equal8~3_combout\);

\cpu|execution_operation|flipflop|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|flipflop|DOUT~1_combout\ = ( \cpu|execution_operation|ula|Equal8~2_combout\ & ( \cpu|execution_operation|ula|Equal8~3_combout\ & ( (!\cpu|execution_operation|flipflop|DOUT~0_combout\ & (\cpu|execution_operation|flipflop|DOUT~q\)) 
-- # (\cpu|execution_operation|flipflop|DOUT~0_combout\ & (((\cpu|execution_operation|ula|Equal8~0_combout\ & \cpu|execution_operation|ula|Equal8~1_combout\)))) ) ) ) # ( !\cpu|execution_operation|ula|Equal8~2_combout\ & ( 
-- \cpu|execution_operation|ula|Equal8~3_combout\ & ( (\cpu|execution_operation|flipflop|DOUT~q\ & !\cpu|execution_operation|flipflop|DOUT~0_combout\) ) ) ) # ( \cpu|execution_operation|ula|Equal8~2_combout\ & ( 
-- !\cpu|execution_operation|ula|Equal8~3_combout\ & ( (\cpu|execution_operation|flipflop|DOUT~q\ & !\cpu|execution_operation|flipflop|DOUT~0_combout\) ) ) ) # ( !\cpu|execution_operation|ula|Equal8~2_combout\ & ( 
-- !\cpu|execution_operation|ula|Equal8~3_combout\ & ( (\cpu|execution_operation|flipflop|DOUT~q\ & !\cpu|execution_operation|flipflop|DOUT~0_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\,
	datab => \cpu|execution_operation|flipflop|ALT_INV_DOUT~0_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\,
	datad => \cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\,
	datae => \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\,
	combout => \cpu|execution_operation|flipflop|DOUT~1_combout\);

\cpu|execution_operation|flipflop|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|flipflop|DOUT~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|flipflop|DOUT~q\);

\cpu|instruction_search|selector_mux~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|selector_mux~0_combout\ = ( \cpu|execution_operation|flipflop|DOUT~q\ & ( (\cpu|instruction_search|rom|memROM~9_combout\ & (\cpu|instruction_search|rom|memROM~11_combout\ & !\cpu|instruction_search|rom|memROM~13_combout\)) ) ) # ( 
-- !\cpu|execution_operation|flipflop|DOUT~q\ & ( (!\cpu|instruction_search|rom|memROM~7_combout\ & (\cpu|instruction_search|rom|memROM~9_combout\ & (\cpu|instruction_search|rom|memROM~11_combout\ & !\cpu|instruction_search|rom|memROM~13_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000000000000110000000000000010000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~13_combout\,
	datae => \cpu|execution_operation|flipflop|ALT_INV_DOUT~q\,
	combout => \cpu|instruction_search|selector_mux~0_combout\);

\cpu|instruction_search|pc|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~5_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~15_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(1));

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

\cpu|instruction_search|pc|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~9_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~16_combout\,
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
	asdata => \~GND~combout\,
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

\cpu|instruction_search|rom|memROM~15\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~15_combout\ = (\cpu|instruction_search|rom|memROM~4_combout\ & \cpu|instruction_search|rom|memROM~14_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~14_combout\,
	combout => \cpu|instruction_search|rom|memROM~15_combout\);

\cpu|instruction_search|pc|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~1_sumout\,
	asdata => \cpu|instruction_search|rom|memROM~15_combout\,
	sload => \cpu|instruction_search|selector_mux~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(0));

\cpu|execution_operation|mux|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & ((\ram|ram~148_combout\))) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~15_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~15_combout\,
	datac => \ram|ALT_INV_ram~148_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[0]~0_combout\);

\cpu|execution_operation|mux|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[4]~4_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~168_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \ram|ALT_INV_ram~168_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[4]~4_combout\);

\cpu|execution_operation|mux|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[5]~5_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~173_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \ram|ALT_INV_ram~173_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[5]~5_combout\);

\cpu|execution_operation|mux|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[6]~6_combout\ = (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \ram|ram~178_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \ram|ALT_INV_ram~178_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[6]~6_combout\);

\cpu|execution_operation|ula|Equal8~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~4_combout\ = (\cpu|execution_operation|ula|Equal8~0_combout\ & (\cpu|execution_operation|ula|Equal8~1_combout\ & (\cpu|execution_operation|ula|Equal8~2_combout\ & \cpu|execution_operation|ula|Equal8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000001000000000000000100000000000000010000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_Equal8~1_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\,
	datad => \cpu|execution_operation|ula|ALT_INV_Equal8~3_combout\,
	combout => \cpu|execution_operation|ula|Equal8~4_combout\);
END structure;


