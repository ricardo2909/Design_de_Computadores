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

-- DATE "04/14/2023 15:16:46"

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

ENTITY 	Aula7 IS
    PORT (
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Aula7;

-- Design Ports Information
-- KEY[1]	=>  Location: PIN_W9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_M7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_M6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_T13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_T12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AA13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_AA2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[1]	=>  Location: PIN_AA1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[2]	=>  Location: PIN_W2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[3]	=>  Location: PIN_Y3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[4]	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[5]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[6]	=>  Location: PIN_U2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[7]	=>  Location: PIN_U1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[8]	=>  Location: PIN_L2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- LEDR[9]	=>  Location: PIN_L1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[0]	=>  Location: PIN_U21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[1]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[2]	=>  Location: PIN_W22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[5]	=>  Location: PIN_Y21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX0[6]	=>  Location: PIN_AA22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[0]	=>  Location: PIN_AA20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[1]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[2]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[3]	=>  Location: PIN_AA18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[4]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[5]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX1[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[0]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[1]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[2]	=>  Location: PIN_AA10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[3]	=>  Location: PIN_Y14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[4]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[5]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX2[6]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[0]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[1]	=>  Location: PIN_W16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[2]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[3]	=>  Location: PIN_V16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[4]	=>  Location: PIN_U17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[5]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX3[6]	=>  Location: PIN_V19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[0]	=>  Location: PIN_U20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[1]	=>  Location: PIN_Y20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[2]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[3]	=>  Location: PIN_U16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[4]	=>  Location: PIN_U15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[5]	=>  Location: PIN_Y15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX4[6]	=>  Location: PIN_P9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[0]	=>  Location: PIN_N9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[1]	=>  Location: PIN_M8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[2]	=>  Location: PIN_T14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[3]	=>  Location: PIN_P14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[4]	=>  Location: PIN_C1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[5]	=>  Location: PIN_C2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- HEX5[6]	=>  Location: PIN_W19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- KEY[0]	=>  Location: PIN_U7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_M9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Aula7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
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
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~0_combout\ : std_logic;
SIGNAL \gravar:detectorSub0|saidaQ~q\ : std_logic;
SIGNAL \gravar:detectorSub0|saida~combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \CPU|DECO|Equal10~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \ROM1|memROM~12_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_wirecell_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~2\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~14\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~10\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~6\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~22\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~26\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~30\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~34\ : std_logic;
SIGNAL \CPU|incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|PC|DOUT[8]~feeder_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \CPU|DECO|Equal10~2_combout\ : std_logic;
SIGNAL \CPU|DECO|Equal10~1_combout\ : std_logic;
SIGNAL \RAM|ram~550_combout\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~551_combout\ : std_logic;
SIGNAL \RAM|ram~549_combout\ : std_logic;
SIGNAL \RAM|ram~15_q\ : std_logic;
SIGNAL \RAM|ram~547_combout\ : std_logic;
SIGNAL \RAM|ram~544_combout\ : std_logic;
SIGNAL \RAM|ram~546_combout\ : std_logic;
SIGNAL \RAM|ram~536_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~34_cout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[0]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~545_combout\ : std_logic;
SIGNAL \RAM|ram~527_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \CPU|DECO|saida[4]~0_combout\ : std_logic;
SIGNAL \CPU|DECO|saida~1_combout\ : std_logic;
SIGNAL \habReg8~0_combout\ : std_logic;
SIGNAL \RAM|ram~24feeder_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~16_q\ : std_logic;
SIGNAL \RAM|ram~548_combout\ : std_logic;
SIGNAL \RAM|ram~528_combout\ : std_logic;
SIGNAL \RAM|ram~529_combout\ : std_logic;
SIGNAL \RAM|ram~537_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~2\ : std_logic;
SIGNAL \CPU|ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \REG8|DOUT[1]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~530_combout\ : std_logic;
SIGNAL \RAM|ram~575_combout\ : std_logic;
SIGNAL \RAM|ram~538_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~6\ : std_logic;
SIGNAL \CPU|ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[2]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ram~26feeder_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~531_combout\ : std_logic;
SIGNAL \RAM|ram~571_combout\ : std_logic;
SIGNAL \RAM|ram~539_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~10\ : std_logic;
SIGNAL \CPU|ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[3]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~532_combout\ : std_logic;
SIGNAL \RAM|ram~567_combout\ : std_logic;
SIGNAL \RAM|ram~540_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[4]~4_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~14\ : std_logic;
SIGNAL \CPU|ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[4]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~28feeder_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~533_combout\ : std_logic;
SIGNAL \RAM|ram~563_combout\ : std_logic;
SIGNAL \RAM|ram~541_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~18\ : std_logic;
SIGNAL \CPU|ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[5]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[5]~5_combout\ : std_logic;
SIGNAL \RAM|ram~29feeder_combout\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~534_combout\ : std_logic;
SIGNAL \RAM|ram~559_combout\ : std_logic;
SIGNAL \RAM|ram~542_combout\ : std_logic;
SIGNAL \CPU|ULA1|Add0~22\ : std_logic;
SIGNAL \CPU|ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[6]~6_combout\ : std_logic;
SIGNAL \REG8|DOUT[6]~feeder_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~535_combout\ : std_logic;
SIGNAL \RAM|ram~555_combout\ : std_logic;
SIGNAL \RAM|ram~543_combout\ : std_logic;
SIGNAL \CPU|MUX1|saida_MUX[7]~7_combout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|ULA1|Add0~26\ : std_logic;
SIGNAL \CPU|ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \CPU|REGA|DOUT[7]~feeder_combout\ : std_logic;
SIGNAL \FF2|DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \habFF2~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~0_combout\ : std_logic;
SIGNAL \FF2|DOUT~q\ : std_logic;
SIGNAL \habFF1~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~0_combout\ : std_logic;
SIGNAL \FF1|DOUT~q\ : std_logic;
SIGNAL \display5|rascSaida7seg[0]~0_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[1]~1_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[2]~2_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[3]~3_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[4]~4_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[5]~5_combout\ : std_logic;
SIGNAL \display5|rascSaida7seg[6]~6_combout\ : std_logic;
SIGNAL \CPU|PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \CPU|REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \REG8|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~529_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~528_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~16_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \gravar:detectorSub0|ALT_INV_saidaQ~q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~527_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~15_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \CPU|DECO|ALT_INV_Equal10~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~12_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ALT_INV_habFF1~0_combout\ : std_logic;
SIGNAL \ALT_INV_habFF2~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \FF1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~575_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~571_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~567_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~563_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~559_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~555_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~551_combout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \CPU|ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \CPU|incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \CPU|PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \FF2|ALT_INV_DOUT~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ : std_logic;
SIGNAL \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_KEY[0]~input_o\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~548_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~547_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~546_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~545_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~544_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~543_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~542_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~541_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~540_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~539_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~538_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~537_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~536_combout\ : std_logic;
SIGNAL \CPU|DECO|ALT_INV_Equal10~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~535_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~534_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~533_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~532_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~531_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~530_combout\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
LEDR <= ww_LEDR;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~529_combout\ <= NOT \RAM|ram~529_combout\;
\RAM|ALT_INV_ram~528_combout\ <= NOT \RAM|ram~528_combout\;
\RAM|ALT_INV_ram~16_q\ <= NOT \RAM|ram~16_q\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\gravar:detectorSub0|ALT_INV_saidaQ~q\ <= NOT \gravar:detectorSub0|saidaQ~q\;
\RAM|ALT_INV_ram~527_combout\ <= NOT \RAM|ram~527_combout\;
\RAM|ALT_INV_ram~15_q\ <= NOT \RAM|ram~15_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\CPU|DECO|ALT_INV_Equal10~1_combout\ <= NOT \CPU|DECO|Equal10~1_combout\;
\ROM1|ALT_INV_memROM~12_combout\ <= NOT \ROM1|memROM~12_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ALT_INV_habFF1~0_combout\ <= NOT \habFF1~0_combout\;
\ALT_INV_habFF2~0_combout\ <= NOT \habFF2~0_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\FF1|ALT_INV_DOUT~q\ <= NOT \FF1|DOUT~q\;
\RAM|ALT_INV_ram~575_combout\ <= NOT \RAM|ram~575_combout\;
\RAM|ALT_INV_ram~571_combout\ <= NOT \RAM|ram~571_combout\;
\RAM|ALT_INV_ram~567_combout\ <= NOT \RAM|ram~567_combout\;
\RAM|ALT_INV_ram~563_combout\ <= NOT \RAM|ram~563_combout\;
\RAM|ALT_INV_ram~559_combout\ <= NOT \RAM|ram~559_combout\;
\RAM|ALT_INV_ram~555_combout\ <= NOT \RAM|ram~555_combout\;
\RAM|ALT_INV_ram~551_combout\ <= NOT \RAM|ram~551_combout\;
\CPU|ULA1|ALT_INV_Add0~29_sumout\ <= NOT \CPU|ULA1|Add0~29_sumout\;
\CPU|ULA1|ALT_INV_Add0~25_sumout\ <= NOT \CPU|ULA1|Add0~25_sumout\;
\CPU|ULA1|ALT_INV_Add0~21_sumout\ <= NOT \CPU|ULA1|Add0~21_sumout\;
\CPU|ULA1|ALT_INV_Add0~17_sumout\ <= NOT \CPU|ULA1|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~13_sumout\ <= NOT \CPU|ULA1|Add0~13_sumout\;
\CPU|ULA1|ALT_INV_Add0~9_sumout\ <= NOT \CPU|ULA1|Add0~9_sumout\;
\CPU|ULA1|ALT_INV_Add0~5_sumout\ <= NOT \CPU|ULA1|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \CPU|incrementaPC|Add0~33_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \CPU|incrementaPC|Add0~29_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \CPU|incrementaPC|Add0~25_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \CPU|incrementaPC|Add0~21_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \CPU|incrementaPC|Add0~17_sumout\;
\CPU|ULA1|ALT_INV_Add0~1_sumout\ <= NOT \CPU|ULA1|Add0~1_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \CPU|incrementaPC|Add0~13_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \CPU|incrementaPC|Add0~9_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \CPU|incrementaPC|Add0~5_sumout\;
\CPU|incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \CPU|incrementaPC|Add0~1_sumout\;
\CPU|REGA|ALT_INV_DOUT\(6) <= NOT \CPU|REGA|DOUT\(6);
\CPU|REGA|ALT_INV_DOUT\(5) <= NOT \CPU|REGA|DOUT\(5);
\CPU|REGA|ALT_INV_DOUT\(3) <= NOT \CPU|REGA|DOUT\(3);
\CPU|REGA|ALT_INV_DOUT\(2) <= NOT \CPU|REGA|DOUT\(2);
\CPU|REGA|ALT_INV_DOUT\(1) <= NOT \CPU|REGA|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(7) <= NOT \CPU|PC|DOUT\(7);
\CPU|PC|ALT_INV_DOUT\(6) <= NOT \CPU|PC|DOUT\(6);
\CPU|PC|ALT_INV_DOUT\(5) <= NOT \CPU|PC|DOUT\(5);
\CPU|PC|ALT_INV_DOUT\(4) <= NOT \CPU|PC|DOUT\(4);
\CPU|PC|ALT_INV_DOUT\(8) <= NOT \CPU|PC|DOUT\(8);
\CPU|REGA|ALT_INV_DOUT\(0) <= NOT \CPU|REGA|DOUT\(0);
\CPU|PC|ALT_INV_DOUT\(1) <= NOT \CPU|PC|DOUT\(1);
\CPU|PC|ALT_INV_DOUT\(2) <= NOT \CPU|PC|DOUT\(2);
\CPU|PC|ALT_INV_DOUT\(3) <= NOT \CPU|PC|DOUT\(3);
\CPU|PC|ALT_INV_DOUT\(0) <= NOT \CPU|PC|DOUT\(0);
\FF2|ALT_INV_DOUT~DUPLICATE_q\ <= NOT \FF2|DOUT~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[7]~DUPLICATE_q\;
\CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|REGA|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[7]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[4]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[8]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[1]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[2]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[3]~DUPLICATE_q\;
\CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\ <= NOT \CPU|PC|DOUT[0]~DUPLICATE_q\;
\ALT_INV_KEY[0]~input_o\ <= NOT \KEY[0]~input_o\;
\RAM|ALT_INV_ram~548_combout\ <= NOT \RAM|ram~548_combout\;
\RAM|ALT_INV_ram~547_combout\ <= NOT \RAM|ram~547_combout\;
\RAM|ALT_INV_ram~546_combout\ <= NOT \RAM|ram~546_combout\;
\RAM|ALT_INV_ram~545_combout\ <= NOT \RAM|ram~545_combout\;
\RAM|ALT_INV_ram~544_combout\ <= NOT \RAM|ram~544_combout\;
\RAM|ALT_INV_ram~543_combout\ <= NOT \RAM|ram~543_combout\;
\RAM|ALT_INV_ram~542_combout\ <= NOT \RAM|ram~542_combout\;
\RAM|ALT_INV_ram~541_combout\ <= NOT \RAM|ram~541_combout\;
\RAM|ALT_INV_ram~540_combout\ <= NOT \RAM|ram~540_combout\;
\RAM|ALT_INV_ram~539_combout\ <= NOT \RAM|ram~539_combout\;
\RAM|ALT_INV_ram~538_combout\ <= NOT \RAM|ram~538_combout\;
\RAM|ALT_INV_ram~537_combout\ <= NOT \RAM|ram~537_combout\;
\RAM|ALT_INV_ram~536_combout\ <= NOT \RAM|ram~536_combout\;
\CPU|DECO|ALT_INV_Equal10~2_combout\ <= NOT \CPU|DECO|Equal10~2_combout\;
\RAM|ALT_INV_ram~535_combout\ <= NOT \RAM|ram~535_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~534_combout\ <= NOT \RAM|ram~534_combout\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~533_combout\ <= NOT \RAM|ram~533_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~532_combout\ <= NOT \RAM|ram~532_combout\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~531_combout\ <= NOT \RAM|ram~531_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~530_combout\ <= NOT \RAM|ram~530_combout\;

-- Location: IOOBUF_X0_Y18_N79
\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(0),
	devoe => ww_devoe,
	o => ww_LEDR(0));

-- Location: IOOBUF_X0_Y18_N96
\LEDR[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(1),
	devoe => ww_devoe,
	o => ww_LEDR(1));

-- Location: IOOBUF_X0_Y18_N62
\LEDR[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(2),
	devoe => ww_devoe,
	o => ww_LEDR(2));

-- Location: IOOBUF_X0_Y18_N45
\LEDR[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(3),
	devoe => ww_devoe,
	o => ww_LEDR(3));

-- Location: IOOBUF_X0_Y19_N39
\LEDR[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(4),
	devoe => ww_devoe,
	o => ww_LEDR(4));

-- Location: IOOBUF_X0_Y19_N56
\LEDR[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(5),
	devoe => ww_devoe,
	o => ww_LEDR(5));

-- Location: IOOBUF_X0_Y19_N5
\LEDR[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(6),
	devoe => ww_devoe,
	o => ww_LEDR(6));

-- Location: IOOBUF_X0_Y19_N22
\LEDR[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REG8|DOUT\(7),
	devoe => ww_devoe,
	o => ww_LEDR(7));

-- Location: IOOBUF_X0_Y20_N39
\LEDR[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF2|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(8));

-- Location: IOOBUF_X0_Y20_N56
\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \FF1|DOUT~q\,
	devoe => ww_devoe,
	o => ww_LEDR(9));

