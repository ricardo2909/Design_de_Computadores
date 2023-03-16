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

-- DATE "03/16/2023 17:05:08"

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

ENTITY 	Aula5 IS
    PORT (
	palavra_controle : OUT std_logic_vector(11 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(8 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula5;

ARCHITECTURE structure OF Aula5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_palavra_controle : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_LEDR : std_logic_vector(9 DOWNTO 0);
SIGNAL \CLOCK_50~input_o\ : std_logic;
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
SIGNAL \palavra_controle[0]~output_o\ : std_logic;
SIGNAL \palavra_controle[1]~output_o\ : std_logic;
SIGNAL \palavra_controle[2]~output_o\ : std_logic;
SIGNAL \palavra_controle[3]~output_o\ : std_logic;
SIGNAL \palavra_controle[4]~output_o\ : std_logic;
SIGNAL \palavra_controle[5]~output_o\ : std_logic;
SIGNAL \palavra_controle[6]~output_o\ : std_logic;
SIGNAL \palavra_controle[7]~output_o\ : std_logic;
SIGNAL \palavra_controle[8]~output_o\ : std_logic;
SIGNAL \palavra_controle[9]~output_o\ : std_logic;
SIGNAL \palavra_controle[10]~output_o\ : std_logic;
SIGNAL \palavra_controle[11]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
SIGNAL \PC_OUT[3]~output_o\ : std_logic;
SIGNAL \PC_OUT[4]~output_o\ : std_logic;
SIGNAL \PC_OUT[5]~output_o\ : std_logic;
SIGNAL \PC_OUT[6]~output_o\ : std_logic;
SIGNAL \PC_OUT[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[8]~output_o\ : std_logic;
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
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \ROM1|memROM~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~2\ : std_logic;
SIGNAL \incrementaPC|Add0~6\ : std_logic;
SIGNAL \incrementaPC|Add0~10\ : std_logic;
SIGNAL \incrementaPC|Add0~13_sumout\ : std_logic;
SIGNAL \DECO|saida~6_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ROM1|memROM~4_combout\ : std_logic;
SIGNAL \DECO|Equal10~0_combout\ : std_logic;
SIGNAL \DECO|saida~1_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~0_combout\ : std_logic;
SIGNAL \DECO|saida[4]~8_combout\ : std_logic;
SIGNAL \DECO|saida[6]~4_combout\ : std_logic;
SIGNAL \DECO|saida[5]~3_combout\ : std_logic;
SIGNAL \DECO|saida~5_combout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~14\ : std_logic;
SIGNAL \incrementaPC|Add0~33_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[4]~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~34\ : std_logic;
SIGNAL \incrementaPC|Add0~29_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[5]~8_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~30\ : std_logic;
SIGNAL \incrementaPC|Add0~25_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[6]~7_combout\ : std_logic;
SIGNAL \ROM1|memROM~11_combout\ : std_logic;
SIGNAL \ROM1|memROM~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~7_combout\ : std_logic;
SIGNAL \RAM|process_0~0_combout\ : std_logic;
SIGNAL \RAM|ram~173_combout\ : std_logic;
SIGNAL \RAM|ram~40_q\ : std_logic;
SIGNAL \RAM|ram~145_combout\ : std_logic;
SIGNAL \RAM|ram~174_combout\ : std_logic;
SIGNAL \RAM|ram~48_q\ : std_logic;
SIGNAL \RAM|ram~146_combout\ : std_logic;
SIGNAL \RAM|ram~175_combout\ : std_logic;
SIGNAL \RAM|ram~24_q\ : std_logic;
SIGNAL \RAM|ram~147_combout\ : std_logic;
SIGNAL \RAM|ram~176_combout\ : std_logic;
SIGNAL \RAM|ram~32_q\ : std_logic;
SIGNAL \RAM|ram~148_combout\ : std_logic;
SIGNAL \RAM|ram~149_combout\ : std_logic;
SIGNAL \DECO|saida[4]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~4_combout\ : std_logic;
SIGNAL \RAM|ram~33_q\ : std_logic;
SIGNAL \RAM|ram~41_q\ : std_logic;
SIGNAL \RAM|ram~17_q\ : std_logic;
SIGNAL \RAM|ram~25_q\ : std_logic;
SIGNAL \RAM|ram~159_combout\ : std_logic;
SIGNAL \RAM|ram~160_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~5_combout\ : std_logic;
SIGNAL \RAM|ram~34_q\ : std_logic;
SIGNAL \RAM|ram~161_combout\ : std_logic;
SIGNAL \RAM|ram~42_q\ : std_logic;
SIGNAL \RAM|ram~162_combout\ : std_logic;
SIGNAL \RAM|ram~18_q\ : std_logic;
SIGNAL \RAM|ram~163_combout\ : std_logic;
SIGNAL \RAM|ram~26_q\ : std_logic;
SIGNAL \RAM|ram~164_combout\ : std_logic;
SIGNAL \RAM|ram~165_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~6_combout\ : std_logic;
SIGNAL \RAM|ram~35_q\ : std_logic;
SIGNAL \RAM|ram~43_q\ : std_logic;
SIGNAL \RAM|ram~19_q\ : std_logic;
SIGNAL \RAM|ram~27_q\ : std_logic;
SIGNAL \RAM|ram~166_combout\ : std_logic;
SIGNAL \RAM|ram~167_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~7_combout\ : std_logic;
SIGNAL \RAM|ram~36_q\ : std_logic;
SIGNAL \RAM|ram~168_combout\ : std_logic;
SIGNAL \RAM|ram~44_q\ : std_logic;
SIGNAL \RAM|ram~169_combout\ : std_logic;
SIGNAL \RAM|ram~20_q\ : std_logic;
SIGNAL \RAM|ram~170_combout\ : std_logic;
SIGNAL \RAM|ram~28_q\ : std_logic;
SIGNAL \RAM|ram~171_combout\ : std_logic;
SIGNAL \RAM|ram~172_combout\ : std_logic;
SIGNAL \MUX1|saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~30\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~3_combout\ : std_logic;
SIGNAL \RAM|ram~37_q\ : std_logic;
SIGNAL \RAM|ram~45_q\ : std_logic;
SIGNAL \RAM|ram~21_q\ : std_logic;
SIGNAL \RAM|ram~29_q\ : std_logic;
SIGNAL \RAM|ram~157_combout\ : std_logic;
SIGNAL \RAM|ram~158_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~2_combout\ : std_logic;
SIGNAL \RAM|ram~38_q\ : std_logic;
SIGNAL \RAM|ram~152_combout\ : std_logic;
SIGNAL \RAM|ram~46_q\ : std_logic;
SIGNAL \RAM|ram~153_combout\ : std_logic;
SIGNAL \RAM|ram~22_q\ : std_logic;
SIGNAL \RAM|ram~154_combout\ : std_logic;
SIGNAL \RAM|ram~30_q\ : std_logic;
SIGNAL \RAM|ram~155_combout\ : std_logic;
SIGNAL \RAM|ram~156_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~1_combout\ : std_logic;
SIGNAL \RAM|ram~39_q\ : std_logic;
SIGNAL \RAM|ram~47_q\ : std_logic;
SIGNAL \RAM|ram~23_q\ : std_logic;
SIGNAL \RAM|ram~31_q\ : std_logic;
SIGNAL \RAM|ram~150_combout\ : std_logic;
SIGNAL \RAM|ram~151_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~0_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~1_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~2_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~3_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~4_combout\ : std_logic;
SIGNAL \FLAG1|DOUT~q\ : std_logic;
SIGNAL \PC|DOUT[1]~1_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~9_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \ROM1|memROM~3_combout\ : std_logic;
SIGNAL \DECO|Equal4~0_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~5_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~2_combout\ : std_logic;
SIGNAL \DECO|saida~7_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~26\ : std_logic;
SIGNAL \incrementaPC|Add0~21_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[7]~6_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~9_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~22\ : std_logic;
SIGNAL \incrementaPC|Add0~17_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[8]~4_combout\ : std_logic;
SIGNAL \ROM1|memROM~10_combout\ : std_logic;
SIGNAL \ROM1|memROM~5_combout\ : std_logic;
SIGNAL \incrementaPC|Add0~1_sumout\ : std_logic;
SIGNAL \MUX2|saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \DECO|Equal5~0_combout\ : std_logic;
SIGNAL \DECO|saida[1]~0_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ENDRET|DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \RAM|ALT_INV_process_0~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~11_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~10_combout\ : std_logic;
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \DECO|ALT_INV_saida[4]~8_combout\ : std_logic;
SIGNAL \FLAG1|ALT_INV_DOUT~3_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[3]~3_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~172_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~171_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~28_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~170_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~20_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~169_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~44_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~168_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~36_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~2_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~167_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~166_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~27_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~19_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~43_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~35_q\ : std_logic;
SIGNAL \FLAG1|ALT_INV_DOUT~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~165_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~164_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~26_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~163_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~18_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~162_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~42_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~161_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~34_q\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~160_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~159_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~25_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~17_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~41_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~33_q\ : std_logic;
SIGNAL \FLAG1|ALT_INV_DOUT~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~158_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~157_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~29_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~21_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~45_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~37_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~156_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~155_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~30_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~154_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~22_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~153_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~46_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~152_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~38_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[6]~1_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~151_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~150_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~31_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~23_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~47_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~39_q\ : std_logic;
SIGNAL \ULA1|ALT_INV_saida[7]~0_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~149_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~148_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~32_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~147_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~24_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~146_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~48_q\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~145_combout\ : std_logic;
SIGNAL \RAM|ALT_INV_ram~40_q\ : std_logic;
SIGNAL \FLAG1|ALT_INV_DOUT~0_combout\ : std_logic;
SIGNAL \ENDRET|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \MUX2|ALT_INV_saida_MUX[7]~5_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~9_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~8_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~7_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~6_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~1_combout\ : std_logic;
SIGNAL \FLAG1|ALT_INV_DOUT~q\ : std_logic;
SIGNAL \DECO|ALT_INV_Equal10~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT[1]~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~5_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_Equal4~0_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida~7_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida~6_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida~5_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida[6]~4_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida[4]~2_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_saida~1_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~4_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~3_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~2_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~1_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~33_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \incrementaPC|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

palavra_controle <= ww_palavra_controle;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM|ALT_INV_process_0~0_combout\ <= NOT \RAM|process_0~0_combout\;
\ROM1|ALT_INV_memROM~11_combout\ <= NOT \ROM1|memROM~11_combout\;
\ROM1|ALT_INV_memROM~10_combout\ <= NOT \ROM1|memROM~10_combout\;
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\DECO|ALT_INV_saida[4]~8_combout\ <= NOT \DECO|saida[4]~8_combout\;
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\FLAG1|ALT_INV_DOUT~3_combout\ <= NOT \FLAG1|DOUT~3_combout\;
\MUX1|ALT_INV_saida_MUX[3]~3_combout\ <= NOT \MUX1|saida_MUX[3]~3_combout\;
\RAM|ALT_INV_ram~172_combout\ <= NOT \RAM|ram~172_combout\;
\RAM|ALT_INV_ram~171_combout\ <= NOT \RAM|ram~171_combout\;
\RAM|ALT_INV_ram~28_q\ <= NOT \RAM|ram~28_q\;
\RAM|ALT_INV_ram~170_combout\ <= NOT \RAM|ram~170_combout\;
\RAM|ALT_INV_ram~20_q\ <= NOT \RAM|ram~20_q\;
\RAM|ALT_INV_ram~169_combout\ <= NOT \RAM|ram~169_combout\;
\RAM|ALT_INV_ram~44_q\ <= NOT \RAM|ram~44_q\;
\RAM|ALT_INV_ram~168_combout\ <= NOT \RAM|ram~168_combout\;
\RAM|ALT_INV_ram~36_q\ <= NOT \RAM|ram~36_q\;
\MUX1|ALT_INV_saida_MUX[2]~2_combout\ <= NOT \MUX1|saida_MUX[2]~2_combout\;
\RAM|ALT_INV_ram~167_combout\ <= NOT \RAM|ram~167_combout\;
\RAM|ALT_INV_ram~166_combout\ <= NOT \RAM|ram~166_combout\;
\RAM|ALT_INV_ram~27_q\ <= NOT \RAM|ram~27_q\;
\RAM|ALT_INV_ram~19_q\ <= NOT \RAM|ram~19_q\;
\RAM|ALT_INV_ram~43_q\ <= NOT \RAM|ram~43_q\;
\RAM|ALT_INV_ram~35_q\ <= NOT \RAM|ram~35_q\;
\FLAG1|ALT_INV_DOUT~2_combout\ <= NOT \FLAG1|DOUT~2_combout\;
\MUX1|ALT_INV_saida_MUX[1]~1_combout\ <= NOT \MUX1|saida_MUX[1]~1_combout\;
\RAM|ALT_INV_ram~165_combout\ <= NOT \RAM|ram~165_combout\;
\RAM|ALT_INV_ram~164_combout\ <= NOT \RAM|ram~164_combout\;
\RAM|ALT_INV_ram~26_q\ <= NOT \RAM|ram~26_q\;
\RAM|ALT_INV_ram~163_combout\ <= NOT \RAM|ram~163_combout\;
\RAM|ALT_INV_ram~18_q\ <= NOT \RAM|ram~18_q\;
\RAM|ALT_INV_ram~162_combout\ <= NOT \RAM|ram~162_combout\;
\RAM|ALT_INV_ram~42_q\ <= NOT \RAM|ram~42_q\;
\RAM|ALT_INV_ram~161_combout\ <= NOT \RAM|ram~161_combout\;
\RAM|ALT_INV_ram~34_q\ <= NOT \RAM|ram~34_q\;
\MUX1|ALT_INV_saida_MUX[0]~0_combout\ <= NOT \MUX1|saida_MUX[0]~0_combout\;
\RAM|ALT_INV_ram~160_combout\ <= NOT \RAM|ram~160_combout\;
\RAM|ALT_INV_ram~159_combout\ <= NOT \RAM|ram~159_combout\;
\RAM|ALT_INV_ram~25_q\ <= NOT \RAM|ram~25_q\;
\RAM|ALT_INV_ram~17_q\ <= NOT \RAM|ram~17_q\;
\RAM|ALT_INV_ram~41_q\ <= NOT \RAM|ram~41_q\;
\RAM|ALT_INV_ram~33_q\ <= NOT \RAM|ram~33_q\;
\FLAG1|ALT_INV_DOUT~1_combout\ <= NOT \FLAG1|DOUT~1_combout\;
\RAM|ALT_INV_ram~158_combout\ <= NOT \RAM|ram~158_combout\;
\RAM|ALT_INV_ram~157_combout\ <= NOT \RAM|ram~157_combout\;
\RAM|ALT_INV_ram~29_q\ <= NOT \RAM|ram~29_q\;
\RAM|ALT_INV_ram~21_q\ <= NOT \RAM|ram~21_q\;
\RAM|ALT_INV_ram~45_q\ <= NOT \RAM|ram~45_q\;
\RAM|ALT_INV_ram~37_q\ <= NOT \RAM|ram~37_q\;
\RAM|ALT_INV_ram~156_combout\ <= NOT \RAM|ram~156_combout\;
\RAM|ALT_INV_ram~155_combout\ <= NOT \RAM|ram~155_combout\;
\RAM|ALT_INV_ram~30_q\ <= NOT \RAM|ram~30_q\;
\RAM|ALT_INV_ram~154_combout\ <= NOT \RAM|ram~154_combout\;
\RAM|ALT_INV_ram~22_q\ <= NOT \RAM|ram~22_q\;
\RAM|ALT_INV_ram~153_combout\ <= NOT \RAM|ram~153_combout\;
\RAM|ALT_INV_ram~46_q\ <= NOT \RAM|ram~46_q\;
\RAM|ALT_INV_ram~152_combout\ <= NOT \RAM|ram~152_combout\;
\RAM|ALT_INV_ram~38_q\ <= NOT \RAM|ram~38_q\;
\ULA1|ALT_INV_saida[6]~1_combout\ <= NOT \ULA1|saida[6]~1_combout\;
\RAM|ALT_INV_ram~151_combout\ <= NOT \RAM|ram~151_combout\;
\RAM|ALT_INV_ram~150_combout\ <= NOT \RAM|ram~150_combout\;
\RAM|ALT_INV_ram~31_q\ <= NOT \RAM|ram~31_q\;
\RAM|ALT_INV_ram~23_q\ <= NOT \RAM|ram~23_q\;
\RAM|ALT_INV_ram~47_q\ <= NOT \RAM|ram~47_q\;
\RAM|ALT_INV_ram~39_q\ <= NOT \RAM|ram~39_q\;
\ULA1|ALT_INV_saida[7]~0_combout\ <= NOT \ULA1|saida[7]~0_combout\;
\RAM|ALT_INV_ram~149_combout\ <= NOT \RAM|ram~149_combout\;
\RAM|ALT_INV_ram~148_combout\ <= NOT \RAM|ram~148_combout\;
\RAM|ALT_INV_ram~32_q\ <= NOT \RAM|ram~32_q\;
\RAM|ALT_INV_ram~147_combout\ <= NOT \RAM|ram~147_combout\;
\RAM|ALT_INV_ram~24_q\ <= NOT \RAM|ram~24_q\;
\RAM|ALT_INV_ram~146_combout\ <= NOT \RAM|ram~146_combout\;
\RAM|ALT_INV_ram~48_q\ <= NOT \RAM|ram~48_q\;
\RAM|ALT_INV_ram~145_combout\ <= NOT \RAM|ram~145_combout\;
\RAM|ALT_INV_ram~40_q\ <= NOT \RAM|ram~40_q\;
\FLAG1|ALT_INV_DOUT~0_combout\ <= NOT \FLAG1|DOUT~0_combout\;
\ENDRET|ALT_INV_DOUT\(4) <= NOT \ENDRET|DOUT\(4);
\ENDRET|ALT_INV_DOUT\(5) <= NOT \ENDRET|DOUT\(5);
\ENDRET|ALT_INV_DOUT\(6) <= NOT \ENDRET|DOUT\(6);
\MUX2|ALT_INV_saida_MUX[7]~5_combout\ <= NOT \MUX2|saida_MUX[7]~5_combout\;
\ENDRET|ALT_INV_DOUT\(7) <= NOT \ENDRET|DOUT\(7);
\ENDRET|ALT_INV_DOUT\(8) <= NOT \ENDRET|DOUT\(8);
\ROM1|ALT_INV_memROM~9_combout\ <= NOT \ROM1|memROM~9_combout\;
\ENDRET|ALT_INV_DOUT\(3) <= NOT \ENDRET|DOUT\(3);
\ROM1|ALT_INV_memROM~8_combout\ <= NOT \ROM1|memROM~8_combout\;
\ENDRET|ALT_INV_DOUT\(2) <= NOT \ENDRET|DOUT\(2);
\ROM1|ALT_INV_memROM~7_combout\ <= NOT \ROM1|memROM~7_combout\;
\ENDRET|ALT_INV_DOUT\(1) <= NOT \ENDRET|DOUT\(1);
\ROM1|ALT_INV_memROM~6_combout\ <= NOT \ROM1|memROM~6_combout\;
\ENDRET|ALT_INV_DOUT\(0) <= NOT \ENDRET|DOUT\(0);
\PC|ALT_INV_DOUT[1]~1_combout\ <= NOT \PC|DOUT[1]~1_combout\;
\FLAG1|ALT_INV_DOUT~q\ <= NOT \FLAG1|DOUT~q\;
\DECO|ALT_INV_Equal10~0_combout\ <= NOT \DECO|Equal10~0_combout\;
\PC|ALT_INV_DOUT[1]~0_combout\ <= NOT \PC|DOUT[1]~0_combout\;
\ROM1|ALT_INV_memROM~5_combout\ <= NOT \ROM1|memROM~5_combout\;
\DECO|ALT_INV_Equal4~0_combout\ <= NOT \DECO|Equal4~0_combout\;
\DECO|ALT_INV_saida~7_combout\ <= NOT \DECO|saida~7_combout\;
\DECO|ALT_INV_saida~6_combout\ <= NOT \DECO|saida~6_combout\;
\DECO|ALT_INV_saida~5_combout\ <= NOT \DECO|saida~5_combout\;
\DECO|ALT_INV_saida[6]~4_combout\ <= NOT \DECO|saida[6]~4_combout\;
\DECO|ALT_INV_saida[4]~2_combout\ <= NOT \DECO|saida[4]~2_combout\;
\DECO|ALT_INV_saida~1_combout\ <= NOT \DECO|saida~1_combout\;
\ROM1|ALT_INV_memROM~4_combout\ <= NOT \ROM1|memROM~4_combout\;
\ROM1|ALT_INV_memROM~3_combout\ <= NOT \ROM1|memROM~3_combout\;
\ROM1|ALT_INV_memROM~2_combout\ <= NOT \ROM1|memROM~2_combout\;
\ROM1|ALT_INV_memROM~1_combout\ <= NOT \ROM1|memROM~1_combout\;
\PC|ALT_INV_DOUT\(4) <= NOT \PC|DOUT\(4);
\PC|ALT_INV_DOUT\(5) <= NOT \PC|DOUT\(5);
\PC|ALT_INV_DOUT\(6) <= NOT \PC|DOUT\(6);
\PC|ALT_INV_DOUT\(7) <= NOT \PC|DOUT\(7);
\PC|ALT_INV_DOUT\(8) <= NOT \PC|DOUT\(8);
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(3) <= NOT \PC|DOUT\(3);
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\incrementaPC|ALT_INV_Add0~33_sumout\ <= NOT \incrementaPC|Add0~33_sumout\;
\incrementaPC|ALT_INV_Add0~29_sumout\ <= NOT \incrementaPC|Add0~29_sumout\;
\incrementaPC|ALT_INV_Add0~25_sumout\ <= NOT \incrementaPC|Add0~25_sumout\;
\incrementaPC|ALT_INV_Add0~21_sumout\ <= NOT \incrementaPC|Add0~21_sumout\;
\incrementaPC|ALT_INV_Add0~17_sumout\ <= NOT \incrementaPC|Add0~17_sumout\;
\incrementaPC|ALT_INV_Add0~13_sumout\ <= NOT \incrementaPC|Add0~13_sumout\;
\incrementaPC|ALT_INV_Add0~9_sumout\ <= NOT \incrementaPC|Add0~9_sumout\;
\incrementaPC|ALT_INV_Add0~5_sumout\ <= NOT \incrementaPC|Add0~5_sumout\;
\incrementaPC|ALT_INV_Add0~1_sumout\ <= NOT \incrementaPC|Add0~1_sumout\;

\palavra_controle[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|Equal5~0_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[0]~output_o\);

\palavra_controle[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[1]~0_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[1]~output_o\);

\palavra_controle[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|ALT_INV_saida~1_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[2]~output_o\);

\palavra_controle[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \palavra_controle[3]~output_o\);

\palavra_controle[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[4]~2_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[4]~output_o\);

\palavra_controle[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[5]~3_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[5]~output_o\);

\palavra_controle[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida[6]~4_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[6]~output_o\);

\palavra_controle[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~5_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[7]~output_o\);

\palavra_controle[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~6_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[8]~output_o\);

\palavra_controle[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~7_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[9]~output_o\);

\palavra_controle[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|Equal4~0_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[10]~output_o\);

\palavra_controle[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \DECO|saida~6_combout\,
	devoe => ww_devoe,
	o => \palavra_controle[11]~output_o\);

\PC_OUT[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(0),
	devoe => ww_devoe,
	o => \PC_OUT[0]~output_o\);

\PC_OUT[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(1),
	devoe => ww_devoe,
	o => \PC_OUT[1]~output_o\);

\PC_OUT[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(2),
	devoe => ww_devoe,
	o => \PC_OUT[2]~output_o\);

\PC_OUT[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(3),
	devoe => ww_devoe,
	o => \PC_OUT[3]~output_o\);

\PC_OUT[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(4),
	devoe => ww_devoe,
	o => \PC_OUT[4]~output_o\);

\PC_OUT[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(5),
	devoe => ww_devoe,
	o => \PC_OUT[5]~output_o\);

\PC_OUT[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(6),
	devoe => ww_devoe,
	o => \PC_OUT[6]~output_o\);

\PC_OUT[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(7),
	devoe => ww_devoe,
	o => \PC_OUT[7]~output_o\);

\PC_OUT[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \PC|DOUT\(8),
	devoe => ww_devoe,
	o => \PC_OUT[8]~output_o\);

\LEDR[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
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
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

\LEDR[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

\KEY[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

\ROM1|memROM~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~8_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & (((!\PC|DOUT\(2) & !\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & (\PC|DOUT\(2) & \PC|DOUT\(3)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101000000000010000000000000000001010000000000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~8_combout\);

\incrementaPC|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~1_sumout\ = SUM(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))
-- \incrementaPC|Add0~2\ = CARRY(( \PC|DOUT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(0),
	cin => GND,
	sumout => \incrementaPC|Add0~1_sumout\,
	cout => \incrementaPC|Add0~2\);

\incrementaPC|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~5_sumout\ = SUM(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))
-- \incrementaPC|Add0~6\ = CARRY(( \PC|DOUT\(1) ) + ( GND ) + ( \incrementaPC|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(1),
	cin => \incrementaPC|Add0~2\,
	sumout => \incrementaPC|Add0~5_sumout\,
	cout => \incrementaPC|Add0~6\);

\incrementaPC|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~9_sumout\ = SUM(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))
-- \incrementaPC|Add0~10\ = CARRY(( \PC|DOUT\(2) ) + ( GND ) + ( \incrementaPC|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(2),
	cin => \incrementaPC|Add0~6\,
	sumout => \incrementaPC|Add0~9_sumout\,
	cout => \incrementaPC|Add0~10\);

\incrementaPC|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~13_sumout\ = SUM(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))
-- \incrementaPC|Add0~14\ = CARRY(( \PC|DOUT\(3) ) + ( GND ) + ( \incrementaPC|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(3),
	cin => \incrementaPC|Add0~10\,
	sumout => \incrementaPC|Add0~13_sumout\,
	cout => \incrementaPC|Add0~14\);

\DECO|saida~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~6_combout\ = ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000010000000000000000000000000000000100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida~6_combout\);

\ENDRET|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~13_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(3));

\MUX2|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[3]~3_combout\ = ( \incrementaPC|Add0~13_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (((\ROM1|memROM~8_combout\)) # (\PC|DOUT[1]~1_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(3))))) ) ) # ( 
-- !\incrementaPC|Add0~13_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (!\PC|DOUT[1]~1_combout\ & (\ROM1|memROM~8_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(3))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101100001000000110010010101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~8_combout\,
	datad => \ENDRET|ALT_INV_DOUT\(3),
	datae => \incrementaPC|ALT_INV_Add0~13_sumout\,
	combout => \MUX2|saida_MUX[3]~3_combout\);

\PC|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(3));

\ROM1|memROM~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~4_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(0) $ ((!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(2) & (!\PC|DOUT\(0))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(1))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010101100011001101010110001100110101011000110011010101100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~4_combout\);

\DECO|Equal10~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal10~0_combout\ = ( \ROM1|memROM~4_combout\ & ( \ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & (((\ROM1|memROM~3_combout\) # (\ROM1|memROM~2_combout\)) # (\ROM1|memROM~0_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001100110011001100110011001100010011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|Equal10~0_combout\);

\DECO|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~1_combout\ = ( \ROM1|memROM~4_combout\ ) # ( !\ROM1|memROM~4_combout\ & ( ((!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~2_combout\) # (\ROM1|memROM~3_combout\))) # (\ROM1|memROM~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111110111111111111111111111111111111101111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida~1_combout\);

\FLAG1|DOUT~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG1|DOUT~0_combout\ = (\DECO|saida~1_combout\ & \FLAG1|DOUT~q\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~1_combout\,
	datab => \FLAG1|ALT_INV_DOUT~q\,
	combout => \FLAG1|DOUT~0_combout\);

\DECO|saida[4]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[4]~8_combout\ = ( \ROM1|memROM~4_combout\ & ( !\ROM1|memROM~1_combout\ ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~1_combout\) # ((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110110011101100110011001100110011101100111011001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida[4]~8_combout\);

\DECO|saida[6]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[6]~4_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida[6]~4_combout\);

\DECO|saida[5]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[5]~3_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & 
-- (!\ROM1|memROM~2_combout\ & ((\ROM1|memROM~3_combout\) # (\ROM1|memROM~0_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000110000001000000000000000010000001100000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida[5]~3_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~0_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

\DECO|saida~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~5_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000001000000000000000000000000000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida~5_combout\);

\MUX2|saida_MUX[7]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~5_combout\ = (!\DECO|saida~6_combout\ & (!\DECO|Equal4~0_combout\ & ((!\FLAG1|DOUT~q\) # (!\DECO|saida~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010000000100010001000000010001000100000001000100010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~6_combout\,
	datab => \DECO|ALT_INV_Equal4~0_combout\,
	datac => \FLAG1|ALT_INV_DOUT~q\,
	datad => \DECO|ALT_INV_saida~5_combout\,
	combout => \MUX2|saida_MUX[7]~5_combout\);

\incrementaPC|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~33_sumout\ = SUM(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))
-- \incrementaPC|Add0~34\ = CARRY(( \PC|DOUT\(4) ) + ( GND ) + ( \incrementaPC|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(4),
	cin => \incrementaPC|Add0~14\,
	sumout => \incrementaPC|Add0~33_sumout\,
	cout => \incrementaPC|Add0~34\);

\ENDRET|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~33_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(4));

\MUX2|saida_MUX[4]~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[4]~9_combout\ = (\MUX2|saida_MUX[7]~5_combout\ & ((!\DECO|saida~7_combout\ & ((\incrementaPC|Add0~33_sumout\))) # (\DECO|saida~7_combout\ & (\ENDRET|DOUT\(4)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~7_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~5_combout\,
	datac => \ENDRET|ALT_INV_DOUT\(4),
	datad => \incrementaPC|ALT_INV_Add0~33_sumout\,
	combout => \MUX2|saida_MUX[4]~9_combout\);

\PC|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[4]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(4));

\incrementaPC|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~29_sumout\ = SUM(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))
-- \incrementaPC|Add0~30\ = CARRY(( \PC|DOUT\(5) ) + ( GND ) + ( \incrementaPC|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(5),
	cin => \incrementaPC|Add0~34\,
	sumout => \incrementaPC|Add0~29_sumout\,
	cout => \incrementaPC|Add0~30\);

\ENDRET|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~29_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(5));

\MUX2|saida_MUX[5]~8\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[5]~8_combout\ = (\MUX2|saida_MUX[7]~5_combout\ & ((!\DECO|saida~7_combout\ & ((\incrementaPC|Add0~29_sumout\))) # (\DECO|saida~7_combout\ & (\ENDRET|DOUT\(5)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~7_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~5_combout\,
	datac => \ENDRET|ALT_INV_DOUT\(5),
	datad => \incrementaPC|ALT_INV_Add0~29_sumout\,
	combout => \MUX2|saida_MUX[5]~8_combout\);

\PC|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[5]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(5));

\incrementaPC|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~25_sumout\ = SUM(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))
-- \incrementaPC|Add0~26\ = CARRY(( \PC|DOUT\(6) ) + ( GND ) + ( \incrementaPC|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(6),
	cin => \incrementaPC|Add0~30\,
	sumout => \incrementaPC|Add0~25_sumout\,
	cout => \incrementaPC|Add0~26\);

\ENDRET|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~25_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(6));

\MUX2|saida_MUX[6]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[6]~7_combout\ = (\MUX2|saida_MUX[7]~5_combout\ & ((!\DECO|saida~7_combout\ & ((\incrementaPC|Add0~25_sumout\))) # (\DECO|saida~7_combout\ & (\ENDRET|DOUT\(6)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100100011000000010010001100000001001000110000000100100011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~7_combout\,
	datab => \MUX2|ALT_INV_saida_MUX[7]~5_combout\,
	datac => \ENDRET|ALT_INV_DOUT\(6),
	datad => \incrementaPC|ALT_INV_Add0~25_sumout\,
	combout => \MUX2|saida_MUX[6]~7_combout\);

\PC|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(6));

\ROM1|memROM~11\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~11_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(2)) # (\PC|DOUT\(3)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010001000100000001000100010000000100010001000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~11_combout\);

\ROM1|memROM~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~6_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~11_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~11_combout\,
	combout => \ROM1|memROM~6_combout\);

\ROM1|memROM~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~7_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & (!\PC|DOUT\(1) $ (\PC|DOUT\(3))))) # (\PC|DOUT\(0) & (!\PC|DOUT\(1) & ((!\PC|DOUT\(3)) # (\PC|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110001000010010000000000000000001100010000100100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \ROM1|memROM~7_combout\);

\RAM|process_0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|process_0~0_combout\ = ( \ROM1|memROM~1_combout\ & ( (!\PC|DOUT\(3) & (\PC|DOUT\(2) & (\PC|DOUT\(1) & !\PC|DOUT\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000100000000000000000000000000000001000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(3),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \ROM1|ALT_INV_memROM~1_combout\,
	combout => \RAM|process_0~0_combout\);

\RAM|ram~173\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~173_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000001000000000000000000000000000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~173_combout\);

\RAM|ram~40\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~40_q\);

\RAM|ram~145\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~145_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~40_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~40_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~145_combout\);

\RAM|ram~174\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~174_combout\ = ( \RAM|process_0~0_combout\ & ( (\ROM1|memROM~5_combout\ & (\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~174_combout\);

\RAM|ram~48\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~48_q\);

\RAM|ram~146\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~146_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~48_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~48_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~146_combout\);

\RAM|ram~175\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~175_combout\ = ( \RAM|process_0~0_combout\ & ( (!\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000100000000000000000000000000000001000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~175_combout\);

\RAM|ram~24\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~24_q\);

\RAM|ram~147\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~147_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~24_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~24_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~147_combout\);

\RAM|ram~176\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~176_combout\ = ( \RAM|process_0~0_combout\ & ( (\ROM1|memROM~5_combout\ & (!\ROM1|memROM~6_combout\ & (!\ROM1|memROM~7_combout\ & !\ROM1|memROM~8_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010000000000000000000000000000000100000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ROM1|ALT_INV_memROM~8_combout\,
	datae => \RAM|ALT_INV_process_0~0_combout\,
	combout => \RAM|ram~176_combout\);

\RAM|ram~32\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~32_q\);

\RAM|ram~148\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~148_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~32_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~32_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~148_combout\);

\RAM|ram~149\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~149_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~146_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~145_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~148_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~147_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~145_combout\,
	datab => \RAM|ALT_INV_ram~146_combout\,
	datac => \RAM|ALT_INV_ram~147_combout\,
	datad => \RAM|ALT_INV_ram~148_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~149_combout\);

\DECO|saida[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[4]~2_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) ) # ( !\ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000100000001000000000000000000000001000000010000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida[4]~2_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( VCC ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( !\MUX1|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~18\ = CARRY(( !\MUX1|saida_MUX[0]~0_combout\ ) + ( \REGA|DOUT\(0) ) + ( \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[0]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~4_combout\ = (!\DECO|saida[4]~2_combout\ & ((\ULA1|Add0~17_sumout\))) # (\DECO|saida[4]~2_combout\ & (\MUX1|saida_MUX[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datac => \ULA1|ALT_INV_Add0~17_sumout\,
	combout => \ULA1|saida[0]~4_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~4_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM|ram~33\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~33_q\);

\RAM|ram~41\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~41_q\);

\RAM|ram~17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~17_q\);

\RAM|ram~25\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~25_q\);

\RAM|ram~159\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~159_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~41_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~33_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM|ram~25_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~17_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~33_q\,
	datab => \RAM|ALT_INV_ram~41_q\,
	datac => \RAM|ALT_INV_ram~17_q\,
	datad => \RAM|ALT_INV_ram~25_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~159_combout\);

\RAM|ram~160\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~160_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~159_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~159_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~160_combout\);

\MUX1|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~0_combout\ = (!\DECO|saida[6]~4_combout\ & ((\RAM|ram~160_combout\))) # (\DECO|saida[6]~4_combout\ & (\ROM1|memROM~5_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[6]~4_combout\,
	datab => \ROM1|ALT_INV_memROM~5_combout\,
	datac => \RAM|ALT_INV_ram~160_combout\,
	combout => \MUX1|saida_MUX[0]~0_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( !\MUX1|saida_MUX[1]~1_combout\ ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( !\MUX1|saida_MUX[1]~1_combout\ ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[1]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~5_combout\ = (!\DECO|saida[4]~2_combout\ & ((\ULA1|Add0~21_sumout\))) # (\DECO|saida[4]~2_combout\ & (\MUX1|saida_MUX[1]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	datac => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[1]~5_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~5_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM|ram~34\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~34_q\);

\RAM|ram~161\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~161_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~34_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~34_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~161_combout\);

\RAM|ram~42\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~42_q\);

\RAM|ram~162\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~162_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~42_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~42_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~162_combout\);

\RAM|ram~18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~18_q\);

\RAM|ram~163\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~163_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~18_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~18_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~163_combout\);

\RAM|ram~26\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~26_q\);

\RAM|ram~164\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~164_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~26_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~26_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~164_combout\);

