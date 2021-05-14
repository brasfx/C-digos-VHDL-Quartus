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

-- DATE "05/03/2021 20:13:28"

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

ENTITY 	Circuito_C17 IS
    PORT (
	entrada_1 : IN std_logic;
	entrada_2 : IN std_logic;
	entrada_3 : IN std_logic;
	entrada_4 : IN std_logic;
	entrada_5 : IN std_logic;
	Saida_x : BUFFER std_logic;
	Saida_y : BUFFER std_logic
	);
END Circuito_C17;

-- Design Ports Information
-- Saida_x	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Saida_y	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_1	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_5	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_4	=>  Location: PIN_U8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_2	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_3	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Circuito_C17 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_1 : std_logic;
SIGNAL ww_entrada_2 : std_logic;
SIGNAL ww_entrada_3 : std_logic;
SIGNAL ww_entrada_4 : std_logic;
SIGNAL ww_entrada_5 : std_logic;
SIGNAL ww_Saida_x : std_logic;
SIGNAL ww_Saida_y : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \entrada_2~input_o\ : std_logic;
SIGNAL \entrada_5~input_o\ : std_logic;
SIGNAL \entrada_1~input_o\ : std_logic;
SIGNAL \entrada_4~input_o\ : std_logic;
SIGNAL \U3|y~0_combout\ : std_logic;
SIGNAL \entrada_3~input_o\ : std_logic;
SIGNAL \U5|y~0_combout\ : std_logic;
SIGNAL \ALT_INV_entrada_1~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada_5~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada_2~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada_4~input_o\ : std_logic;
SIGNAL \ALT_INV_entrada_3~input_o\ : std_logic;

BEGIN

ww_entrada_1 <= entrada_1;
ww_entrada_2 <= entrada_2;
ww_entrada_3 <= entrada_3;
ww_entrada_4 <= entrada_4;
ww_entrada_5 <= entrada_5;
Saida_x <= ww_Saida_x;
Saida_y <= ww_Saida_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_entrada_1~input_o\ <= NOT \entrada_1~input_o\;
\ALT_INV_entrada_5~input_o\ <= NOT \entrada_5~input_o\;
\ALT_INV_entrada_2~input_o\ <= NOT \entrada_2~input_o\;
\ALT_INV_entrada_4~input_o\ <= NOT \entrada_4~input_o\;
\ALT_INV_entrada_3~input_o\ <= NOT \entrada_3~input_o\;

-- Location: IOOBUF_X4_Y0_N36
\Saida_x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U3|y~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_x);

-- Location: IOOBUF_X4_Y0_N19
\Saida_y~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|y~0_combout\,
	devoe => ww_devoe,
	o => ww_Saida_y);

-- Location: IOIBUF_X2_Y0_N92
\entrada_2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_2,
	o => \entrada_2~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\entrada_5~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_5,
	o => \entrada_5~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\entrada_1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_1,
	o => \entrada_1~input_o\);

-- Location: IOIBUF_X2_Y0_N75
\entrada_4~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_4,
	o => \entrada_4~input_o\);

-- Location: LABCELL_X2_Y1_N0
\U3|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|y~0_combout\ = ( \entrada_4~input_o\ & ( (!\entrada_2~input_o\) # ((!\entrada_1~input_o\) # (\entrada_5~input_o\)) ) ) # ( !\entrada_4~input_o\ & ( (\entrada_5~input_o\ & \entrada_1~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111110111111101100000011000000111111101111111011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada_2~input_o\,
	datab => \ALT_INV_entrada_5~input_o\,
	datac => \ALT_INV_entrada_1~input_o\,
	datae => \ALT_INV_entrada_4~input_o\,
	combout => \U3|y~0_combout\);

-- Location: IOIBUF_X4_Y0_N52
\entrada_3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_3,
	o => \entrada_3~input_o\);

-- Location: LABCELL_X2_Y1_N9
\U5|y~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|y~0_combout\ = ( \entrada_4~input_o\ & ( \entrada_3~input_o\ & ( (!\entrada_1~input_o\) # (!\entrada_2~input_o\) ) ) ) # ( !\entrada_4~input_o\ & ( \entrada_3~input_o\ & ( (!\entrada_1~input_o\) # (!\entrada_2~input_o\) ) ) ) # ( \entrada_4~input_o\ & 
-- ( !\entrada_3~input_o\ & ( (!\entrada_1~input_o\) # (!\entrada_2~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111010101011111111101010101111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_entrada_1~input_o\,
	datad => \ALT_INV_entrada_2~input_o\,
	datae => \ALT_INV_entrada_4~input_o\,
	dataf => \ALT_INV_entrada_3~input_o\,
	combout => \U5|y~0_combout\);

-- Location: LABCELL_X50_Y1_N0
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