-- Location: IOOBUF_X52_Y0_N53
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X51_Y0_N36
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X48_Y0_N76
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X50_Y0_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X48_Y0_N93
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X50_Y0_N53
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X46_Y0_N36
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X44_Y0_N36
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X40_Y0_N93
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X44_Y0_N53
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X43_Y0_N36
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X38_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X43_Y0_N53
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X51_Y0_N53
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X48_Y0_N42
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

-- Location: IOOBUF_X38_Y0_N53
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

-- Location: IOOBUF_X22_Y0_N53
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

-- Location: IOOBUF_X36_Y0_N19
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

-- Location: IOOBUF_X38_Y0_N19
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

-- Location: IOOBUF_X46_Y0_N53
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

-- Location: IOOBUF_X40_Y0_N76
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X40_Y0_N59
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

-- Location: IOOBUF_X46_Y0_N2
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

-- Location: IOOBUF_X40_Y0_N42
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

-- Location: IOOBUF_X46_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N2
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

-- Location: IOOBUF_X51_Y0_N19
\HEX3[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX3(6));

-- Location: IOOBUF_X52_Y0_N36
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

-- Location: IOOBUF_X48_Y0_N59
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

-- Location: IOOBUF_X44_Y0_N19
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

-- Location: IOOBUF_X52_Y0_N19
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

