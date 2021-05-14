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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/07/2021 15:28:24"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	circuito_C10 IS
    PORT (
	g1 : IN std_logic;
	g2 : IN std_logic;
	g3 : IN std_logic;
	g4 : IN std_logic;
	g5 : IN std_logic;
	g6 : IN std_logic;
	g7 : IN std_logic;
	g8 : IN std_logic;
	g9 : BUFFER std_logic
	);
END circuito_C10;

-- Design Ports Information
-- g9	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g6	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g7	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g8	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g3	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g4	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g5	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g1	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g2	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF circuito_C10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_g1 : std_logic;
SIGNAL ww_g2 : std_logic;
SIGNAL ww_g3 : std_logic;
SIGNAL ww_g4 : std_logic;
SIGNAL ww_g5 : std_logic;
SIGNAL ww_g6 : std_logic;
SIGNAL ww_g7 : std_logic;
SIGNAL ww_g8 : std_logic;
SIGNAL ww_g9 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \g6~input_o\ : std_logic;
SIGNAL \g4~input_o\ : std_logic;
SIGNAL \g5~input_o\ : std_logic;
SIGNAL \g2~input_o\ : std_logic;
SIGNAL \g1~input_o\ : std_logic;
SIGNAL \g3~input_o\ : std_logic;
SIGNAL \U9|saida~0_combout\ : std_logic;
SIGNAL \g8~input_o\ : std_logic;
SIGNAL \g7~input_o\ : std_logic;
SIGNAL \U9|saida~1_combout\ : std_logic;
SIGNAL \U9|ALT_INV_saida~0_combout\ : std_logic;
SIGNAL \ALT_INV_g6~input_o\ : std_logic;
SIGNAL \ALT_INV_g7~input_o\ : std_logic;
SIGNAL \ALT_INV_g8~input_o\ : std_logic;
SIGNAL \ALT_INV_g3~input_o\ : std_logic;
SIGNAL \ALT_INV_g4~input_o\ : std_logic;
SIGNAL \ALT_INV_g5~input_o\ : std_logic;
SIGNAL \ALT_INV_g2~input_o\ : std_logic;
SIGNAL \ALT_INV_g1~input_o\ : std_logic;

BEGIN

ww_g1 <= g1;
ww_g2 <= g2;
ww_g3 <= g3;
ww_g4 <= g4;
ww_g5 <= g5;
ww_g6 <= g6;
ww_g7 <= g7;
ww_g8 <= g8;
g9 <= ww_g9;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U9|ALT_INV_saida~0_combout\ <= NOT \U9|saida~0_combout\;
\ALT_INV_g6~input_o\ <= NOT \g6~input_o\;
\ALT_INV_g7~input_o\ <= NOT \g7~input_o\;
\ALT_INV_g8~input_o\ <= NOT \g8~input_o\;
\ALT_INV_g3~input_o\ <= NOT \g3~input_o\;
\ALT_INV_g4~input_o\ <= NOT \g4~input_o\;
\ALT_INV_g5~input_o\ <= NOT \g5~input_o\;
\ALT_INV_g2~input_o\ <= NOT \g2~input_o\;
\ALT_INV_g1~input_o\ <= NOT \g1~input_o\;

-- Location: IOOBUF_X89_Y38_N56
\g9~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U9|saida~1_combout\,
	devoe => ww_devoe,
	o => ww_g9);

-- Location: IOIBUF_X89_Y36_N4
\g6~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g6,
	o => \g6~input_o\);

-- Location: IOIBUF_X89_Y37_N21
\g4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g4,
	o => \g4~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\g5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g5,
	o => \g5~input_o\);

-- Location: IOIBUF_X89_Y36_N21
\g2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g2,
	o => \g2~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\g1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g1,
	o => \g1~input_o\);

-- Location: IOIBUF_X89_Y37_N55
\g3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g3,
	o => \g3~input_o\);

-- Location: LABCELL_X88_Y36_N30
\U9|saida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|saida~0_combout\ = ( \g1~input_o\ & ( \g3~input_o\ & ( (!\g4~input_o\ & ((\g2~input_o\) # (\g5~input_o\))) ) ) ) # ( !\g1~input_o\ & ( \g3~input_o\ & ( (!\g4~input_o\ & \g5~input_o\) ) ) ) # ( \g1~input_o\ & ( !\g3~input_o\ & ( (\g2~input_o\) # 
-- (\g5~input_o\) ) ) ) # ( !\g1~input_o\ & ( !\g3~input_o\ & ( \g5~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001111110011111100100010001000100010101000101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_g4~input_o\,
	datab => \ALT_INV_g5~input_o\,
	datac => \ALT_INV_g2~input_o\,
	datae => \ALT_INV_g1~input_o\,
	dataf => \ALT_INV_g3~input_o\,
	combout => \U9|saida~0_combout\);

-- Location: IOIBUF_X89_Y35_N44
\g8~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g8,
	o => \g8~input_o\);

-- Location: IOIBUF_X89_Y37_N38
\g7~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g7,
	o => \g7~input_o\);

-- Location: LABCELL_X88_Y36_N9
\U9|saida~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U9|saida~1_combout\ = ( \g8~input_o\ & ( \g7~input_o\ ) ) # ( !\g8~input_o\ & ( \g7~input_o\ & ( (!\g6~input_o\) # (\U9|saida~0_combout\) ) ) ) # ( \g8~input_o\ & ( !\g7~input_o\ ) ) # ( !\g8~input_o\ & ( !\g7~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111110101111101011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_g6~input_o\,
	datac => \U9|ALT_INV_saida~0_combout\,
	datae => \ALT_INV_g8~input_o\,
	dataf => \ALT_INV_g7~input_o\,
	combout => \U9|saida~1_combout\);

-- Location: LABCELL_X67_Y6_N3
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


