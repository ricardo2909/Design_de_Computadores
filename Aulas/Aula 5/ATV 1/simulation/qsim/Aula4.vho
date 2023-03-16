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

-- DATE "03/06/2023 15:18:56"

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

ENTITY 	Aula4 IS
    PORT (
	testeOut : OUT std_logic_vector(7 DOWNTO 0);
	CLOCK_50 : IN std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(9 DOWNTO 0);
	PC_OUT : OUT std_logic_vector(2 DOWNTO 0);
	LEDR : OUT std_logic_vector(9 DOWNTO 0)
	);
END Aula4;

ARCHITECTURE structure OF Aula4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_testeOut : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_PC_OUT : std_logic_vector(2 DOWNTO 0);
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
SIGNAL \testeOut[0]~output_o\ : std_logic;
SIGNAL \testeOut[1]~output_o\ : std_logic;
SIGNAL \testeOut[2]~output_o\ : std_logic;
SIGNAL \testeOut[3]~output_o\ : std_logic;
SIGNAL \testeOut[4]~output_o\ : std_logic;
SIGNAL \testeOut[5]~output_o\ : std_logic;
SIGNAL \testeOut[6]~output_o\ : std_logic;
SIGNAL \testeOut[7]~output_o\ : std_logic;
SIGNAL \PC_OUT[0]~output_o\ : std_logic;
SIGNAL \PC_OUT[1]~output_o\ : std_logic;
SIGNAL \PC_OUT[2]~output_o\ : std_logic;
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
SIGNAL \PC|DOUT[0]~2_combout\ : std_logic;
SIGNAL \PC|DOUT[1]~0_combout\ : std_logic;
SIGNAL \PC|DOUT[2]~1_combout\ : std_logic;
SIGNAL \DECO|Equal1~0_combout\ : std_logic;
SIGNAL \DECO|Equal1~1_combout\ : std_logic;
SIGNAL \ROM1|memROM~0_combout\ : std_logic;
SIGNAL \ROM1|memROM~1_combout\ : std_logic;
SIGNAL \RAM2|ram~1049_q\ : std_logic;
SIGNAL \RAM2|ram~2066_combout\ : std_logic;
SIGNAL \RAM2|ram~1041_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \ULA1|Add0~34_cout\ : std_logic;
SIGNAL \ULA1|Add0~1_sumout\ : std_logic;
SIGNAL \ULA1|saida[0]~7_combout\ : std_logic;
SIGNAL \DECO|saida~0_combout\ : std_logic;
SIGNAL \RAM2|ram~1050_q\ : std_logic;
SIGNAL \RAM2|ram~1042_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \ULA1|Add0~2\ : std_logic;
SIGNAL \ULA1|Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|saida[1]~0_combout\ : std_logic;
SIGNAL \RAM2|ram~1051_q\ : std_logic;
SIGNAL \RAM2|ram~1043_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \ULA1|Add0~6\ : std_logic;
SIGNAL \ULA1|Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|saida[2]~1_combout\ : std_logic;
SIGNAL \RAM2|ram~1052_q\ : std_logic;
SIGNAL \RAM2|ram~1044_q\ : std_logic;
SIGNAL \RAM2|ram~2069_combout\ : std_logic;
SIGNAL \ULA1|Add0~10\ : std_logic;
SIGNAL \ULA1|Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|saida[3]~2_combout\ : std_logic;
SIGNAL \RAM2|ram~1045_q\ : std_logic;
SIGNAL \RAM2|ram~1053_q\ : std_logic;
SIGNAL \RAM2|ram~2065_combout\ : std_logic;
SIGNAL \ULA1|Add0~14\ : std_logic;
SIGNAL \ULA1|Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|saida[4]~3_combout\ : std_logic;
SIGNAL \RAM2|ram~1054_q\ : std_logic;
SIGNAL \RAM2|ram~1046_q\ : std_logic;
SIGNAL \RAM2|ram~2068_combout\ : std_logic;
SIGNAL \ULA1|Add0~18\ : std_logic;
SIGNAL \ULA1|Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|saida[5]~4_combout\ : std_logic;
SIGNAL \RAM2|ram~1055_q\ : std_logic;
SIGNAL \RAM2|ram~1047_q\ : std_logic;
SIGNAL \RAM2|ram~2067_combout\ : std_logic;
SIGNAL \ULA1|Add0~22\ : std_logic;
SIGNAL \ULA1|Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|saida[6]~5_combout\ : std_logic;
SIGNAL \RAM2|ram~1056_q\ : std_logic;
SIGNAL \RAM2|ram~1048_q\ : std_logic;
SIGNAL \MUX1|saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \ULA1|Add0~26\ : std_logic;
SIGNAL \ULA1|Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|saida[7]~6_combout\ : std_logic;
SIGNAL \REGA|DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \PC|DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \RAM2|ALT_INV_ram~2065_combout\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1053_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1045_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1052_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1044_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1051_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1043_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1050_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1042_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1049_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1041_q\ : std_logic;
SIGNAL \DECO|ALT_INV_Equal1~1_combout\ : std_logic;
SIGNAL \DECO|ALT_INV_Equal1~0_combout\ : std_logic;
SIGNAL \ROM1|ALT_INV_memROM~0_combout\ : std_logic;
SIGNAL \PC|ALT_INV_DOUT\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \REGA|ALT_INV_DOUT\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ULA1|ALT_INV_Add0~29_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~25_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~21_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \ULA1|ALT_INV_Add0~1_sumout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[0]~3_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[1]~2_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[2]~1_combout\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~2069_combout\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~2068_combout\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~2067_combout\ : std_logic;
SIGNAL \MUX1|ALT_INV_saida_MUX[7]~0_combout\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1056_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1048_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1055_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1047_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1054_q\ : std_logic;
SIGNAL \RAM2|ALT_INV_ram~1046_q\ : std_logic;