-- Location: IOOBUF_X43_Y0_N2
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

-- Location: IOOBUF_X36_Y0_N2
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

-- Location: IOOBUF_X29_Y0_N19
\HEX4[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX4(6));

-- Location: IOOBUF_X29_Y0_N2
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
	o => ww_HEX5(0));

-- Location: IOOBUF_X22_Y0_N19
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
	o => ww_HEX5(1));

-- Location: IOOBUF_X43_Y0_N19
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
	o => ww_HEX5(2));

-- Location: IOOBUF_X50_Y0_N19
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
	o => ww_HEX5(3));

-- Location: IOOBUF_X0_Y21_N56
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
	o => ww_HEX5(4));

-- Location: IOOBUF_X0_Y21_N39
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
	o => ww_HEX5(5));

-- Location: IOOBUF_X44_Y0_N2
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
	o => ww_HEX5(6));

-- Location: IOIBUF_X10_Y0_N92
\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N1
\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LABCELL_X10_Y1_N6
\gravar:detectorSub0|saidaQ~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saidaQ~0_combout\ = ( !\KEY[0]~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_KEY[0]~input_o\,
	combout => \gravar:detectorSub0|saidaQ~0_combout\);

-- Location: FF_X10_Y1_N7
\gravar:detectorSub0|saidaQ\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \gravar:detectorSub0|saidaQ~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \gravar:detectorSub0|saidaQ~q\);

-- Location: LABCELL_X7_Y11_N30
\gravar:detectorSub0|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \gravar:detectorSub0|saida~combout\ = LCELL(( !\KEY[0]~input_o\ & ( !\gravar:detectorSub0|saidaQ~q\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \ALT_INV_KEY[0]~input_o\,
	dataf => \gravar:detectorSub0|ALT_INV_saidaQ~q\,
	combout => \gravar:detectorSub0|saida~combout\);

-- Location: LABCELL_X12_Y10_N30
\CPU|incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~1_sumout\ = SUM(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))
-- \CPU|incrementaPC|Add0~2\ = CARRY(( \CPU|PC|DOUT[0]~DUPLICATE_q\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	cin => GND,
	sumout => \CPU|incrementaPC|Add0~1_sumout\,
	cout => \CPU|incrementaPC|Add0~2\);

-- Location: LABCELL_X10_Y10_N18
\CPU|PC|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[0]~feeder_combout\ = ( \CPU|incrementaPC|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \CPU|PC|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X10_Y10_N0
\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT\(0) & \CPU|PC|DOUT\(1))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & \CPU|PC|DOUT\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010100000000101000000000000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~9_combout\);

-- Location: LABCELL_X10_Y10_N9
\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = ( \ROM1|memROM~1_combout\ & ( \ROM1|memROM~9_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~10_combout\);

-- Location: FF_X10_Y10_N38
\CPU|PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(1));

-- Location: MLABCELL_X9_Y10_N54
\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & ((!\CPU|PC|DOUT\(2)) # (!\CPU|PC|DOUT\(1)))) ) ) # ( !\CPU|PC|DOUT\(0) & ( !\CPU|PC|DOUT\(2) $ (!\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101011110000101000001111000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~5_combout\);

-- Location: MLABCELL_X9_Y10_N51
\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( ((!\CPU|PC|DOUT\(0) & !\CPU|PC|DOUT\(1))) # (\CPU|PC|DOUT\(3)) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(0) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000011000000111111111100000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~7_combout\);

-- Location: MLABCELL_X9_Y10_N39
\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( \CPU|PC|DOUT\(0) & ( (\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(3) & (\CPU|PC|DOUT\(1) & !\CPU|PC|DOUT\(2))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000000000101000000000000010100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT\(1),
	datad => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~6_combout\);

-- Location: MLABCELL_X9_Y11_N18
\CPU|DECO|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECO|Equal10~0_combout\ = ( \ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~1_combout\ & !\ROM1|memROM~7_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000100010000000000010001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECO|Equal10~0_combout\);

-- Location: FF_X10_Y10_N20
\CPU|PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~2_wirecell_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(0));

-- Location: MLABCELL_X9_Y10_N27
\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (\ROM1|memROM~1_combout\ & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010100000000000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~11_combout\);

-- Location: FF_X10_Y10_N23
\CPU|PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(3));

-- Location: MLABCELL_X9_Y11_N33
\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \CPU|PC|DOUT[1]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~8_combout\);

-- Location: MLABCELL_X9_Y11_N3
\ROM1|memROM~12\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~12_combout\ = ( \ROM1|memROM~8_combout\ & ( \ROM1|memROM~1_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \ROM1|memROM~12_combout\);

-- Location: FF_X10_Y10_N5
\CPU|PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(2));

-- Location: MLABCELL_X9_Y10_N42
\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & ((\CPU|PC|DOUT\(1)))) # (\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3))) ) ) # ( !\CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT\(1))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000000000000101000000000000001010000111110100101000011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT\(1),
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~0_combout\);

-- Location: MLABCELL_X9_Y10_N15
\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = ( \ROM1|memROM~0_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~0_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~0_combout\,
	combout => \ROM1|memROM~2_combout\);

-- Location: LABCELL_X6_Y11_N0
\ROM1|memROM~2_wirecell\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_wirecell_combout\ = ( !\ROM1|memROM~2_combout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \ROM1|memROM~2_wirecell_combout\);

-- Location: FF_X10_Y10_N19
\CPU|PC|DOUT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[0]~feeder_combout\,
	asdata => \ROM1|memROM~2_wirecell_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[0]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N33
