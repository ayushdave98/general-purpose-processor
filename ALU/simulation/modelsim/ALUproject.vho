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

-- DATE "11/21/2017 14:33:33"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.NUMERIC_STD.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ALUproject IS
    PORT (
	Clock : IN std_logic;
	A : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	B : IN IEEE.NUMERIC_STD.unsigned(7 DOWNTO 0);
	student_id : IN IEEE.NUMERIC_STD.unsigned(3 DOWNTO 0);
	OP : IN IEEE.NUMERIC_STD.unsigned(15 DOWNTO 0);
	Neg : OUT std_logic;
	R1 : OUT IEEE.NUMERIC_STD.unsigned(0 TO 3);
	R2 : OUT IEEE.NUMERIC_STD.unsigned(4 TO 7)
	);
END ALUproject;

-- Design Ports Information
-- student_id[0]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[1]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[2]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- student_id[3]	=>  Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Neg	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[7]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[6]	=>  Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[5]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[4]	=>  Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- A[7]	=>  Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[9]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[10]	=>  Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[11]	=>  Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[12]	=>  Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[13]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[14]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[15]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[0]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[1]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[5]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[4]	=>  Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[6]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[3]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[2]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[7]	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- OP[8]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Clock	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF ALUproject IS
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
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_student_id : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OP : std_logic_vector(15 DOWNTO 0);
SIGNAL ww_Neg : std_logic;
SIGNAL ww_R1 : std_logic_vector(0 TO 3);
SIGNAL ww_R2 : std_logic_vector(4 TO 7);
SIGNAL \Clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~14_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Selector7~1_combout\ : std_logic;
SIGNAL \Selector7~2_combout\ : std_logic;
SIGNAL \Selector7~3_combout\ : std_logic;
SIGNAL \Selector7~4_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \WideNor0~3_combout\ : std_logic;
SIGNAL \Selector6~1_combout\ : std_logic;
SIGNAL \Selector5~5_combout\ : std_logic;
SIGNAL \Selector4~1_combout\ : std_logic;
SIGNAL \Selector4~2_combout\ : std_logic;
SIGNAL \Selector4~3_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \Selector3~1_combout\ : std_logic;
SIGNAL \Selector2~1_combout\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \Selector0~1_combout\ : std_logic;
SIGNAL \Selector0~3_combout\ : std_logic;
SIGNAL \Clock~combout\ : std_logic;
SIGNAL \Clock~clkctrl_outclk\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Neg~0_combout\ : std_logic;
SIGNAL \Neg~reg0_regout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \WideNor0~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal8~0_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \WideNor0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \WideNor0~1_combout\ : std_logic;
SIGNAL \WideNor0~combout\ : std_logic;
SIGNAL \Selector7~5_combout\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \Equal6~0_combout\ : std_logic;
SIGNAL \Equal7~0_combout\ : std_logic;
SIGNAL \Selector6~4_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Selector6~5_combout\ : std_logic;
SIGNAL \Selector6~2_combout\ : std_logic;
SIGNAL \Selector6~3_combout\ : std_logic;
SIGNAL \Selector6~6_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Selector5~1_combout\ : std_logic;
SIGNAL \Selector5~2_combout\ : std_logic;
SIGNAL \Selector5~3_combout\ : std_logic;
SIGNAL \Result~0_combout\ : std_logic;
SIGNAL \Selector5~4_combout\ : std_logic;
SIGNAL \Selector5~6_combout\ : std_logic;
SIGNAL \Result~1_combout\ : std_logic;
SIGNAL \Selector4~4_combout\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \Selector4~5_combout\ : std_logic;
SIGNAL \Selector4~6_combout\ : std_logic;
SIGNAL \Selector3~5_combout\ : std_logic;
SIGNAL \Selector3~2_combout\ : std_logic;
SIGNAL \Selector3~3_combout\ : std_logic;
SIGNAL \Result~2_combout\ : std_logic;
SIGNAL \Selector3~4_combout\ : std_logic;
SIGNAL \Selector3~6_combout\ : std_logic;
SIGNAL \Selector2~2_combout\ : std_logic;
SIGNAL \Selector2~3_combout\ : std_logic;
SIGNAL \Selector2~4_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Selector2~5_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \Selector2~6_combout\ : std_logic;
SIGNAL \Selector1~4_combout\ : std_logic;
SIGNAL \Selector1~5_combout\ : std_logic;
SIGNAL \Selector1~1_combout\ : std_logic;
SIGNAL \Selector1~2_combout\ : std_logic;
SIGNAL \Selector1~3_combout\ : std_logic;
SIGNAL \Selector1~6_combout\ : std_logic;
SIGNAL \Selector0~4_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Selector0~5_combout\ : std_logic;
SIGNAL \Selector0~2_combout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Selector0~6_combout\ : std_logic;
SIGNAL Result : std_logic_vector(7 DOWNTO 0);
SIGNAL \OP~combout\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_Clock <= Clock;
ww_A <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(A);
ww_B <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(B);
ww_student_id <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(student_id);
ww_OP <= IEEE.STD_LOGIC_1164.STD_LOGIC_VECTOR(OP);
Neg <= ww_Neg;
R1 <= IEEE.NUMERIC_STD.UNSIGNED(ww_R1);
R2 <= IEEE.NUMERIC_STD.UNSIGNED(ww_R2);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\Clock~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Clock~combout\);

