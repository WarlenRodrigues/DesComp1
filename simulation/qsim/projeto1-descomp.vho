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

-- DATE "10/17/2020 16:47:54"

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
	LEDR : OUT std_logic_vector(8 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	data_out : OUT std_logic_vector(7 DOWNTO 0)
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
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \pintest[0]~output_o\ : std_logic;
SIGNAL \pintest[1]~output_o\ : std_logic;
SIGNAL \pintest[2]~output_o\ : std_logic;
SIGNAL \pintest[3]~output_o\ : std_logic;
SIGNAL \pintest[4]~output_o\ : std_logic;
SIGNAL \pintest[5]~output_o\ : std_logic;
SIGNAL \pintest[6]~output_o\ : std_logic;
SIGNAL \pintest[7]~output_o\ : std_logic;
SIGNAL \pintest[8]~output_o\ : std_logic;
SIGNAL \pintestULAA[0]~output_o\ : std_logic;
SIGNAL \pintestULAA[1]~output_o\ : std_logic;
SIGNAL \pintestULAA[2]~output_o\ : std_logic;
SIGNAL \pintestULAA[3]~output_o\ : std_logic;
SIGNAL \pintestULAA[4]~output_o\ : std_logic;
SIGNAL \pintestULAA[5]~output_o\ : std_logic;
SIGNAL \pintestULAA[6]~output_o\ : std_logic;
SIGNAL \pintestULAA[7]~output_o\ : std_logic;
SIGNAL \pintestULAB[0]~output_o\ : std_logic;
SIGNAL \pintestULAB[1]~output_o\ : std_logic;
SIGNAL \pintestULAB[2]~output_o\ : std_logic;
SIGNAL \pintestULAB[3]~output_o\ : std_logic;
SIGNAL \pintestULAB[4]~output_o\ : std_logic;
SIGNAL \pintestULAB[5]~output_o\ : std_logic;
SIGNAL \pintestULAB[6]~output_o\ : std_logic;
SIGNAL \pintestULAB[7]~output_o\ : std_logic;
SIGNAL \pintestULAFLAG~output_o\ : std_logic;
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \clock_50~input_o\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~2\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~6\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~9_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~10\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~13_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~14\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~18\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~21_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~22\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~25_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~26\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~30\ : std_logic;
SIGNAL \cpu|instruction_search|adder|Add0~33_sumout\ : std_logic;
SIGNAL \decoder|Dado~1_combout\ : std_logic;
SIGNAL \decoder|Dado~0_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~17_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Equal0~0_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~2\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~33_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~34\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~29_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Equal0~1_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~30\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~97_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~98\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~93_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~94\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~89_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~90\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~85_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~86\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~81_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~82\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~77_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~78\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~73_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~74\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~69_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~70\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~65_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~66\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~61_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~62\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~57_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Equal0~2_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Equal0~3_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Equal0~4_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~18\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~13_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~14\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~9_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~10\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~5_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~6\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~49_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~50\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~45_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~46\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~41_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~42\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~53_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~54\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~21_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~22\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~25_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~26\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~37_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~38\ : std_logic;
SIGNAL \temporizador|baseTempo|Add0~1_sumout\ : std_logic;
SIGNAL \temporizador|baseTempo|tick~0_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|tick~q\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~0_combout\ : std_logic;
SIGNAL \decoder|Dado~2_combout\ : std_logic;
SIGNAL \temporizador|registraUmSegundo|DOUT~q\ : std_logic;
SIGNAL \temporizador|leituraUmSegundo[0]~8_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~5_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~6_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~7_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal7~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~3_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal7~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal7~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal7~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~34_cout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~1_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[0]~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~12_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|memROM~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~52_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~12_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~53_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~20_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~54_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~28_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~44_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~8_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~10_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~9_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|memROM~11_combout\ : std_logic;
SIGNAL \decoder|Equal4~0_combout\ : std_logic;
SIGNAL \register_display0|process_0~0_combout\ : std_logic;
SIGNAL \register_display0|process_0~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~2\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~5_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[1]~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~13_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~21_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~29_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~45_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~6\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~9_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[2]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~14_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~22_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~30_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~46_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~10\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~13_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[3]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~15_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~23_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~31_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~47_combout\ : std_logic;
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
SIGNAL \register_display2|process_0~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display2|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \register_display3|process_0~0_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display3|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \register_display4|process_0~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display4|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \register_display5|process_0~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~14\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~17_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[4]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~16_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~24_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~32_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~48_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal7~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~18\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~21_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[5]~6_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~17_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~25_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~33_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~49_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~22\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~25_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[6]~7_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~18_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~26_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~34_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~50_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~26\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Add0~29_sumout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|saida[7]~8_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~19_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~27_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~35_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|registrador~51_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|saida_MUX[5]~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|Equal8~1_combout\ : std_logic;
SIGNAL \register_display5|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display4|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display3|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \temporizador|baseTempo|contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \register_display2|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display0|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \cpu|instruction_search|pc|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \register_display1|DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display5|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display4|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display3|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display2|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display1|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \register_display0|ALT_INV_DOUT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \temporizador|baseTempo|ALT_INV_contador\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~5_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Dado~2_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Dado~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal7~4_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal7~3_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal7~2_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\ : std_logic;
SIGNAL \temporizador|baseTempo|ALT_INV_tick~q\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \temporizador|ALT_INV_leituraUmSegundo[0]~8_combout\ : std_logic;
SIGNAL \register_display0|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \cpu|execution_operation|mux|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \temporizador|registraUmSegundo|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \decoder|ALT_INV_Dado~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \decoder|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \cpu|instruction_search|pc|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~35_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~27_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~19_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~34_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~26_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~18_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~33_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~25_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~17_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~32_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~24_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~16_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~31_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~23_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~15_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~30_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~22_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~14_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~29_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~21_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~13_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~28_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~20_q\ : std_logic;
SIGNAL \cpu|execution_operation|registers|ALT_INV_registrador~12_q\ : std_logic;

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
ww_SW <= SW;
data_out <= ww_data_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\register_display5|ALT_INV_DOUT\(1) <= NOT \register_display5|DOUT\(1);
\register_display5|ALT_INV_DOUT\(2) <= NOT \register_display5|DOUT\(2);
\register_display5|ALT_INV_DOUT\(3) <= NOT \register_display5|DOUT\(3);
\register_display5|ALT_INV_DOUT\(0) <= NOT \register_display5|DOUT\(0);
\register_display4|ALT_INV_DOUT\(1) <= NOT \register_display4|DOUT\(1);
\register_display4|ALT_INV_DOUT\(2) <= NOT \register_display4|DOUT\(2);
\register_display4|ALT_INV_DOUT\(3) <= NOT \register_display4|DOUT\(3);
\register_display4|ALT_INV_DOUT\(0) <= NOT \register_display4|DOUT\(0);
\register_display3|ALT_INV_DOUT\(1) <= NOT \register_display3|DOUT\(1);
\register_display3|ALT_INV_DOUT\(2) <= NOT \register_display3|DOUT\(2);
\register_display3|ALT_INV_DOUT\(3) <= NOT \register_display3|DOUT\(3);
\register_display3|ALT_INV_DOUT\(0) <= NOT \register_display3|DOUT\(0);
\register_display2|ALT_INV_DOUT\(1) <= NOT \register_display2|DOUT\(1);
\register_display2|ALT_INV_DOUT\(2) <= NOT \register_display2|DOUT\(2);
\register_display2|ALT_INV_DOUT\(3) <= NOT \register_display2|DOUT\(3);
\register_display2|ALT_INV_DOUT\(0) <= NOT \register_display2|DOUT\(0);
\register_display1|ALT_INV_DOUT\(1) <= NOT \register_display1|DOUT\(1);
\register_display1|ALT_INV_DOUT\(2) <= NOT \register_display1|DOUT\(2);
\register_display1|ALT_INV_DOUT\(3) <= NOT \register_display1|DOUT\(3);
\register_display1|ALT_INV_DOUT\(0) <= NOT \register_display1|DOUT\(0);
\register_display0|ALT_INV_DOUT\(1) <= NOT \register_display0|DOUT\(1);
\register_display0|ALT_INV_DOUT\(2) <= NOT \register_display0|DOUT\(2);
\register_display0|ALT_INV_DOUT\(3) <= NOT \register_display0|DOUT\(3);
\register_display0|ALT_INV_DOUT\(0) <= NOT \register_display0|DOUT\(0);
\temporizador|baseTempo|ALT_INV_contador\(14) <= NOT \temporizador|baseTempo|contador\(14);
\temporizador|baseTempo|ALT_INV_contador\(15) <= NOT \temporizador|baseTempo|contador\(15);
\temporizador|baseTempo|ALT_INV_contador\(16) <= NOT \temporizador|baseTempo|contador\(16);
\temporizador|baseTempo|ALT_INV_contador\(17) <= NOT \temporizador|baseTempo|contador\(17);
\temporizador|baseTempo|ALT_INV_contador\(18) <= NOT \temporizador|baseTempo|contador\(18);
\temporizador|baseTempo|ALT_INV_contador\(19) <= NOT \temporizador|baseTempo|contador\(19);
\temporizador|baseTempo|ALT_INV_contador\(20) <= NOT \temporizador|baseTempo|contador\(20);
\temporizador|baseTempo|ALT_INV_contador\(21) <= NOT \temporizador|baseTempo|contador\(21);
\temporizador|baseTempo|ALT_INV_contador\(22) <= NOT \temporizador|baseTempo|contador\(22);
\temporizador|baseTempo|ALT_INV_contador\(23) <= NOT \temporizador|baseTempo|contador\(23);
\temporizador|baseTempo|ALT_INV_contador\(24) <= NOT \temporizador|baseTempo|contador\(24);
\temporizador|baseTempo|ALT_INV_contador\(7) <= NOT \temporizador|baseTempo|contador\(7);
\temporizador|baseTempo|ALT_INV_contador\(4) <= NOT \temporizador|baseTempo|contador\(4);
\temporizador|baseTempo|ALT_INV_contador\(5) <= NOT \temporizador|baseTempo|contador\(5);
\temporizador|baseTempo|ALT_INV_contador\(6) <= NOT \temporizador|baseTempo|contador\(6);
\temporizador|baseTempo|ALT_INV_contador\(10) <= NOT \temporizador|baseTempo|contador\(10);
\temporizador|baseTempo|ALT_INV_contador\(12) <= NOT \temporizador|baseTempo|contador\(12);
\temporizador|baseTempo|ALT_INV_contador\(13) <= NOT \temporizador|baseTempo|contador\(13);
\temporizador|baseTempo|ALT_INV_contador\(9) <= NOT \temporizador|baseTempo|contador\(9);
\cpu|instruction_search|rom|ALT_INV_memROM~12_combout\ <= NOT \cpu|instruction_search|rom|memROM~12_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~5_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[4]~5_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\ <= NOT \cpu|execution_operation|ula|Equal8~2_combout\;
\decoder|ALT_INV_Dado~2_combout\ <= NOT \decoder|Dado~2_combout\;
\decoder|ALT_INV_Dado~1_combout\ <= NOT \decoder|Dado~1_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal7~4_combout\ <= NOT \cpu|execution_operation|ula|Equal7~4_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal7~3_combout\ <= NOT \cpu|execution_operation|ula|Equal7~3_combout\;
\temporizador|baseTempo|ALT_INV_Equal0~3_combout\ <= NOT \temporizador|baseTempo|Equal0~3_combout\;
\temporizador|baseTempo|ALT_INV_Equal0~2_combout\ <= NOT \temporizador|baseTempo|Equal0~2_combout\;
\temporizador|baseTempo|ALT_INV_Equal0~1_combout\ <= NOT \temporizador|baseTempo|Equal0~1_combout\;
\temporizador|baseTempo|ALT_INV_Equal0~0_combout\ <= NOT \temporizador|baseTempo|Equal0~0_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal7~2_combout\ <= NOT \cpu|execution_operation|ula|Equal7~2_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\ <= NOT \cpu|execution_operation|ula|Equal7~1_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\ <= NOT \cpu|execution_operation|ula|Equal7~0_combout\;
\temporizador|baseTempo|ALT_INV_tick~q\ <= NOT \temporizador|baseTempo|tick~q\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~1_combout\;
\cpu|execution_operation|ula|ALT_INV_saida~0_combout\ <= NOT \cpu|execution_operation|ula|saida~0_combout\;
\temporizador|ALT_INV_leituraUmSegundo[0]~8_combout\ <= NOT \temporizador|leituraUmSegundo[0]~8_combout\;
\register_display0|ALT_INV_process_0~0_combout\ <= NOT \register_display0|process_0~0_combout\;
\cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\ <= NOT \cpu|execution_operation|ula|Equal8~0_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[3]~3_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[2]~2_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~11_combout\ <= NOT \cpu|instruction_search|rom|memROM~11_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[1]~1_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~10_combout\ <= NOT \cpu|instruction_search|rom|memROM~10_combout\;
\cpu|execution_operation|mux|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \cpu|execution_operation|mux|saida_MUX[0]~0_combout\;
\temporizador|registraUmSegundo|ALT_INV_DOUT~q\ <= NOT \temporizador|registraUmSegundo|DOUT~q\;
\decoder|ALT_INV_Dado~0_combout\ <= NOT \decoder|Dado~0_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~9_combout\ <= NOT \cpu|instruction_search|rom|memROM~9_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~8_combout\ <= NOT \cpu|instruction_search|rom|memROM~8_combout\;
\decoder|ALT_INV_Equal4~0_combout\ <= NOT \decoder|Equal4~0_combout\;
\cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\ <= NOT \cpu|instruction_search|control_unit|memROM~0_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~7_combout\ <= NOT \cpu|instruction_search|rom|memROM~7_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~6_combout\ <= NOT \cpu|instruction_search|rom|memROM~6_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~5_combout\ <= NOT \cpu|instruction_search|rom|memROM~5_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~4_combout\ <= NOT \cpu|instruction_search|rom|memROM~4_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~3_combout\ <= NOT \cpu|instruction_search|rom|memROM~3_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~51_combout\ <= NOT \cpu|execution_operation|registers|registrador~51_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~50_combout\ <= NOT \cpu|execution_operation|registers|registrador~50_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~49_combout\ <= NOT \cpu|execution_operation|registers|registrador~49_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~48_combout\ <= NOT \cpu|execution_operation|registers|registrador~48_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~47_combout\ <= NOT \cpu|execution_operation|registers|registrador~47_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~46_combout\ <= NOT \cpu|execution_operation|registers|registrador~46_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~45_combout\ <= NOT \cpu|execution_operation|registers|registrador~45_combout\;
\cpu|execution_operation|registers|ALT_INV_registrador~44_combout\ <= NOT \cpu|execution_operation|registers|registrador~44_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~2_combout\ <= NOT \cpu|instruction_search|rom|memROM~2_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~1_combout\ <= NOT \cpu|instruction_search|rom|memROM~1_combout\;
\cpu|instruction_search|rom|ALT_INV_memROM~0_combout\ <= NOT \cpu|instruction_search|rom|memROM~0_combout\;
\cpu|instruction_search|pc|ALT_INV_DOUT\(8) <= NOT \cpu|instruction_search|pc|DOUT\(8);
\cpu|instruction_search|pc|ALT_INV_DOUT\(7) <= NOT \cpu|instruction_search|pc|DOUT\(7);
\cpu|instruction_search|pc|ALT_INV_DOUT\(6) <= NOT \cpu|instruction_search|pc|DOUT\(6);
\cpu|instruction_search|pc|ALT_INV_DOUT\(5) <= NOT \cpu|instruction_search|pc|DOUT\(5);
\cpu|instruction_search|pc|ALT_INV_DOUT\(4) <= NOT \cpu|instruction_search|pc|DOUT\(4);
\cpu|instruction_search|pc|ALT_INV_DOUT\(3) <= NOT \cpu|instruction_search|pc|DOUT\(3);
\cpu|instruction_search|pc|ALT_INV_DOUT\(2) <= NOT \cpu|instruction_search|pc|DOUT\(2);
\cpu|instruction_search|pc|ALT_INV_DOUT\(1) <= NOT \cpu|instruction_search|pc|DOUT\(1);
\cpu|instruction_search|pc|ALT_INV_DOUT\(0) <= NOT \cpu|instruction_search|pc|DOUT\(0);
\temporizador|baseTempo|ALT_INV_contador\(8) <= NOT \temporizador|baseTempo|contador\(8);
\temporizador|baseTempo|ALT_INV_contador\(0) <= NOT \temporizador|baseTempo|contador\(0);
\temporizador|baseTempo|ALT_INV_contador\(1) <= NOT \temporizador|baseTempo|contador\(1);
\temporizador|baseTempo|ALT_INV_contador\(2) <= NOT \temporizador|baseTempo|contador\(2);
\temporizador|baseTempo|ALT_INV_contador\(3) <= NOT \temporizador|baseTempo|contador\(3);
\temporizador|baseTempo|ALT_INV_contador\(11) <= NOT \temporizador|baseTempo|contador\(11);
\cpu|execution_operation|registers|ALT_INV_registrador~35_q\ <= NOT \cpu|execution_operation|registers|registrador~35_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~27_q\ <= NOT \cpu|execution_operation|registers|registrador~27_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~19_q\ <= NOT \cpu|execution_operation|registers|registrador~19_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~34_q\ <= NOT \cpu|execution_operation|registers|registrador~34_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~26_q\ <= NOT \cpu|execution_operation|registers|registrador~26_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~18_q\ <= NOT \cpu|execution_operation|registers|registrador~18_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~33_q\ <= NOT \cpu|execution_operation|registers|registrador~33_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~25_q\ <= NOT \cpu|execution_operation|registers|registrador~25_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~17_q\ <= NOT \cpu|execution_operation|registers|registrador~17_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~32_q\ <= NOT \cpu|execution_operation|registers|registrador~32_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~24_q\ <= NOT \cpu|execution_operation|registers|registrador~24_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~16_q\ <= NOT \cpu|execution_operation|registers|registrador~16_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~31_q\ <= NOT \cpu|execution_operation|registers|registrador~31_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~23_q\ <= NOT \cpu|execution_operation|registers|registrador~23_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~15_q\ <= NOT \cpu|execution_operation|registers|registrador~15_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~30_q\ <= NOT \cpu|execution_operation|registers|registrador~30_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~22_q\ <= NOT \cpu|execution_operation|registers|registrador~22_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~14_q\ <= NOT \cpu|execution_operation|registers|registrador~14_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~29_q\ <= NOT \cpu|execution_operation|registers|registrador~29_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~21_q\ <= NOT \cpu|execution_operation|registers|registrador~21_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~13_q\ <= NOT \cpu|execution_operation|registers|registrador~13_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~28_q\ <= NOT \cpu|execution_operation|registers|registrador~28_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~20_q\ <= NOT \cpu|execution_operation|registers|registrador~20_q\;
\cpu|execution_operation|registers|ALT_INV_registrador~12_q\ <= NOT \cpu|execution_operation|registers|registrador~12_q\;

\data_out[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \temporizador|leituraUmSegundo[0]~8_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

\data_out[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

\data_out[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

\data_out[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

\data_out[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

\data_out[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

\data_out[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

\data_out[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder|ALT_INV_Dado~0_combout\,
	oe => \decoder|Dado~0_combout\,
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

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
	o => \HEX0[0]~output_o\);

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
	o => \HEX0[1]~output_o\);

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
	o => \HEX0[2]~output_o\);

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
	o => \HEX0[3]~output_o\);

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
	o => \HEX0[4]~output_o\);

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
	o => \HEX0[5]~output_o\);

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
	o => \HEX0[6]~output_o\);

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
	o => \HEX1[0]~output_o\);

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
	o => \HEX1[1]~output_o\);

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
	o => \HEX1[2]~output_o\);

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
	o => \HEX1[3]~output_o\);

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
	o => \HEX1[4]~output_o\);

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
	o => \HEX1[5]~output_o\);

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
	o => \HEX1[6]~output_o\);