BEGIN

testeOut <= ww_testeOut;
ww_CLOCK_50 <= CLOCK_50;
ww_KEY <= KEY;
ww_SW <= SW;
PC_OUT <= ww_PC_OUT;
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\RAM2|ALT_INV_ram~2065_combout\ <= NOT \RAM2|ram~2065_combout\;
\RAM2|ALT_INV_ram~1053_q\ <= NOT \RAM2|ram~1053_q\;
\RAM2|ALT_INV_ram~1045_q\ <= NOT \RAM2|ram~1045_q\;
\RAM2|ALT_INV_ram~1052_q\ <= NOT \RAM2|ram~1052_q\;
\RAM2|ALT_INV_ram~1044_q\ <= NOT \RAM2|ram~1044_q\;
\RAM2|ALT_INV_ram~1051_q\ <= NOT \RAM2|ram~1051_q\;
\RAM2|ALT_INV_ram~1043_q\ <= NOT \RAM2|ram~1043_q\;
\RAM2|ALT_INV_ram~1050_q\ <= NOT \RAM2|ram~1050_q\;
\RAM2|ALT_INV_ram~1042_q\ <= NOT \RAM2|ram~1042_q\;
\RAM2|ALT_INV_ram~1049_q\ <= NOT \RAM2|ram~1049_q\;
\RAM2|ALT_INV_ram~1041_q\ <= NOT \RAM2|ram~1041_q\;
\DECO|ALT_INV_Equal1~1_combout\ <= NOT \DECO|Equal1~1_combout\;
\DECO|ALT_INV_Equal1~0_combout\ <= NOT \DECO|Equal1~0_combout\;
\ROM1|ALT_INV_memROM~0_combout\ <= NOT \ROM1|memROM~0_combout\;
\PC|ALT_INV_DOUT\(2) <= NOT \PC|DOUT\(2);
\PC|ALT_INV_DOUT\(1) <= NOT \PC|DOUT\(1);
\PC|ALT_INV_DOUT\(0) <= NOT \PC|DOUT\(0);
\REGA|ALT_INV_DOUT\(7) <= NOT \REGA|DOUT\(7);
\REGA|ALT_INV_DOUT\(6) <= NOT \REGA|DOUT\(6);
\REGA|ALT_INV_DOUT\(5) <= NOT \REGA|DOUT\(5);
\REGA|ALT_INV_DOUT\(4) <= NOT \REGA|DOUT\(4);
\REGA|ALT_INV_DOUT\(3) <= NOT \REGA|DOUT\(3);
\REGA|ALT_INV_DOUT\(2) <= NOT \REGA|DOUT\(2);
\REGA|ALT_INV_DOUT\(1) <= NOT \REGA|DOUT\(1);
\REGA|ALT_INV_DOUT\(0) <= NOT \REGA|DOUT\(0);
\ULA1|ALT_INV_Add0~29_sumout\ <= NOT \ULA1|Add0~29_sumout\;
\ULA1|ALT_INV_Add0~25_sumout\ <= NOT \ULA1|Add0~25_sumout\;
\ULA1|ALT_INV_Add0~21_sumout\ <= NOT \ULA1|Add0~21_sumout\;
\ULA1|ALT_INV_Add0~17_sumout\ <= NOT \ULA1|Add0~17_sumout\;
\ULA1|ALT_INV_Add0~13_sumout\ <= NOT \ULA1|Add0~13_sumout\;
\ULA1|ALT_INV_Add0~9_sumout\ <= NOT \ULA1|Add0~9_sumout\;
\ULA1|ALT_INV_Add0~5_sumout\ <= NOT \ULA1|Add0~5_sumout\;
\ULA1|ALT_INV_Add0~1_sumout\ <= NOT \ULA1|Add0~1_sumout\;
\MUX1|ALT_INV_saida_MUX[0]~3_combout\ <= NOT \MUX1|saida_MUX[0]~3_combout\;
\MUX1|ALT_INV_saida_MUX[1]~2_combout\ <= NOT \MUX1|saida_MUX[1]~2_combout\;
\MUX1|ALT_INV_saida_MUX[2]~1_combout\ <= NOT \MUX1|saida_MUX[2]~1_combout\;
\RAM2|ALT_INV_ram~2069_combout\ <= NOT \RAM2|ram~2069_combout\;
\RAM2|ALT_INV_ram~2068_combout\ <= NOT \RAM2|ram~2068_combout\;
\RAM2|ALT_INV_ram~2067_combout\ <= NOT \RAM2|ram~2067_combout\;
\MUX1|ALT_INV_saida_MUX[7]~0_combout\ <= NOT \MUX1|saida_MUX[7]~0_combout\;
\RAM2|ALT_INV_ram~1056_q\ <= NOT \RAM2|ram~1056_q\;
\RAM2|ALT_INV_ram~1048_q\ <= NOT \RAM2|ram~1048_q\;
\RAM2|ALT_INV_ram~1055_q\ <= NOT \RAM2|ram~1055_q\;
\RAM2|ALT_INV_ram~1047_q\ <= NOT \RAM2|ram~1047_q\;
\RAM2|ALT_INV_ram~1054_q\ <= NOT \RAM2|ram~1054_q\;
\RAM2|ALT_INV_ram~1046_q\ <= NOT \RAM2|ram~1046_q\;