\RAM|ram~165\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~165_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~162_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~161_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~164_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~163_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~161_combout\,
	datab => \RAM|ALT_INV_ram~162_combout\,
	datac => \RAM|ALT_INV_ram~163_combout\,
	datad => \RAM|ALT_INV_ram~164_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~165_combout\);

\MUX1|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~1_combout\ = (!\DECO|saida[6]~4_combout\ & ((\RAM|ram~165_combout\))) # (\DECO|saida[6]~4_combout\ & (\ROM1|memROM~6_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[6]~4_combout\,
	datab => \ROM1|ALT_INV_memROM~6_combout\,
	datac => \RAM|ALT_INV_ram~165_combout\,
	combout => \MUX1|saida_MUX[1]~1_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( !\MUX1|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( !\MUX1|saida_MUX[2]~2_combout\ ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[2]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~6_combout\ = (!\DECO|saida[4]~2_combout\ & ((\ULA1|Add0~25_sumout\))) # (\DECO|saida[4]~2_combout\ & (\MUX1|saida_MUX[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[2]~6_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~6_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM|ram~35\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~35_q\);

\RAM|ram~43\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~43_q\);

\RAM|ram~19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~19_q\);

\RAM|ram~27\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~27_q\);

\RAM|ram~166\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~166_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~43_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~35_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM|ram~27_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~19_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~35_q\,
	datab => \RAM|ALT_INV_ram~43_q\,
	datac => \RAM|ALT_INV_ram~19_q\,
	datad => \RAM|ALT_INV_ram~27_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~166_combout\);