\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display2|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

\HEX3[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

\HEX3[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

\HEX3[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

\HEX3[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

\HEX3[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

\HEX3[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display3|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

\HEX4[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

\HEX4[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

\HEX4[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

\HEX4[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

\HEX4[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

\HEX4[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display4|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \display5|rascSaida7seg[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

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
	o => \pintest[0]~output_o\);

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
	o => \pintest[1]~output_o\);

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
	o => \pintest[2]~output_o\);

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
	o => \pintest[3]~output_o\);

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
	o => \pintest[4]~output_o\);

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
	o => \pintest[5]~output_o\);

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
	o => \pintest[6]~output_o\);

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
	o => \pintest[7]~output_o\);

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
	o => \pintest[8]~output_o\);

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
	o => \pintestULAA[0]~output_o\);

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
	o => \pintestULAA[1]~output_o\);

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
	o => \pintestULAA[2]~output_o\);

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
	o => \pintestULAA[3]~output_o\);

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
	o => \pintestULAA[4]~output_o\);

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
	o => \pintestULAA[5]~output_o\);

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
	o => \pintestULAA[6]~output_o\);

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
	o => \pintestULAA[7]~output_o\);

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
	o => \pintestULAB[0]~output_o\);

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
	o => \pintestULAB[1]~output_o\);

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
	o => \pintestULAB[2]~output_o\);

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
	o => \pintestULAB[3]~output_o\);

\pintestULAB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[4]~5_combout\,
	devoe => ww_devoe,
	o => \pintestULAB[4]~output_o\);

\pintestULAB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[5]~4_combout\,
	devoe => ww_devoe,
	o => \pintestULAB[5]~output_o\);

\pintestULAB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[5]~4_combout\,
	devoe => ww_devoe,
	o => \pintestULAB[6]~output_o\);

\pintestULAB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|mux|saida_MUX[5]~4_combout\,
	devoe => ww_devoe,
	o => \pintestULAB[7]~output_o\);

\pintestULAFLAG~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \cpu|execution_operation|ula|Equal8~1_combout\,
	devoe => ww_devoe,
	o => \pintestULAFLAG~output_o\);

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
	o => \LEDR[0]~output_o\);

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
	o => \LEDR[1]~output_o\);

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
	o => \LEDR[2]~output_o\);

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
	o => \LEDR[3]~output_o\);

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
	o => \LEDR[4]~output_o\);

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
	o => \LEDR[5]~output_o\);

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
	o => \LEDR[6]~output_o\);

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
	o => \LEDR[7]~output_o\);

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
	o => \LEDR[8]~output_o\);

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

\cpu|instruction_search|pc|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~1_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(0));

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

\cpu|instruction_search|pc|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~5_sumout\,
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(3));

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

\cpu|instruction_search|pc|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~17_sumout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(4));

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

\cpu|instruction_search|pc|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|instruction_search|adder|Add0~21_sumout\,
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
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|instruction_search|pc|DOUT\(8));

\decoder|Dado~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Dado~1_combout\ = (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(0) & \cpu|instruction_search|pc|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \decoder|Dado~1_combout\);

\decoder|Dado~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Dado~0_combout\ = ( !\cpu|instruction_search|pc|DOUT\(8) & ( \decoder|Dado~1_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(5) & (!\cpu|instruction_search|pc|DOUT\(6) & 
-- !\cpu|instruction_search|pc|DOUT\(7)))) ) ) )

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
	dataf => \decoder|ALT_INV_Dado~1_combout\,
	combout => \decoder|Dado~0_combout\);