\testeOut[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(0),
	devoe => ww_devoe,
	o => \testeOut[0]~output_o\);

\testeOut[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(1),
	devoe => ww_devoe,
	o => \testeOut[1]~output_o\);

\testeOut[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(2),
	devoe => ww_devoe,
	o => \testeOut[2]~output_o\);

\testeOut[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(3),
	devoe => ww_devoe,
	o => \testeOut[3]~output_o\);

\testeOut[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(4),
	devoe => ww_devoe,
	o => \testeOut[4]~output_o\);

\testeOut[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(5),
	devoe => ww_devoe,
	o => \testeOut[5]~output_o\);

\testeOut[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(6),
	devoe => ww_devoe,
	o => \testeOut[6]~output_o\);

\testeOut[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \REGA|DOUT\(7),
	devoe => ww_devoe,
	o => \testeOut[7]~output_o\);

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

\PC|DOUT[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[0]~2_combout\ = !\PC|DOUT\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101010101010101010101010101010101010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	combout => \PC|DOUT[0]~2_combout\);

\PC|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(0));

\PC|DOUT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[1]~0_combout\ = !\PC|DOUT\(0) $ (!\PC|DOUT\(1))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	combout => \PC|DOUT[1]~0_combout\);

\PC|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(1));

\PC|DOUT[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \PC|DOUT[2]~1_combout\ = !\PC|DOUT\(2) $ (((!\PC|DOUT\(0)) # (!\PC|DOUT\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111000011110000111100001111000011110000111100001111000011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \PC|DOUT[2]~1_combout\);

\PC|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \PC|DOUT[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \PC|DOUT\(2));

\DECO|Equal1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal1~0_combout\ = (!\PC|DOUT\(1) & \PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(2),
	combout => \DECO|Equal1~0_combout\);

\DECO|Equal1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|Equal1~1_combout\ = (!\PC|DOUT\(0) & (\PC|DOUT\(1) & \PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001000000010000000100000001000000010000000100000001000000010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \DECO|Equal1~1_combout\);

\ROM1|memROM~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~0_combout\ = (!\PC|DOUT\(0) & !\PC|DOUT\(2))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000100010001000100010001000100010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~0_combout\);

\ROM1|memROM~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ROM1|memROM~1_combout\ = (\PC|DOUT\(0) & (!\PC|DOUT\(1) & !\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001000000010000000100000001000000010000000100000001000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \ROM1|memROM~1_combout\);

\RAM2|ram~1049\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1049_q\);

\RAM2|ram~2066\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM2|ram~2066_combout\ = (\PC|DOUT\(0) & (\PC|DOUT\(1) & !\PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000000010000000100000001000000010000000100000001000000010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \RAM2|ram~2066_combout\);

\RAM2|ram~1041\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(0),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1041_q\);

\MUX1|saida_MUX[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[0]~3_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(1) & ((!\PC|DOUT\(2) & (\RAM2|ram~1049_q\)) # (\PC|DOUT\(2) & ((\RAM2|ram~1041_q\))))) # (\PC|DOUT\(1) & (((\RAM2|ram~1041_q\ & !\PC|DOUT\(2))))) ) ) # ( !\PC|DOUT\(0) & ( (!\PC|DOUT\(1) & 
-- (((\RAM2|ram~1041_q\ & \PC|DOUT\(2))))) # (\PC|DOUT\(1) & (((!\PC|DOUT\(2))) # (\RAM2|ram~1049_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110101010100110011000000001111001101010101001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1049_q\,
	datab => \RAM2|ALT_INV_ram~1041_q\,
	datac => \PC|ALT_INV_DOUT\(1),
	datad => \PC|ALT_INV_DOUT\(2),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \MUX1|saida_MUX[0]~3_combout\);

\ULA1|Add0~34\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~34_cout\ = CARRY(( !\DECO|Equal1~0_combout\ ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001010101010101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal1~0_combout\,
	cin => GND,
	cout => \ULA1|Add0~34_cout\);

\ULA1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~1_sumout\ = SUM(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[0]~3_combout\) # ((!\DECO|Equal1~1_combout\ & !\ROM1|memROM~0_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[0]~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( 
-- \ULA1|Add0~34_cout\ ))
-- \ULA1|Add0~2\ = CARRY(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[0]~3_combout\) # ((!\DECO|Equal1~1_combout\ & !\ROM1|memROM~0_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[0]~3_combout\)))) ) + ( \REGA|DOUT\(0) ) + ( 
-- \ULA1|Add0~34_cout\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal1~0_combout\,
	datab => \DECO|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[0]~3_combout\,
	dataf => \REGA|ALT_INV_DOUT\(0),
	cin => \ULA1|Add0~34_cout\,
	sumout => \ULA1|Add0~1_sumout\,
	cout => \ULA1|Add0~2\);

\ULA1|saida[0]~7\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[0]~7_combout\ = (!\PC|DOUT\(2) & ((!\PC|DOUT\(0) & (\PC|DOUT\(1))) # (\PC|DOUT\(0) & ((\ULA1|Add0~1_sumout\))))) # (\PC|DOUT\(2) & (((\ULA1|Add0~1_sumout\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100000001111111010000000111111101000000011111110100000001111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \PC|ALT_INV_DOUT\(2),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \ULA1|ALT_INV_Add0~1_sumout\,
	combout => \ULA1|saida[0]~7_combout\);

\DECO|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \DECO|saida~0_combout\ = (!\PC|DOUT\(0)) # ((!\PC|DOUT\(1) & \PC|DOUT\(2)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010111010101110101011101010111010101110101011101010111010101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(0),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(2),
	combout => \DECO|saida~0_combout\);

\REGA|DOUT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[0]~7_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(0));