\RAM|ram~167\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~167_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~166_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~166_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~167_combout\);

\MUX1|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~2_combout\ = (!\DECO|saida[6]~4_combout\ & ((\RAM|ram~167_combout\))) # (\DECO|saida[6]~4_combout\ & (\ROM1|memROM~7_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[6]~4_combout\,
	datab => \ROM1|ALT_INV_memROM~7_combout\,
	datac => \RAM|ALT_INV_ram~167_combout\,
	combout => \MUX1|saida_MUX[2]~2_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( !\MUX1|saida_MUX[3]~3_combout\ ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))
-- \ULA1|Add0~30\ = CARRY(( !\MUX1|saida_MUX[3]~3_combout\ ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\,
	cout => \ULA1|Add0~30\);

\ULA1|saida[3]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~7_combout\ = (!\DECO|saida[4]~2_combout\ & ((\ULA1|Add0~29_sumout\))) # (\DECO|saida[4]~2_combout\ & (\MUX1|saida_MUX[3]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datac => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[3]~7_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~7_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM|ram~36\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~36_q\);

\RAM|ram~168\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~168_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~36_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~36_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~168_combout\);

\RAM|ram~44\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~44_q\);

\RAM|ram~169\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~169_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~44_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~44_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~169_combout\);

\RAM|ram~20\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~20_q\);