\CPU|incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~13_sumout\ = SUM(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))
-- \CPU|incrementaPC|Add0~14\ = CARRY(( \CPU|PC|DOUT[1]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~2\,
	sumout => \CPU|incrementaPC|Add0~13_sumout\,
	cout => \CPU|incrementaPC|Add0~14\);

-- Location: LABCELL_X10_Y10_N36
\CPU|PC|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[1]~feeder_combout\ = ( \CPU|incrementaPC|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \CPU|PC|DOUT[1]~feeder_combout\);

-- Location: FF_X10_Y10_N37
\CPU|PC|DOUT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[1]~feeder_combout\,
	asdata => \ROM1|memROM~10_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[1]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N36
\CPU|incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~9_sumout\ = SUM(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))
-- \CPU|incrementaPC|Add0~10\ = CARRY(( \CPU|PC|DOUT[2]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~14\,
	sumout => \CPU|incrementaPC|Add0~9_sumout\,
	cout => \CPU|incrementaPC|Add0~10\);

-- Location: LABCELL_X10_Y10_N3
\CPU|PC|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[2]~feeder_combout\ = ( \CPU|incrementaPC|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \CPU|PC|DOUT[2]~feeder_combout\);

-- Location: FF_X10_Y10_N4
\CPU|PC|DOUT[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[2]~feeder_combout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[2]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N39
\CPU|incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~5_sumout\ = SUM(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))
-- \CPU|incrementaPC|Add0~6\ = CARRY(( \CPU|PC|DOUT[3]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~10\,
	sumout => \CPU|incrementaPC|Add0~5_sumout\,
	cout => \CPU|incrementaPC|Add0~6\);

-- Location: LABCELL_X10_Y10_N21
\CPU|PC|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[3]~feeder_combout\ = ( \CPU|incrementaPC|Add0~5_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \CPU|PC|DOUT[3]~feeder_combout\);

-- Location: FF_X10_Y10_N22
\CPU|PC|DOUT[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[3]~feeder_combout\,
	asdata => \ROM1|memROM~11_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[3]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N42
\CPU|incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~21_sumout\ = SUM(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))
-- \CPU|incrementaPC|Add0~22\ = CARRY(( \CPU|PC|DOUT[4]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~6\,
	sumout => \CPU|incrementaPC|Add0~21_sumout\,
	cout => \CPU|incrementaPC|Add0~22\);

-- Location: MLABCELL_X9_Y10_N33
\CPU|PC|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[4]~feeder_combout\ = ( \CPU|incrementaPC|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~21_sumout\,
	combout => \CPU|PC|DOUT[4]~feeder_combout\);

-- Location: FF_X9_Y10_N34
\CPU|PC|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N45
\CPU|incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~25_sumout\ = SUM(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))
-- \CPU|incrementaPC|Add0~26\ = CARRY(( \CPU|PC|DOUT\(5) ) + ( GND ) + ( \CPU|incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT\(5),
	cin => \CPU|incrementaPC|Add0~22\,
	sumout => \CPU|incrementaPC|Add0~25_sumout\,
	cout => \CPU|incrementaPC|Add0~26\);

-- Location: MLABCELL_X9_Y10_N6
\CPU|PC|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[5]~feeder_combout\ = ( \CPU|incrementaPC|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \CPU|PC|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X10_Y10_N12
\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = ( \CPU|PC|DOUT\(0) & ( (!\CPU|PC|DOUT\(2) & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & \ROM1|memROM~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000010000000000000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(2),
	datab => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT\(0),
	combout => \ROM1|memROM~4_combout\);

-- Location: FF_X9_Y10_N7
\CPU|PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[5]~feeder_combout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(5));

-- Location: LABCELL_X12_Y10_N48
\CPU|incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~29_sumout\ = SUM(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))
-- \CPU|incrementaPC|Add0~30\ = CARRY(( \CPU|PC|DOUT\(6) ) + ( GND ) + ( \CPU|incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	cin => \CPU|incrementaPC|Add0~26\,
	sumout => \CPU|incrementaPC|Add0~29_sumout\,
	cout => \CPU|incrementaPC|Add0~30\);

-- Location: MLABCELL_X9_Y10_N9
\CPU|PC|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[6]~feeder_combout\ = ( \CPU|incrementaPC|Add0~29_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \CPU|PC|DOUT[6]~feeder_combout\);

-- Location: FF_X9_Y10_N11
\CPU|PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[6]~feeder_combout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(6));

-- Location: FF_X9_Y10_N35
\CPU|PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[4]~feeder_combout\,
	asdata => \ROM1|memROM~12_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(4));

-- Location: FF_X9_Y10_N22
\CPU|PC|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N51
\CPU|incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~33_sumout\ = SUM(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))
-- \CPU|incrementaPC|Add0~34\ = CARRY(( \CPU|PC|DOUT[7]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~30\,
	sumout => \CPU|incrementaPC|Add0~33_sumout\,
	cout => \CPU|incrementaPC|Add0~34\);

-- Location: MLABCELL_X9_Y10_N21
\CPU|PC|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[7]~feeder_combout\ = ( \CPU|incrementaPC|Add0~33_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \CPU|PC|DOUT[7]~feeder_combout\);

-- Location: FF_X9_Y10_N23
\CPU|PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[7]~feeder_combout\,
	asdata => \ROM1|memROM~4_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(7));

-- Location: MLABCELL_X9_Y11_N0
\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[0]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[1]~DUPLICATE_q\)))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (\ROM1|memROM~1_combout\ & \CPU|PC|DOUT\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000010000001000000001000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \ROM1|memROM~3_combout\);

-- Location: FF_X9_Y10_N25
\CPU|PC|DOUT[8]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT[8]~DUPLICATE_q\);

-- Location: LABCELL_X12_Y10_N54
\CPU|incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|incrementaPC|Add0~17_sumout\ = SUM(( \CPU|PC|DOUT[8]~DUPLICATE_q\ ) + ( GND ) + ( \CPU|incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[8]~DUPLICATE_q\,
	cin => \CPU|incrementaPC|Add0~34\,
	sumout => \CPU|incrementaPC|Add0~17_sumout\);

-- Location: MLABCELL_X9_Y10_N24
\CPU|PC|DOUT[8]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|PC|DOUT[8]~feeder_combout\ = \CPU|incrementaPC|Add0~17_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \CPU|PC|DOUT[8]~feeder_combout\);

-- Location: FF_X9_Y10_N26
\CPU|PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|PC|DOUT[8]~feeder_combout\,
	asdata => \ROM1|memROM~3_combout\,
	sload => \CPU|DECO|Equal10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|PC|DOUT\(8));