\RAM2|ram~1050\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1050_q\);

\RAM2|ram~1042\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(1),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1042_q\);

\MUX1|saida_MUX[1]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[1]~2_combout\ = ( \PC|DOUT\(1) & ( (!\PC|DOUT\(2) & (((!\PC|DOUT\(0)) # (\RAM2|ram~1042_q\)))) # (\PC|DOUT\(2) & (\RAM2|ram~1050_q\ & ((!\PC|DOUT\(0))))) ) ) # ( !\PC|DOUT\(1) & ( (!\PC|DOUT\(2) & (\RAM2|ram~1050_q\ & ((\PC|DOUT\(0))))) # 
-- (\PC|DOUT\(2) & (((\RAM2|ram~1042_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001101010011111101010011000000000011010100111111010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1050_q\,
	datab => \RAM2|ALT_INV_ram~1042_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(0),
	datae => \PC|ALT_INV_DOUT\(1),
	combout => \MUX1|saida_MUX[1]~2_combout\);

\ULA1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~5_sumout\ = SUM(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[1]~2_combout\) # ((!\ROM1|memROM~0_combout\ & !\DECO|Equal1~1_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[1]~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( 
-- \ULA1|Add0~2\ ))
-- \ULA1|Add0~6\ = CARRY(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[1]~2_combout\) # ((!\ROM1|memROM~0_combout\ & !\DECO|Equal1~1_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[1]~2_combout\)))) ) + ( \REGA|DOUT\(1) ) + ( \ULA1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[1]~2_combout\,
	dataf => \REGA|ALT_INV_DOUT\(1),
	cin => \ULA1|Add0~2\,
	sumout => \ULA1|Add0~5_sumout\,
	cout => \ULA1|Add0~6\);

\ULA1|saida[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[1]~0_combout\ = (!\ROM1|memROM~0_combout\ & ((\ULA1|Add0~5_sumout\))) # (\ROM1|memROM~0_combout\ & (\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001110100011101000111010001110100011101000111010001110100011101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ULA1|ALT_INV_Add0~5_sumout\,
	combout => \ULA1|saida[1]~0_combout\);

\REGA|DOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[1]~0_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(1));

\RAM2|ram~1051\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1051_q\);

\RAM2|ram~1043\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(2),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1043_q\);

\MUX1|saida_MUX[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[2]~1_combout\ = ( \RAM2|ram~1043_q\ & ( (!\RAM2|ram~1051_q\ & (!\PC|DOUT\(1) $ (((!\PC|DOUT\(2) & \PC|DOUT\(0)))))) # (\RAM2|ram~1051_q\ & ((!\PC|DOUT\(1)) # (!\PC|DOUT\(2) $ (!\PC|DOUT\(0))))) ) ) # ( !\RAM2|ram~1043_q\ & ( (!\PC|DOUT\(2) 
-- & (!\PC|DOUT\(1) & ((!\PC|DOUT\(0)) # (\RAM2|ram~1051_q\)))) # (\PC|DOUT\(2) & (\PC|DOUT\(1) & (!\PC|DOUT\(0) & \RAM2|ram~1051_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000010011000110001101101111010000000100110001100011011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \RAM2|ALT_INV_ram~1051_q\,
	datae => \RAM2|ALT_INV_ram~1043_q\,
	combout => \MUX1|saida_MUX[2]~1_combout\);

\ULA1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~9_sumout\ = SUM(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[2]~1_combout\) # ((!\ROM1|memROM~0_combout\ & !\DECO|Equal1~1_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[2]~1_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( 
-- \ULA1|Add0~6\ ))
-- \ULA1|Add0~10\ = CARRY(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[2]~1_combout\) # ((!\ROM1|memROM~0_combout\ & !\DECO|Equal1~1_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[2]~1_combout\)))) ) + ( \REGA|DOUT\(2) ) + ( \ULA1|Add0~6\ 
-- ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal1~0_combout\,
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[2]~1_combout\,
	dataf => \REGA|ALT_INV_DOUT\(2),
	cin => \ULA1|Add0~6\,
	sumout => \ULA1|Add0~9_sumout\,
	cout => \ULA1|Add0~10\);

\ULA1|saida[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[2]~1_combout\ = (!\ROM1|memROM~0_combout\ & ((\ULA1|Add0~9_sumout\))) # (\ROM1|memROM~0_combout\ & (!\PC|DOUT\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111000101110001011100010111000101110001011100010111000101110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(1),
	datab => \ROM1|ALT_INV_memROM~0_combout\,
	datac => \ULA1|ALT_INV_Add0~9_sumout\,
	combout => \ULA1|saida[2]~1_combout\);

\REGA|DOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[2]~1_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(2));

\RAM2|ram~1052\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1052_q\);

\RAM2|ram~1044\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(3),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1044_q\);