\RAM|ram~170\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~170_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~20_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~20_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~170_combout\);

\RAM|ram~28\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~28_q\);

\RAM|ram~171\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~171_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~28_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~28_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~171_combout\);

\RAM|ram~172\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~172_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~169_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~168_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~171_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~170_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~168_combout\,
	datab => \RAM|ALT_INV_ram~169_combout\,
	datac => \RAM|ALT_INV_ram~170_combout\,
	datad => \RAM|ALT_INV_ram~171_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~172_combout\);

\MUX1|saida_MUX[3]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[3]~3_combout\ = (!\DECO|saida[6]~4_combout\ & ((\RAM|ram~172_combout\))) # (\DECO|saida[6]~4_combout\ & (\ROM1|memROM~8_combout\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001101100011011000110110001101100011011000110110001101100011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[6]~4_combout\,
	datab => \ROM1|ALT_INV_memROM~8_combout\,
	datac => \RAM|ALT_INV_ram~172_combout\,
	combout => \MUX1|saida_MUX[3]~3_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\RAM|ram~158_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\RAM|ram~158_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111000011111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECO|ALT_INV_saida[4]~8_combout\,
	datac => \RAM|ALT_INV_ram~158_combout\,
	datad => \DECO|ALT_INV_saida[6]~4_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~30\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~3_combout\ = (!\DECO|saida[4]~2_combout\ & \ULA1|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECO|ALT_INV_saida[4]~2_combout\,
	datad => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[4]~3_combout\);