-- Location: LCCOMB_X62_Y33_N16
\LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y33_N18
\LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\A~combout\(1) & ((!\LessThan0~1_cout\) # (!\B~combout\(1)))) # (!\A~combout\(1) & (!\B~combout\(1) & !\LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y33_N20
\LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\B~combout\(2) & ((!\LessThan0~3_cout\) # (!\A~combout\(2)))) # (!\B~combout\(2) & (!\A~combout\(2) & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X62_Y33_N22
\LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\A~combout\(3) & ((!\LessThan0~5_cout\) # (!\B~combout\(3)))) # (!\A~combout\(3) & (!\B~combout\(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X62_Y33_N24
\LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\A~combout\(4) & (\B~combout\(4) & !\LessThan0~7_cout\)) # (!\A~combout\(4) & ((\B~combout\(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X62_Y33_N26
\LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\B~combout\(5) & (\A~combout\(5) & !\LessThan0~9_cout\)) # (!\B~combout\(5) & ((\A~combout\(5)) # (!\LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y33_N28
\LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\A~combout\(6) & (\B~combout\(6) & !\LessThan0~11_cout\)) # (!\A~combout\(6) & ((\B~combout\(6)) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y33_N30
\LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \LessThan0~14_combout\ = (\A~combout\(7) & (\LessThan0~13_cout\ & \B~combout\(7))) # (!\A~combout\(7) & ((\LessThan0~13_cout\) # (\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datad => \B~combout\(7),
	cin => \LessThan0~13_cout\,
	combout => \LessThan0~14_combout\);

