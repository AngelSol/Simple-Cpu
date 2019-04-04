-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Full Version"

-- DATE "04/12/2016 15:16:04"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	outreg IS
    PORT (
	D : IN std_logic_vector(7 DOWNTO 0);
	Wr : IN std_logic;
	clear : IN std_logic;
	clk : IN std_logic;
	qr : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END outreg;

-- Design Ports Information
-- qr[0]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[1]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[2]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[5]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[6]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- qr[7]	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Wr	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[2]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[3]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[5]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[6]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF outreg IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Wr : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_qr : std_logic_vector(7 DOWNTO 0);
SIGNAL \clear~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \qr[0]~output_o\ : std_logic;
SIGNAL \qr[1]~output_o\ : std_logic;
SIGNAL \qr[2]~output_o\ : std_logic;
SIGNAL \qr[3]~output_o\ : std_logic;
SIGNAL \qr[4]~output_o\ : std_logic;
SIGNAL \qr[5]~output_o\ : std_logic;
SIGNAL \qr[6]~output_o\ : std_logic;
SIGNAL \qr[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \clear~inputclkctrl_outclk\ : std_logic;
SIGNAL \Wr~input_o\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \D[2]~input_o\ : std_logic;
SIGNAL \D[3]~input_o\ : std_logic;
SIGNAL \D[4]~input_o\ : std_logic;
SIGNAL \q[4]~feeder_combout\ : std_logic;
SIGNAL \D[5]~input_o\ : std_logic;
SIGNAL \D[6]~input_o\ : std_logic;
SIGNAL \q[6]~feeder_combout\ : std_logic;
SIGNAL \D[7]~input_o\ : std_logic;
SIGNAL \q[7]~feeder_combout\ : std_logic;
SIGNAL q : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_clear~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_D <= D;
ww_Wr <= Wr;
ww_clear <= clear;
ww_clk <= clk;
qr <= ww_qr;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clear~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clear~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clear~inputclkctrl_outclk\ <= NOT \clear~inputclkctrl_outclk\;

-- Location: IOOBUF_X18_Y24_N16
\qr[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(0),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\qr[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(1),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[1]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\qr[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(2),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\qr[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(3),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\qr[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(4),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\qr[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(5),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\qr[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(6),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[6]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\qr[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => q(7),
	oe => \Wr~input_o\,
	devoe => ww_devoe,
	o => \qr[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X18_Y0_N22
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\clear~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: CLKCTRL_G4
\clear~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clear~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clear~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y18_N1
\Wr~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Wr,
	o => \Wr~input_o\);

-- Location: FF_X21_Y10_N25
\q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D[0]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(0));

-- Location: IOIBUF_X34_Y17_N22
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: FF_X21_Y10_N19
\q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D[1]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(1));

-- Location: IOIBUF_X5_Y0_N22
\D[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(2),
	o => \D[2]~input_o\);

-- Location: FF_X21_Y10_N5
\q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D[2]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(2));

-- Location: IOIBUF_X34_Y17_N1
\D[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(3),
	o => \D[3]~input_o\);

-- Location: FF_X21_Y10_N23
\q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D[3]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(3));

-- Location: IOIBUF_X13_Y0_N1
\D[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(4),
	o => \D[4]~input_o\);

-- Location: LCCOMB_X21_Y10_N8
\q[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[4]~feeder_combout\ = \D[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[4]~input_o\,
	combout => \q[4]~feeder_combout\);

-- Location: FF_X21_Y10_N9
\q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[4]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(4));

-- Location: IOIBUF_X23_Y0_N15
\D[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(5),
	o => \D[5]~input_o\);

-- Location: FF_X21_Y10_N27
\q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \D[5]~input_o\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	sload => VCC,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(5));

-- Location: IOIBUF_X25_Y0_N1
\D[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(6),
	o => \D[6]~input_o\);

-- Location: LCCOMB_X21_Y10_N20
\q[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[6]~feeder_combout\ = \D[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[6]~input_o\,
	combout => \q[6]~feeder_combout\);

-- Location: FF_X21_Y10_N21
\q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[6]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(6));

-- Location: IOIBUF_X21_Y0_N8
\D[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(7),
	o => \D[7]~input_o\);

-- Location: LCCOMB_X21_Y10_N30
\q[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \q[7]~feeder_combout\ = \D[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \D[7]~input_o\,
	combout => \q[7]~feeder_combout\);

-- Location: FF_X21_Y10_N31
\q[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \q[7]~feeder_combout\,
	clrn => \ALT_INV_clear~inputclkctrl_outclk\,
	ena => \Wr~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => q(7));

ww_qr(0) <= \qr[0]~output_o\;

ww_qr(1) <= \qr[1]~output_o\;

ww_qr(2) <= \qr[2]~output_o\;

ww_qr(3) <= \qr[3]~output_o\;

ww_qr(4) <= \qr[4]~output_o\;

ww_qr(5) <= \qr[5]~output_o\;

ww_qr(6) <= \qr[6]~output_o\;

ww_qr(7) <= \qr[7]~output_o\;
END structure;