-- Location: MLABCELL_X9_Y10_N12
\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\CPU|PC|DOUT\(8) & ( (!\CPU|PC|DOUT\(5) & (!\CPU|PC|DOUT\(6) & (!\CPU|PC|DOUT\(4) & !\CPU|PC|DOUT\(7)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000100000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(5),
	datab => \CPU|PC|ALT_INV_DOUT\(6),
	datac => \CPU|PC|ALT_INV_DOUT\(4),
	datad => \CPU|PC|ALT_INV_DOUT\(7),
	dataf => \CPU|PC|ALT_INV_DOUT\(8),
	combout => \ROM1|memROM~1_combout\);

-- Location: MLABCELL_X9_Y10_N57
\CPU|DECO|Equal10~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECO|Equal10~2_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~1_combout\ & (\ROM1|memROM~6_combout\ & !\ROM1|memROM~5_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECO|Equal10~2_combout\);

-- Location: MLABCELL_X9_Y10_N30
\CPU|DECO|Equal10~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECO|Equal10~1_combout\ = ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~5_combout\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECO|Equal10~1_combout\);

-- Location: LABCELL_X7_Y11_N42
\RAM|ram~550\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~550_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\ROM1|memROM~1_combout\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RAM|ram~550_combout\);

-- Location: FF_X9_Y10_N2
\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

-- Location: MLABCELL_X9_Y10_N3
\RAM|ram~551\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~551_combout\ = ( \CPU|PC|DOUT\(2) & ( \ROM1|memROM~1_combout\ & ( (\RAM|ram~23_q\ & ((!\CPU|PC|DOUT\(1)) # ((\CPU|PC|DOUT\(3)) # (\CPU|PC|DOUT\(0))))) ) ) ) # ( !\CPU|PC|DOUT\(2) & ( \ROM1|memROM~1_combout\ & ( (\RAM|ram~23_q\ & 
-- ((!\CPU|PC|DOUT\(0)) # (!\CPU|PC|DOUT\(3)))) ) ) ) # ( \CPU|PC|DOUT\(2) & ( !\ROM1|memROM~1_combout\ & ( \RAM|ram~23_q\ ) ) ) # ( !\CPU|PC|DOUT\(2) & ( !\ROM1|memROM~1_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010100000100010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~23_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(1),
	datac => \CPU|PC|ALT_INV_DOUT\(0),
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \CPU|PC|ALT_INV_DOUT\(2),
	dataf => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|ram~551_combout\);

-- Location: LABCELL_X7_Y11_N18
\RAM|ram~549\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~549_combout\ = ( \ROM1|memROM~1_combout\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \RAM|ram~549_combout\);

-- Location: FF_X7_Y11_N8
\RAM|ram~15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~15_q\);

-- Location: LABCELL_X10_Y10_N39
\RAM|ram~547\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~547_combout\ = ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT\(3) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \RAM|ram~547_combout\);

-- Location: MLABCELL_X9_Y10_N48
\RAM|ram~544\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~544_combout\ = ( \RAM|ram~547_combout\ & ( (!\ROM1|memROM~1_combout\ & (\RAM|ram~15_q\)) # (\ROM1|memROM~1_combout\ & ((!\CPU|PC|DOUT\(0) & (\RAM|ram~15_q\ & !\ROM1|memROM~9_combout\)) # (\CPU|PC|DOUT\(0) & ((\ROM1|memROM~9_combout\))))) ) ) # ( 
-- !\RAM|ram~547_combout\ & ( (\RAM|ram~15_q\ & ((!\ROM1|memROM~1_combout\) # (!\ROM1|memROM~9_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010000010101010101000001010100010100110101010001010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~15_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	dataf => \RAM|ALT_INV_ram~547_combout\,
	combout => \RAM|ram~544_combout\);

-- Location: MLABCELL_X9_Y10_N36
\RAM|ram~546\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~546_combout\ = ( \RAM|ram~544_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\RAM|ram~551_combout\))) # (\ROM1|memROM~2_combout\ & (!\ROM1|memROM~11_combout\)) ) ) # ( !\RAM|ram~544_combout\ & ( (!\ROM1|memROM~2_combout\ & \RAM|ram~551_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000110000111111000011000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~551_combout\,
	dataf => \RAM|ALT_INV_ram~544_combout\,
	combout => \RAM|ram~546_combout\);

-- Location: MLABCELL_X9_Y10_N18
\RAM|ram~536\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~536_combout\ = ( !\ROM1|memROM~12_combout\ & ( (\RAM|ram~546_combout\ & (!\ROM1|memROM~4_combout\ $ (((\ROM1|memROM~11_combout\ & \ROM1|memROM~2_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011100001000000001110000100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~11_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~546_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~536_combout\);

-- Location: LABCELL_X7_Y10_N30
\CPU|ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~34_cout\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	cin => GND,
	cout => \CPU|ULA1|Add0~34_cout\);

-- Location: LABCELL_X7_Y10_N33
\CPU|ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~1_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))
-- \CPU|ULA1|Add0~2\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~536_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (!\ROM1|memROM~2_combout\)))) ) + ( \CPU|REGA|DOUT\(0) ) + ( \CPU|ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010011001010110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datad => \RAM|ALT_INV_ram~536_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(0),
	cin => \CPU|ULA1|Add0~34_cout\,
	sumout => \CPU|ULA1|Add0~1_sumout\,
	cout => \CPU|ULA1|Add0~2\);

-- Location: LABCELL_X7_Y10_N3
\CPU|REGA|DOUT[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[0]~feeder_combout\ = ( \CPU|ULA1|Add0~1_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~1_sumout\,
	combout => \CPU|REGA|DOUT[0]~feeder_combout\);

-- Location: LABCELL_X6_Y10_N30
\RAM|ram~545\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~545_combout\ = ( \ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~2_combout\ & \ROM1|memROM~11_combout\) ) ) # ( !\ROM1|memROM~10_combout\ & ( (!\ROM1|memROM~11_combout\ & ((!\ROM1|memROM~2_combout\ & ((\RAM|ram~23_q\))) # (\ROM1|memROM~2_combout\ & 
-- (\RAM|ram~15_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010010001100000001001000110000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~2_combout\,
	datab => \ROM1|ALT_INV_memROM~11_combout\,
	datac => \RAM|ALT_INV_ram~15_q\,
	datad => \RAM|ALT_INV_ram~23_q\,
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \RAM|ram~545_combout\);

-- Location: LABCELL_X6_Y10_N27
\RAM|ram~527\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~527_combout\ = ( \RAM|ram~545_combout\ & ( (!\ROM1|memROM~4_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010101010000000001010101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~545_combout\,
	combout => \RAM|ram~527_combout\);

-- Location: LABCELL_X6_Y10_N0
\CPU|MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[0]~0_combout\ = ( \CPU|DECO|Equal10~1_combout\ & ( !\ROM1|memROM~2_combout\ ) ) # ( !\CPU|DECO|Equal10~1_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM|ram~527_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100000011000000110011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datac => \RAM|ALT_INV_ram~527_combout\,
	datad => \ROM1|ALT_INV_memROM~2_combout\,
	dataf => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	combout => \CPU|MUX1|saida_MUX[0]~0_combout\);

-- Location: MLABCELL_X9_Y10_N45
\CPU|DECO|saida[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECO|saida[4]~0_combout\ = ( \ROM1|memROM~7_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & \ROM1|memROM~1_combout\)) ) ) # ( !\ROM1|memROM~7_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & 
-- \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011000000000000001100000000000000001100000000000000110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \ROM1|ALT_INV_memROM~7_combout\,
	combout => \CPU|DECO|saida[4]~0_combout\);

-- Location: MLABCELL_X9_Y11_N42
\CPU|DECO|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|DECO|saida~1_combout\ = ( \ROM1|memROM~7_combout\ & ( \ROM1|memROM~6_combout\ & ( \ROM1|memROM~1_combout\ ) ) ) # ( \ROM1|memROM~7_combout\ & ( !\ROM1|memROM~6_combout\ & ( (\ROM1|memROM~5_combout\ & \ROM1|memROM~1_combout\) ) ) ) # ( 
-- !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~6_combout\ & ( (!\ROM1|memROM~5_combout\ & \ROM1|memROM~1_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101010000000000101010100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \CPU|DECO|saida~1_combout\);

-- Location: FF_X7_Y10_N4
\CPU|REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[0]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[0]~0_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(0));

-- Location: LABCELL_X7_Y11_N51
\habReg8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habReg8~0_combout\ = ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT\(3) & (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & \ROM1|memROM~1_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010000000000000101000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datad => \ROM1|ALT_INV_memROM~1_combout\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \habReg8~0_combout\);

-- Location: FF_X7_Y11_N52
\REG8|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(0),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(0));

-- Location: LABCELL_X7_Y11_N3
\RAM|ram~24feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~24feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \RAM|ram~24feeder_combout\);

-- Location: FF_X7_Y11_N4
\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM|ram~24feeder_combout\,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

-- Location: FF_X6_Y11_N49
\RAM|ram~16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(1),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~16_q\);

-- Location: LABCELL_X12_Y10_N27
\RAM|ram~548\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~548_combout\ = ( \CPU|PC|DOUT[3]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	combout => \RAM|ram~548_combout\);

-- Location: LABCELL_X6_Y10_N39
\RAM|ram~528\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~528_combout\ = ( \ROM1|memROM~0_combout\ & ( \RAM|ram~548_combout\ & ( (!\ROM1|memROM~1_combout\ & (((\RAM|ram~16_q\)))) # (\ROM1|memROM~1_combout\ & (\RAM|ram~24_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( 
-- \RAM|ram~548_combout\ & ( (\RAM|ram~16_q\ & ((!\ROM1|memROM~1_combout\) # (!\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) ) # ( \ROM1|memROM~0_combout\ & ( !\RAM|ram~548_combout\ & ( (!\ROM1|memROM~1_combout\ & ((\RAM|ram~16_q\))) # (\ROM1|memROM~1_combout\ & 
-- (\RAM|ram~24_q\)) ) ) ) # ( !\ROM1|memROM~0_combout\ & ( !\RAM|ram~548_combout\ & ( \RAM|ram~16_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001101010011010100110011001100000011010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~24_q\,
	datab => \RAM|ALT_INV_ram~16_q\,
	datac => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datae => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \RAM|ALT_INV_ram~548_combout\,
	combout => \RAM|ram~528_combout\);

-- Location: LABCELL_X6_Y10_N45
\RAM|ram~529\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~529_combout\ = ( \RAM|ram~528_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~528_combout\,
	combout => \RAM|ram~529_combout\);

-- Location: LABCELL_X7_Y10_N0
\RAM|ram~537\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~537_combout\ = ( \RAM|ram~529_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~529_combout\,
	combout => \RAM|ram~537_combout\);

-- Location: LABCELL_X7_Y10_N36
\CPU|ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~5_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~537_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))
-- \CPU|ULA1|Add0~6\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~537_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~10_combout\)))) ) + ( \CPU|REGA|DOUT\(1) ) + ( \CPU|ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \RAM|ALT_INV_ram~537_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	cin => \CPU|ULA1|Add0~2\,
	sumout => \CPU|ULA1|Add0~5_sumout\,
	cout => \CPU|ULA1|Add0~6\);

-- Location: LABCELL_X7_Y10_N9
\CPU|REGA|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[1]~feeder_combout\ = \CPU|ULA1|Add0~5_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_Add0~5_sumout\,
	combout => \CPU|REGA|DOUT[1]~feeder_combout\);

-- Location: LABCELL_X6_Y10_N42
\CPU|MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[1]~1_combout\ = ( \CPU|DECO|Equal10~1_combout\ & ( \ROM1|memROM~10_combout\ ) ) # ( !\CPU|DECO|Equal10~1_combout\ & ( (!\ROM1|memROM~12_combout\ & \RAM|ram~529_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~529_combout\,
	dataf => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	combout => \CPU|MUX1|saida_MUX[1]~1_combout\);

-- Location: FF_X7_Y10_N11
\CPU|REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[1]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[1]~1_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(1));

-- Location: LABCELL_X7_Y11_N27
\REG8|DOUT[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG8|DOUT[1]~feeder_combout\ = ( \CPU|REGA|DOUT\(1) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(1),
	combout => \REG8|DOUT[1]~feeder_combout\);

-- Location: FF_X7_Y11_N28
\REG8|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG8|DOUT[1]~feeder_combout\,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(1));