\RAM2|ram~2069\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM2|ram~2069_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1) & (\RAM2|ram~1052_q\)) # (\PC|DOUT\(1) & ((\RAM2|ram~1044_q\))))) # (\PC|DOUT\(2) & (((\RAM2|ram~1044_q\ & !\PC|DOUT\(1))))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & 
-- ((!\PC|DOUT\(1) & ((\RAM2|ram~1044_q\))) # (\PC|DOUT\(1) & (\RAM2|ram~1052_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101010100110011000000000011000001010101001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1052_q\,
	datab => \RAM2|ALT_INV_ram~1044_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \RAM2|ram~2069_combout\);

\ULA1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~13_sumout\ = SUM(( (!\RAM2|ram~2069_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2069_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))
-- \ULA1|Add0~14\ = CARRY(( (!\RAM2|ram~2069_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2069_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(3) ) + ( \ULA1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \RAM2|ALT_INV_ram~2069_combout\,
	dataf => \REGA|ALT_INV_DOUT\(3),
	cin => \ULA1|Add0~10\,
	sumout => \ULA1|Add0~13_sumout\,
	cout => \ULA1|Add0~14\);

\ULA1|saida[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[3]~2_combout\ = (!\ROM1|memROM~0_combout\ & \ULA1|Add0~13_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Add0~13_sumout\,
	combout => \ULA1|saida[3]~2_combout\);

\REGA|DOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[3]~2_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(3));

\RAM2|ram~1045\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1045_q\);

\RAM2|ram~1053\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(4),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1053_q\);

\RAM2|ram~2065\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM2|ram~2065_combout\ = ( \PC|DOUT\(2) & ( (!\PC|DOUT\(1) & (\RAM2|ram~1045_q\)) # (\PC|DOUT\(1) & (((\RAM2|ram~1053_q\ & !\PC|DOUT\(0))))) ) ) # ( !\PC|DOUT\(2) & ( (\PC|DOUT\(0) & ((!\PC|DOUT\(1) & ((\RAM2|ram~1053_q\))) # (\PC|DOUT\(1) & 
-- (\RAM2|ram~1045_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101010101010011000000000011000001010101010100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1045_q\,
	datab => \RAM2|ALT_INV_ram~1053_q\,
	datac => \PC|ALT_INV_DOUT\(0),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(2),
	combout => \RAM2|ram~2065_combout\);

\ULA1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~17_sumout\ = SUM(( (!\RAM2|ram~2065_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2065_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))
-- \ULA1|Add0~18\ = CARRY(( (!\RAM2|ram~2065_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2065_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(4) ) + ( \ULA1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \RAM2|ALT_INV_ram~2065_combout\,
	dataf => \REGA|ALT_INV_DOUT\(4),
	cin => \ULA1|Add0~14\,
	sumout => \ULA1|Add0~17_sumout\,
	cout => \ULA1|Add0~18\);

\ULA1|saida[4]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[4]~3_combout\ = (!\ROM1|memROM~0_combout\ & \ULA1|Add0~17_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Add0~17_sumout\,
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
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(4));

\RAM2|ram~1054\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1054_q\);

\RAM2|ram~1046\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(5),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1046_q\);

\RAM2|ram~2068\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM2|ram~2068_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1) & (\RAM2|ram~1054_q\)) # (\PC|DOUT\(1) & ((\RAM2|ram~1046_q\))))) # (\PC|DOUT\(2) & (((\RAM2|ram~1046_q\ & !\PC|DOUT\(1))))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & 
-- ((!\PC|DOUT\(1) & ((\RAM2|ram~1046_q\))) # (\PC|DOUT\(1) & (\RAM2|ram~1054_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101010100110011000000000011000001010101001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1054_q\,
	datab => \RAM2|ALT_INV_ram~1046_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \RAM2|ram~2068_combout\);

\ULA1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~21_sumout\ = SUM(( (!\RAM2|ram~2068_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2068_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))
-- \ULA1|Add0~22\ = CARRY(( (!\RAM2|ram~2068_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2068_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(5) ) + ( \ULA1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \RAM2|ALT_INV_ram~2068_combout\,
	dataf => \REGA|ALT_INV_DOUT\(5),
	cin => \ULA1|Add0~18\,
	sumout => \ULA1|Add0~21_sumout\,
	cout => \ULA1|Add0~22\);

\ULA1|saida[5]~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[5]~4_combout\ = (!\ROM1|memROM~0_combout\ & \ULA1|Add0~21_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Add0~21_sumout\,
	combout => \ULA1|saida[5]~4_combout\);

\REGA|DOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[5]~4_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(5));

\RAM2|ram~1055\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1055_q\);

\RAM2|ram~1047\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(6),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1047_q\);

\RAM2|ram~2067\ : cyclonev_lcell_comb
-- Equation(s):
-- \RAM2|ram~2067_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1) & (\RAM2|ram~1055_q\)) # (\PC|DOUT\(1) & ((\RAM2|ram~1047_q\))))) # (\PC|DOUT\(2) & (((\RAM2|ram~1047_q\ & !\PC|DOUT\(1))))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & 
-- ((!\PC|DOUT\(1) & ((\RAM2|ram~1047_q\))) # (\PC|DOUT\(1) & (\RAM2|ram~1055_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101010100110011000000000011000001010101001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1055_q\,
	datab => \RAM2|ALT_INV_ram~1047_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \RAM2|ram~2067_combout\);