-- Location: LCCOMB_X60_Y33_N4
\Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\A~combout\(0) & ((GND) # (!\B~combout\(0)))) # (!\A~combout\(0) & (\B~combout\(0) $ (GND)))
-- \Add1~1\ = CARRY((\A~combout\(0)) # (!\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X62_Y33_N0
\Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\A~combout\(0) & (\B~combout\(0) $ (VCC))) # (!\A~combout\(0) & (\B~combout\(0) & VCC))
-- \Add0~1\ = CARRY((\A~combout\(0) & \B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \B~combout\(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X60_Y33_N6
\Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (!\Add1~1\)) # (!\B~combout\(1) & (\Add1~1\ & VCC)))) # (!\A~combout\(1) & ((\B~combout\(1) & ((\Add1~1\) # (GND))) # (!\B~combout\(1) & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\A~combout\(1) & (\B~combout\(1) & !\Add1~1\)) # (!\A~combout\(1) & ((\B~combout\(1)) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X60_Y33_N8
\Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\B~combout\(2) & (\A~combout\(2) & !\Add1~3\)) # (!\B~combout\(2) & ((\A~combout\(2)) # (!\Add1~3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X62_Y33_N4
\Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\B~combout\(2) $ (\A~combout\(2) $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\B~combout\(2) & ((\A~combout\(2)) # (!\Add0~3\))) # (!\B~combout\(2) & (\A~combout\(2) & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \A~combout\(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X60_Y33_N10
\Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (!\Add1~5\)) # (!\B~combout\(3) & (\Add1~5\ & VCC)))) # (!\A~combout\(3) & ((\B~combout\(3) & ((\Add1~5\) # (GND))) # (!\B~combout\(3) & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\A~combout\(3) & (\B~combout\(3) & !\Add1~5\)) # (!\A~combout\(3) & ((\B~combout\(3)) # (!\Add1~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X62_Y33_N6
\Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\A~combout\(3) & ((\B~combout\(3) & (\Add0~5\ & VCC)) # (!\B~combout\(3) & (!\Add0~5\)))) # (!\A~combout\(3) & ((\B~combout\(3) & (!\Add0~5\)) # (!\B~combout\(3) & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\A~combout\(3) & (!\B~combout\(3) & !\Add0~5\)) # (!\A~combout\(3) & ((!\Add0~5\) # (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(3),
	datab => \B~combout\(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X60_Y33_N12
\Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\A~combout\(4) & ((!\Add1~7\) # (!\B~combout\(4)))) # (!\A~combout\(4) & (!\B~combout\(4) & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X62_Y33_N8
\Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\A~combout\(4) $ (\B~combout\(4) $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\A~combout\(4) & ((\B~combout\(4)) # (!\Add0~7\))) # (!\A~combout\(4) & (\B~combout\(4) & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(4),
	datab => \B~combout\(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X60_Y33_N14
\Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (!\Add1~9\)) # (!\A~combout\(5) & ((\Add1~9\) # (GND))))) # (!\B~combout\(5) & ((\A~combout\(5) & (\Add1~9\ & VCC)) # (!\A~combout\(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\B~combout\(5) & ((!\Add1~9\) # (!\A~combout\(5)))) # (!\B~combout\(5) & (!\A~combout\(5) & !\Add1~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X60_Y33_N16
\Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\A~combout\(6) & ((!\Add1~11\) # (!\B~combout\(6)))) # (!\A~combout\(6) & (!\B~combout\(6) & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X62_Y33_N12
\Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\A~combout\(6) $ (\B~combout\(6) $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\A~combout\(6) & ((\B~combout\(6)) # (!\Add0~11\))) # (!\A~combout\(6) & (\B~combout\(6) & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \B~combout\(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X60_Y33_N18
\Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = \A~combout\(7) $ (\Add1~13\ $ (!\B~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datad => \B~combout\(7),
	cin => \Add1~13\,
	combout => \Add1~14_combout\);

-- Location: LCCOMB_X64_Y32_N12
\Equal1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Equal1~1_combout\ & (\Equal1~0_combout\ & !\OP~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \OP~combout\(0),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X64_Y32_N10
\Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\OP~combout\(0) & (!\OP~combout\(8) & !\OP~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(0),
	datac => \OP~combout\(8),
	datad => \OP~combout\(1),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X64_Y32_N14
\Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!\OP~combout\(3) & (!\OP~combout\(5) & (\Equal2~2_combout\ & !\OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \OP~combout\(5),
	datac => \Equal2~2_combout\,
	datad => \OP~combout\(2),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X63_Y33_N20
\Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~1_combout\ = (\Add0~0_combout\ & (\Add1~0_combout\ & (\Equal1~4_combout\))) # (!\Add0~0_combout\ & ((\Equal8~0_combout\) # ((\Add1~0_combout\ & \Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Add1~0_combout\,
	datac => \Equal1~4_combout\,
	datad => \Equal8~0_combout\,
	combout => \Selector7~1_combout\);

-- Location: LCCOMB_X63_Y33_N2
\Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~2_combout\ = (\Selector7~1_combout\) # ((\Equal3~0_combout\ & !\B~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal3~0_combout\,
	datac => \Selector7~1_combout\,
	datad => \B~combout\(0),
	combout => \Selector7~2_combout\);

-- Location: LCCOMB_X63_Y33_N8
\Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~3_combout\ = (\Equal7~0_combout\ & (((\A~combout\(0)) # (\B~combout\(0))))) # (!\Equal7~0_combout\ & (\Equal5~1_combout\ & (\A~combout\(0) & \B~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \A~combout\(0),
	datad => \B~combout\(0),
	combout => \Selector7~3_combout\);

-- Location: LCCOMB_X63_Y33_N10
\Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~4_combout\ = (\Selector7~2_combout\) # ((\Selector7~3_combout\) # ((\Add0~0_combout\ & !\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \Selector7~2_combout\,
	datac => \Selector7~3_combout\,
	datad => \WideNor0~1_combout\,
	combout => \Selector7~4_combout\);

-- Location: LCCOMB_X64_Y32_N4
\Equal2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\OP~combout\(3) & (\Equal2~0_combout\ & (\Equal2~2_combout\ & \OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \OP~combout\(2),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X64_Y32_N6
\WideNor0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~3_combout\ = (\Equal1~4_combout\) # ((\Equal3~0_combout\) # ((\Equal2~3_combout\) # (\Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal7~0_combout\,
	combout => \WideNor0~3_combout\);

-- Location: LCCOMB_X60_Y33_N0
\Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~1_combout\ = (\Add1~2_combout\ & ((\Equal1~4_combout\) # ((!\B~combout\(1) & \Equal3~0_combout\)))) # (!\Add1~2_combout\ & (((!\B~combout\(1) & \Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~2_combout\,
	datab => \Equal1~4_combout\,
	datac => \B~combout\(1),
	datad => \Equal3~0_combout\,
	combout => \Selector6~1_combout\);

-- Location: LCCOMB_X61_Y33_N10
\Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~5_combout\ = (\Add0~4_combout\ & ((\Equal0~2_combout\) # ((\Equal7~0_combout\ & \B~combout\(2))))) # (!\Add0~4_combout\ & (\Equal7~0_combout\ & (\B~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~4_combout\,
	datab => \Equal7~0_combout\,
	datac => \B~combout\(2),
	datad => \Equal0~2_combout\,
	combout => \Selector5~5_combout\);

-- Location: LCCOMB_X60_Y33_N28
\Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~1_combout\ = (\Equal3~0_combout\ & (((\Equal1~4_combout\ & \Add1~6_combout\)) # (!\B~combout\(3)))) # (!\Equal3~0_combout\ & (\Equal1~4_combout\ & ((\Add1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~4_combout\,
	datac => \B~combout\(3),
	datad => \Add1~6_combout\,
	combout => \Selector4~1_combout\);

-- Location: LCCOMB_X64_Y33_N2
\Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~2_combout\ = (\B~combout\(3) & (\A~combout\(3) & ((\Equal5~1_combout\) # (\Equal8~0_combout\)))) # (!\B~combout\(3) & (((!\A~combout\(3) & \Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(3),
	datab => \Equal5~1_combout\,
	datac => \A~combout\(3),
	datad => \Equal8~0_combout\,
	combout => \Selector4~2_combout\);

-- Location: LCCOMB_X64_Y33_N16
\Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~3_combout\ = (\Selector4~1_combout\) # ((\Selector4~2_combout\) # ((\Equal7~0_combout\ & \A~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~1_combout\,
	datab => \Equal7~0_combout\,
	datac => \A~combout\(3),
	datad => \Selector4~2_combout\,
	combout => \Selector4~3_combout\);

-- Location: LCCOMB_X61_Y33_N12
\Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (!\A~combout\(4) & (((\Equal4~1_combout\ & !\B~combout\(4))) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \A~combout\(4),
	datac => \Equal4~1_combout\,
	datad => \B~combout\(4),
	combout => \Selector3~0_combout\);

-- Location: LCCOMB_X60_Y33_N30
\Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~1_combout\ = (\Equal3~0_combout\ & (((\Equal1~4_combout\ & \Add1~8_combout\)) # (!\B~combout\(4)))) # (!\Equal3~0_combout\ & (\Equal1~4_combout\ & (\Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~0_combout\,
	datab => \Equal1~4_combout\,
	datac => \Add1~8_combout\,
	datad => \B~combout\(4),
	combout => \Selector3~1_combout\);

-- Location: LCCOMB_X59_Y33_N24
\Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~1_combout\ = (\B~combout\(5) & (((\Add1~10_combout\ & \Equal1~4_combout\)))) # (!\B~combout\(5) & ((\Equal3~0_combout\) # ((\Add1~10_combout\ & \Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Equal3~0_combout\,
	datac => \Add1~10_combout\,
	datad => \Equal1~4_combout\,
	combout => \Selector2~1_combout\);

-- Location: LCCOMB_X63_Y33_N12
\Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (!\A~combout\(6) & (((\Equal4~1_combout\ & !\B~combout\(6))) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \WideNor0~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \B~combout\(6),
	combout => \Selector1~0_combout\);

-- Location: LCCOMB_X60_Y33_N2
\Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~1_combout\ = (\A~combout\(7) & (\Add1~14_combout\ & ((\Equal1~4_combout\)))) # (!\A~combout\(7) & ((\Equal2~3_combout\) # ((\Add1~14_combout\ & \Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \Add1~14_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal1~4_combout\,
	combout => \Selector0~1_combout\);

-- Location: LCCOMB_X59_Y33_N6
\Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~3_combout\ = (\Equal7~0_combout\ & ((\A~combout\(7)) # (\B~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datac => \Equal7~0_combout\,
	datad => \B~combout\(7),
	combout => \Selector0~3_combout\);

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: PIN_N18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[10]~I\ : cycloneii_io
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
	padio => ww_OP(10),
	combout => \OP~combout\(10));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[0]~I\ : cycloneii_io
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
	padio => ww_OP(0),
	combout => \OP~combout\(0));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[3]~I\ : cycloneii_io
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
	padio => ww_OP(3),
	combout => \OP~combout\(3));

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

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[2]~I\ : cycloneii_io
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
	padio => ww_OP(2),
	combout => \OP~combout\(2));

-- Location: PIN_J21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[4]~I\ : cycloneii_io
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
	padio => ww_OP(4),
	combout => \OP~combout\(4));

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[5]~I\ : cycloneii_io
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
	padio => ww_OP(5),
	combout => \OP~combout\(5));

-- Location: LCCOMB_X64_Y33_N18
\Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\OP~combout\(6) & (!\OP~combout\(4) & !\OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(4),
	datad => \OP~combout\(5),
	combout => \Equal2~0_combout\);

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[1]~I\ : cycloneii_io
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
	padio => ww_OP(1),
	combout => \OP~combout\(1));

-- Location: LCCOMB_X64_Y32_N2
\Equal1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\OP~combout\(3) & (!\OP~combout\(2) & (\Equal2~0_combout\ & \OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \OP~combout\(2),
	datac => \Equal2~0_combout\,
	datad => \OP~combout\(1),
	combout => \Equal1~3_combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[8]~I\ : cycloneii_io
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
	padio => ww_OP(8),
	combout => \OP~combout\(8));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[7]~I\ : cycloneii_io
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
	padio => ww_OP(7),
	combout => \OP~combout\(7));

-- Location: LCCOMB_X64_Y32_N16
\Equal1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~3_combout\ & (!\OP~combout\(8) & !\OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => \OP~combout\(8),
	datad => \OP~combout\(7),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X63_Y33_N0
\Neg~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Neg~0_combout\ = (\Equal1~4_combout\ & (\LessThan0~14_combout\)) # (!\Equal1~4_combout\ & ((\Neg~reg0_regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~14_combout\,
	datab => \Equal1~4_combout\,
	datac => \Neg~reg0_regout\,
	combout => \Neg~0_combout\);

-- Location: LCFF_X63_Y33_N1
\Neg~reg0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Neg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Neg~reg0_regout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[14]~I\ : cycloneii_io
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
	padio => ww_OP(14),
	combout => \OP~combout\(14));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[15]~I\ : cycloneii_io
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
	padio => ww_OP(15),
	combout => \OP~combout\(15));

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[13]~I\ : cycloneii_io
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
	padio => ww_OP(13),
	combout => \OP~combout\(13));

-- Location: LCCOMB_X64_Y31_N0
\Equal1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!\OP~combout\(14) & (!\OP~combout\(15) & !\OP~combout\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \OP~combout\(14),
	datac => \OP~combout\(15),
	datad => \OP~combout\(13),
	combout => \Equal1~1_combout\);

-- Location: PIN_F26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[11]~I\ : cycloneii_io
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
	padio => ww_OP(11),
	combout => \OP~combout\(11));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[9]~I\ : cycloneii_io
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
	padio => ww_OP(9),
	combout => \OP~combout\(9));

-- Location: PIN_P18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[12]~I\ : cycloneii_io
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
	padio => ww_OP(12),
	combout => \OP~combout\(12));

-- Location: LCCOMB_X64_Y29_N4
\Equal1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!\OP~combout\(10) & (!\OP~combout\(11) & (!\OP~combout\(9) & !\OP~combout\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(10),
	datab => \OP~combout\(11),
	datac => \OP~combout\(9),
	datad => \OP~combout\(12),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X64_Y32_N8
\Equal2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (\Equal2~1_combout\ & (\Equal1~1_combout\ & (\Equal1~0_combout\ & !\OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal1~1_combout\,
	datac => \Equal1~0_combout\,
	datad => \OP~combout\(7),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X64_Y32_N24
\WideNor0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~0_combout\ = ((\OP~combout\(3) $ (!\OP~combout\(2))) # (!\Equal2~2_combout\)) # (!\Equal2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \OP~combout\(2),
	combout => \WideNor0~0_combout\);

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\OP[6]~I\ : cycloneii_io
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
	padio => ww_OP(6),
	combout => \OP~combout\(6));

-- Location: LCCOMB_X64_Y33_N12
\Equal4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (\Equal4~0_combout\ & (\OP~combout\(4) & !\OP~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \Equal4~1_combout\);

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: LCCOMB_X63_Y33_N26
\Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (!\A~combout\(0) & (((\Equal4~1_combout\ & !\B~combout\(0))) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(0),
	datab => \WideNor0~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \B~combout\(0),
	combout => \Selector7~0_combout\);

-- Location: LCCOMB_X64_Y32_N18
\Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\OP~combout\(3) & (!\OP~combout\(2) & (\Equal2~0_combout\ & !\OP~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \OP~combout\(2),
	datac => \Equal2~0_combout\,
	datad => \OP~combout\(1),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X64_Y32_N0
\Equal8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal8~0_combout\ = (\Equal1~2_combout\ & (\Equal0~0_combout\ & (\OP~combout\(8) & !\OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \OP~combout\(8),
	datad => \OP~combout\(7),
	combout => \Equal8~0_combout\);

-- Location: LCCOMB_X64_Y33_N26
\Equal5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!\OP~combout\(6) & (!\OP~combout\(4) & \OP~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(6),
	datab => \OP~combout\(4),
	datad => \OP~combout\(5),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X64_Y32_N26
\Equal5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!\OP~combout\(3) & (\Equal5~0_combout\ & (\Equal2~2_combout\ & !\OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \Equal5~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \OP~combout\(2),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X63_Y33_N28
\WideNor0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~2_combout\ = (\Equal8~0_combout\) # (\Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal8~0_combout\,
	datac => \Equal5~1_combout\,
	combout => \WideNor0~2_combout\);

-- Location: LCCOMB_X64_Y32_N20
\Equal0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (\OP~combout\(0) & (\Equal1~0_combout\ & (!\OP~combout\(8) & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(0),
	datab => \Equal1~0_combout\,
	datac => \OP~combout\(8),
	datad => \Equal1~1_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X64_Y32_N22
\Equal0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (\Equal0~0_combout\ & (\Equal0~1_combout\ & !\OP~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \OP~combout\(7),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X64_Y33_N24
\WideNor0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~1_combout\ = (!\Equal0~2_combout\ & (((\OP~combout\(4)) # (!\OP~combout\(6))) # (!\Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \WideNor0~1_combout\);

-- Location: LCCOMB_X63_Y33_N6
WideNor0 : cycloneii_lcell_comb
-- Equation(s):
-- \WideNor0~combout\ = (\WideNor0~3_combout\) # ((\WideNor0~2_combout\) # ((\Equal4~1_combout\) # (!\WideNor0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~3_combout\,
	datab => \WideNor0~2_combout\,
	datac => \Equal4~1_combout\,
	datad => \WideNor0~1_combout\,
	combout => \WideNor0~combout\);

-- Location: LCCOMB_X63_Y33_N18
\Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector7~5_combout\ = (\Selector7~4_combout\) # ((\Selector7~0_combout\) # ((Result(0) & !\WideNor0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector7~4_combout\,
	datab => \Selector7~0_combout\,
	datac => Result(0),
	datad => \WideNor0~combout\,
	combout => \Selector7~5_combout\);

-- Location: LCFF_X63_Y33_N19
\Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector7~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(0));

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCCOMB_X61_Y33_N22
\Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (!\A~combout\(1) & (((!\B~combout\(1) & \Equal4~1_combout\)) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \Equal4~1_combout\,
	datad => \WideNor0~0_combout\,
	combout => \Selector6~0_combout\);

-- Location: LCCOMB_X64_Y33_N30
\Equal6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal6~0_combout\ = (\Equal4~0_combout\ & (!\OP~combout\(4) & \OP~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \Equal6~0_combout\);

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X64_Y32_N28
\Equal7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal7~0_combout\ = (\Equal1~2_combout\ & (\Equal0~0_combout\ & (!\OP~combout\(8) & \OP~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal0~0_combout\,
	datac => \OP~combout\(8),
	datad => \OP~combout\(7),
	combout => \Equal7~0_combout\);

-- Location: LCCOMB_X60_Y33_N22
\Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~4_combout\ = (\B~combout\(1) & ((\Equal7~0_combout\) # ((!\A~combout\(1) & \Equal6~0_combout\)))) # (!\B~combout\(1) & (\A~combout\(1) & (\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \Equal6~0_combout\,
	datac => \B~combout\(1),
	datad => \Equal7~0_combout\,
	combout => \Selector6~4_combout\);

-- Location: LCCOMB_X62_Y33_N2
\Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\A~combout\(1) & ((\B~combout\(1) & (\Add0~1\ & VCC)) # (!\B~combout\(1) & (!\Add0~1\)))) # (!\A~combout\(1) & ((\B~combout\(1) & (!\Add0~1\)) # (!\B~combout\(1) & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\A~combout\(1) & (!\B~combout\(1) & !\Add0~1\)) # (!\A~combout\(1) & ((!\Add0~1\) # (!\B~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(1),
	datab => \B~combout\(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X61_Y33_N16
\Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~5_combout\ = (\Selector6~4_combout\) # ((\Add0~2_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~4_combout\,
	datac => \Add0~2_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector6~5_combout\);

-- Location: LCCOMB_X61_Y33_N0
\Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~2_combout\ = (\B~combout\(1) & (\A~combout\(1) & ((\Equal5~1_combout\) # (\Equal8~0_combout\)))) # (!\B~combout\(1) & (!\A~combout\(1) & ((\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(1),
	datab => \A~combout\(1),
	datac => \Equal5~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \Selector6~2_combout\);

-- Location: LCCOMB_X61_Y33_N30
\Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~3_combout\ = (\Selector6~1_combout\) # ((\Selector6~2_combout\) # ((\Equal7~0_combout\ & \A~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector6~1_combout\,
	datab => \Equal7~0_combout\,
	datac => \A~combout\(1),
	datad => \Selector6~2_combout\,
	combout => \Selector6~3_combout\);

-- Location: LCCOMB_X61_Y33_N4
\Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector6~6_combout\ = (\Selector6~0_combout\) # ((\Selector6~5_combout\) # (\Selector6~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector6~0_combout\,
	datac => \Selector6~5_combout\,
	datad => \Selector6~3_combout\,
	combout => \Selector6~6_combout\);

-- Location: LCFF_X61_Y33_N5
\Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector6~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(1));

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: LCCOMB_X61_Y33_N26
\Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (!\A~combout\(2) & (((\Equal4~1_combout\ & !\B~combout\(2))) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Equal4~1_combout\,
	datac => \B~combout\(2),
	datad => \WideNor0~0_combout\,
	combout => \Selector5~0_combout\);

-- Location: LCCOMB_X64_Y32_N30
\Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (\OP~combout\(3) & (\Equal2~0_combout\ & (\Equal2~2_combout\ & !\OP~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \OP~combout\(3),
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \OP~combout\(2),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X61_Y33_N28
\Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~1_combout\ = (\Add1~4_combout\ & ((\Equal1~4_combout\) # ((!\B~combout\(2) & \Equal3~0_combout\)))) # (!\Add1~4_combout\ & (((!\B~combout\(2) & \Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \Equal1~4_combout\,
	datac => \B~combout\(2),
	datad => \Equal3~0_combout\,
	combout => \Selector5~1_combout\);

-- Location: LCCOMB_X61_Y33_N6
\Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~2_combout\ = (\A~combout\(2) & (\B~combout\(2) & ((\Equal5~1_combout\) # (\Equal8~0_combout\)))) # (!\A~combout\(2) & (((!\B~combout\(2) & \Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Equal5~1_combout\,
	datac => \B~combout\(2),
	datad => \Equal8~0_combout\,
	combout => \Selector5~2_combout\);

-- Location: LCCOMB_X61_Y33_N20
\Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~3_combout\ = (\Selector5~1_combout\) # ((\Selector5~2_combout\) # ((\A~combout\(2) & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(2),
	datab => \Selector5~1_combout\,
	datac => \Equal7~0_combout\,
	datad => \Selector5~2_combout\,
	combout => \Selector5~3_combout\);

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCCOMB_X64_Y33_N0
\Result~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~0_combout\ = \A~combout\(2) $ (\B~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(2),
	datad => \B~combout\(2),
	combout => \Result~0_combout\);

-- Location: LCCOMB_X64_Y33_N14
\Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~4_combout\ = (\Equal4~0_combout\ & (\Result~0_combout\ & (!\OP~combout\(4) & \OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Result~0_combout\,
	datac => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \Selector5~4_combout\);

-- Location: LCCOMB_X61_Y33_N14
\Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector5~6_combout\ = (\Selector5~5_combout\) # ((\Selector5~0_combout\) # ((\Selector5~3_combout\) # (\Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector5~5_combout\,
	datab => \Selector5~0_combout\,
	datac => \Selector5~3_combout\,
	datad => \Selector5~4_combout\,
	combout => \Selector5~6_combout\);

-- Location: LCFF_X61_Y33_N15
\Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector5~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(2));

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: LCCOMB_X64_Y33_N22
\Result~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~1_combout\ = \A~combout\(3) $ (\B~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(3),
	datad => \B~combout\(3),
	combout => \Result~1_combout\);

-- Location: LCCOMB_X64_Y33_N8
\Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~4_combout\ = (\Equal4~0_combout\ & (\Result~1_combout\ & (!\OP~combout\(4) & \OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Result~1_combout\,
	datac => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \Selector4~4_combout\);

-- Location: LCCOMB_X64_Y33_N20
\Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (!\A~combout\(3) & (((\Equal4~1_combout\ & !\B~combout\(3))) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~1_combout\,
	datab => \A~combout\(3),
	datac => \WideNor0~0_combout\,
	datad => \B~combout\(3),
	combout => \Selector4~0_combout\);

-- Location: LCCOMB_X64_Y33_N6
\Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~5_combout\ = (\Add0~6_combout\ & ((\Equal0~2_combout\) # ((\Equal7~0_combout\ & \B~combout\(3))))) # (!\Add0~6_combout\ & (((\Equal7~0_combout\ & \B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal7~0_combout\,
	datad => \B~combout\(3),
	combout => \Selector4~5_combout\);

-- Location: LCCOMB_X64_Y33_N4
\Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector4~6_combout\ = (\Selector4~3_combout\) # ((\Selector4~4_combout\) # ((\Selector4~0_combout\) # (\Selector4~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector4~3_combout\,
	datab => \Selector4~4_combout\,
	datac => \Selector4~0_combout\,
	datad => \Selector4~5_combout\,
	combout => \Selector4~6_combout\);

-- Location: LCFF_X64_Y33_N5
\Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector4~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(3));

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X61_Y33_N2
\Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~5_combout\ = (\Add0~8_combout\ & ((\Equal0~2_combout\) # ((\Equal7~0_combout\ & \B~combout\(4))))) # (!\Add0~8_combout\ & (((\Equal7~0_combout\ & \B~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal7~0_combout\,
	datad => \B~combout\(4),
	combout => \Selector3~5_combout\);

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCCOMB_X61_Y33_N18
\Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~2_combout\ = (\B~combout\(4) & (\A~combout\(4) & ((\Equal5~1_combout\) # (\Equal8~0_combout\)))) # (!\B~combout\(4) & (!\A~combout\(4) & ((\Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \A~combout\(4),
	datac => \Equal5~1_combout\,
	datad => \Equal8~0_combout\,
	combout => \Selector3~2_combout\);

-- Location: LCCOMB_X61_Y33_N24
\Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~3_combout\ = (\Selector3~1_combout\) # ((\Selector3~2_combout\) # ((\Equal7~0_combout\ & \A~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~1_combout\,
	datab => \Selector3~2_combout\,
	datac => \Equal7~0_combout\,
	datad => \A~combout\(4),
	combout => \Selector3~3_combout\);

-- Location: LCCOMB_X64_Y33_N28
\Result~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Result~2_combout\ = \A~combout\(4) $ (\B~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A~combout\(4),
	datad => \B~combout\(4),
	combout => \Result~2_combout\);

-- Location: LCCOMB_X64_Y33_N10
\Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~4_combout\ = (\Equal4~0_combout\ & (\Result~2_combout\ & (!\OP~combout\(4) & \OP~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~0_combout\,
	datab => \Result~2_combout\,
	datac => \OP~combout\(4),
	datad => \OP~combout\(6),
	combout => \Selector3~4_combout\);

-- Location: LCCOMB_X61_Y33_N8
\Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector3~6_combout\ = (\Selector3~0_combout\) # ((\Selector3~5_combout\) # ((\Selector3~3_combout\) # (\Selector3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector3~0_combout\,
	datab => \Selector3~5_combout\,
	datac => \Selector3~3_combout\,
	datad => \Selector3~4_combout\,
	combout => \Selector3~6_combout\);

-- Location: LCFF_X61_Y33_N9
\Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector3~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(4));

-- Location: PIN_D20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCCOMB_X59_Y33_N22
\Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~2_combout\ = (\B~combout\(5) & (\A~combout\(5) & ((\Equal8~0_combout\) # (\Equal5~1_combout\)))) # (!\B~combout\(5) & (\Equal8~0_combout\ & (!\A~combout\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \Equal8~0_combout\,
	datac => \A~combout\(5),
	datad => \Equal5~1_combout\,
	combout => \Selector2~2_combout\);

-- Location: LCCOMB_X59_Y33_N28
\Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~3_combout\ = (\Selector2~1_combout\) # ((\Selector2~2_combout\) # ((\A~combout\(5) & \Equal7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector2~1_combout\,
	datab => \A~combout\(5),
	datac => \Equal7~0_combout\,
	datad => \Selector2~2_combout\,
	combout => \Selector2~3_combout\);

-- Location: PIN_B20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: LCCOMB_X60_Y33_N26
\Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~4_combout\ = (\B~combout\(5) & ((\Equal7~0_combout\) # ((!\A~combout\(5) & \Equal6~0_combout\)))) # (!\B~combout\(5) & (((\A~combout\(5) & \Equal6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \A~combout\(5),
	datac => \B~combout\(5),
	datad => \Equal6~0_combout\,
	combout => \Selector2~4_combout\);

-- Location: LCCOMB_X62_Y33_N10
\Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\B~combout\(5) & ((\A~combout\(5) & (\Add0~9\ & VCC)) # (!\A~combout\(5) & (!\Add0~9\)))) # (!\B~combout\(5) & ((\A~combout\(5) & (!\Add0~9\)) # (!\A~combout\(5) & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\B~combout\(5) & (!\A~combout\(5) & !\Add0~9\)) # (!\B~combout\(5) & ((!\Add0~9\) # (!\A~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(5),
	datab => \A~combout\(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X59_Y33_N14
\Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~5_combout\ = (\Selector2~4_combout\) # ((\Equal0~2_combout\ & \Add0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datac => \Selector2~4_combout\,
	datad => \Add0~10_combout\,
	combout => \Selector2~5_combout\);

-- Location: LCCOMB_X60_Y33_N24
\Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (!\A~combout\(5) & (((!\B~combout\(5) & \Equal4~1_combout\)) # (!\WideNor0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideNor0~0_combout\,
	datab => \A~combout\(5),
	datac => \B~combout\(5),
	datad => \Equal4~1_combout\,
	combout => \Selector2~0_combout\);

-- Location: LCCOMB_X59_Y33_N12
\Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector2~6_combout\ = (\Selector2~3_combout\) # ((\Selector2~5_combout\) # (\Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector2~3_combout\,
	datac => \Selector2~5_combout\,
	datad => \Selector2~0_combout\,
	combout => \Selector2~6_combout\);

-- Location: LCFF_X59_Y33_N13
\Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector2~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(5));

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: LCCOMB_X63_Y33_N16
\Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~4_combout\ = (\B~combout\(6) & ((\Equal7~0_combout\) # ((!\A~combout\(6) & \Equal6~0_combout\)))) # (!\B~combout\(6) & (\A~combout\(6) & (\Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Equal6~0_combout\,
	datac => \Equal7~0_combout\,
	datad => \B~combout\(6),
	combout => \Selector1~4_combout\);

-- Location: LCCOMB_X63_Y33_N30
\Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~5_combout\ = (\Selector1~4_combout\) # ((\Add0~12_combout\ & \Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datac => \Selector1~4_combout\,
	datad => \Equal0~2_combout\,
	combout => \Selector1~5_combout\);

-- Location: LCCOMB_X63_Y33_N14
\Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~1_combout\ = (\Add1~12_combout\ & ((\Equal1~4_combout\) # ((\Equal3~0_combout\ & !\B~combout\(6))))) # (!\Add1~12_combout\ & (\Equal3~0_combout\ & ((!\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datab => \Equal3~0_combout\,
	datac => \Equal1~4_combout\,
	datad => \B~combout\(6),
	combout => \Selector1~1_combout\);

-- Location: LCCOMB_X63_Y33_N24
\Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~2_combout\ = (\A~combout\(6) & (\B~combout\(6) & ((\Equal8~0_combout\) # (\Equal5~1_combout\)))) # (!\A~combout\(6) & (\Equal8~0_combout\ & ((!\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(6),
	datab => \Equal8~0_combout\,
	datac => \Equal5~1_combout\,
	datad => \B~combout\(6),
	combout => \Selector1~2_combout\);

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

-- Location: LCCOMB_X63_Y33_N22
\Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~3_combout\ = (\Selector1~1_combout\) # ((\Selector1~2_combout\) # ((\Equal7~0_combout\ & \A~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal7~0_combout\,
	datab => \Selector1~1_combout\,
	datac => \Selector1~2_combout\,
	datad => \A~combout\(6),
	combout => \Selector1~3_combout\);

-- Location: LCCOMB_X63_Y33_N4
\Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector1~6_combout\ = (\Selector1~0_combout\) # ((\Selector1~5_combout\) # (\Selector1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector1~0_combout\,
	datab => \Selector1~5_combout\,
	datad => \Selector1~3_combout\,
	combout => \Selector1~6_combout\);

-- Location: LCFF_X63_Y33_N5
\Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector1~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(6));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: LCCOMB_X59_Y33_N0
\Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~4_combout\ = (\A~combout\(7) & ((\B~combout\(7) & ((\Equal8~0_combout\))) # (!\B~combout\(7) & (\Equal3~0_combout\)))) # (!\A~combout\(7) & ((\Equal3~0_combout\) # ((!\B~combout\(7) & \Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A~combout\(7),
	datab => \B~combout\(7),
	datac => \Equal3~0_combout\,
	datad => \Equal8~0_combout\,
	combout => \Selector0~4_combout\);

-- Location: PIN_A20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCCOMB_X62_Y33_N14
\Add0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \A~combout\(7) $ (\Add0~13\ $ (\B~combout\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \A~combout\(7),
	datad => \B~combout\(7),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X59_Y33_N26
\Selector0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~5_combout\ = (\Selector0~4_combout\) # ((\Equal0~2_combout\ & \Add0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~2_combout\,
	datab => \Selector0~4_combout\,
	datac => \Add0~14_combout\,
	combout => \Selector0~5_combout\);

-- Location: LCCOMB_X59_Y33_N20
\Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~2_combout\ = (\Selector0~1_combout\) # ((\B~combout\(7) & (\A~combout\(7) & \Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~1_combout\,
	datab => \B~combout\(7),
	datac => \A~combout\(7),
	datad => \Equal5~1_combout\,
	combout => \Selector0~2_combout\);

-- Location: LCCOMB_X60_Y33_N20
\Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\B~combout\(7) & (\Equal6~0_combout\ & (!\A~combout\(7)))) # (!\B~combout\(7) & ((\A~combout\(7) & (\Equal6~0_combout\)) # (!\A~combout\(7) & ((\Equal4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110101001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \Equal6~0_combout\,
	datac => \A~combout\(7),
	datad => \Equal4~1_combout\,
	combout => \Selector0~0_combout\);

-- Location: LCCOMB_X59_Y33_N10
\Selector0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \Selector0~6_combout\ = (\Selector0~3_combout\) # ((\Selector0~5_combout\) # ((\Selector0~2_combout\) # (\Selector0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector0~3_combout\,
	datab => \Selector0~5_combout\,
	datac => \Selector0~2_combout\,
	datad => \Selector0~0_combout\,
	combout => \Selector0~6_combout\);

-- Location: LCFF_X59_Y33_N11
\Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \Clock~clkctrl_outclk\,
	datain => \Selector0~6_combout\,
	ena => \WideNor0~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => Result(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[0]~I\ : cycloneii_io
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
	padio => ww_student_id(0));

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[1]~I\ : cycloneii_io
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
	padio => ww_student_id(1));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[2]~I\ : cycloneii_io
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
	padio => ww_student_id(2));

-- Location: PIN_AC9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\student_id[3]~I\ : cycloneii_io
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
	padio => ww_student_id(3));

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Neg~I\ : cycloneii_io
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
	datain => \Neg~reg0_regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Neg);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[3]~I\ : cycloneii_io
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
	datain => Result(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[2]~I\ : cycloneii_io
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
	datain => Result(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[1]~I\ : cycloneii_io
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
	datain => Result(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R1[0]~I\ : cycloneii_io
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
	datain => Result(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[7]~I\ : cycloneii_io
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
	datain => Result(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(7));

-- Location: PIN_K16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[6]~I\ : cycloneii_io
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
	datain => Result(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(6));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[5]~I\ : cycloneii_io
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
	datain => Result(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(5));

-- Location: PIN_J16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[4]~I\ : cycloneii_io
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
	datain => Result(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(4));
END structure;