\temporizador|baseTempo|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~17_sumout\ = SUM(( \temporizador|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))
-- \temporizador|baseTempo|Add0~18\ = CARRY(( \temporizador|baseTempo|contador\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(0),
	cin => GND,
	sumout => \temporizador|baseTempo|Add0~17_sumout\,
	cout => \temporizador|baseTempo|Add0~18\);

\temporizador|baseTempo|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Equal0~0_combout\ = ( !\temporizador|baseTempo|contador\(8) & ( !\temporizador|baseTempo|contador\(9) & ( (!\temporizador|baseTempo|contador\(3) & (!\temporizador|baseTempo|contador\(2) & (!\temporizador|baseTempo|contador\(1) & 
-- !\temporizador|baseTempo|contador\(0)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_contador\(3),
	datab => \temporizador|baseTempo|ALT_INV_contador\(2),
	datac => \temporizador|baseTempo|ALT_INV_contador\(1),
	datad => \temporizador|baseTempo|ALT_INV_contador\(0),
	datae => \temporizador|baseTempo|ALT_INV_contador\(8),
	dataf => \temporizador|baseTempo|ALT_INV_contador\(9),
	combout => \temporizador|baseTempo|Equal0~0_combout\);

\temporizador|baseTempo|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~1_sumout\ = SUM(( \temporizador|baseTempo|contador\(11) ) + ( GND ) + ( \temporizador|baseTempo|Add0~38\ ))
-- \temporizador|baseTempo|Add0~2\ = CARRY(( \temporizador|baseTempo|contador\(11) ) + ( GND ) + ( \temporizador|baseTempo|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(11),
	cin => \temporizador|baseTempo|Add0~38\,
	sumout => \temporizador|baseTempo|Add0~1_sumout\,
	cout => \temporizador|baseTempo|Add0~2\);

\temporizador|baseTempo|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~33_sumout\ = SUM(( \temporizador|baseTempo|contador\(12) ) + ( GND ) + ( \temporizador|baseTempo|Add0~2\ ))
-- \temporizador|baseTempo|Add0~34\ = CARRY(( \temporizador|baseTempo|contador\(12) ) + ( GND ) + ( \temporizador|baseTempo|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(12),
	cin => \temporizador|baseTempo|Add0~2\,
	sumout => \temporizador|baseTempo|Add0~33_sumout\,
	cout => \temporizador|baseTempo|Add0~34\);

\temporizador|baseTempo|contador[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~33_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(12));

\temporizador|baseTempo|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~29_sumout\ = SUM(( \temporizador|baseTempo|contador\(13) ) + ( GND ) + ( \temporizador|baseTempo|Add0~34\ ))
-- \temporizador|baseTempo|Add0~30\ = CARRY(( \temporizador|baseTempo|contador\(13) ) + ( GND ) + ( \temporizador|baseTempo|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(13),
	cin => \temporizador|baseTempo|Add0~34\,
	sumout => \temporizador|baseTempo|Add0~29_sumout\,
	cout => \temporizador|baseTempo|Add0~30\);

\temporizador|baseTempo|contador[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~29_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(13));

\temporizador|baseTempo|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Equal0~1_combout\ = ( !\temporizador|baseTempo|contador\(5) & ( !\temporizador|baseTempo|contador\(4) & ( (\temporizador|baseTempo|contador\(13) & (\temporizador|baseTempo|contador\(12) & (!\temporizador|baseTempo|contador\(10) & 
-- \temporizador|baseTempo|contador\(6)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000010000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_contador\(13),
	datab => \temporizador|baseTempo|ALT_INV_contador\(12),
	datac => \temporizador|baseTempo|ALT_INV_contador\(10),
	datad => \temporizador|baseTempo|ALT_INV_contador\(6),
	datae => \temporizador|baseTempo|ALT_INV_contador\(5),
	dataf => \temporizador|baseTempo|ALT_INV_contador\(4),
	combout => \temporizador|baseTempo|Equal0~1_combout\);

\temporizador|baseTempo|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~97_sumout\ = SUM(( \temporizador|baseTempo|contador\(14) ) + ( GND ) + ( \temporizador|baseTempo|Add0~30\ ))
-- \temporizador|baseTempo|Add0~98\ = CARRY(( \temporizador|baseTempo|contador\(14) ) + ( GND ) + ( \temporizador|baseTempo|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(14),
	cin => \temporizador|baseTempo|Add0~30\,
	sumout => \temporizador|baseTempo|Add0~97_sumout\,
	cout => \temporizador|baseTempo|Add0~98\);

\temporizador|baseTempo|contador[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~97_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(14));

\temporizador|baseTempo|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~93_sumout\ = SUM(( \temporizador|baseTempo|contador\(15) ) + ( GND ) + ( \temporizador|baseTempo|Add0~98\ ))
-- \temporizador|baseTempo|Add0~94\ = CARRY(( \temporizador|baseTempo|contador\(15) ) + ( GND ) + ( \temporizador|baseTempo|Add0~98\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(15),
	cin => \temporizador|baseTempo|Add0~98\,
	sumout => \temporizador|baseTempo|Add0~93_sumout\,
	cout => \temporizador|baseTempo|Add0~94\);

\temporizador|baseTempo|contador[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~93_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(15));

\temporizador|baseTempo|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~89_sumout\ = SUM(( \temporizador|baseTempo|contador\(16) ) + ( GND ) + ( \temporizador|baseTempo|Add0~94\ ))
-- \temporizador|baseTempo|Add0~90\ = CARRY(( \temporizador|baseTempo|contador\(16) ) + ( GND ) + ( \temporizador|baseTempo|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(16),
	cin => \temporizador|baseTempo|Add0~94\,
	sumout => \temporizador|baseTempo|Add0~89_sumout\,
	cout => \temporizador|baseTempo|Add0~90\);

\temporizador|baseTempo|contador[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~89_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(16));

\temporizador|baseTempo|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~85_sumout\ = SUM(( \temporizador|baseTempo|contador\(17) ) + ( GND ) + ( \temporizador|baseTempo|Add0~90\ ))
-- \temporizador|baseTempo|Add0~86\ = CARRY(( \temporizador|baseTempo|contador\(17) ) + ( GND ) + ( \temporizador|baseTempo|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(17),
	cin => \temporizador|baseTempo|Add0~90\,
	sumout => \temporizador|baseTempo|Add0~85_sumout\,
	cout => \temporizador|baseTempo|Add0~86\);

\temporizador|baseTempo|contador[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~85_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(17));

\temporizador|baseTempo|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~81_sumout\ = SUM(( \temporizador|baseTempo|contador\(18) ) + ( GND ) + ( \temporizador|baseTempo|Add0~86\ ))
-- \temporizador|baseTempo|Add0~82\ = CARRY(( \temporizador|baseTempo|contador\(18) ) + ( GND ) + ( \temporizador|baseTempo|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(18),
	cin => \temporizador|baseTempo|Add0~86\,
	sumout => \temporizador|baseTempo|Add0~81_sumout\,
	cout => \temporizador|baseTempo|Add0~82\);

\temporizador|baseTempo|contador[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~81_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(18));

\temporizador|baseTempo|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~77_sumout\ = SUM(( \temporizador|baseTempo|contador\(19) ) + ( GND ) + ( \temporizador|baseTempo|Add0~82\ ))
-- \temporizador|baseTempo|Add0~78\ = CARRY(( \temporizador|baseTempo|contador\(19) ) + ( GND ) + ( \temporizador|baseTempo|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(19),
	cin => \temporizador|baseTempo|Add0~82\,
	sumout => \temporizador|baseTempo|Add0~77_sumout\,
	cout => \temporizador|baseTempo|Add0~78\);

\temporizador|baseTempo|contador[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~77_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(19));

\temporizador|baseTempo|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~73_sumout\ = SUM(( \temporizador|baseTempo|contador\(20) ) + ( GND ) + ( \temporizador|baseTempo|Add0~78\ ))
-- \temporizador|baseTempo|Add0~74\ = CARRY(( \temporizador|baseTempo|contador\(20) ) + ( GND ) + ( \temporizador|baseTempo|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(20),
	cin => \temporizador|baseTempo|Add0~78\,
	sumout => \temporizador|baseTempo|Add0~73_sumout\,
	cout => \temporizador|baseTempo|Add0~74\);

\temporizador|baseTempo|contador[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~73_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(20));

\temporizador|baseTempo|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~69_sumout\ = SUM(( \temporizador|baseTempo|contador\(21) ) + ( GND ) + ( \temporizador|baseTempo|Add0~74\ ))
-- \temporizador|baseTempo|Add0~70\ = CARRY(( \temporizador|baseTempo|contador\(21) ) + ( GND ) + ( \temporizador|baseTempo|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(21),
	cin => \temporizador|baseTempo|Add0~74\,
	sumout => \temporizador|baseTempo|Add0~69_sumout\,
	cout => \temporizador|baseTempo|Add0~70\);

\temporizador|baseTempo|contador[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~69_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(21));

\temporizador|baseTempo|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~65_sumout\ = SUM(( \temporizador|baseTempo|contador\(22) ) + ( GND ) + ( \temporizador|baseTempo|Add0~70\ ))
-- \temporizador|baseTempo|Add0~66\ = CARRY(( \temporizador|baseTempo|contador\(22) ) + ( GND ) + ( \temporizador|baseTempo|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(22),
	cin => \temporizador|baseTempo|Add0~70\,
	sumout => \temporizador|baseTempo|Add0~65_sumout\,
	cout => \temporizador|baseTempo|Add0~66\);

\temporizador|baseTempo|contador[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~65_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(22));

\temporizador|baseTempo|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~61_sumout\ = SUM(( \temporizador|baseTempo|contador\(23) ) + ( GND ) + ( \temporizador|baseTempo|Add0~66\ ))
-- \temporizador|baseTempo|Add0~62\ = CARRY(( \temporizador|baseTempo|contador\(23) ) + ( GND ) + ( \temporizador|baseTempo|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(23),
	cin => \temporizador|baseTempo|Add0~66\,
	sumout => \temporizador|baseTempo|Add0~61_sumout\,
	cout => \temporizador|baseTempo|Add0~62\);

\temporizador|baseTempo|contador[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~61_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(23));

\temporizador|baseTempo|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~57_sumout\ = SUM(( \temporizador|baseTempo|contador\(24) ) + ( GND ) + ( \temporizador|baseTempo|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(24),
	cin => \temporizador|baseTempo|Add0~62\,
	sumout => \temporizador|baseTempo|Add0~57_sumout\);

\temporizador|baseTempo|contador[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~57_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(24));

\temporizador|baseTempo|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Equal0~2_combout\ = ( \temporizador|baseTempo|contador\(21) & ( \temporizador|baseTempo|contador\(20) & ( (!\temporizador|baseTempo|contador\(7) & (\temporizador|baseTempo|contador\(24) & (!\temporizador|baseTempo|contador\(23) & 
-- \temporizador|baseTempo|contador\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_contador\(7),
	datab => \temporizador|baseTempo|ALT_INV_contador\(24),
	datac => \temporizador|baseTempo|ALT_INV_contador\(23),
	datad => \temporizador|baseTempo|ALT_INV_contador\(22),
	datae => \temporizador|baseTempo|ALT_INV_contador\(21),
	dataf => \temporizador|baseTempo|ALT_INV_contador\(20),
	combout => \temporizador|baseTempo|Equal0~2_combout\);

\temporizador|baseTempo|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Equal0~3_combout\ = ( !\temporizador|baseTempo|contador\(15) & ( \temporizador|baseTempo|contador\(14) & ( (\temporizador|baseTempo|contador\(19) & (\temporizador|baseTempo|contador\(18) & (!\temporizador|baseTempo|contador\(17) & 
-- \temporizador|baseTempo|contador\(16)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_contador\(19),
	datab => \temporizador|baseTempo|ALT_INV_contador\(18),
	datac => \temporizador|baseTempo|ALT_INV_contador\(17),
	datad => \temporizador|baseTempo|ALT_INV_contador\(16),
	datae => \temporizador|baseTempo|ALT_INV_contador\(15),
	dataf => \temporizador|baseTempo|ALT_INV_contador\(14),
	combout => \temporizador|baseTempo|Equal0~3_combout\);

\temporizador|baseTempo|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Equal0~4_combout\ = ( \temporizador|baseTempo|Equal0~3_combout\ & ( (\temporizador|baseTempo|contador\(11) & (\temporizador|baseTempo|Equal0~0_combout\ & (\temporizador|baseTempo|Equal0~1_combout\ & 
-- \temporizador|baseTempo|Equal0~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000100000000000000000000000000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_contador\(11),
	datab => \temporizador|baseTempo|ALT_INV_Equal0~0_combout\,
	datac => \temporizador|baseTempo|ALT_INV_Equal0~1_combout\,
	datad => \temporizador|baseTempo|ALT_INV_Equal0~2_combout\,
	datae => \temporizador|baseTempo|ALT_INV_Equal0~3_combout\,
	combout => \temporizador|baseTempo|Equal0~4_combout\);

\temporizador|baseTempo|contador[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~17_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(0));

\temporizador|baseTempo|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~13_sumout\ = SUM(( \temporizador|baseTempo|contador\(1) ) + ( GND ) + ( \temporizador|baseTempo|Add0~18\ ))
-- \temporizador|baseTempo|Add0~14\ = CARRY(( \temporizador|baseTempo|contador\(1) ) + ( GND ) + ( \temporizador|baseTempo|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(1),
	cin => \temporizador|baseTempo|Add0~18\,
	sumout => \temporizador|baseTempo|Add0~13_sumout\,
	cout => \temporizador|baseTempo|Add0~14\);

\temporizador|baseTempo|contador[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~13_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(1));

\temporizador|baseTempo|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~9_sumout\ = SUM(( \temporizador|baseTempo|contador\(2) ) + ( GND ) + ( \temporizador|baseTempo|Add0~14\ ))
-- \temporizador|baseTempo|Add0~10\ = CARRY(( \temporizador|baseTempo|contador\(2) ) + ( GND ) + ( \temporizador|baseTempo|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(2),
	cin => \temporizador|baseTempo|Add0~14\,
	sumout => \temporizador|baseTempo|Add0~9_sumout\,
	cout => \temporizador|baseTempo|Add0~10\);

\temporizador|baseTempo|contador[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~9_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(2));

\temporizador|baseTempo|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~5_sumout\ = SUM(( \temporizador|baseTempo|contador\(3) ) + ( GND ) + ( \temporizador|baseTempo|Add0~10\ ))
-- \temporizador|baseTempo|Add0~6\ = CARRY(( \temporizador|baseTempo|contador\(3) ) + ( GND ) + ( \temporizador|baseTempo|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(3),
	cin => \temporizador|baseTempo|Add0~10\,
	sumout => \temporizador|baseTempo|Add0~5_sumout\,
	cout => \temporizador|baseTempo|Add0~6\);

\temporizador|baseTempo|contador[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~5_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(3));

\temporizador|baseTempo|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~49_sumout\ = SUM(( \temporizador|baseTempo|contador\(4) ) + ( GND ) + ( \temporizador|baseTempo|Add0~6\ ))
-- \temporizador|baseTempo|Add0~50\ = CARRY(( \temporizador|baseTempo|contador\(4) ) + ( GND ) + ( \temporizador|baseTempo|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(4),
	cin => \temporizador|baseTempo|Add0~6\,
	sumout => \temporizador|baseTempo|Add0~49_sumout\,
	cout => \temporizador|baseTempo|Add0~50\);

\temporizador|baseTempo|contador[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~49_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(4));

\temporizador|baseTempo|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~45_sumout\ = SUM(( \temporizador|baseTempo|contador\(5) ) + ( GND ) + ( \temporizador|baseTempo|Add0~50\ ))
-- \temporizador|baseTempo|Add0~46\ = CARRY(( \temporizador|baseTempo|contador\(5) ) + ( GND ) + ( \temporizador|baseTempo|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(5),
	cin => \temporizador|baseTempo|Add0~50\,
	sumout => \temporizador|baseTempo|Add0~45_sumout\,
	cout => \temporizador|baseTempo|Add0~46\);

\temporizador|baseTempo|contador[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~45_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(5));

\temporizador|baseTempo|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~41_sumout\ = SUM(( \temporizador|baseTempo|contador\(6) ) + ( GND ) + ( \temporizador|baseTempo|Add0~46\ ))
-- \temporizador|baseTempo|Add0~42\ = CARRY(( \temporizador|baseTempo|contador\(6) ) + ( GND ) + ( \temporizador|baseTempo|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(6),
	cin => \temporizador|baseTempo|Add0~46\,
	sumout => \temporizador|baseTempo|Add0~41_sumout\,
	cout => \temporizador|baseTempo|Add0~42\);

\temporizador|baseTempo|contador[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~41_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(6));

\temporizador|baseTempo|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~53_sumout\ = SUM(( \temporizador|baseTempo|contador\(7) ) + ( GND ) + ( \temporizador|baseTempo|Add0~42\ ))
-- \temporizador|baseTempo|Add0~54\ = CARRY(( \temporizador|baseTempo|contador\(7) ) + ( GND ) + ( \temporizador|baseTempo|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(7),
	cin => \temporizador|baseTempo|Add0~42\,
	sumout => \temporizador|baseTempo|Add0~53_sumout\,
	cout => \temporizador|baseTempo|Add0~54\);

\temporizador|baseTempo|contador[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~53_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(7));

\temporizador|baseTempo|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~21_sumout\ = SUM(( \temporizador|baseTempo|contador\(8) ) + ( GND ) + ( \temporizador|baseTempo|Add0~54\ ))
-- \temporizador|baseTempo|Add0~22\ = CARRY(( \temporizador|baseTempo|contador\(8) ) + ( GND ) + ( \temporizador|baseTempo|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(8),
	cin => \temporizador|baseTempo|Add0~54\,
	sumout => \temporizador|baseTempo|Add0~21_sumout\,
	cout => \temporizador|baseTempo|Add0~22\);

\temporizador|baseTempo|contador[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~21_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(8));

\temporizador|baseTempo|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~25_sumout\ = SUM(( \temporizador|baseTempo|contador\(9) ) + ( GND ) + ( \temporizador|baseTempo|Add0~22\ ))
-- \temporizador|baseTempo|Add0~26\ = CARRY(( \temporizador|baseTempo|contador\(9) ) + ( GND ) + ( \temporizador|baseTempo|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(9),
	cin => \temporizador|baseTempo|Add0~22\,
	sumout => \temporizador|baseTempo|Add0~25_sumout\,
	cout => \temporizador|baseTempo|Add0~26\);

\temporizador|baseTempo|contador[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~25_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(9));

\temporizador|baseTempo|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|Add0~37_sumout\ = SUM(( \temporizador|baseTempo|contador\(10) ) + ( GND ) + ( \temporizador|baseTempo|Add0~26\ ))
-- \temporizador|baseTempo|Add0~38\ = CARRY(( \temporizador|baseTempo|contador\(10) ) + ( GND ) + ( \temporizador|baseTempo|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \temporizador|baseTempo|ALT_INV_contador\(10),
	cin => \temporizador|baseTempo|Add0~26\,
	sumout => \temporizador|baseTempo|Add0~37_sumout\,
	cout => \temporizador|baseTempo|Add0~38\);

\temporizador|baseTempo|contador[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~37_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(10));

\temporizador|baseTempo|contador[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|Add0~1_sumout\,
	sclr => \temporizador|baseTempo|Equal0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|contador\(11));

\temporizador|baseTempo|tick~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|baseTempo|tick~0_combout\ = ( \temporizador|baseTempo|Equal0~2_combout\ & ( \temporizador|baseTempo|Equal0~3_combout\ & ( !\temporizador|baseTempo|tick~q\ $ (((!\temporizador|baseTempo|contador\(11)) # 
-- ((!\temporizador|baseTempo|Equal0~0_combout\) # (!\temporizador|baseTempo|Equal0~1_combout\)))) ) ) ) # ( !\temporizador|baseTempo|Equal0~2_combout\ & ( \temporizador|baseTempo|Equal0~3_combout\ & ( \temporizador|baseTempo|tick~q\ ) ) ) # ( 
-- \temporizador|baseTempo|Equal0~2_combout\ & ( !\temporizador|baseTempo|Equal0~3_combout\ & ( \temporizador|baseTempo|tick~q\ ) ) ) # ( !\temporizador|baseTempo|Equal0~2_combout\ & ( !\temporizador|baseTempo|Equal0~3_combout\ & ( 
-- \temporizador|baseTempo|tick~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \temporizador|baseTempo|ALT_INV_tick~q\,
	datab => \temporizador|baseTempo|ALT_INV_contador\(11),
	datac => \temporizador|baseTempo|ALT_INV_Equal0~0_combout\,
	datad => \temporizador|baseTempo|ALT_INV_Equal0~1_combout\,
	datae => \temporizador|baseTempo|ALT_INV_Equal0~2_combout\,
	dataf => \temporizador|baseTempo|ALT_INV_Equal0~3_combout\,
	combout => \temporizador|baseTempo|tick~0_combout\);

\temporizador|baseTempo|tick\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \temporizador|baseTempo|tick~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|baseTempo|tick~q\);

\cpu|instruction_search|rom|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~0_combout\ = ( !\cpu|instruction_search|pc|DOUT\(8) & ( (!\cpu|instruction_search|pc|DOUT\(4) & (!\cpu|instruction_search|pc|DOUT\(5) & (!\cpu|instruction_search|pc|DOUT\(6) & !\cpu|instruction_search|pc|DOUT\(7)))) ) )

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
	combout => \cpu|instruction_search|rom|memROM~0_combout\);

\decoder|Dado~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Dado~2_combout\ = ( \cpu|instruction_search|rom|memROM~0_combout\ & ( (\cpu|instruction_search|pc|DOUT\(3) & (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000010000000000000000000000000000000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	combout => \decoder|Dado~2_combout\);

\temporizador|registraUmSegundo|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \temporizador|baseTempo|tick~q\,
	d => VCC,
	clrn => \decoder|ALT_INV_Dado~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \temporizador|registraUmSegundo|DOUT~q\);

\temporizador|leituraUmSegundo[0]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \temporizador|leituraUmSegundo[0]~8_combout\ = (!\decoder|Dado~0_combout\) # (\temporizador|registraUmSegundo|DOUT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000011111111111100001111111111110000111111111111000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \decoder|ALT_INV_Dado~0_combout\,
	datad => \temporizador|registraUmSegundo|ALT_INV_DOUT~q\,
	combout => \temporizador|leituraUmSegundo[0]~8_combout\);

\cpu|instruction_search|rom|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~5_combout\ = (!\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0))) # (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(0) $ 
-- (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101001001000101010100100100010101010010010001010101001001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~5_combout\);

\cpu|instruction_search|rom|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~6_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(1) $ (\cpu|instruction_search|pc|DOUT\(2))))) # (\cpu|instruction_search|pc|DOUT\(0) & 
-- ((!\cpu|instruction_search|pc|DOUT\(1) & ((!\cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010010010010010101001001001001010100100100100101010010010010",
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
-- \cpu|instruction_search|rom|memROM~7_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(1) & (!\cpu|instruction_search|pc|DOUT\(2) & \cpu|instruction_search|pc|DOUT\(3)))) # (\cpu|instruction_search|pc|DOUT\(0) & 
-- (\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(1) $ (!\cpu|instruction_search|pc|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100100000000010010010000000001001001000000000100100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~7_combout\);

\cpu|execution_operation|ula|Equal7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal7~0_combout\ = (!\cpu|instruction_search|rom|memROM~0_combout\) # ((!\cpu|instruction_search|rom|memROM~5_combout\ & (!\cpu|instruction_search|rom|memROM~6_combout\ & !\cpu|instruction_search|rom|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101010101010111010101010101011101010101010101110101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|Equal7~0_combout\);

\cpu|instruction_search|rom|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~3_combout\ = (!\cpu|instruction_search|pc|DOUT\(3) & (((\cpu|instruction_search|pc|DOUT\(1))))) # (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(0) & ((!\cpu|instruction_search|pc|DOUT\(2)) # 
-- (\cpu|instruction_search|pc|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001110100010001100111010001000110011101000100011001110100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~3_combout\);

\cpu|instruction_search|rom|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~4_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~3_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~3_combout\,
	combout => \cpu|instruction_search|rom|memROM~4_combout\);

\cpu|instruction_search|control_unit|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~0_combout\ = (!\cpu|instruction_search|rom|memROM~0_combout\) # ((!\cpu|instruction_search|rom|memROM~5_combout\ $ (\cpu|instruction_search|rom|memROM~6_combout\)) # 
-- (\cpu|instruction_search|rom|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101111111111111010111111111111101011111111111110101111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~0_combout\);

\cpu|execution_operation|mux|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[0]~0_combout\ = ( \temporizador|registraUmSegundo|DOUT~q\ & ( (\cpu|instruction_search|control_unit|memROM~0_combout\) # (\cpu|instruction_search|rom|memROM~4_combout\) ) ) # ( 
-- !\temporizador|registraUmSegundo|DOUT~q\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~4_combout\)) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\decoder|Dado~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101000100011101110111011101110111010001000111011101110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \decoder|ALT_INV_Dado~0_combout\,
	datae => \temporizador|registraUmSegundo|ALT_INV_DOUT~q\,
	combout => \cpu|execution_operation|mux|saida_MUX[0]~0_combout\);

\cpu|execution_operation|ula|Equal7~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal7~1_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~7_combout\ & ((!\cpu|instruction_search|rom|memROM~5_combout\) # (\cpu|instruction_search|rom|memROM~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000101000000000100010100000000010001010000000001000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|Equal7~1_combout\);

\cpu|execution_operation|ula|Equal7~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal7~3_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~5_combout\ & (!\cpu|instruction_search|rom|memROM~6_combout\ & \cpu|instruction_search|rom|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000000100000000000000010000000000000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|Equal7~3_combout\);

\cpu|execution_operation|ula|Equal7~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal7~4_combout\ = (!\cpu|instruction_search|rom|memROM~0_combout\) # ((!\cpu|instruction_search|rom|memROM~6_combout\) # (!\cpu|instruction_search|rom|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111011111110111111101111111011111110111111101111111011111110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|Equal7~4_combout\);

\cpu|execution_operation|ula|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~34_cout\ = CARRY(( (!\cpu|execution_operation|ula|Equal7~0_combout\ & (!\cpu|execution_operation|ula|Equal7~3_combout\ & \cpu|execution_operation|ula|Equal7~4_combout\)) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_Equal7~3_combout\,
	datad => \cpu|execution_operation|ula|ALT_INV_Equal7~4_combout\,
	cin => GND,
	cout => \cpu|execution_operation|ula|Add0~34_cout\);

\cpu|execution_operation|ula|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~1_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~44_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[0]~0_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~34_cout\ ))
-- \cpu|execution_operation|ula|Add0~2\ = CARRY(( \cpu|execution_operation|registers|registrador~44_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[0]~0_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~34_cout\,
	sumout => \cpu|execution_operation|ula|Add0~1_sumout\,
	cout => \cpu|execution_operation|ula|Add0~2\);

\cpu|execution_operation|ula|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida~0_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (\cpu|instruction_search|rom|memROM~5_combout\ & (!\cpu|instruction_search|rom|memROM~6_combout\ & !\cpu|instruction_search|rom|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000000000000100000000000000010000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|saida~0_combout\);

\cpu|execution_operation|ula|saida[0]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[0]~1_combout\ = ( \temporizador|leituraUmSegundo[0]~8_combout\ & ( \cpu|execution_operation|ula|saida~0_combout\ & ( (\cpu|instruction_search|control_unit|memROM~0_combout\) # 
-- (\cpu|instruction_search|rom|memROM~4_combout\) ) ) ) # ( !\temporizador|leituraUmSegundo[0]~8_combout\ & ( \cpu|execution_operation|ula|saida~0_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (\cpu|instruction_search|rom|memROM~4_combout\)) # (\cpu|instruction_search|control_unit|memROM~0_combout\ & ((!\decoder|Dado~0_combout\))) ) ) ) # ( \temporizador|leituraUmSegundo[0]~8_combout\ & ( !\cpu|execution_operation|ula|saida~0_combout\ & ( 
-- \cpu|execution_operation|registers|registrador~44_combout\ ) ) ) # ( !\temporizador|leituraUmSegundo[0]~8_combout\ & ( !\cpu|execution_operation|ula|saida~0_combout\ & ( \cpu|execution_operation|registers|registrador~44_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010100111111001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \decoder|ALT_INV_Dado~0_combout\,
	datae => \temporizador|ALT_INV_leituraUmSegundo[0]~8_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[0]~1_combout\);

\cpu|instruction_search|rom|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~1_combout\ = (\cpu|instruction_search|pc|DOUT\(1) & !\cpu|instruction_search|pc|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	combout => \cpu|instruction_search|rom|memROM~1_combout\);

\cpu|instruction_search|rom|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~2_combout\ = (!\cpu|instruction_search|pc|DOUT\(3) & (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\,
	combout => \cpu|instruction_search|rom|memROM~2_combout\);

\cpu|instruction_search|rom|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~12_combout\ = (\cpu|instruction_search|pc|DOUT\(2) & (!\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|rom|memROM~0_combout\ & !\cpu|instruction_search|pc|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~12_combout\);

\cpu|instruction_search|control_unit|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|control_unit|memROM~1_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & ((!\cpu|instruction_search|rom|memROM~6_combout\ & ((\cpu|instruction_search|rom|memROM~7_combout\) # 
-- (\cpu|instruction_search|rom|memROM~5_combout\))) # (\cpu|instruction_search|rom|memROM~6_combout\ & ((!\cpu|instruction_search|rom|memROM~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010101010000000101010101000000010101010100000001010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|instruction_search|control_unit|memROM~1_combout\);

\cpu|execution_operation|registers|registrador~52\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~52_combout\ = (!\cpu|instruction_search|rom|memROM~2_combout\ & (!\cpu|instruction_search|rom|memROM~12_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000001000000010000000100000001000000010000000100000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[0]~1_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~12_q\);

\cpu|execution_operation|registers|registrador~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~53_combout\ = (\cpu|instruction_search|rom|memROM~2_combout\ & (!\cpu|instruction_search|rom|memROM~12_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000100000001000000010000000100000001000000010000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[0]~1_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~53_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~20_q\);

\cpu|execution_operation|registers|registrador~54\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~54_combout\ = (!\cpu|instruction_search|rom|memROM~2_combout\ & (\cpu|instruction_search|rom|memROM~12_combout\ & \cpu|instruction_search|control_unit|memROM~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~1_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[0]~1_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~28_q\);

\cpu|execution_operation|registers|registrador~44\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~44_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~28_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~20_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~12_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~12_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~20_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~28_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~44_combout\);

\cpu|instruction_search|rom|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~8_combout\ = (!\cpu|instruction_search|pc|DOUT\(0) & ((!\cpu|instruction_search|pc|DOUT\(2) $ (!\cpu|instruction_search|pc|DOUT\(3))))) # (\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & 
-- (\cpu|instruction_search|pc|DOUT\(2) & !\cpu|instruction_search|pc|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111010100000000011101010000000001110101000000000111010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~8_combout\);

\cpu|instruction_search|rom|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~10_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~8_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~8_combout\,
	combout => \cpu|instruction_search|rom|memROM~10_combout\);

\cpu|instruction_search|rom|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~9_combout\ = (\cpu|instruction_search|pc|DOUT\(1) & (\cpu|instruction_search|pc|DOUT\(3) & ((!\cpu|instruction_search|pc|DOUT\(0)) # (!\cpu|instruction_search|pc|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000110010000000000011001000000000001100100000000000110010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	combout => \cpu|instruction_search|rom|memROM~9_combout\);

\cpu|instruction_search|rom|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|instruction_search|rom|memROM~11_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~9_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~9_combout\,
	combout => \cpu|instruction_search|rom|memROM~11_combout\);

\decoder|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \decoder|Equal4~0_combout\ = ( \cpu|instruction_search|rom|memROM~0_combout\ & ( (\cpu|instruction_search|pc|DOUT\(3) & ((!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(1) & !\cpu|instruction_search|pc|DOUT\(2))) # 
-- (\cpu|instruction_search|pc|DOUT\(0) & (!\cpu|instruction_search|pc|DOUT\(1) & \cpu|instruction_search|pc|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010010000000000000000000000000000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	combout => \decoder|Equal4~0_combout\);

\register_display0|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display0|process_0~0_combout\ = (\cpu|instruction_search|rom|memROM~0_combout\ & (!\cpu|instruction_search|rom|memROM~5_combout\ & (\cpu|instruction_search|rom|memROM~6_combout\ & !\cpu|instruction_search|rom|memROM~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010000000000000001000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \register_display0|process_0~0_combout\);

\register_display0|process_0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display0|process_0~1_combout\ = ( \register_display0|process_0~0_combout\ & ( (!\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
	combout => \register_display0|process_0~1_combout\);

\register_display0|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display0|process_0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display0|DOUT\(0));

\cpu|execution_operation|mux|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ = ( !\cpu|instruction_search|control_unit|memROM~0_combout\ & ( \decoder|Dado~0_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(3) & 
-- (\cpu|instruction_search|rom|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~1_combout\))) ) ) ) # ( \cpu|instruction_search|control_unit|memROM~0_combout\ & ( !\decoder|Dado~0_combout\ ) ) # ( 
-- !\cpu|instruction_search|control_unit|memROM~0_combout\ & ( !\decoder|Dado~0_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(3) & (\cpu|instruction_search|rom|memROM~0_combout\ & 
-- \cpu|instruction_search|rom|memROM~1_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010111111111111111100000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~1_combout\,
	datae => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	dataf => \decoder|ALT_INV_Dado~0_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[3]~3_combout\);

\cpu|execution_operation|mux|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[2]~2_combout\ = ( \decoder|Dado~0_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~11_combout\) ) ) # ( !\decoder|Dado~0_combout\ & ( 
-- (\cpu|instruction_search|rom|memROM~11_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001000100010001001110111011101110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datae => \decoder|ALT_INV_Dado~0_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[2]~2_combout\);

\cpu|execution_operation|mux|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[1]~1_combout\ = ( \decoder|Dado~0_combout\ & ( (!\cpu|instruction_search|control_unit|memROM~0_combout\ & \cpu|instruction_search|rom|memROM~10_combout\) ) ) # ( !\decoder|Dado~0_combout\ & ( 
-- (\cpu|instruction_search|rom|memROM~10_combout\) # (\cpu|instruction_search|control_unit|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111001000100010001001110111011101110010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datae => \decoder|ALT_INV_Dado~0_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[1]~1_combout\);

\cpu|execution_operation|ula|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~5_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))
-- \cpu|execution_operation|ula|Add0~6\ = CARRY(( \cpu|execution_operation|registers|registrador~45_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[1]~1_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~2\,
	sumout => \cpu|execution_operation|ula|Add0~5_sumout\,
	cout => \cpu|execution_operation|ula|Add0~6\);

\cpu|execution_operation|ula|saida[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[1]~2_combout\ = (!\cpu|execution_operation|ula|saida~0_combout\ & (\cpu|execution_operation|registers|registrador~45_combout\)) # (\cpu|execution_operation|ula|saida~0_combout\ & 
-- ((\cpu|execution_operation|mux|saida_MUX[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datab => \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[1]~2_combout\);

\cpu|execution_operation|registers|registrador~13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~5_sumout\,
	asdata => \cpu|execution_operation|ula|saida[1]~2_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[1]~2_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[1]~2_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~29_q\);

\cpu|execution_operation|registers|registrador~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~45_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~29_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~21_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~13_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~13_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~21_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~29_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~45_combout\);

\cpu|execution_operation|ula|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~9_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))
-- \cpu|execution_operation|ula|Add0~10\ = CARRY(( \cpu|execution_operation|registers|registrador~46_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[2]~2_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~6\,
	sumout => \cpu|execution_operation|ula|Add0~9_sumout\,
	cout => \cpu|execution_operation|ula|Add0~10\);

\cpu|execution_operation|ula|saida[2]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[2]~3_combout\ = (!\cpu|execution_operation|ula|saida~0_combout\ & (\cpu|execution_operation|registers|registrador~46_combout\)) # (\cpu|execution_operation|ula|saida~0_combout\ & 
-- ((\cpu|execution_operation|mux|saida_MUX[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[2]~3_combout\);

\cpu|execution_operation|registers|registrador~14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~9_sumout\,
	asdata => \cpu|execution_operation|ula|saida[2]~3_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[2]~3_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[2]~3_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~30_q\);

\cpu|execution_operation|registers|registrador~46\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~46_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~30_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~22_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~14_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~14_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~22_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~30_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~46_combout\);

\cpu|execution_operation|ula|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~13_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))
-- \cpu|execution_operation|ula|Add0~14\ = CARRY(( \cpu|execution_operation|registers|registrador~47_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~10\,
	sumout => \cpu|execution_operation|ula|Add0~13_sumout\,
	cout => \cpu|execution_operation|ula|Add0~14\);

\cpu|execution_operation|ula|saida[3]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[3]~4_combout\ = (!\cpu|execution_operation|ula|saida~0_combout\ & (\cpu|execution_operation|registers|registrador~47_combout\)) # (\cpu|execution_operation|ula|saida~0_combout\ & 
-- ((\cpu|execution_operation|mux|saida_MUX[3]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	datab => \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[3]~4_combout\);

\cpu|execution_operation|registers|registrador~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~13_sumout\,
	asdata => \cpu|execution_operation|ula|saida[3]~4_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[3]~4_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[3]~4_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~31_q\);

\cpu|execution_operation|registers|registrador~47\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~47_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~31_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~23_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~15_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~15_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~23_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~31_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~47_combout\);

\register_display0|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display0|process_0~1_combout\,
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
	ena => \register_display0|process_0~1_combout\,
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
	ena => \register_display0|process_0~1_combout\,
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
-- \register_display1|process_0~0_combout\ = ( \register_display0|process_0~0_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
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

\register_display2|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display2|process_0~0_combout\ = ( \register_display0|process_0~0_combout\ & ( (!\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
	combout => \register_display2|process_0~0_combout\);

\register_display2|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display2|DOUT\(0));

\register_display2|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display2|DOUT\(3));

\register_display2|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display2|DOUT\(2));

\register_display2|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display2|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display2|DOUT\(1));

\display2|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[0]~0_combout\ = (!\register_display2|DOUT\(3) & (!\register_display2|DOUT\(1) & (!\register_display2|DOUT\(0) $ (!\register_display2|DOUT\(2))))) # (\register_display2|DOUT\(3) & (\register_display2|DOUT\(0) & 
-- (!\register_display2|DOUT\(2) $ (!\register_display2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(3),
	datac => \register_display2|ALT_INV_DOUT\(2),
	datad => \register_display2|ALT_INV_DOUT\(1),
	combout => \display2|rascSaida7seg[0]~0_combout\);

\display2|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[1]~1_combout\ = (!\register_display2|DOUT\(3) & (\register_display2|DOUT\(2) & (!\register_display2|DOUT\(0) $ (!\register_display2|DOUT\(1))))) # (\register_display2|DOUT\(3) & ((!\register_display2|DOUT\(0) & 
-- (\register_display2|DOUT\(2))) # (\register_display2|DOUT\(0) & ((\register_display2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(3),
	datac => \register_display2|ALT_INV_DOUT\(2),
	datad => \register_display2|ALT_INV_DOUT\(1),
	combout => \display2|rascSaida7seg[1]~1_combout\);

\display2|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[2]~2_combout\ = (!\register_display2|DOUT\(3) & (!\register_display2|DOUT\(0) & (!\register_display2|DOUT\(2) & \register_display2|DOUT\(1)))) # (\register_display2|DOUT\(3) & (\register_display2|DOUT\(2) & 
-- ((!\register_display2|DOUT\(0)) # (\register_display2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(3),
	datac => \register_display2|ALT_INV_DOUT\(2),
	datad => \register_display2|ALT_INV_DOUT\(1),
	combout => \display2|rascSaida7seg[2]~2_combout\);

\display2|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[3]~3_combout\ = (!\register_display2|DOUT\(1) & (!\register_display2|DOUT\(3) & (!\register_display2|DOUT\(0) $ (!\register_display2|DOUT\(2))))) # (\register_display2|DOUT\(1) & ((!\register_display2|DOUT\(0) & 
-- (!\register_display2|DOUT\(2) & \register_display2|DOUT\(3))) # (\register_display2|DOUT\(0) & (\register_display2|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(1),
	datac => \register_display2|ALT_INV_DOUT\(2),
	datad => \register_display2|ALT_INV_DOUT\(3),
	combout => \display2|rascSaida7seg[3]~3_combout\);

\display2|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[4]~4_combout\ = (!\register_display2|DOUT\(1) & ((!\register_display2|DOUT\(2) & ((\register_display2|DOUT\(0)))) # (\register_display2|DOUT\(2) & (!\register_display2|DOUT\(3))))) # (\register_display2|DOUT\(1) & 
-- (!\register_display2|DOUT\(3) & ((\register_display2|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(3),
	datab => \register_display2|ALT_INV_DOUT\(2),
	datac => \register_display2|ALT_INV_DOUT\(1),
	datad => \register_display2|ALT_INV_DOUT\(0),
	combout => \display2|rascSaida7seg[4]~4_combout\);

\display2|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[5]~5_combout\ = (!\register_display2|DOUT\(0) & (!\register_display2|DOUT\(2) & (\register_display2|DOUT\(1) & !\register_display2|DOUT\(3)))) # (\register_display2|DOUT\(0) & (!\register_display2|DOUT\(3) $ 
-- (((\register_display2|DOUT\(2) & !\register_display2|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(2),
	datac => \register_display2|ALT_INV_DOUT\(1),
	datad => \register_display2|ALT_INV_DOUT\(3),
	combout => \display2|rascSaida7seg[5]~5_combout\);

\display2|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display2|rascSaida7seg[6]~6_combout\ = (!\register_display2|DOUT\(0) & (!\register_display2|DOUT\(1) & (!\register_display2|DOUT\(3) $ (\register_display2|DOUT\(2))))) # (\register_display2|DOUT\(0) & (!\register_display2|DOUT\(3) & 
-- (!\register_display2|DOUT\(2) $ (\register_display2|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display2|ALT_INV_DOUT\(0),
	datab => \register_display2|ALT_INV_DOUT\(3),
	datac => \register_display2|ALT_INV_DOUT\(2),
	datad => \register_display2|ALT_INV_DOUT\(1),
	combout => \display2|rascSaida7seg[6]~6_combout\);

\register_display3|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display3|process_0~0_combout\ = ( \register_display0|process_0~0_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (\cpu|instruction_search|rom|memROM~10_combout\ & (!\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
	combout => \register_display3|process_0~0_combout\);

\register_display3|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display3|DOUT\(0));

\register_display3|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display3|DOUT\(3));

\register_display3|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display3|DOUT\(2));

\register_display3|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display3|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display3|DOUT\(1));

\display3|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[0]~0_combout\ = (!\register_display3|DOUT\(3) & (!\register_display3|DOUT\(1) & (!\register_display3|DOUT\(0) $ (!\register_display3|DOUT\(2))))) # (\register_display3|DOUT\(3) & (\register_display3|DOUT\(0) & 
-- (!\register_display3|DOUT\(2) $ (!\register_display3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(3),
	datac => \register_display3|ALT_INV_DOUT\(2),
	datad => \register_display3|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[0]~0_combout\);

\display3|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[1]~1_combout\ = (!\register_display3|DOUT\(3) & (\register_display3|DOUT\(2) & (!\register_display3|DOUT\(0) $ (!\register_display3|DOUT\(1))))) # (\register_display3|DOUT\(3) & ((!\register_display3|DOUT\(0) & 
-- (\register_display3|DOUT\(2))) # (\register_display3|DOUT\(0) & ((\register_display3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(3),
	datac => \register_display3|ALT_INV_DOUT\(2),
	datad => \register_display3|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[1]~1_combout\);

\display3|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[2]~2_combout\ = (!\register_display3|DOUT\(3) & (!\register_display3|DOUT\(0) & (!\register_display3|DOUT\(2) & \register_display3|DOUT\(1)))) # (\register_display3|DOUT\(3) & (\register_display3|DOUT\(2) & 
-- ((!\register_display3|DOUT\(0)) # (\register_display3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(3),
	datac => \register_display3|ALT_INV_DOUT\(2),
	datad => \register_display3|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[2]~2_combout\);

\display3|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[3]~3_combout\ = (!\register_display3|DOUT\(1) & (!\register_display3|DOUT\(3) & (!\register_display3|DOUT\(0) $ (!\register_display3|DOUT\(2))))) # (\register_display3|DOUT\(1) & ((!\register_display3|DOUT\(0) & 
-- (!\register_display3|DOUT\(2) & \register_display3|DOUT\(3))) # (\register_display3|DOUT\(0) & (\register_display3|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(1),
	datac => \register_display3|ALT_INV_DOUT\(2),
	datad => \register_display3|ALT_INV_DOUT\(3),
	combout => \display3|rascSaida7seg[3]~3_combout\);

\display3|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[4]~4_combout\ = (!\register_display3|DOUT\(1) & ((!\register_display3|DOUT\(2) & ((\register_display3|DOUT\(0)))) # (\register_display3|DOUT\(2) & (!\register_display3|DOUT\(3))))) # (\register_display3|DOUT\(1) & 
-- (!\register_display3|DOUT\(3) & ((\register_display3|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(3),
	datab => \register_display3|ALT_INV_DOUT\(2),
	datac => \register_display3|ALT_INV_DOUT\(1),
	datad => \register_display3|ALT_INV_DOUT\(0),
	combout => \display3|rascSaida7seg[4]~4_combout\);

\display3|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[5]~5_combout\ = (!\register_display3|DOUT\(0) & (!\register_display3|DOUT\(2) & (\register_display3|DOUT\(1) & !\register_display3|DOUT\(3)))) # (\register_display3|DOUT\(0) & (!\register_display3|DOUT\(3) $ 
-- (((\register_display3|DOUT\(2) & !\register_display3|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(2),
	datac => \register_display3|ALT_INV_DOUT\(1),
	datad => \register_display3|ALT_INV_DOUT\(3),
	combout => \display3|rascSaida7seg[5]~5_combout\);

\display3|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display3|rascSaida7seg[6]~6_combout\ = (!\register_display3|DOUT\(0) & (!\register_display3|DOUT\(1) & (!\register_display3|DOUT\(3) $ (\register_display3|DOUT\(2))))) # (\register_display3|DOUT\(0) & (!\register_display3|DOUT\(3) & 
-- (!\register_display3|DOUT\(2) $ (\register_display3|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display3|ALT_INV_DOUT\(0),
	datab => \register_display3|ALT_INV_DOUT\(3),
	datac => \register_display3|ALT_INV_DOUT\(2),
	datad => \register_display3|ALT_INV_DOUT\(1),
	combout => \display3|rascSaida7seg[6]~6_combout\);

\register_display4|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display4|process_0~0_combout\ = ( \register_display0|process_0~0_combout\ & ( (!\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~10_combout\ & (\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000010000000000000000000000000000000100000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
	combout => \register_display4|process_0~0_combout\);

\register_display4|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display4|DOUT\(0));

\register_display4|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display4|DOUT\(3));

\register_display4|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display4|DOUT\(2));

\register_display4|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display4|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display4|DOUT\(1));

\display4|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[0]~0_combout\ = (!\register_display4|DOUT\(3) & (!\register_display4|DOUT\(1) & (!\register_display4|DOUT\(0) $ (!\register_display4|DOUT\(2))))) # (\register_display4|DOUT\(3) & (\register_display4|DOUT\(0) & 
-- (!\register_display4|DOUT\(2) $ (!\register_display4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(3),
	datac => \register_display4|ALT_INV_DOUT\(2),
	datad => \register_display4|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[0]~0_combout\);

\display4|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[1]~1_combout\ = (!\register_display4|DOUT\(3) & (\register_display4|DOUT\(2) & (!\register_display4|DOUT\(0) $ (!\register_display4|DOUT\(1))))) # (\register_display4|DOUT\(3) & ((!\register_display4|DOUT\(0) & 
-- (\register_display4|DOUT\(2))) # (\register_display4|DOUT\(0) & ((\register_display4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(3),
	datac => \register_display4|ALT_INV_DOUT\(2),
	datad => \register_display4|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[1]~1_combout\);

\display4|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[2]~2_combout\ = (!\register_display4|DOUT\(3) & (!\register_display4|DOUT\(0) & (!\register_display4|DOUT\(2) & \register_display4|DOUT\(1)))) # (\register_display4|DOUT\(3) & (\register_display4|DOUT\(2) & 
-- ((!\register_display4|DOUT\(0)) # (\register_display4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(3),
	datac => \register_display4|ALT_INV_DOUT\(2),
	datad => \register_display4|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[2]~2_combout\);

\display4|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[3]~3_combout\ = (!\register_display4|DOUT\(1) & (!\register_display4|DOUT\(3) & (!\register_display4|DOUT\(0) $ (!\register_display4|DOUT\(2))))) # (\register_display4|DOUT\(1) & ((!\register_display4|DOUT\(0) & 
-- (!\register_display4|DOUT\(2) & \register_display4|DOUT\(3))) # (\register_display4|DOUT\(0) & (\register_display4|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(1),
	datac => \register_display4|ALT_INV_DOUT\(2),
	datad => \register_display4|ALT_INV_DOUT\(3),
	combout => \display4|rascSaida7seg[3]~3_combout\);

\display4|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[4]~4_combout\ = (!\register_display4|DOUT\(1) & ((!\register_display4|DOUT\(2) & ((\register_display4|DOUT\(0)))) # (\register_display4|DOUT\(2) & (!\register_display4|DOUT\(3))))) # (\register_display4|DOUT\(1) & 
-- (!\register_display4|DOUT\(3) & ((\register_display4|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(3),
	datab => \register_display4|ALT_INV_DOUT\(2),
	datac => \register_display4|ALT_INV_DOUT\(1),
	datad => \register_display4|ALT_INV_DOUT\(0),
	combout => \display4|rascSaida7seg[4]~4_combout\);

\display4|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[5]~5_combout\ = (!\register_display4|DOUT\(0) & (!\register_display4|DOUT\(2) & (\register_display4|DOUT\(1) & !\register_display4|DOUT\(3)))) # (\register_display4|DOUT\(0) & (!\register_display4|DOUT\(3) $ 
-- (((\register_display4|DOUT\(2) & !\register_display4|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(2),
	datac => \register_display4|ALT_INV_DOUT\(1),
	datad => \register_display4|ALT_INV_DOUT\(3),
	combout => \display4|rascSaida7seg[5]~5_combout\);

\display4|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display4|rascSaida7seg[6]~6_combout\ = (!\register_display4|DOUT\(0) & (!\register_display4|DOUT\(1) & (!\register_display4|DOUT\(3) $ (\register_display4|DOUT\(2))))) # (\register_display4|DOUT\(0) & (!\register_display4|DOUT\(3) & 
-- (!\register_display4|DOUT\(2) $ (\register_display4|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display4|ALT_INV_DOUT\(0),
	datab => \register_display4|ALT_INV_DOUT\(3),
	datac => \register_display4|ALT_INV_DOUT\(2),
	datad => \register_display4|ALT_INV_DOUT\(1),
	combout => \display4|rascSaida7seg[6]~6_combout\);

\register_display5|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \register_display5|process_0~0_combout\ = ( \register_display0|process_0~0_combout\ & ( (\cpu|instruction_search|rom|memROM~4_combout\ & (!\cpu|instruction_search|rom|memROM~10_combout\ & (\cpu|instruction_search|rom|memROM~11_combout\ & 
-- !\decoder|Equal4~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000001000000000000000000000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|rom|ALT_INV_memROM~4_combout\,
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~10_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~11_combout\,
	datad => \decoder|ALT_INV_Equal4~0_combout\,
	datae => \register_display0|ALT_INV_process_0~0_combout\,
	combout => \register_display5|process_0~0_combout\);

\register_display5|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~44_combout\,
	ena => \register_display5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display5|DOUT\(0));

\register_display5|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~47_combout\,
	ena => \register_display5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display5|DOUT\(3));

\register_display5|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~46_combout\,
	ena => \register_display5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display5|DOUT\(2));

\register_display5|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|registers|registrador~45_combout\,
	ena => \register_display5|process_0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \register_display5|DOUT\(1));

\display5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = (!\register_display5|DOUT\(3) & (!\register_display5|DOUT\(1) & (!\register_display5|DOUT\(0) $ (!\register_display5|DOUT\(2))))) # (\register_display5|DOUT\(3) & (\register_display5|DOUT\(0) & 
-- (!\register_display5|DOUT\(2) $ (!\register_display5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100010000010010010001000001001001000100000100100100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(3),
	datac => \register_display5|ALT_INV_DOUT\(2),
	datad => \register_display5|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[0]~0_combout\);

\display5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = (!\register_display5|DOUT\(3) & (\register_display5|DOUT\(2) & (!\register_display5|DOUT\(0) $ (!\register_display5|DOUT\(1))))) # (\register_display5|DOUT\(3) & ((!\register_display5|DOUT\(0) & 
-- (\register_display5|DOUT\(2))) # (\register_display5|DOUT\(0) & ((\register_display5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000011000011011000001100001101100000110000110110000011000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(3),
	datac => \register_display5|ALT_INV_DOUT\(2),
	datad => \register_display5|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[1]~1_combout\);

\display5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = (!\register_display5|DOUT\(3) & (!\register_display5|DOUT\(0) & (!\register_display5|DOUT\(2) & \register_display5|DOUT\(1)))) # (\register_display5|DOUT\(3) & (\register_display5|DOUT\(2) & 
-- ((!\register_display5|DOUT\(0)) # (\register_display5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001010000011000000101000001100000010100000110000001010000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(3),
	datac => \register_display5|ALT_INV_DOUT\(2),
	datad => \register_display5|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[2]~2_combout\);

\display5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = (!\register_display5|DOUT\(1) & (!\register_display5|DOUT\(3) & (!\register_display5|DOUT\(0) $ (!\register_display5|DOUT\(2))))) # (\register_display5|DOUT\(1) & ((!\register_display5|DOUT\(0) & 
-- (!\register_display5|DOUT\(2) & \register_display5|DOUT\(3))) # (\register_display5|DOUT\(0) & (\register_display5|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100100001010010010010000101001001001000010100100100100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(1),
	datac => \register_display5|ALT_INV_DOUT\(2),
	datad => \register_display5|ALT_INV_DOUT\(3),
	combout => \display5|rascSaida7seg[3]~3_combout\);

\display5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = (!\register_display5|DOUT\(1) & ((!\register_display5|DOUT\(2) & ((\register_display5|DOUT\(0)))) # (\register_display5|DOUT\(2) & (!\register_display5|DOUT\(3))))) # (\register_display5|DOUT\(1) & 
-- (!\register_display5|DOUT\(3) & ((\register_display5|DOUT\(0)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000011101010001000001110101000100000111010100010000011101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(3),
	datab => \register_display5|ALT_INV_DOUT\(2),
	datac => \register_display5|ALT_INV_DOUT\(1),
	datad => \register_display5|ALT_INV_DOUT\(0),
	combout => \display5|rascSaida7seg[4]~4_combout\);

\display5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = (!\register_display5|DOUT\(0) & (!\register_display5|DOUT\(2) & (\register_display5|DOUT\(1) & !\register_display5|DOUT\(3)))) # (\register_display5|DOUT\(0) & (!\register_display5|DOUT\(3) $ 
-- (((\register_display5|DOUT\(2) & !\register_display5|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100010000010011010001000001001101000100000100110100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(2),
	datac => \register_display5|ALT_INV_DOUT\(1),
	datad => \register_display5|ALT_INV_DOUT\(3),
	combout => \display5|rascSaida7seg[5]~5_combout\);

\display5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = (!\register_display5|DOUT\(0) & (!\register_display5|DOUT\(1) & (!\register_display5|DOUT\(3) $ (\register_display5|DOUT\(2))))) # (\register_display5|DOUT\(0) & (!\register_display5|DOUT\(3) & 
-- (!\register_display5|DOUT\(2) $ (\register_display5|DOUT\(1)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100001000000100110000100000010011000010000001001100001000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \register_display5|ALT_INV_DOUT\(0),
	datab => \register_display5|ALT_INV_DOUT\(3),
	datac => \register_display5|ALT_INV_DOUT\(2),
	datad => \register_display5|ALT_INV_DOUT\(1),
	combout => \display5|rascSaida7seg[6]~6_combout\);

\cpu|execution_operation|mux|saida_MUX[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[4]~5_combout\ = ( !\decoder|Dado~0_combout\ & ( \cpu|instruction_search|rom|memROM~0_combout\ & ( (!\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(3) & (!\cpu|instruction_search|pc|DOUT\(2) & 
-- \cpu|instruction_search|pc|DOUT\(1)))) # (\cpu|instruction_search|pc|DOUT\(0) & (\cpu|instruction_search|pc|DOUT\(2) & ((\cpu|instruction_search|pc|DOUT\(1)) # (\cpu|instruction_search|pc|DOUT\(3))))) ) ) ) # ( !\decoder|Dado~0_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000001010000110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|pc|ALT_INV_DOUT\(3),
	datab => \cpu|instruction_search|pc|ALT_INV_DOUT\(0),
	datac => \cpu|instruction_search|pc|ALT_INV_DOUT\(2),
	datad => \cpu|instruction_search|pc|ALT_INV_DOUT\(1),
	datae => \decoder|ALT_INV_Dado~0_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[4]~5_combout\);

\cpu|execution_operation|ula|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~17_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[4]~5_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~14\ ))
-- \cpu|execution_operation|ula|Add0~18\ = CARRY(( \cpu|execution_operation|registers|registrador~48_combout\ ) + ( !\cpu|execution_operation|mux|saida_MUX[4]~5_combout\ $ (((\cpu|execution_operation|ula|Equal7~1_combout\) # 
-- (\cpu|execution_operation|ula|Equal7~0_combout\))) ) + ( \cpu|execution_operation|ula|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001111001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~5_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal7~1_combout\,
	cin => \cpu|execution_operation|ula|Add0~14\,
	sumout => \cpu|execution_operation|ula|Add0~17_sumout\,
	cout => \cpu|execution_operation|ula|Add0~18\);

\cpu|execution_operation|ula|saida[4]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[4]~5_combout\ = (!\cpu|execution_operation|ula|saida~0_combout\ & (\cpu|execution_operation|registers|registrador~48_combout\)) # (\cpu|execution_operation|ula|saida~0_combout\ & 
-- ((\cpu|execution_operation|mux|saida_MUX[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101001101010011010100110101001101010011010100110101001101010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datab => \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~5_combout\,
	datac => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[4]~5_combout\);

\cpu|execution_operation|registers|registrador~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~17_sumout\,
	asdata => \cpu|execution_operation|ula|saida[4]~5_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[4]~5_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[4]~5_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~32_q\);

\cpu|execution_operation|registers|registrador~48\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~48_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~32_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~24_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~16_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~24_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~32_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~48_combout\);

\cpu|execution_operation|ula|Equal7~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal7~2_combout\ = ( \cpu|instruction_search|rom|memROM~7_combout\ & ( (\cpu|instruction_search|rom|memROM~0_combout\ & ((!\cpu|instruction_search|rom|memROM~5_combout\) # (\cpu|instruction_search|rom|memROM~6_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001100000011001100000000000000000011000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \cpu|instruction_search|rom|ALT_INV_memROM~0_combout\,
	datac => \cpu|instruction_search|rom|ALT_INV_memROM~5_combout\,
	datad => \cpu|instruction_search|rom|ALT_INV_memROM~6_combout\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~7_combout\,
	combout => \cpu|execution_operation|ula|Equal7~2_combout\);

\cpu|execution_operation|ula|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~21_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|execution_operation|ula|Equal7~0_combout\ & (!\cpu|execution_operation|ula|Equal7~2_combout\ $ (((!\decoder|Dado~0_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|execution_operation|ula|Equal7~0_combout\ & (((!\decoder|Dado~0_combout\ & \cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( \cpu|execution_operation|ula|Add0~18\ ))
-- \cpu|execution_operation|ula|Add0~22\ = CARRY(( \cpu|execution_operation|registers|registrador~49_combout\ ) + ( (!\cpu|execution_operation|ula|Equal7~0_combout\ & (!\cpu|execution_operation|ula|Equal7~2_combout\ $ (((!\decoder|Dado~0_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|execution_operation|ula|Equal7~0_combout\ & (((!\decoder|Dado~0_combout\ & \cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( \cpu|execution_operation|ula|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~2_combout\,
	datac => \decoder|ALT_INV_Dado~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	dataf => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	cin => \cpu|execution_operation|ula|Add0~18\,
	sumout => \cpu|execution_operation|ula|Add0~21_sumout\,
	cout => \cpu|execution_operation|ula|Add0~22\);

\cpu|execution_operation|ula|saida[5]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[5]~6_combout\ = (\cpu|execution_operation|registers|registrador~49_combout\ & !\cpu|execution_operation|ula|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[5]~6_combout\);

\cpu|execution_operation|registers|registrador~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~21_sumout\,
	asdata => \cpu|execution_operation|ula|saida[5]~6_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[5]~6_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[5]~6_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~33_q\);

\cpu|execution_operation|registers|registrador~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~49_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~33_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~25_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~17_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~25_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~33_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~49_combout\);

\cpu|execution_operation|ula|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~25_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|execution_operation|ula|Equal7~0_combout\ & (!\cpu|execution_operation|ula|Equal7~2_combout\ $ (((!\decoder|Dado~0_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|execution_operation|ula|Equal7~0_combout\ & (((!\decoder|Dado~0_combout\ & \cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( \cpu|execution_operation|ula|Add0~22\ ))
-- \cpu|execution_operation|ula|Add0~26\ = CARRY(( \cpu|execution_operation|registers|registrador~50_combout\ ) + ( (!\cpu|execution_operation|ula|Equal7~0_combout\ & (!\cpu|execution_operation|ula|Equal7~2_combout\ $ (((!\decoder|Dado~0_combout\ & 
-- \cpu|instruction_search|control_unit|memROM~0_combout\))))) # (\cpu|execution_operation|ula|Equal7~0_combout\ & (((!\decoder|Dado~0_combout\ & \cpu|instruction_search|control_unit|memROM~0_combout\)))) ) + ( \cpu|execution_operation|ula|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011101111000011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~2_combout\,
	datac => \decoder|ALT_INV_Dado~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	dataf => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	cin => \cpu|execution_operation|ula|Add0~22\,
	sumout => \cpu|execution_operation|ula|Add0~25_sumout\,
	cout => \cpu|execution_operation|ula|Add0~26\);

\cpu|execution_operation|ula|saida[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[6]~7_combout\ = (\cpu|execution_operation|registers|registrador~50_combout\ & !\cpu|execution_operation|ula|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[6]~7_combout\);

\cpu|execution_operation|registers|registrador~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~25_sumout\,
	asdata => \cpu|execution_operation|ula|saida[6]~7_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[6]~7_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[6]~7_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~34_q\);

\cpu|execution_operation|registers|registrador~50\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~50_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~34_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~26_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~18_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~26_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~34_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~50_combout\);

\cpu|execution_operation|ula|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Add0~29_sumout\ = SUM(( \cpu|execution_operation|registers|registrador~51_combout\ ) + ( (!\cpu|execution_operation|ula|Equal7~2_combout\ & (!\cpu|execution_operation|ula|Equal7~0_combout\ $ 
-- (((\cpu|instruction_search|control_unit|memROM~0_combout\ & !\decoder|Dado~0_combout\))))) # (\cpu|execution_operation|ula|Equal7~2_combout\ & (((\cpu|instruction_search|control_unit|memROM~0_combout\ & !\decoder|Dado~0_combout\)))) ) + ( 
-- \cpu|execution_operation|ula|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000011110000111011100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|ula|ALT_INV_Equal7~2_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_Equal7~0_combout\,
	datac => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	dataf => \decoder|ALT_INV_Dado~0_combout\,
	cin => \cpu|execution_operation|ula|Add0~26\,
	sumout => \cpu|execution_operation|ula|Add0~29_sumout\);

\cpu|execution_operation|ula|saida[7]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|saida[7]~8_combout\ = (\cpu|execution_operation|registers|registrador~51_combout\ & !\cpu|execution_operation|ula|saida~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datab => \cpu|execution_operation|ula|ALT_INV_saida~0_combout\,
	combout => \cpu|execution_operation|ula|saida[7]~8_combout\);

\cpu|execution_operation|registers|registrador~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock_50~input_o\,
	d => \cpu|execution_operation|ula|Add0~29_sumout\,
	asdata => \cpu|execution_operation|ula|saida[7]~8_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[7]~8_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
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
	asdata => \cpu|execution_operation|ula|saida[7]~8_combout\,
	sload => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	ena => \cpu|execution_operation|registers|registrador~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cpu|execution_operation|registers|registrador~35_q\);

\cpu|execution_operation|registers|registrador~51\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|registers|registrador~51_combout\ = ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( \cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~35_q\ ) ) ) # ( 
-- \cpu|instruction_search|rom|memROM~2_combout\ & ( !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~27_q\ ) ) ) # ( !\cpu|instruction_search|rom|memROM~2_combout\ & ( 
-- !\cpu|instruction_search|rom|memROM~12_combout\ & ( \cpu|execution_operation|registers|registrador~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101001100110011001100001111000011110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~19_q\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~27_q\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~35_q\,
	datae => \cpu|instruction_search|rom|ALT_INV_memROM~2_combout\,
	dataf => \cpu|instruction_search|rom|ALT_INV_memROM~12_combout\,
	combout => \cpu|execution_operation|registers|registrador~51_combout\);

\cpu|execution_operation|mux|saida_MUX[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|mux|saida_MUX[5]~4_combout\ = (\cpu|instruction_search|control_unit|memROM~0_combout\ & !\decoder|Dado~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000001010101000000000101010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datad => \decoder|ALT_INV_Dado~0_combout\,
	combout => \cpu|execution_operation|mux|saida_MUX[5]~4_combout\);

\cpu|execution_operation|ula|Equal8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~0_combout\ = ( \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ & ( \cpu|execution_operation|mux|saida_MUX[4]~5_combout\ & ( (\cpu|execution_operation|registers|registrador~47_combout\ & 
-- (\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ $ (\cpu|execution_operation|mux|saida_MUX[2]~2_combout\)))) ) ) ) # ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ & ( 
-- \cpu|execution_operation|mux|saida_MUX[4]~5_combout\ & ( (!\cpu|execution_operation|registers|registrador~47_combout\ & (\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ $ 
-- (\cpu|execution_operation|mux|saida_MUX[2]~2_combout\)))) ) ) ) # ( \cpu|execution_operation|mux|saida_MUX[3]~3_combout\ & ( !\cpu|execution_operation|mux|saida_MUX[4]~5_combout\ & ( (\cpu|execution_operation|registers|registrador~47_combout\ & 
-- (!\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ $ (\cpu|execution_operation|mux|saida_MUX[2]~2_combout\)))) ) ) ) # ( !\cpu|execution_operation|mux|saida_MUX[3]~3_combout\ & ( 
-- !\cpu|execution_operation|mux|saida_MUX[4]~5_combout\ & ( (!\cpu|execution_operation|registers|registrador~47_combout\ & (!\cpu|execution_operation|registers|registrador~48_combout\ & (!\cpu|execution_operation|registers|registrador~46_combout\ $ 
-- (\cpu|execution_operation|mux|saida_MUX[2]~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000001000000001000000001000000001000000001000000001000000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~46_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~47_combout\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~48_combout\,
	datad => \cpu|execution_operation|mux|ALT_INV_saida_MUX[2]~2_combout\,
	datae => \cpu|execution_operation|mux|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \cpu|execution_operation|mux|ALT_INV_saida_MUX[4]~5_combout\,
	combout => \cpu|execution_operation|ula|Equal8~0_combout\);

\cpu|execution_operation|ula|Equal8~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~2_combout\ = ( \cpu|execution_operation|registers|registrador~49_combout\ & ( (!\decoder|Dado~0_combout\ & (\cpu|instruction_search|control_unit|memROM~0_combout\ & 
-- (\cpu|execution_operation|registers|registrador~51_combout\ & \cpu|execution_operation|registers|registrador~50_combout\))) ) ) # ( !\cpu|execution_operation|registers|registrador~49_combout\ & ( 
-- (!\cpu|execution_operation|registers|registrador~51_combout\ & (!\cpu|execution_operation|registers|registrador~50_combout\ & ((!\cpu|instruction_search|control_unit|memROM~0_combout\) # (\decoder|Dado~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1101000000000000000000000000001011010000000000000000000000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \decoder|ALT_INV_Dado~0_combout\,
	datab => \cpu|instruction_search|control_unit|ALT_INV_memROM~0_combout\,
	datac => \cpu|execution_operation|registers|ALT_INV_registrador~51_combout\,
	datad => \cpu|execution_operation|registers|ALT_INV_registrador~50_combout\,
	datae => \cpu|execution_operation|registers|ALT_INV_registrador~49_combout\,
	combout => \cpu|execution_operation|ula|Equal8~2_combout\);

\cpu|execution_operation|ula|Equal8~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \cpu|execution_operation|ula|Equal8~1_combout\ = ( \cpu|execution_operation|ula|Equal8~0_combout\ & ( \cpu|execution_operation|ula|Equal8~2_combout\ & ( (!\cpu|execution_operation|registers|registrador~44_combout\ & 
-- (!\cpu|execution_operation|mux|saida_MUX[0]~0_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ $ (\cpu|execution_operation|mux|saida_MUX[1]~1_combout\)))) # (\cpu|execution_operation|registers|registrador~44_combout\ & 
-- (\cpu|execution_operation|mux|saida_MUX[0]~0_combout\ & (!\cpu|execution_operation|registers|registrador~45_combout\ $ (\cpu|execution_operation|mux|saida_MUX[1]~1_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000010000100001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \cpu|execution_operation|registers|ALT_INV_registrador~44_combout\,
	datab => \cpu|execution_operation|registers|ALT_INV_registrador~45_combout\,
	datac => \cpu|execution_operation|mux|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \cpu|execution_operation|mux|ALT_INV_saida_MUX[1]~1_combout\,
	datae => \cpu|execution_operation|ula|ALT_INV_Equal8~0_combout\,
	dataf => \cpu|execution_operation|ula|ALT_INV_Equal8~2_combout\,
	combout => \cpu|execution_operation|ula|Equal8~1_combout\);

\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_pintest(0) <= \pintest[0]~output_o\;

ww_pintest(1) <= \pintest[1]~output_o\;

ww_pintest(2) <= \pintest[2]~output_o\;

ww_pintest(3) <= \pintest[3]~output_o\;

ww_pintest(4) <= \pintest[4]~output_o\;

ww_pintest(5) <= \pintest[5]~output_o\;

ww_pintest(6) <= \pintest[6]~output_o\;

ww_pintest(7) <= \pintest[7]~output_o\;

ww_pintest(8) <= \pintest[8]~output_o\;

ww_pintestULAA(0) <= \pintestULAA[0]~output_o\;

ww_pintestULAA(1) <= \pintestULAA[1]~output_o\;

ww_pintestULAA(2) <= \pintestULAA[2]~output_o\;

ww_pintestULAA(3) <= \pintestULAA[3]~output_o\;

ww_pintestULAA(4) <= \pintestULAA[4]~output_o\;

ww_pintestULAA(5) <= \pintestULAA[5]~output_o\;

ww_pintestULAA(6) <= \pintestULAA[6]~output_o\;

ww_pintestULAA(7) <= \pintestULAA[7]~output_o\;

ww_pintestULAB(0) <= \pintestULAB[0]~output_o\;

ww_pintestULAB(1) <= \pintestULAB[1]~output_o\;

ww_pintestULAB(2) <= \pintestULAB[2]~output_o\;

ww_pintestULAB(3) <= \pintestULAB[3]~output_o\;

ww_pintestULAB(4) <= \pintestULAB[4]~output_o\;

ww_pintestULAB(5) <= \pintestULAB[5]~output_o\;

ww_pintestULAB(6) <= \pintestULAB[6]~output_o\;

ww_pintestULAB(7) <= \pintestULAB[7]~output_o\;

ww_pintestULAFLAG <= \pintestULAFLAG~output_o\;

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;
END structure;


