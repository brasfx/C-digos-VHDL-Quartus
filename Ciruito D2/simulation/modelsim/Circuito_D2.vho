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

-- DATE "05/13/2021 23:23:09"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	Circuito_D2 IS
    PORT (
	D_in : IN std_logic;
	Clock : IN std_logic;
	Reset : IN std_logic;
	A : IN std_logic;
	B : IN std_logic;
	Out_x : BUFFER std_logic
	);
END Circuito_D2;

-- Design Ports Information
-- Out_x	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D_in	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Circuito_D2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D_in : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_Out_x : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputCLKENA0_outclk\ : std_logic;
SIGNAL \D_in~input_o\ : std_logic;
SIGNAL \Reset~input_o\ : std_logic;
SIGNAL \C1|dado_registrado[1]~feeder_combout\ : std_logic;
SIGNAL \C4|saida~combout\ : std_logic;
SIGNAL \C1|dado_registrado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \C1|ALT_INV_dado_registrado\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_Reset~input_o\ : std_logic;

BEGIN

ww_D_in <= D_in;
ww_Clock <= Clock;
ww_Reset <= Reset;
ww_A <= A;
ww_B <= B;
Out_x <= ww_Out_x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\C1|ALT_INV_dado_registrado\(3) <= NOT \C1|dado_registrado\(3);
\C1|ALT_INV_dado_registrado\(0) <= NOT \C1|dado_registrado\(0);
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_Reset~input_o\ <= NOT \Reset~input_o\;

-- Location: IOOBUF_X89_Y38_N22
\Out_x~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \C4|saida~combout\,
	devoe => ww_devoe,
	o => ww_Out_x);

-- Location: IOIBUF_X89_Y38_N38
\B~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: IOIBUF_X89_Y38_N4
\A~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X89_Y35_N61
\Clock~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G10
\Clock~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~input_o\,
	outclk => \Clock~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y38_N55
\D_in~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D_in,
	o => \D_in~input_o\);

-- Location: IOIBUF_X89_Y37_N4
\Reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset,
	o => \Reset~input_o\);

-- Location: FF_X88_Y38_N58
\C1|dado_registrado[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \D_in~input_o\,
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|dado_registrado\(0));

-- Location: LABCELL_X88_Y38_N42
\C1|dado_registrado[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \C1|dado_registrado[1]~feeder_combout\ = ( \C1|dado_registrado\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \C1|ALT_INV_dado_registrado\(0),
	combout => \C1|dado_registrado[1]~feeder_combout\);

-- Location: FF_X88_Y38_N44
\C1|dado_registrado[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	d => \C1|dado_registrado[1]~feeder_combout\,
	clrn => \ALT_INV_Reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|dado_registrado\(1));

-- Location: FF_X88_Y38_N53
\C1|dado_registrado[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \C1|dado_registrado\(1),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|dado_registrado\(2));

-- Location: FF_X88_Y38_N50
\C1|dado_registrado[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputCLKENA0_outclk\,
	asdata => \C1|dado_registrado\(2),
	clrn => \ALT_INV_Reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \C1|dado_registrado\(3));

-- Location: LABCELL_X88_Y38_N48
\C4|saida\ : cyclonev_lcell_comb
-- Equation(s):
-- \C4|saida~combout\ = ( \C1|dado_registrado\(3) ) # ( !\C1|dado_registrado\(3) & ( (\B~input_o\ & \A~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001100000011111111111111111100000011000000111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B~input_o\,
	datac => \ALT_INV_A~input_o\,
	datae => \C1|ALT_INV_dado_registrado\(3),
	combout => \C4|saida~combout\);

-- Location: MLABCELL_X82_Y24_N0
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