-- Location: FF_X7_Y11_N22
\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

-- Location: FF_X7_Y11_N16
\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

-- Location: LABCELL_X10_Y10_N42
\RAM|ram~530\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~530_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & ((\RAM|ram~25_q\))) # (\ROM1|memROM~2_combout\ & (\RAM|ram~17_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111001111000000111100111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \RAM|ALT_INV_ram~25_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~530_combout\);

-- Location: LABCELL_X10_Y10_N15
\RAM|ram~575\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~575_combout\ = ( \RAM|ram~530_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~530_combout\,
	combout => \RAM|ram~575_combout\);

-- Location: LABCELL_X10_Y10_N27
\RAM|ram~538\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~538_combout\ = ( \RAM|ram~575_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~575_combout\,
	combout => \RAM|ram~538_combout\);

-- Location: LABCELL_X7_Y10_N39
\CPU|ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~9_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))
-- \CPU|ULA1|Add0~10\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~538_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(2) ) + ( \CPU|ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~538_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(2),
	cin => \CPU|ULA1|Add0~6\,
	sumout => \CPU|ULA1|Add0~9_sumout\,
	cout => \CPU|ULA1|Add0~10\);

-- Location: LABCELL_X7_Y10_N24
\CPU|REGA|DOUT[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[2]~feeder_combout\ = ( \CPU|ULA1|Add0~9_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~9_sumout\,
	combout => \CPU|REGA|DOUT[2]~feeder_combout\);

-- Location: LABCELL_X6_Y10_N54
\CPU|MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[2]~2_combout\ = (!\CPU|DECO|Equal10~1_combout\ & (!\ROM1|memROM~12_combout\ & \RAM|ram~575_combout\)) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000110011001000100011001100100010001100110010001000110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~575_combout\,
	combout => \CPU|MUX1|saida_MUX[2]~2_combout\);

-- Location: FF_X7_Y10_N26
\CPU|REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[2]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[2]~2_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(2));

-- Location: FF_X7_Y11_N35
\REG8|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(2),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(2));

-- Location: LABCELL_X7_Y11_N36
\RAM|ram~26feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~26feeder_combout\ = ( \CPU|REGA|DOUT\(3) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	combout => \RAM|ram~26feeder_combout\);

-- Location: FF_X7_Y11_N37
\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM|ram~26feeder_combout\,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

-- Location: FF_X6_Y11_N44
\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

-- Location: LABCELL_X10_Y10_N30
\RAM|ram~531\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~531_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~2_combout\ & (\RAM|ram~26_q\)) # (\ROM1|memROM~2_combout\ & ((\RAM|ram~18_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000111111000011000011111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~2_combout\,
	datac => \RAM|ALT_INV_ram~26_q\,
	datad => \RAM|ALT_INV_ram~18_q\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \RAM|ram~531_combout\);

-- Location: LABCELL_X10_Y10_N57
\RAM|ram~571\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~571_combout\ = ( \RAM|ram~531_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~531_combout\,
	combout => \RAM|ram~571_combout\);

-- Location: LABCELL_X10_Y10_N48
\RAM|ram~539\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~539_combout\ = ( \RAM|ram~571_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~571_combout\,
	combout => \RAM|ram~539_combout\);

-- Location: LABCELL_X7_Y10_N42
\CPU|ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~13_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~539_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))
-- \CPU|ULA1|Add0~14\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~539_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~11_combout\)))) ) + ( \CPU|REGA|DOUT\(3) ) + ( \CPU|ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \RAM|ALT_INV_ram~539_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(3),
	cin => \CPU|ULA1|Add0~10\,
	sumout => \CPU|ULA1|Add0~13_sumout\,
	cout => \CPU|ULA1|Add0~14\);

-- Location: LABCELL_X7_Y10_N27
\CPU|REGA|DOUT[3]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[3]~feeder_combout\ = ( \CPU|ULA1|Add0~13_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~13_sumout\,
	combout => \CPU|REGA|DOUT[3]~feeder_combout\);

-- Location: LABCELL_X6_Y10_N57
\CPU|MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[3]~3_combout\ = ( \RAM|ram~571_combout\ & ( (!\CPU|DECO|Equal10~1_combout\ & ((!\ROM1|memROM~12_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~11_combout\)) ) ) # ( !\RAM|ram~571_combout\ & ( (\CPU|DECO|Equal10~1_combout\ 
-- & \ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110101111000001011010111100000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~571_combout\,
	combout => \CPU|MUX1|saida_MUX[3]~3_combout\);

-- Location: FF_X7_Y10_N29
\CPU|REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[3]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[3]~3_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(3));

-- Location: FF_X7_Y11_N31
\REG8|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(3),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(3));

-- Location: FF_X7_Y11_N1
\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

-- Location: FF_X7_Y11_N10
\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

-- Location: LABCELL_X10_Y10_N51
\RAM|ram~532\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~532_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & \RAM|ram~19_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\RAM|ram~27_q\ & !\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~27_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~19_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~532_combout\);

-- Location: LABCELL_X10_Y10_N54
\RAM|ram~567\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~567_combout\ = ( \RAM|ram~532_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~532_combout\,
	combout => \RAM|ram~567_combout\);

-- Location: LABCELL_X7_Y10_N12
\RAM|ram~540\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~540_combout\ = ( \RAM|ram~567_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \RAM|ram~540_combout\);

-- Location: LABCELL_X6_Y10_N3
\CPU|MUX1|saida_MUX[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[4]~4_combout\ = ( \RAM|ram~567_combout\ & ( !\CPU|DECO|Equal10~1_combout\ $ (\ROM1|memROM~12_combout\) ) ) # ( !\RAM|ram~567_combout\ & ( (\CPU|DECO|Equal10~1_combout\ & \ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000110011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datab => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~567_combout\,
	combout => \CPU|MUX1|saida_MUX[4]~4_combout\);

-- Location: FF_X7_Y10_N20
\CPU|REGA|DOUT[4]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[4]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[4]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y10_N45
\CPU|ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~17_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ 
-- ))
-- \CPU|ULA1|Add0~18\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~540_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT[4]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~540_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[4]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~14\,
	sumout => \CPU|ULA1|Add0~17_sumout\,
	cout => \CPU|ULA1|Add0~18\);

-- Location: LABCELL_X7_Y10_N18
\CPU|REGA|DOUT[4]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[4]~feeder_combout\ = ( \CPU|ULA1|Add0~17_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~17_sumout\,
	combout => \CPU|REGA|DOUT[4]~feeder_combout\);

-- Location: FF_X7_Y10_N19
\CPU|REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[4]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[4]~4_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(4));

-- Location: FF_X7_Y11_N50
\REG8|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(4),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(4));

-- Location: FF_X7_Y11_N19
\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

-- Location: LABCELL_X7_Y11_N39
\RAM|ram~28feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~28feeder_combout\ = ( \CPU|REGA|DOUT\(5) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	combout => \RAM|ram~28feeder_combout\);

-- Location: FF_X7_Y11_N40
\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM|ram~28feeder_combout\,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

-- Location: LABCELL_X10_Y10_N24
\RAM|ram~533\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~533_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & \RAM|ram~20_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & \RAM|ram~28_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011001100000000001100110000001100000011000000110000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~4_combout\,
	datac => \RAM|ALT_INV_ram~20_q\,
	datad => \RAM|ALT_INV_ram~28_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~533_combout\);

-- Location: LABCELL_X10_Y10_N45
\RAM|ram~563\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~563_combout\ = ( \RAM|ram~533_combout\ & ( (!\ROM1|memROM~10_combout\ & !\ROM1|memROM~11_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~10_combout\,
	datad => \ROM1|ALT_INV_memROM~11_combout\,
	dataf => \RAM|ALT_INV_ram~533_combout\,
	combout => \RAM|ram~563_combout\);

-- Location: LABCELL_X10_Y10_N6
\RAM|ram~541\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~541_combout\ = ( !\ROM1|memROM~12_combout\ & ( \RAM|ram~563_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~563_combout\,
	dataf => \ROM1|ALT_INV_memROM~12_combout\,
	combout => \RAM|ram~541_combout\);

-- Location: LABCELL_X7_Y10_N48
\CPU|ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~21_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~541_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))
-- \CPU|ULA1|Add0~22\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~541_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \CPU|REGA|DOUT\(5) ) + ( \CPU|ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~541_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(5),
	cin => \CPU|ULA1|Add0~18\,
	sumout => \CPU|ULA1|Add0~21_sumout\,
	cout => \CPU|ULA1|Add0~22\);