\REGA|DOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[4]~3_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM|ram~37\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~37_q\);

\RAM|ram~45\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~45_q\);

\RAM|ram~21\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~21_q\);

\RAM|ram~29\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~29_q\);

\RAM|ram~157\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~157_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~45_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~37_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM|ram~29_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~21_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~37_q\,
	datab => \RAM|ALT_INV_ram~45_q\,
	datac => \RAM|ALT_INV_ram~21_q\,
	datad => \RAM|ALT_INV_ram~29_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~157_combout\);

\RAM|ram~158\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~158_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~157_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~157_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~158_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\RAM|ram~156_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\RAM|ram~156_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECO|ALT_INV_saida[4]~8_combout\,
	datac => \DECO|ALT_INV_saida[6]~4_combout\,
	datad => \RAM|ALT_INV_ram~156_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[5]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~2_combout\ = (!\DECO|saida[4]~2_combout\ & \ULA1|Add0~9_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECO|ALT_INV_saida[4]~2_combout\,
	datad => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[5]~2_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~2_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM|ram~38\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~38_q\);

\RAM|ram~152\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~152_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~38_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~38_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~152_combout\);

\RAM|ram~46\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~46_q\);

\RAM|ram~153\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~153_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~46_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~46_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~153_combout\);

\RAM|ram~22\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~22_q\);

