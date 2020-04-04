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
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Web Edition"

-- DATE "11/21/2017 14:44:50"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	lab5 IS
    PORT (
	Clock : IN std_logic;
	Resetn : IN std_logic;
	w : IN std_logic;
	z : OUT std_logic
	);
END lab5;

-- Design Ports Information
-- z	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Resetn	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- w	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF lab5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_Resetn : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_z : std_logic;
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Resetn~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \y_present.s0~0_combout\ : std_logic;
SIGNAL \Resetn~combout\ : std_logic;
SIGNAL \Resetn~clkctrl_outclk\ : std_logic;
SIGNAL \w~combout\ : std_logic;
SIGNAL \y_present.s0~regout\ : std_logic;
SIGNAL \y_present.s1~0_combout\ : std_logic;
SIGNAL \y_present.s1~regout\ : std_logic;
SIGNAL \y_present.s3~feeder_combout\ : std_logic;
SIGNAL \y_present.s3~regout\ : std_logic;
SIGNAL \y_present.s8~feeder_combout\ : std_logic;
SIGNAL \y_present.s8~regout\ : std_logic;
SIGNAL \y_present.s6~feeder_combout\ : std_logic;
SIGNAL \y_present.s6~regout\ : std_logic;
SIGNAL \y_present.s5~feeder_combout\ : std_logic;
SIGNAL \y_present.s5~regout\ : std_logic;
SIGNAL \y_present.s7~feeder_combout\ : std_logic;
SIGNAL \y_present.s7~regout\ : std_logic;
SIGNAL \y_present.s2~feeder_combout\ : std_logic;
SIGNAL \y_present.s2~regout\ : std_logic;
SIGNAL \y_present.s4~feeder_combout\ : std_logic;
SIGNAL \y_present.s4~regout\ : std_logic;
SIGNAL \ALT_INV_Resetn~clkctrl_outclk\ : std_logic;

BEGIN

ww_Clock <= Clock;
ww_Resetn <= Resetn;
ww_w <= w;
z <= ww_z;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

\Resetn~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Resetn~combout\);
\ALT_INV_Resetn~clkctrl_outclk\ <= NOT \Resetn~clkctrl_outclk\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clock~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Clock,
	combout => \Clock~combout\);

-- Location: CLKCTRL_G3
\Clock~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~clkctrl_outclk\);

-- Location: LCCOMB_X31_Y35_N20
\y_present.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s0~0_combout\ = !\y_present.s4~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.s4~regout\,
	combout => \y_present.s0~0_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Resetn~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_Resetn,
	combout => \Resetn~combout\);

-- Location: CLKCTRL_G1
\Resetn~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Resetn~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Resetn~clkctrl_outclk\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\w~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_w,
	combout => \w~combout\);

-- Location: LCFF_X31_Y35_N21
\y_present.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s0~0_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s0~regout\);

-- Location: LCCOMB_X31_Y35_N2
\y_present.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s1~0_combout\ = !\y_present.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \y_present.s0~regout\,
	combout => \y_present.s1~0_combout\);

-- Location: LCFF_X31_Y35_N3
\y_present.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s1~0_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s1~regout\);

-- Location: LCCOMB_X31_Y35_N12
\y_present.s3~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s3~feeder_combout\ = \y_present.s1~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s1~regout\,
	combout => \y_present.s3~feeder_combout\);

-- Location: LCFF_X31_Y35_N13
\y_present.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s3~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s3~regout\);

-- Location: LCCOMB_X31_Y35_N18
\y_present.s8~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s8~feeder_combout\ = \y_present.s3~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s3~regout\,
	combout => \y_present.s8~feeder_combout\);

-- Location: LCFF_X31_Y35_N19
\y_present.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s8~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s8~regout\);

-- Location: LCCOMB_X31_Y35_N0
\y_present.s6~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s6~feeder_combout\ = \y_present.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s8~regout\,
	combout => \y_present.s6~feeder_combout\);

-- Location: LCFF_X31_Y35_N1
\y_present.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s6~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s6~regout\);

-- Location: LCCOMB_X31_Y35_N6
\y_present.s5~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s5~feeder_combout\ = \y_present.s6~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s6~regout\,
	combout => \y_present.s5~feeder_combout\);

-- Location: LCFF_X31_Y35_N7
\y_present.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s5~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s5~regout\);

-- Location: LCCOMB_X31_Y35_N28
\y_present.s7~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s7~feeder_combout\ = \y_present.s5~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s5~regout\,
	combout => \y_present.s7~feeder_combout\);

-- Location: LCFF_X31_Y35_N29
\y_present.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s7~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s7~regout\);

-- Location: LCCOMB_X31_Y35_N10
\y_present.s2~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s2~feeder_combout\ = \y_present.s7~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s7~regout\,
	combout => \y_present.s2~feeder_combout\);

-- Location: LCFF_X31_Y35_N11
\y_present.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s2~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s2~regout\);

-- Location: LCCOMB_X31_Y35_N24
\y_present.s4~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \y_present.s4~feeder_combout\ = \y_present.s2~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \y_present.s2~regout\,
	combout => \y_present.s4~feeder_combout\);

-- Location: LCFF_X31_Y35_N25
\y_present.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \y_present.s4~feeder_combout\,
	aclr => \ALT_INV_Resetn~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \y_present.s4~regout\);

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\z~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \y_present.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_z);
END structure;