-- Location: LABCELL_X7_Y10_N15
\CPU|REGA|DOUT[5]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[5]~feeder_combout\ = ( \CPU|ULA1|Add0~21_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~21_sumout\,
	combout => \CPU|REGA|DOUT[5]~feeder_combout\);

-- Location: LABCELL_X10_Y10_N33
\CPU|MUX1|saida_MUX[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[5]~5_combout\ = ( \ROM1|memROM~4_combout\ & ( ((\RAM|ram~563_combout\ & !\ROM1|memROM~12_combout\)) # (\CPU|DECO|Equal10~1_combout\) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\CPU|DECO|Equal10~1_combout\ & (\RAM|ram~563_combout\ & 
-- !\ROM1|memROM~12_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000000000000010100000000001011111010101010101111101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \RAM|ALT_INV_ram~563_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \CPU|MUX1|saida_MUX[5]~5_combout\);

-- Location: FF_X7_Y10_N17
\CPU|REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[5]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[5]~5_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(5));

-- Location: FF_X7_Y11_N46
\REG8|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(5),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(5));

-- Location: LABCELL_X7_Y11_N0
\RAM|ram~29feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~29feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \RAM|ram~29feeder_combout\);

-- Location: FF_X7_Y11_N2
\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \RAM|ram~29feeder_combout\,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

-- Location: FF_X6_Y10_N26
\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(6),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

-- Location: LABCELL_X6_Y10_N24
\RAM|ram~534\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~534_combout\ = ( \ROM1|memROM~2_combout\ & ( (!\ROM1|memROM~4_combout\ & \RAM|ram~21_q\) ) ) # ( !\ROM1|memROM~2_combout\ & ( (\RAM|ram~29_q\ & !\ROM1|memROM~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~29_q\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \RAM|ALT_INV_ram~21_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~534_combout\);

-- Location: LABCELL_X6_Y10_N33
\RAM|ram~559\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~559_combout\ = ( \RAM|ram~534_combout\ & ( (!\ROM1|memROM~11_combout\ & !\ROM1|memROM~10_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datad => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~534_combout\,
	combout => \RAM|ram~559_combout\);

-- Location: LABCELL_X6_Y10_N48
\RAM|ram~542\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~542_combout\ = ( \RAM|ram~559_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~559_combout\,
	combout => \RAM|ram~542_combout\);

-- Location: LABCELL_X7_Y10_N51
\CPU|ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~25_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))
-- \CPU|ULA1|Add0~26\ = CARRY(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~542_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~12_combout\)))) ) + ( \CPU|REGA|DOUT\(6) ) + ( \CPU|ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010100101100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	datad => \RAM|ALT_INV_ram~542_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	cin => \CPU|ULA1|Add0~22\,
	sumout => \CPU|ULA1|Add0~25_sumout\,
	cout => \CPU|ULA1|Add0~26\);

-- Location: LABCELL_X7_Y10_N21
\CPU|REGA|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[6]~feeder_combout\ = ( \CPU|ULA1|Add0~25_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|ULA1|ALT_INV_Add0~25_sumout\,
	combout => \CPU|REGA|DOUT[6]~feeder_combout\);

-- Location: LABCELL_X6_Y10_N51
\CPU|MUX1|saida_MUX[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[6]~6_combout\ = ( \CPU|DECO|Equal10~1_combout\ & ( \ROM1|memROM~12_combout\ ) ) # ( !\CPU|DECO|Equal10~1_combout\ & ( (\RAM|ram~559_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~559_combout\,
	datac => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	combout => \CPU|MUX1|saida_MUX[6]~6_combout\);

-- Location: FF_X7_Y10_N22
\CPU|REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[6]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[6]~6_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(6));

-- Location: LABCELL_X7_Y11_N57
\REG8|DOUT[6]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \REG8|DOUT[6]~feeder_combout\ = ( \CPU|REGA|DOUT\(6) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \CPU|REGA|ALT_INV_DOUT\(6),
	combout => \REG8|DOUT[6]~feeder_combout\);

-- Location: FF_X7_Y11_N58
\REG8|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \REG8|DOUT[6]~feeder_combout\,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(6));

-- Location: FF_X7_Y11_N14
\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~550_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

-- Location: FF_X6_Y10_N17
\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \RAM|ram~549_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