\RAM|ram~154\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~154_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~22_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~22_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~154_combout\);

\RAM|ram~30\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~30_q\);

\RAM|ram~155\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~155_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~30_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~30_q\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~155_combout\);

\RAM|ram~156\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~156_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~153_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~152_combout\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ 
-- & ( \RAM|ram~155_combout\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~154_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~152_combout\,
	datab => \RAM|ALT_INV_ram~153_combout\,
	datac => \RAM|ALT_INV_ram~154_combout\,
	datad => \RAM|ALT_INV_ram~155_combout\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~156_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\RAM|ram~151_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\RAM|ram~151_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECO|ALT_INV_saida[4]~8_combout\,
	datac => \DECO|ALT_INV_saida[6]~4_combout\,
	datad => \RAM|ALT_INV_ram~151_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[6]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~1_combout\ = (!\DECO|saida[4]~2_combout\ & \ULA1|Add0~5_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000000000000111100000000000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \DECO|ALT_INV_saida[4]~2_combout\,
	datad => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[6]~1_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~1_combout\,
	ena => \DECO|saida[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM|ram~39\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~173_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~39_q\);

\RAM|ram~47\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~174_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~47_q\);

\RAM|ram~23\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~175_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~23_q\);

\RAM|ram~31\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM|ram~176_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM|ram~31_q\);

\RAM|ram~150\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~150_combout\ = ( \ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~47_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( \ROM1|memROM~6_combout\ & ( \RAM|ram~39_q\ ) ) ) # ( \ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( 
-- \RAM|ram~31_q\ ) ) ) # ( !\ROM1|memROM~5_combout\ & ( !\ROM1|memROM~6_combout\ & ( \RAM|ram~23_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000000001111111101010101010101010011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM|ALT_INV_ram~39_q\,
	datab => \RAM|ALT_INV_ram~47_q\,
	datac => \RAM|ALT_INV_ram~23_q\,
	datad => \RAM|ALT_INV_ram~31_q\,
	datae => \ROM1|ALT_INV_memROM~5_combout\,
	dataf => \ROM1|ALT_INV_memROM~6_combout\,
	combout => \RAM|ram~150_combout\);