\ULA1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~25_sumout\ = SUM(( (!\RAM2|ram~2067_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2067_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))
-- \ULA1|Add0~26\ = CARRY(( (!\RAM2|ram~2067_combout\ & ((!\PC|DOUT\(2)) # ((\PC|DOUT\(1))))) # (\RAM2|ram~2067_combout\ & ((!\DECO|Equal1~1_combout\) # ((\PC|DOUT\(2) & !\PC|DOUT\(1))))) ) + ( \REGA|DOUT\(6) ) + ( \ULA1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001011101111110100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \PC|ALT_INV_DOUT\(2),
	datab => \PC|ALT_INV_DOUT\(1),
	datac => \DECO|ALT_INV_Equal1~1_combout\,
	datad => \RAM2|ALT_INV_ram~2067_combout\,
	dataf => \REGA|ALT_INV_DOUT\(6),
	cin => \ULA1|Add0~22\,
	sumout => \ULA1|Add0~25_sumout\,
	cout => \ULA1|Add0~26\);

\ULA1|saida[6]~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[6]~5_combout\ = (!\ROM1|memROM~0_combout\ & \ULA1|Add0~25_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Add0~25_sumout\,
	combout => \ULA1|saida[6]~5_combout\);

\REGA|DOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[6]~5_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(6));

\RAM2|ram~1056\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \ROM1|memROM~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1056_q\);

\RAM2|ram~1048\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \REGA|DOUT\(7),
	ena => \RAM2|ram~2066_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \RAM2|ram~1048_q\);

\MUX1|saida_MUX[7]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \MUX1|saida_MUX[7]~0_combout\ = ( \PC|DOUT\(0) & ( (!\PC|DOUT\(2) & ((!\PC|DOUT\(1) & (\RAM2|ram~1056_q\)) # (\PC|DOUT\(1) & ((\RAM2|ram~1048_q\))))) # (\PC|DOUT\(2) & (((\RAM2|ram~1048_q\ & !\PC|DOUT\(1))))) ) ) # ( !\PC|DOUT\(0) & ( (\PC|DOUT\(2) & 
-- ((!\PC|DOUT\(1) & ((\RAM2|ram~1048_q\))) # (\PC|DOUT\(1) & (\RAM2|ram~1056_q\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000101010100110011000000000011000001010101001100110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \RAM2|ALT_INV_ram~1056_q\,
	datab => \RAM2|ALT_INV_ram~1048_q\,
	datac => \PC|ALT_INV_DOUT\(2),
	datad => \PC|ALT_INV_DOUT\(1),
	datae => \PC|ALT_INV_DOUT\(0),
	combout => \MUX1|saida_MUX[7]~0_combout\);

\ULA1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|Add0~29_sumout\ = SUM(( (!\DECO|Equal1~0_combout\ & ((!\MUX1|saida_MUX[7]~0_combout\) # ((!\DECO|Equal1~1_combout\ & !\ROM1|memROM~0_combout\)))) # (\DECO|Equal1~0_combout\ & (((\MUX1|saida_MUX[7]~0_combout\)))) ) + ( \REGA|DOUT\(7) ) + ( 
-- \ULA1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000001010101011010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \DECO|ALT_INV_Equal1~0_combout\,
	datab => \DECO|ALT_INV_Equal1~1_combout\,
	datac => \ROM1|ALT_INV_memROM~0_combout\,
	datad => \MUX1|ALT_INV_saida_MUX[7]~0_combout\,
	dataf => \REGA|ALT_INV_DOUT\(7),
	cin => \ULA1|Add0~26\,
	sumout => \ULA1|Add0~29_sumout\);

\ULA1|saida[7]~6\ : cyclonev_lcell_comb
-- Equation(s):
-- \ULA1|saida[7]~6_combout\ = (!\ROM1|memROM~0_combout\ & \ULA1|Add0~29_sumout\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010001000100010001000100010001000100010001000100010001000100010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ROM1|ALT_INV_memROM~0_combout\,
	datab => \ULA1|ALT_INV_Add0~29_sumout\,
	combout => \ULA1|saida[7]~6_combout\);

\REGA|DOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \KEY[0]~input_o\,
	d => \ULA1|saida[7]~6_combout\,
	ena => \DECO|saida~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGA|DOUT\(7));

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

ww_testeOut(0) <= \testeOut[0]~output_o\;

ww_testeOut(1) <= \testeOut[1]~output_o\;

ww_testeOut(2) <= \testeOut[2]~output_o\;

ww_testeOut(3) <= \testeOut[3]~output_o\;

ww_testeOut(4) <= \testeOut[4]~output_o\;

ww_testeOut(5) <= \testeOut[5]~output_o\;

ww_testeOut(6) <= \testeOut[6]~output_o\;

ww_testeOut(7) <= \testeOut[7]~output_o\;

ww_PC_OUT(0) <= \PC_OUT[0]~output_o\;

ww_PC_OUT(1) <= \PC_OUT[1]~output_o\;

ww_PC_OUT(2) <= \PC_OUT[2]~output_o\;

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