-- Location: LABCELL_X6_Y10_N15
\RAM|ram~535\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~535_combout\ = ( \RAM|ram~22_q\ & ( \ROM1|memROM~2_combout\ & ( !\ROM1|memROM~4_combout\ ) ) ) # ( \RAM|ram~22_q\ & ( !\ROM1|memROM~2_combout\ & ( (\RAM|ram~30_q\ & !\ROM1|memROM~4_combout\) ) ) ) # ( !\RAM|ram~22_q\ & ( !\ROM1|memROM~2_combout\ 
-- & ( (\RAM|ram~30_q\ & !\ROM1|memROM~4_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010101010000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~30_q\,
	datad => \ROM1|ALT_INV_memROM~4_combout\,
	datae => \RAM|ALT_INV_ram~22_q\,
	dataf => \ROM1|ALT_INV_memROM~2_combout\,
	combout => \RAM|ram~535_combout\);

-- Location: LABCELL_X6_Y10_N6
\RAM|ram~555\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~555_combout\ = ( !\ROM1|memROM~10_combout\ & ( \RAM|ram~535_combout\ & ( !\ROM1|memROM~11_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ROM1|ALT_INV_memROM~11_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \RAM|ALT_INV_ram~535_combout\,
	combout => \RAM|ram~555_combout\);

-- Location: LABCELL_X6_Y10_N21
\RAM|ram~543\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~543_combout\ = ( \RAM|ram~555_combout\ & ( !\ROM1|memROM~12_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \RAM|ALT_INV_ram~555_combout\,
	combout => \RAM|ram~543_combout\);

-- Location: LABCELL_X6_Y10_N18
\CPU|MUX1|saida_MUX[7]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|MUX1|saida_MUX[7]~7_combout\ = ( \CPU|DECO|Equal10~1_combout\ & ( \ROM1|memROM~4_combout\ ) ) # ( !\CPU|DECO|Equal10~1_combout\ & ( (\RAM|ram~555_combout\ & !\ROM1|memROM~12_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_ram~555_combout\,
	datac => \ROM1|ALT_INV_memROM~4_combout\,
	datad => \ROM1|ALT_INV_memROM~12_combout\,
	dataf => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	combout => \CPU|MUX1|saida_MUX[7]~7_combout\);

-- Location: FF_X7_Y10_N8
\CPU|REGA|DOUT[7]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[7]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT[7]~DUPLICATE_q\);

-- Location: LABCELL_X7_Y10_N54
\CPU|ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|ULA1|Add0~29_sumout\ = SUM(( !\CPU|DECO|Equal10~2_combout\ $ (((!\CPU|DECO|Equal10~1_combout\ & ((\RAM|ram~543_combout\))) # (\CPU|DECO|Equal10~1_combout\ & (\ROM1|memROM~4_combout\)))) ) + ( \CPU|REGA|DOUT[7]~DUPLICATE_q\ ) + ( \CPU|ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001110000100101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~4_combout\,
	datab => \CPU|DECO|ALT_INV_Equal10~1_combout\,
	datac => \CPU|DECO|ALT_INV_Equal10~2_combout\,
	datad => \RAM|ALT_INV_ram~543_combout\,
	dataf => \CPU|REGA|ALT_INV_DOUT[7]~DUPLICATE_q\,
	cin => \CPU|ULA1|Add0~26\,
	sumout => \CPU|ULA1|Add0~29_sumout\);

-- Location: LABCELL_X7_Y10_N6
\CPU|REGA|DOUT[7]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \CPU|REGA|DOUT[7]~feeder_combout\ = \CPU|ULA1|Add0~29_sumout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000000111111110000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \CPU|ULA1|ALT_INV_Add0~29_sumout\,
	combout => \CPU|REGA|DOUT[7]~feeder_combout\);

-- Location: FF_X7_Y10_N7
\CPU|REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	d => \CPU|REGA|DOUT[7]~feeder_combout\,
	asdata => \CPU|MUX1|saida_MUX[7]~7_combout\,
	sload => \CPU|DECO|saida[4]~0_combout\,
	ena => \CPU|DECO|saida~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CPU|REGA|DOUT\(7));

-- Location: FF_X7_Y11_N44
\REG8|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \CPU|REGA|DOUT\(7),
	sload => VCC,
	ena => \habReg8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REG8|DOUT\(7));

-- Location: FF_X9_Y11_N38
\FF2|DOUT~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \FF2|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|DOUT~DUPLICATE_q\);

-- Location: MLABCELL_X9_Y11_N15
\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( !\ROM1|memROM~7_combout\ & ( \ROM1|memROM~5_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~6_combout\ & !\ROM1|memROM~8_combout\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~5_combout\,
	combout => \RAM|process_0~0_combout\);

-- Location: MLABCELL_X9_Y11_N24
\habFF2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habFF2~0_combout\ = ( !\ROM1|memROM~10_combout\ & ( !\ROM1|memROM~4_combout\ & ( (\RAM|process_0~0_combout\ & \ROM1|memROM~3_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \RAM|ALT_INV_process_0~0_combout\,
	datac => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~10_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \habFF2~0_combout\);

-- Location: MLABCELL_X9_Y11_N57
\FF2|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF2|DOUT~0_combout\ = ( \FF2|DOUT~DUPLICATE_q\ & ( \habFF2~0_combout\ & ( (\ROM1|memROM~2_combout\) # (\CPU|REGA|DOUT\(0)) ) ) ) # ( !\FF2|DOUT~DUPLICATE_q\ & ( \habFF2~0_combout\ & ( (\CPU|REGA|DOUT\(0) & !\ROM1|memROM~2_combout\) ) ) ) # ( 
-- \FF2|DOUT~DUPLICATE_q\ & ( !\habFF2~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100110000001100000011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|REGA|ALT_INV_DOUT\(0),
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \FF2|ALT_INV_DOUT~DUPLICATE_q\,
	dataf => \ALT_INV_habFF2~0_combout\,
	combout => \FF2|DOUT~0_combout\);

-- Location: FF_X9_Y11_N37
\FF2|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \FF2|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF2|DOUT~q\);

-- Location: MLABCELL_X9_Y11_N21
\habFF1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \habFF1~0_combout\ = ( \ROM1|memROM~9_combout\ & ( (\ROM1|memROM~1_combout\ & !\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000110011000000000011001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datad => \ROM1|ALT_INV_memROM~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~9_combout\,
	combout => \habFF1~0_combout\);

-- Location: MLABCELL_X9_Y11_N39
\FF1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FF1|DOUT~0_combout\ = ( \habFF1~0_combout\ & ( \ROM1|memROM~4_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( !\habFF1~0_combout\ & ( \ROM1|memROM~4_combout\ & ( \FF1|DOUT~q\ ) ) ) # ( \habFF1~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( (!\RAM|process_0~0_combout\ & 
-- (\FF1|DOUT~q\)) # (\RAM|process_0~0_combout\ & ((!\ROM1|memROM~3_combout\ & (\FF1|DOUT~q\)) # (\ROM1|memROM~3_combout\ & ((\CPU|REGA|DOUT\(0)))))) ) ) ) # ( !\habFF1~0_combout\ & ( !\ROM1|memROM~4_combout\ & ( \FF1|DOUT~q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110010011100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_process_0~0_combout\,
	datab => \FF1|ALT_INV_DOUT~q\,
	datac => \CPU|REGA|ALT_INV_DOUT\(0),
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ALT_INV_habFF1~0_combout\,
	dataf => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \FF1|DOUT~0_combout\);

-- Location: FF_X9_Y11_N32
\FF1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \gravar:detectorSub0|saida~combout\,
	asdata => \FF1|DOUT~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FF1|DOUT~q\);

-- Location: LABCELL_X10_Y11_N15
\display5|rascSaida7seg[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[0]~0_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) $ (\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\ $ (\CPU|PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100100001001000010010000100110000010100000101000001010000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[0]~0_combout\);

-- Location: LABCELL_X12_Y10_N24
\display5|rascSaida7seg[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[1]~1_combout\ = (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (!\CPU|PC|DOUT[3]~DUPLICATE_q\ $ (!\CPU|PC|DOUT[0]~DUPLICATE_q\)))) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((!\CPU|PC|DOUT[0]~DUPLICATE_q\ & 
-- ((\CPU|PC|DOUT[2]~DUPLICATE_q\))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[3]~DUPLICATE_q\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000101111001000000010111100100000001011110010000000101111001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[1]~1_combout\);

-- Location: LABCELL_X12_Y10_N18
\display5|rascSaida7seg[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[2]~2_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( 
-- \CPU|PC|DOUT[3]~DUPLICATE_q\ ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT[3]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000000001111111100000000000000000000000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[3]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[2]~2_combout\);

-- Location: LABCELL_X10_Y11_N21
\display5|rascSaida7seg[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[3]~3_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & ((\CPU|PC|DOUT[0]~DUPLICATE_q\))) ) ) # ( 
-- !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & (!\CPU|PC|DOUT\(3) & \CPU|PC|DOUT[0]~DUPLICATE_q\)) # (\CPU|PC|DOUT[1]~DUPLICATE_q\ & (\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[0]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001100000011000000110000001100010000101100001011000010110000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datab => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[3]~3_combout\);

-- Location: LABCELL_X7_Y11_N12
\display5|rascSaida7seg[4]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[4]~4_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( !\CPU|PC|DOUT\(3) ) ) ) # ( !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( \CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3)) # 
-- (!\CPU|PC|DOUT[1]~DUPLICATE_q\) ) ) ) # ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( !\CPU|PC|DOUT[0]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT\(3) & !\CPU|PC|DOUT[1]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000001010000011111010111110101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \CPU|PC|ALT_INV_DOUT\(3),
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datae => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[4]~4_combout\);

-- Location: LABCELL_X7_Y11_N9
\display5|rascSaida7seg[5]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[5]~5_combout\ = ( \CPU|PC|DOUT\(3) & ( (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & !\CPU|PC|DOUT[1]~DUPLICATE_q\)) ) ) # ( !\CPU|PC|DOUT\(3) & ( (!\CPU|PC|DOUT[2]~DUPLICATE_q\ & ((\CPU|PC|DOUT[1]~DUPLICATE_q\) # 
-- (\CPU|PC|DOUT[0]~DUPLICATE_q\))) # (\CPU|PC|DOUT[2]~DUPLICATE_q\ & (\CPU|PC|DOUT[0]~DUPLICATE_q\ & \CPU|PC|DOUT[1]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110011001111000011001100111100000011000000000000001100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	dataf => \CPU|PC|ALT_INV_DOUT\(3),
	combout => \display5|rascSaida7seg[5]~5_combout\);

-- Location: LABCELL_X10_Y11_N36
\display5|rascSaida7seg[6]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \display5|rascSaida7seg[6]~6_combout\ = ( \CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[0]~DUPLICATE_q\ & (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & \CPU|PC|DOUT\(3))) # (\CPU|PC|DOUT[0]~DUPLICATE_q\ & (\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3))) ) ) # ( 
-- !\CPU|PC|DOUT[2]~DUPLICATE_q\ & ( (!\CPU|PC|DOUT[1]~DUPLICATE_q\ & !\CPU|PC|DOUT\(3)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000011110000000000001111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \CPU|PC|ALT_INV_DOUT[0]~DUPLICATE_q\,
	datac => \CPU|PC|ALT_INV_DOUT[1]~DUPLICATE_q\,
	datad => \CPU|PC|ALT_INV_DOUT\(3),
	dataf => \CPU|PC|ALT_INV_DOUT[2]~DUPLICATE_q\,
	combout => \display5|rascSaida7seg[6]~6_combout\);

-- Location: IOIBUF_X11_Y0_N35
\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X14_Y0_N18
\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X33_Y0_N41
\SW[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: IOIBUF_X33_Y0_N58
\SW[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X34_Y0_N1
\SW[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X34_Y0_N18
\SW[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X36_Y0_N35
\SW[4]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X36_Y0_N52
\SW[5]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X34_Y0_N52
\SW[6]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X34_Y0_N35
\SW[7]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X33_Y0_N92
\SW[8]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X33_Y0_N75
\SW[9]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: MLABCELL_X34_Y38_N0
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


