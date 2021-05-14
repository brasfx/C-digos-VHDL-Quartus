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

-- DATE "05/06/2021 21:02:27"

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

ENTITY 	porta_OR_3X1 IS
    PORT (
	w : IN std_logic;
	x : IN std_logic;
	y : IN std_logic;
	z : BUFFER std_logic
	);
END porta_OR_3X1;

-- Design Ports Information
-- z	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y	=>  Location: PIN_U6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF porta_OR_3X1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \y~input_o\ : std_logic;
SIGNAL \z~0_combout\ : std_logic;
SIGNAL \ALT_INV_y~input_o\ : std_logic;
SIGNAL \ALT_INV_x~input_o\ : std_logic;
SIGNAL \ALT_INV_w~input_o\ : std_logic;

BEGIN

ww_w <= w;
ww_x <= x;
ww_y <= y;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_y~input_o\ <= NOT \y~input_o\;
\ALT_INV_x~input_o\ <= NOT \x~input_o\;
\ALT_INV_w~input_o\ <= NOT \w~input_o\;

-- Location: IOOBUF_X6_Y0_N19
\z~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \z~0_combout\,
	devoe => ww_devoe,
	o => ww_z);

-- Location: IOIBUF_X6_Y0_N35
\x~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

-- Location: IOIBUF_X6_Y0_N1
\w~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X6_Y0_N52
\y~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_y,
	o => \y~input_o\);

-- Location: MLABCELL_X6_Y1_N0
\z~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \z~0_combout\ = ( \y~input_o\ ) # ( !\y~input_o\ & ( (\w~input_o\) # (\x~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010111110101111111111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_x~input_o\,
	datac => \ALT_INV_w~input_o\,
	dataf => \ALT_INV_y~input_o\,
	combout => \z~0_combout\);

-- Location: LABCELL_X80_Y37_N0
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