\RAM|ram~151\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM|ram~151_combout\ = ( !\ROM1|memROM~7_combout\ & ( !\ROM1|memROM~8_combout\ & ( \RAM|ram~150_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \RAM|ALT_INV_ram~150_combout\,
	datae => \ROM1|ALT_INV_memROM~7_combout\,
	dataf => \ROM1|ALT_INV_memROM~8_combout\,
	combout => \RAM|ram~151_combout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\RAM|ram~149_combout\) # ((!\DECO|saida[4]~8_combout\ & \DECO|saida[6]~4_combout\)) ) + ( \REGA|DOUT\(7) ) + ( \ULA1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001111111100001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \DECO|ALT_INV_saida[4]~8_combout\,
	datac => \DECO|ALT_INV_saida[6]~4_combout\,
	datad => \RAM|ALT_INV_ram~149_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~1_sumout\);

\ULA1|saida[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~0_combout\ = (\ULA1|Add0~1_sumout\ & !\DECO|saida[4]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100000000000011110000000000001111000000000000111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ULA1|ALT_INV_Add0~1_sumout\,
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	combout => \ULA1|saida[7]~0_combout\);

\FLAG1|DOUT~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG1|DOUT~1_combout\ = ( \ULA1|Add0~9_sumout\ & ( \ULA1|Add0~13_sumout\ & ( !\DECO|saida[4]~2_combout\ ) ) ) # ( !\ULA1|Add0~9_sumout\ & ( \ULA1|Add0~13_sumout\ & ( !\DECO|saida[4]~2_combout\ ) ) ) # ( \ULA1|Add0~9_sumout\ & ( !\ULA1|Add0~13_sumout\ & ( 
-- !\DECO|saida[4]~2_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \DECO|ALT_INV_saida[4]~2_combout\,
	datae => \ULA1|ALT_INV_Add0~9_sumout\,
	dataf => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \FLAG1|DOUT~1_combout\);

\FLAG1|DOUT~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG1|DOUT~2_combout\ = ( !\MUX1|saida_MUX[1]~1_combout\ & ( \ULA1|Add0~21_sumout\ & ( (!\DECO|saida~1_combout\ & (\DECO|saida[4]~2_combout\ & !\MUX1|saida_MUX[0]~0_combout\)) ) ) ) # ( \MUX1|saida_MUX[1]~1_combout\ & ( !\ULA1|Add0~21_sumout\ & ( 
-- (!\DECO|saida~1_combout\ & (!\DECO|saida[4]~2_combout\ & !\ULA1|Add0~17_sumout\)) ) ) ) # ( !\MUX1|saida_MUX[1]~1_combout\ & ( !\ULA1|Add0~21_sumout\ & ( (!\DECO|saida~1_combout\ & ((!\DECO|saida[4]~2_combout\ & ((!\ULA1|Add0~17_sumout\))) # 
-- (\DECO|saida[4]~2_combout\ & (!\MUX1|saida_MUX[0]~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010100000100000100010000000000000100000001000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~1_combout\,
	datab => \DECO|ALT_INV_saida[4]~2_combout\,
	datac => \MUX1|ALT_INV_saida_MUX[0]~0_combout\,
	datad => \ULA1|ALT_INV_Add0~17_sumout\,
	datae => \MUX1|ALT_INV_saida_MUX[1]~1_combout\,
	dataf => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \FLAG1|DOUT~2_combout\);

\FLAG1|DOUT~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG1|DOUT~3_combout\ = ( \ULA1|Add0~29_sumout\ & ( (\DECO|saida[4]~2_combout\ & (!\MUX1|saida_MUX[2]~2_combout\ & !\MUX1|saida_MUX[3]~3_combout\)) ) ) # ( !\ULA1|Add0~29_sumout\ & ( (!\DECO|saida[4]~2_combout\ & (((!\ULA1|Add0~25_sumout\)))) # 
-- (\DECO|saida[4]~2_combout\ & (!\MUX1|saida_MUX[2]~2_combout\ & ((!\MUX1|saida_MUX[3]~3_combout\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110010010100000010001000000000011100100101000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida[4]~2_combout\,
	datab => \MUX1|ALT_INV_saida_MUX[2]~2_combout\,
	datac => \ULA1|ALT_INV_Add0~25_sumout\,
	datad => \MUX1|ALT_INV_saida_MUX[3]~3_combout\,
	datae => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \FLAG1|DOUT~3_combout\);

\FLAG1|DOUT~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \FLAG1|DOUT~4_combout\ = ( \FLAG1|DOUT~2_combout\ & ( \FLAG1|DOUT~3_combout\ & ( ((!\ULA1|saida[7]~0_combout\ & (!\ULA1|saida[6]~1_combout\ & !\FLAG1|DOUT~1_combout\))) # (\FLAG1|DOUT~0_combout\) ) ) ) # ( !\FLAG1|DOUT~2_combout\ & ( 
-- \FLAG1|DOUT~3_combout\ & ( \FLAG1|DOUT~0_combout\ ) ) ) # ( \FLAG1|DOUT~2_combout\ & ( !\FLAG1|DOUT~3_combout\ & ( \FLAG1|DOUT~0_combout\ ) ) ) # ( !\FLAG1|DOUT~2_combout\ & ( !\FLAG1|DOUT~3_combout\ & ( \FLAG1|DOUT~0_combout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101011101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FLAG1|ALT_INV_DOUT~0_combout\,
	datab => \ULA1|ALT_INV_saida[7]~0_combout\,
	datac => \ULA1|ALT_INV_saida[6]~1_combout\,
	datad => \FLAG1|ALT_INV_DOUT~1_combout\,
	datae => \FLAG1|ALT_INV_DOUT~2_combout\,
	dataf => \FLAG1|ALT_INV_DOUT~3_combout\,
	combout => \FLAG1|DOUT~4_combout\);

\FLAG1|DOUT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \FLAG1|DOUT~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \FLAG1|DOUT~q\);

\PC|DOUT[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~1_combout\ = ( \DECO|saida~5_combout\ & ( (!\FLAG1|DOUT~q\ & ((!\DECO|Equal10~0_combout\) # ((!\DECO|saida~6_combout\ & !\DECO|Equal4~0_combout\)))) ) ) # ( !\DECO|saida~5_combout\ & ( (!\DECO|Equal10~0_combout\) # ((!\DECO|saida~6_combout\ & 
-- !\DECO|Equal4~0_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110101011101010111010100000000011101010111010101110101000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal10~0_combout\,
	datab => \DECO|ALT_INV_saida~6_combout\,
	datac => \DECO|ALT_INV_Equal4~0_combout\,
	datad => \FLAG1|ALT_INV_DOUT~q\,
	datae => \DECO|ALT_INV_saida~5_combout\,
	combout => \PC|DOUT[1]~1_combout\);

\ENDRET|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~9_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(2));

\MUX2|saida_MUX[2]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[2]~2_combout\ = ( \incrementaPC|Add0~9_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (((\ROM1|memROM~7_combout\)) # (\PC|DOUT[1]~1_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(2))))) ) ) # ( 
-- !\incrementaPC|Add0~9_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (!\PC|DOUT[1]~1_combout\ & (\ROM1|memROM~7_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(2))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101100001000000110010010101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~7_combout\,
	datad => \ENDRET|ALT_INV_DOUT\(2),
	datae => \incrementaPC|ALT_INV_Add0~9_sumout\,
	combout => \MUX2|saida_MUX[2]~2_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\ROM1|memROM~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~3_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(3) $ (((!\PC|DOUT\(1) & \PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010001000001000101000100000100010100010000010001010001000001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~3_combout\);

\DECO|Equal4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal4~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000100000000000000000000000000000001000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|Equal4~0_combout\);

\PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~0_combout\ = (\DECO|saida~7_combout\ & !\DECO|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100010001000100010001000100010001000100010001000100010001000100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~7_combout\,
	datab => \DECO|ALT_INV_Equal4~0_combout\,
	combout => \PC|DOUT[1]~0_combout\);

\ENDRET|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~5_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(1));

\MUX2|saida_MUX[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[1]~1_combout\ = ( \incrementaPC|Add0~5_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (((\ROM1|memROM~6_combout\)) # (\PC|DOUT[1]~1_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(1))))) ) ) # ( 
-- !\incrementaPC|Add0~5_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (!\PC|DOUT[1]~1_combout\ & (\ROM1|memROM~6_combout\))) # (\PC|DOUT[1]~0_combout\ & (\PC|DOUT[1]~1_combout\ & ((\ENDRET|DOUT\(1))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000100000011001001010100011101100001000000110010010101000111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT[1]~0_combout\,
	datab => \PC|ALT_INV_DOUT[1]~1_combout\,
	datac => \ROM1|ALT_INV_memROM~6_combout\,
	datad => \ENDRET|ALT_INV_DOUT\(1),
	datae => \incrementaPC|ALT_INV_Add0~5_sumout\,
	combout => \MUX2|saida_MUX[1]~1_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\ROM1|memROM~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~2_combout\ = (!\PC|DOUT\(0) & (!\PC|DOUT\(1) & (!\PC|DOUT\(2) & !\PC|DOUT\(3)))) # (\PC|DOUT\(0) & (\PC|DOUT\(1) & ((\PC|DOUT\(3)) # (\PC|DOUT\(2)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000100010001100000010001000110000001000100011000000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~2_combout\);

\DECO|saida~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~7_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (\ROM1|memROM~2_combout\ & !\ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000000000000000000000000000001000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida~7_combout\);

\incrementaPC|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~21_sumout\ = SUM(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))
-- \incrementaPC|Add0~22\ = CARRY(( \PC|DOUT\(7) ) + ( GND ) + ( \incrementaPC|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(7),
	cin => \incrementaPC|Add0~26\,
	sumout => \incrementaPC|Add0~21_sumout\,
	cout => \incrementaPC|Add0~22\);

\ENDRET|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~21_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(7));

\MUX2|saida_MUX[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[7]~6_combout\ = (\MUX2|saida_MUX[7]~5_combout\ & ((!\DECO|saida~7_combout\ & ((\incrementaPC|Add0~21_sumout\))) # (\DECO|saida~7_combout\ & (\ENDRET|DOUT\(7)))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000011011000000000001101100000000000110110000000000011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_saida~7_combout\,
	datab => \ENDRET|ALT_INV_DOUT\(7),
	datac => \incrementaPC|ALT_INV_Add0~21_sumout\,
	datad => \MUX2|ALT_INV_saida_MUX[7]~5_combout\,
	combout => \MUX2|saida_MUX[7]~6_combout\);

\PC|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[7]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(7));

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = ( !\PC|DOUT\(4) & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	combout => \ROM1|memROM~1_combout\);

\ROM1|memROM~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~9_combout\ = (\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\PC|DOUT\(0) & \PC|DOUT\(3))) # (\PC|DOUT\(2) & ((!\PC|DOUT\(3))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100010000000000110001000000000011000100000000001100010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~9_combout\);

\incrementaPC|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \incrementaPC|Add0~17_sumout\ = SUM(( \PC|DOUT\(8) ) + ( GND ) + ( \incrementaPC|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \PC|ALT_INV_DOUT\(8),
	cin => \incrementaPC|Add0~22\,
	sumout => \incrementaPC|Add0~17_sumout\);

\ENDRET|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~17_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(8));

\MUX2|saida_MUX[8]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[8]~4_combout\ = ( \ENDRET|DOUT\(8) & ( \incrementaPC|Add0~17_sumout\ & ( ((\ROM1|memROM~1_combout\ & (!\PC|DOUT[1]~0_combout\ & \ROM1|memROM~9_combout\))) # (\PC|DOUT[1]~1_combout\) ) ) ) # ( !\ENDRET|DOUT\(8) & ( 
-- \incrementaPC|Add0~17_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (((\ROM1|memROM~1_combout\ & \ROM1|memROM~9_combout\)) # (\PC|DOUT[1]~1_combout\))) ) ) ) # ( \ENDRET|DOUT\(8) & ( !\incrementaPC|Add0~17_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & 
-- (\ROM1|memROM~1_combout\ & (!\PC|DOUT[1]~1_combout\ & \ROM1|memROM~9_combout\))) # (\PC|DOUT[1]~0_combout\ & (((\PC|DOUT[1]~1_combout\)))) ) ) ) # ( !\ENDRET|DOUT\(8) & ( !\incrementaPC|Add0~17_sumout\ & ( (\ROM1|memROM~1_combout\ & 
-- (!\PC|DOUT[1]~0_combout\ & (!\PC|DOUT[1]~1_combout\ & \ROM1|memROM~9_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001000000000000110100001100001100010011000000111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~1_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \ROM1|ALT_INV_memROM~9_combout\,
	datae => \ENDRET|ALT_INV_DOUT\(8),
	dataf => \incrementaPC|ALT_INV_Add0~17_sumout\,
	combout => \MUX2|saida_MUX[8]~4_combout\);

\PC|DOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[8]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(8));

\ROM1|memROM~10\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~10_combout\ = (!\PC|DOUT\(1) & ((!\PC|DOUT\(3) & (\PC|DOUT\(0))) # (\PC|DOUT\(3) & ((\PC|DOUT\(2)))))) # (\PC|DOUT\(1) & (!\PC|DOUT\(0) & (!\PC|DOUT\(2) & !\PC|DOUT\(3))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010000001100011001000000110001100100000011000110010000001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~10_combout\);

\ROM1|memROM~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~5_combout\ = ( !\PC|DOUT\(4) & ( \ROM1|memROM~10_combout\ & ( (!\PC|DOUT\(8) & (!\PC|DOUT\(7) & (!\PC|DOUT\(6) & !\PC|DOUT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000010000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(8),
	datab => \PC|ALT_INV_DOUT\(7),
	datac => \PC|ALT_INV_DOUT\(6),
	datad => \PC|ALT_INV_DOUT\(5),
	datae => \PC|ALT_INV_DOUT\(4),
	dataf => \ROM1|ALT_INV_memROM~10_combout\,
	combout => \ROM1|memROM~5_combout\);

\ENDRET|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \incrementaPC|Add0~1_sumout\,
	ena => \DECO|saida~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ENDRET|DOUT\(0));

\MUX2|saida_MUX[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX2|saida_MUX[0]~0_combout\ = ( \incrementaPC|Add0~1_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (((\PC|DOUT[1]~1_combout\)) # (\ROM1|memROM~5_combout\))) # (\PC|DOUT[1]~0_combout\ & (((\PC|DOUT[1]~1_combout\ & \ENDRET|DOUT\(0))))) ) ) # ( 
-- !\incrementaPC|Add0~1_sumout\ & ( (!\PC|DOUT[1]~0_combout\ & (\ROM1|memROM~5_combout\ & (!\PC|DOUT[1]~1_combout\))) # (\PC|DOUT[1]~0_combout\ & (((\PC|DOUT[1]~1_combout\ & \ENDRET|DOUT\(0))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000011010011000100111101000000010000110100110001001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~5_combout\,
	datab => \PC|ALT_INV_DOUT[1]~0_combout\,
	datac => \PC|ALT_INV_DOUT[1]~1_combout\,
	datad => \ENDRET|ALT_INV_DOUT\(0),
	datae => \incrementaPC|ALT_INV_Add0~1_sumout\,
	combout => \MUX2|saida_MUX[0]~0_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \MUX2|saida_MUX[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(3) & (!\PC|DOUT\(2) & (!\PC|DOUT\(0) $ (!\PC|DOUT\(1))))) # (\PC|DOUT\(3) & ((!\PC|DOUT\(0) & (!\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\PC|DOUT\(2))))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000010001101011000001000110101100000100011010110000010001101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(3),
	combout => \ROM1|memROM~0_combout\);

\DECO|Equal5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal5~0_combout\ = ( \ROM1|memROM~4_combout\ & ( (!\ROM1|memROM~0_combout\ & (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ & \ROM1|memROM~3_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000010000000000000000000000000000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|Equal5~0_combout\);

\DECO|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida[1]~0_combout\ = ( !\ROM1|memROM~4_combout\ & ( (\ROM1|memROM~1_combout\ & (!\ROM1|memROM~2_combout\ $ (((!\ROM1|memROM~0_combout\ & !\ROM1|memROM~3_combout\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001000110000000000000000000000010010001100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ROM1|ALT_INV_memROM~1_combout\,
	datac => \ROM1|ALT_INV_memROM~2_combout\,
	datad => \ROM1|ALT_INV_memROM~3_combout\,
	datae => \ROM1|ALT_INV_memROM~4_combout\,
	combout => \DECO|saida[1]~0_combout\);

\CLOCK_50~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\KEY[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

\KEY[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

\KEY[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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

ww_palavra_controle(0) <= \palavra_controle[0]~output_o\;

ww_palavra_controle(1) <= \palavra_controle[1]~output_o\;

ww_palavra_controle(2) <= \palavra_controle[2]~output_o\;

ww_palavra_controle(3) <= \palavra_controle[3]~output_o\;

ww_palavra_controle(4) <= \palavra_controle[4]~output_o\;

ww_palavra_controle(5) <= \palavra_controle[5]~output_o\;

ww_palavra_controle(6) <= \palavra_controle[6]~output_o\;

ww_palavra_controle(7) <= \palavra_controle[7]~output_o\;

ww_palavra_controle(8) <= \palavra_controle[8]~output_o\;

ww_palavra_controle(9) <= \palavra_controle[9]~output_o\;

ww_palavra_controle(10) <= \palavra_controle[10]~output_o\;

ww_palavra_controle(11) <= \palavra_controle[11]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

ww_PC_OUT(3) <= \PC_OUT[3]~output_o\;

ww_PC_OUT(4) <= \PC_OUT[4]~output_o\;

ww_PC_OUT(5) <= \PC_OUT[5]~output_o\;

ww_PC_OUT(6) <= \PC_OUT[6]~output_o\;

ww_PC_OUT(7) <= \PC_OUT[7]~output_o\;

ww_PC_OUT(8) <= \PC_OUT[8]~output_o\;

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
END structure;


