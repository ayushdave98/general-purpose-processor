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
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Full Version"

-- DATE "11/29/2017 11:24:05"

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

ENTITY 	GPU IS
    PORT (
	first_number : OUT std_logic_vector(1 TO 7);
	clock : IN std_logic;
	reset : IN std_logic;
	A : IN std_logic_vector(7 DOWNTO 0);
	B : IN std_logic_vector(7 DOWNTO 0);
	En : IN std_logic;
	w : IN std_logic;
	last_number : OUT std_logic_vector(1 TO 7);
	OP_out : OUT std_logic_vector(0 TO 15);
	Q_A : OUT std_logic_vector(7 DOWNTO 0);
	Q_B : OUT std_logic_vector(7 DOWNTO 0);
	R1 : OUT std_logic_vector(3 DOWNTO 0);
	R2 : OUT std_logic_vector(3 DOWNTO 0);
	sign : OUT std_logic_vector(1 TO 7);
	student_id : OUT std_logic_vector(1 TO 7);
	Y : OUT std_logic_vector(15 DOWNTO 0)
	);
END GPU;

-- Design Ports Information
-- first_number[1]	=>  Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[2]	=>  Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[3]	=>  Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[4]	=>  Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[5]	=>  Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[6]	=>  Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- first_number[7]	=>  Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[1]	=>  Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[2]	=>  Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[3]	=>  Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[4]	=>  Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[5]	=>  Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[6]	=>  Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- last_number[7]	=>  Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[0]	=>  Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[1]	=>  Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[2]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[3]	=>  Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[4]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[5]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[6]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[7]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[8]	=>  Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[9]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[10]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[11]	=>  Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[12]	=>  Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[13]	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[14]	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- OP_out[15]	=>  Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[7]	=>  Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[6]	=>  Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[5]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[4]	=>  Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[3]	=>  Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[2]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[1]	=>  Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_A[0]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[7]	=>  Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[6]	=>  Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[5]	=>  Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[4]	=>  Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[3]	=>  Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[2]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[1]	=>  Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q_B[0]	=>  Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[3]	=>  Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[2]	=>  Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[1]	=>  Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R1[0]	=>  Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[3]	=>  Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[2]	=>  Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[1]	=>  Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- R2[0]	=>  Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[1]	=>  Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[2]	=>  Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[3]	=>  Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[4]	=>  Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[5]	=>  Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[6]	=>  Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- sign[7]	=>  Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[1]	=>  Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[2]	=>  Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[3]	=>  Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[4]	=>  Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[5]	=>  Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[6]	=>  Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- student_id[7]	=>  Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[15]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[14]	=>  Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[13]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[12]	=>  Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[11]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[10]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[9]	=>  Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[8]	=>  Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[7]	=>  Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[6]	=>  Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[5]	=>  Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[4]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[3]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[2]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[1]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Y[0]	=>  Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- En	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clock	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- w	=>  Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF GPU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_first_number : std_logic_vector(1 TO 7);
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_En : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_last_number : std_logic_vector(1 TO 7);
SIGNAL ww_OP_out : std_logic_vector(0 TO 15);
SIGNAL ww_Q_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_R1 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_R2 : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sign : std_logic_vector(1 TO 7);
SIGNAL ww_student_id : std_logic_vector(1 TO 7);
SIGNAL ww_Y : std_logic_vector(15 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|Add1~2_combout\ : std_logic;
SIGNAL \inst3|Add1~4_combout\ : std_logic;
SIGNAL \inst3|Add0~4_combout\ : std_logic;
SIGNAL \inst3|Add0~6_combout\ : std_logic;
SIGNAL \inst3|Add0~8_combout\ : std_logic;
SIGNAL \inst3|Add1~13\ : std_logic;
SIGNAL \inst3|Add1~14_combout\ : std_logic;
SIGNAL \inst3|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|Result[3]~1_combout\ : std_logic;
SIGNAL \inst3|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|Selector5~13_combout\ : std_logic;
SIGNAL \inst3|Selector5~14_combout\ : std_logic;
SIGNAL \inst3|Selector5~18_combout\ : std_logic;
SIGNAL \inst3|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|Selector4~4_combout\ : std_logic;
SIGNAL \inst3|Selector4~5_combout\ : std_logic;
SIGNAL \inst3|Selector4~6_combout\ : std_logic;
SIGNAL \inst3|Selector4~7_combout\ : std_logic;
SIGNAL \inst3|Selector5~21_combout\ : std_logic;
SIGNAL \inst3|Selector3~6_combout\ : std_logic;
SIGNAL \inst3|Selector5~22_combout\ : std_logic;
SIGNAL \inst3|Selector3~7_combout\ : std_logic;
SIGNAL \inst3|Selector2~1_combout\ : std_logic;
SIGNAL \inst3|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~4_combout\ : std_logic;
SIGNAL \inst3|Selector4~9_combout\ : std_logic;
SIGNAL \clock~combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \inst3|reg[2]~feeder_combout\ : std_logic;
SIGNAL \reset~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \w~combout\ : std_logic;
SIGNAL \inst4|yfsm.s8~regout\ : std_logic;
SIGNAL \inst4|yfsm.s0~0_combout\ : std_logic;
SIGNAL \inst4|yfsm.s0~regout\ : std_logic;
SIGNAL \inst4|yfsm.s1~0_combout\ : std_logic;
SIGNAL \inst4|yfsm.s1~regout\ : std_logic;
SIGNAL \inst4|yfsm.s2~regout\ : std_logic;
SIGNAL \inst4|yfsm.s3~regout\ : std_logic;
SIGNAL \inst4|yfsm.s4~regout\ : std_logic;
SIGNAL \inst4|yfsm.s5~regout\ : std_logic;
SIGNAL \inst4|yfsm.s6~regout\ : std_logic;
SIGNAL \inst4|yfsm.s7~regout\ : std_logic;
SIGNAL \inst3|LessThan0~1_cout\ : std_logic;
SIGNAL \inst3|LessThan0~3_cout\ : std_logic;
SIGNAL \inst3|LessThan0~5_cout\ : std_logic;
SIGNAL \inst3|LessThan0~7_cout\ : std_logic;
SIGNAL \inst3|LessThan0~9_cout\ : std_logic;
SIGNAL \inst3|LessThan0~11_cout\ : std_logic;
SIGNAL \inst3|LessThan0~13_cout\ : std_logic;
SIGNAL \inst3|LessThan0~14_combout\ : std_logic;
SIGNAL \inst3|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|Selector6~6_combout\ : std_logic;
SIGNAL \inst3|Result[3]~0_combout\ : std_logic;
SIGNAL \inst3|Selector6~4_combout\ : std_logic;
SIGNAL \inst4|WideOr3~0_combout\ : std_logic;
SIGNAL \inst3|Selector5~8_combout\ : std_logic;
SIGNAL \inst20|inst|inst1|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|WideOr3~1_combout\ : std_logic;
SIGNAL \inst3|Add0~0_combout\ : std_logic;
SIGNAL \inst3|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|Selector6~3_combout\ : std_logic;
SIGNAL \inst3|Selector6~5_combout\ : std_logic;
SIGNAL \inst3|Selector6~7_combout\ : std_logic;
SIGNAL \inst3|Result[1]~feeder_combout\ : std_logic;
SIGNAL \En~combout\ : std_logic;
SIGNAL \inst3|Add1~1\ : std_logic;
SIGNAL \inst3|Add1~3\ : std_logic;
SIGNAL \inst3|Add1~5\ : std_logic;
SIGNAL \inst3|Add1~6_combout\ : std_logic;
SIGNAL \inst3|Add2~1\ : std_logic;
SIGNAL \inst3|Add2~2_combout\ : std_logic;
SIGNAL \inst3|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|Selector4~8_combout\ : std_logic;
SIGNAL \inst3|Selector5~23_combout\ : std_logic;
SIGNAL \inst3|Selector5~15_combout\ : std_logic;
SIGNAL \inst3|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|Add2~0_combout\ : std_logic;
SIGNAL \inst3|Selector5~11_combout\ : std_logic;
SIGNAL \inst3|Selector5~12_combout\ : std_logic;
SIGNAL \inst4|WideOr5~1_combout\ : std_logic;
SIGNAL \inst3|Add0~1\ : std_logic;
SIGNAL \inst3|Add0~2_combout\ : std_logic;
SIGNAL \inst3|Selector5~16_combout\ : std_logic;
SIGNAL \inst3|Selector5~17_combout\ : std_logic;
SIGNAL \inst3|Selector5~19_combout\ : std_logic;
SIGNAL \inst3|Selector5~20_combout\ : std_logic;
SIGNAL \inst3|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|Add1~0_combout\ : std_logic;
SIGNAL \inst3|Selector7~3_combout\ : std_logic;
SIGNAL \inst3|Selector7~7_combout\ : std_logic;
SIGNAL \inst3|Selector5~9_combout\ : std_logic;
SIGNAL \inst3|Selector7~4_combout\ : std_logic;
SIGNAL \inst3|Selector5~10_combout\ : std_logic;
SIGNAL \inst3|Selector7~5_combout\ : std_logic;
SIGNAL \inst3|Selector7~8_combout\ : std_logic;
SIGNAL \inst3|Selector7~6_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst5|Mux1~0_combout\ : std_logic;
SIGNAL \inst5|Mux2~0_combout\ : std_logic;
SIGNAL \inst5|Mux3~0_combout\ : std_logic;
SIGNAL \inst5|Mux4~0_combout\ : std_logic;
SIGNAL \inst5|Mux5~0_combout\ : std_logic;
SIGNAL \inst5|Mux6~0_combout\ : std_logic;
SIGNAL \inst3|Add0~3\ : std_logic;
SIGNAL \inst3|Add0~5\ : std_logic;
SIGNAL \inst3|Add0~7\ : std_logic;
SIGNAL \inst3|Add0~9\ : std_logic;
SIGNAL \inst3|Add0~10_combout\ : std_logic;
SIGNAL \inst4|WideOr5~0_combout\ : std_logic;
SIGNAL \inst3|Selector1~1_combout\ : std_logic;
SIGNAL \inst3|Selector1~2_combout\ : std_logic;
SIGNAL \inst3|Selector1~3_combout\ : std_logic;
SIGNAL \inst3|Selector1~5_combout\ : std_logic;
SIGNAL \inst3|Add1~7\ : std_logic;
SIGNAL \inst3|Add1~9\ : std_logic;
SIGNAL \inst3|Add1~11\ : std_logic;
SIGNAL \inst3|Add1~12_combout\ : std_logic;
SIGNAL \inst3|Add1~10_combout\ : std_logic;
SIGNAL \inst3|Add1~8_combout\ : std_logic;
SIGNAL \inst3|Add2~3\ : std_logic;
SIGNAL \inst3|Add2~5\ : std_logic;
SIGNAL \inst3|Add2~7\ : std_logic;
SIGNAL \inst3|Add2~8_combout\ : std_logic;
SIGNAL \inst3|Selector1~6_combout\ : std_logic;
SIGNAL \inst3|Selector1~7_combout\ : std_logic;
SIGNAL \inst3|Selector1~8_combout\ : std_logic;
SIGNAL \inst3|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|Add2~4_combout\ : std_logic;
SIGNAL \inst3|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|Selector3~4_combout\ : std_logic;
SIGNAL \inst3|Selector3~5_combout\ : std_logic;
SIGNAL \inst3|Selector3~8_combout\ : std_logic;
SIGNAL \inst3|Selector2~0_combout\ : std_logic;
SIGNAL \inst3|Selector2~3_combout\ : std_logic;
SIGNAL \inst3|Add2~6_combout\ : std_logic;
SIGNAL \inst3|Selector2~2_combout\ : std_logic;
SIGNAL \inst3|Selector2~5_combout\ : std_logic;
SIGNAL \inst3|Selector2~4_combout\ : std_logic;
SIGNAL \inst3|Selector2~6_combout\ : std_logic;
SIGNAL \inst3|Selector2~7_combout\ : std_logic;
SIGNAL \inst3|Add0~11\ : std_logic;
SIGNAL \inst3|Add0~12_combout\ : std_logic;
SIGNAL \inst3|Selector0~0_combout\ : std_logic;
SIGNAL \inst3|Selector0~1_combout\ : std_logic;
SIGNAL \inst3|Result~2_combout\ : std_logic;
SIGNAL \inst3|Selector0~2_combout\ : std_logic;
SIGNAL \inst3|Add2~9\ : std_logic;
SIGNAL \inst3|Add2~10_combout\ : std_logic;
SIGNAL \inst3|Selector0~3_combout\ : std_logic;
SIGNAL \inst3|Selector0~4_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst7|Mux0~12_combout\ : std_logic;
SIGNAL \inst4|WideOr1~0_combout\ : std_logic;
SIGNAL \inst4|WideOr2~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst4|WideOr0~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~3_combout\ : std_logic;
SIGNAL \inst7|Mux4~6_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~3_combout\ : std_logic;
SIGNAL \inst7|Mux6~6_combout\ : std_logic;
SIGNAL \inst20|inst3~combout\ : std_logic;
SIGNAL \inst20|inst|inst1|Mux3~1_combout\ : std_logic;
SIGNAL \inst20|inst|inst1|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst1|Mux0~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst20|inst|inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|reg\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|Result\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|Q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|ALT_INV_Mux5~0_combout\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux3~0_combout\ : std_logic;
SIGNAL \inst6|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_Mux6~0_combout\ : std_logic;
SIGNAL \ALT_INV_reset~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_clock~combout\ : std_logic;

BEGIN

first_number <= ww_first_number;
ww_clock <= clock;
ww_reset <= reset;
ww_A <= A;
ww_B <= B;
ww_En <= En;
ww_w <= w;
last_number <= ww_last_number;
OP_out <= ww_OP_out;
Q_A <= ww_Q_A;
Q_B <= ww_Q_B;
R1 <= ww_R1;
R2 <= ww_R2;
sign <= ww_sign;
student_id <= ww_student_id;
Y <= ww_Y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~clk_delay_ctrl_clkout\);
\inst7|ALT_INV_Mux5~0_combout\ <= NOT \inst7|Mux5~0_combout\;
\inst7|ALT_INV_Mux3~0_combout\ <= NOT \inst7|Mux3~0_combout\;
\inst6|ALT_INV_Mux6~0_combout\ <= NOT \inst6|Mux6~0_combout\;
\inst5|ALT_INV_Mux6~0_combout\ <= NOT \inst5|Mux6~0_combout\;
\ALT_INV_reset~clkctrl_outclk\ <= NOT \reset~clkctrl_outclk\;
\ALT_INV_clock~combout\ <= NOT \clock~combout\;

-- Location: LCCOMB_X62_Y24_N18
\inst3|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~2_combout\ = (\inst1|Q\(1) & ((\inst|Q\(1) & (\inst3|Add1~1\ & VCC)) # (!\inst|Q\(1) & (!\inst3|Add1~1\)))) # (!\inst1|Q\(1) & ((\inst|Q\(1) & (!\inst3|Add1~1\)) # (!\inst|Q\(1) & ((\inst3|Add1~1\) # (GND)))))
-- \inst3|Add1~3\ = CARRY((\inst1|Q\(1) & (!\inst|Q\(1) & !\inst3|Add1~1\)) # (!\inst1|Q\(1) & ((!\inst3|Add1~1\) # (!\inst|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst|Q\(1),
	datad => VCC,
	cin => \inst3|Add1~1\,
	combout => \inst3|Add1~2_combout\,
	cout => \inst3|Add1~3\);

-- Location: LCCOMB_X62_Y24_N20
\inst3|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~4_combout\ = ((\inst1|Q\(2) $ (\inst|Q\(2) $ (!\inst3|Add1~3\)))) # (GND)
-- \inst3|Add1~5\ = CARRY((\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst3|Add1~3\))) # (!\inst1|Q\(2) & (\inst|Q\(2) & !\inst3|Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst3|Add1~3\,
	combout => \inst3|Add1~4_combout\,
	cout => \inst3|Add1~5\);

-- Location: LCCOMB_X63_Y25_N22
\inst3|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~4_combout\ = (\inst|Q\(3) & (\inst3|Add0~3\ $ (GND))) # (!\inst|Q\(3) & (!\inst3|Add0~3\ & VCC))
-- \inst3|Add0~5\ = CARRY((\inst|Q\(3) & !\inst3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(3),
	datad => VCC,
	cin => \inst3|Add0~3\,
	combout => \inst3|Add0~4_combout\,
	cout => \inst3|Add0~5\);

-- Location: LCCOMB_X63_Y25_N24
\inst3|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~6_combout\ = (\inst|Q\(4) & (!\inst3|Add0~5\)) # (!\inst|Q\(4) & ((\inst3|Add0~5\) # (GND)))
-- \inst3|Add0~7\ = CARRY((!\inst3|Add0~5\) # (!\inst|Q\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst3|Add0~5\,
	combout => \inst3|Add0~6_combout\,
	cout => \inst3|Add0~7\);

-- Location: LCCOMB_X63_Y25_N26
\inst3|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~8_combout\ = (\inst|Q\(5) & (\inst3|Add0~7\ $ (GND))) # (!\inst|Q\(5) & (!\inst3|Add0~7\ & VCC))
-- \inst3|Add0~9\ = CARRY((\inst|Q\(5) & !\inst3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datad => VCC,
	cin => \inst3|Add0~7\,
	combout => \inst3|Add0~8_combout\,
	cout => \inst3|Add0~9\);

-- Location: LCCOMB_X62_Y24_N28
\inst3|Add1~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~12_combout\ = ((\inst1|Q\(6) $ (\inst|Q\(6) $ (!\inst3|Add1~11\)))) # (GND)
-- \inst3|Add1~13\ = CARRY((\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst3|Add1~11\))) # (!\inst1|Q\(6) & (\inst|Q\(6) & !\inst3|Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|Add1~11\,
	combout => \inst3|Add1~12_combout\,
	cout => \inst3|Add1~13\);

-- Location: LCCOMB_X62_Y24_N30
\inst3|Add1~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~14_combout\ = \inst1|Q\(7) $ (\inst3|Add1~13\ $ (\inst|Q\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst3|Add1~13\,
	combout => \inst3|Add1~14_combout\);

-- Location: LCCOMB_X63_Y27_N16
\inst3|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~1_combout\ = (\inst4|yfsm.s7~regout\ & \inst3|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst3|Add1~2_combout\,
	combout => \inst3|Selector6~1_combout\);

-- Location: LCCOMB_X63_Y27_N10
\inst3|Result[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~1_combout\ = (\inst4|yfsm.s3~regout\) # ((!\inst4|yfsm.s6~regout\ & \inst4|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst4|yfsm.s3~regout\,
	combout => \inst3|Result[3]~1_combout\);

-- Location: LCCOMB_X63_Y24_N10
\inst3|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~1_combout\ = (\inst4|yfsm.s3~regout\ & !\inst4|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s3~regout\,
	datac => \inst4|yfsm.s7~regout\,
	combout => \inst3|Selector3~1_combout\);

-- Location: LCCOMB_X63_Y26_N14
\inst3|Selector5~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~13_combout\ = (\inst4|yfsm.s2~regout\ & \inst|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s2~regout\,
	datac => \inst|Q\(6),
	combout => \inst3|Selector5~13_combout\);

-- Location: LCCOMB_X64_Y26_N16
\inst3|Selector5~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~14_combout\ = (!\inst4|yfsm.s3~regout\ & (\inst4|yfsm.s6~regout\ & (!\inst4|yfsm.s2~regout\ & !\inst4|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~regout\,
	datab => \inst4|yfsm.s6~regout\,
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst3|Selector5~14_combout\);

-- Location: LCFF_X63_Y27_N29
\inst3|reg[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|reg[2]~feeder_combout\,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(2));

-- Location: LCCOMB_X64_Y27_N6
\inst3|Selector5~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~18_combout\ = (\inst4|yfsm.s8~regout\ & ((\inst3|Result\(2)))) # (!\inst4|yfsm.s8~regout\ & (\inst3|reg\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|reg\(2),
	datac => \inst3|Result\(2),
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst3|Selector5~18_combout\);

-- Location: LCCOMB_X63_Y27_N14
\inst3|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~2_combout\ = (\inst4|yfsm.s3~regout\ & (\inst1|Q\(3) & \inst3|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~regout\,
	datab => \inst1|Q\(3),
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector4~2_combout\);

-- Location: LCCOMB_X63_Y27_N12
\inst3|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~4_combout\ = (\inst4|WideOr3~1_combout\ & ((\inst4|WideOr5~1_combout\ & ((\inst3|Add0~4_combout\))) # (!\inst4|WideOr5~1_combout\ & (\inst1|Q\(5))))) # (!\inst4|WideOr3~1_combout\ & (((!\inst4|WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr3~1_combout\,
	datab => \inst1|Q\(5),
	datac => \inst4|WideOr5~1_combout\,
	datad => \inst3|Add0~4_combout\,
	combout => \inst3|Selector4~4_combout\);

-- Location: LCFF_X63_Y27_N15
\inst3|reg[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(4),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(3));

-- Location: LCCOMB_X63_Y27_N26
\inst3|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~5_combout\ = (\inst4|WideOr3~1_combout\ & (((\inst3|Selector4~4_combout\)))) # (!\inst4|WideOr3~1_combout\ & ((\inst3|Selector4~4_combout\ & ((\inst3|reg\(3)))) # (!\inst3|Selector4~4_combout\ & (\inst|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst4|WideOr3~1_combout\,
	datac => \inst3|reg\(3),
	datad => \inst3|Selector4~4_combout\,
	combout => \inst3|Selector4~5_combout\);

-- Location: LCCOMB_X63_Y27_N8
\inst3|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~6_combout\ = \inst3|Selector4~9_combout\ $ (((\inst1|Q\(3) & !\inst3|Result[3]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(3),
	datac => \inst3|Selector4~9_combout\,
	datad => \inst3|Result[3]~1_combout\,
	combout => \inst3|Selector4~6_combout\);

-- Location: LCCOMB_X63_Y27_N30
\inst3|Selector4~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~7_combout\ = (\inst3|Result[3]~1_combout\ & (((\inst3|Selector4~6_combout\)))) # (!\inst3|Result[3]~1_combout\ & ((\inst3|Result[3]~0_combout\ & (\inst3|Selector4~6_combout\)) # (!\inst3|Result[3]~0_combout\ & 
-- ((\inst3|Selector4~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~1_combout\,
	datab => \inst3|Result[3]~0_combout\,
	datac => \inst3|Selector4~6_combout\,
	datad => \inst3|Selector4~5_combout\,
	combout => \inst3|Selector4~7_combout\);

-- Location: LCCOMB_X63_Y25_N0
\inst3|Selector5~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~21_combout\ = (\inst3|Add0~6_combout\) # (\inst4|yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~6_combout\,
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst3|Selector5~21_combout\);

-- Location: LCCOMB_X63_Y25_N6
\inst3|Selector3~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~6_combout\ = (\inst4|WideOr5~1_combout\ & ((\inst4|WideOr3~1_combout\ & ((\inst3|Selector5~21_combout\))) # (!\inst4|WideOr3~1_combout\ & (\inst|Q\(6))))) # (!\inst4|WideOr5~1_combout\ & (((!\inst4|WideOr3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datab => \inst4|WideOr5~1_combout\,
	datac => \inst4|WideOr3~1_combout\,
	datad => \inst3|Selector5~21_combout\,
	combout => \inst3|Selector3~6_combout\);

-- Location: LCFF_X64_Y25_N27
\inst3|reg[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(3),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(4));

-- Location: LCCOMB_X64_Y25_N26
\inst3|Selector5~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~22_combout\ = (\inst4|yfsm.s8~regout\ & (\inst3|Result\(4))) # (!\inst4|yfsm.s8~regout\ & ((\inst3|reg\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Result\(4),
	datac => \inst3|reg\(4),
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst3|Selector5~22_combout\);

-- Location: LCCOMB_X63_Y25_N12
\inst3|Selector3~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~7_combout\ = (\inst4|WideOr5~1_combout\ & (((\inst3|Selector3~6_combout\)))) # (!\inst4|WideOr5~1_combout\ & ((\inst3|Selector3~6_combout\ & ((\inst3|Selector5~22_combout\))) # (!\inst3|Selector3~6_combout\ & (\inst1|Q\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst3|Selector5~22_combout\,
	datac => \inst4|WideOr5~1_combout\,
	datad => \inst3|Selector3~6_combout\,
	combout => \inst3|Selector3~7_combout\);

-- Location: LCCOMB_X63_Y25_N14
\inst3|Selector2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~1_combout\ = (\inst4|yfsm.s8~regout\) # ((\inst4|WideOr5~1_combout\ & ((\inst3|Add0~8_combout\))) # (!\inst4|WideOr5~1_combout\ & (\inst1|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~1_combout\,
	datab => \inst4|yfsm.s8~regout\,
	datac => \inst1|Q\(7),
	datad => \inst3|Add0~8_combout\,
	combout => \inst3|Selector2~1_combout\);

-- Location: LCCOMB_X64_Y25_N12
\inst3|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~0_combout\ = (\inst4|WideOr3~0_combout\ & (\inst4|WideOr5~0_combout\ $ (\inst3|Selector5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	combout => \inst3|Selector1~0_combout\);

-- Location: LCCOMB_X64_Y24_N6
\inst3|Selector1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~4_combout\ = (\inst4|yfsm.s8~regout\ & (((\inst3|Result\(6))))) # (!\inst4|yfsm.s8~regout\ & (\inst1|Q\(6) $ (((\inst|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst3|Result\(6),
	datac => \inst|Q\(6),
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst3|Selector1~4_combout\);

-- Location: LCCOMB_X63_Y27_N20
\inst3|Selector4~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~9_combout\ = (\inst4|yfsm.s6~regout\ & (\inst|Q\(3))) # (!\inst4|yfsm.s6~regout\ & ((\inst4|yfsm.s3~regout\ & (\inst|Q\(3))) # (!\inst4|yfsm.s3~regout\ & ((\inst|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datab => \inst|Q\(3),
	datac => \inst|Q\(7),
	datad => \inst4|yfsm.s3~regout\,
	combout => \inst3|Selector4~9_combout\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clock~I\ : cycloneii_io
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
	padio => ww_clock,
	combout => \clock~combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: LCCOMB_X63_Y27_N28
\inst3|reg[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|reg[2]~feeder_combout\ = \inst1|Q\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|Q\(5),
	combout => \inst3|reg[2]~feeder_combout\);

-- Location: CLKDELAYCTRL_G4
\reset~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \reset~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_V1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y24_N25
\inst4|yfsm.s8\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s7~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s8~regout\);

-- Location: LCCOMB_X64_Y26_N2
\inst4|yfsm.s0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|yfsm.s0~0_combout\ = !\inst4|yfsm.s8~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst4|yfsm.s0~0_combout\);

-- Location: LCFF_X64_Y26_N3
\inst4|yfsm.s0\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst4|yfsm.s0~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s0~regout\);

-- Location: LCCOMB_X64_Y26_N8
\inst4|yfsm.s1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|yfsm.s1~0_combout\ = !\inst4|yfsm.s0~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|yfsm.s0~regout\,
	combout => \inst4|yfsm.s1~0_combout\);

-- Location: LCFF_X64_Y26_N9
\inst4|yfsm.s1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst4|yfsm.s1~0_combout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s1~regout\);

-- Location: LCFF_X64_Y26_N17
\inst4|yfsm.s2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s1~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s2~regout\);

-- Location: LCFF_X64_Y26_N25
\inst4|yfsm.s3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s2~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s3~regout\);

-- Location: LCFF_X64_Y26_N27
\inst4|yfsm.s4\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s3~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s4~regout\);

-- Location: LCFF_X64_Y26_N13
\inst4|yfsm.s5\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s4~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s5~regout\);

-- Location: LCFF_X64_Y26_N29
\inst4|yfsm.s6\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s5~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s6~regout\);

-- Location: LCFF_X64_Y26_N7
\inst4|yfsm.s7\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst4|yfsm.s6~regout\,
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	ena => \w~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst4|yfsm.s7~regout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N15
\inst1|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(7),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(7));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X63_Y27_N21
\inst|Q[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(7),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(7));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N29
\inst|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(6),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(6));

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N27
\inst1|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(5),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(5));

-- Location: PIN_AF14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N9
\inst|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(4),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(4));

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N23
\inst1|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(3),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(3));

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N5
\inst|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(2),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(2));

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N19
\inst1|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(1),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(1));

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N1
\inst|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(0),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(0));

-- Location: LCCOMB_X62_Y24_N0
\inst3|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~1_cout\ = CARRY((!\inst1|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	cout => \inst3|LessThan0~1_cout\);

-- Location: LCCOMB_X62_Y24_N2
\inst3|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~3_cout\ = CARRY((\inst|Q\(1) & (\inst1|Q\(1) & !\inst3|LessThan0~1_cout\)) # (!\inst|Q\(1) & ((\inst1|Q\(1)) # (!\inst3|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst1|Q\(1),
	datad => VCC,
	cin => \inst3|LessThan0~1_cout\,
	cout => \inst3|LessThan0~3_cout\);

-- Location: LCCOMB_X62_Y24_N4
\inst3|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~5_cout\ = CARRY((\inst1|Q\(2) & (\inst|Q\(2) & !\inst3|LessThan0~3_cout\)) # (!\inst1|Q\(2) & ((\inst|Q\(2)) # (!\inst3|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst3|LessThan0~3_cout\,
	cout => \inst3|LessThan0~5_cout\);

-- Location: LCCOMB_X62_Y24_N6
\inst3|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~7_cout\ = CARRY((\inst|Q\(3) & (\inst1|Q\(3) & !\inst3|LessThan0~5_cout\)) # (!\inst|Q\(3) & ((\inst1|Q\(3)) # (!\inst3|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst3|LessThan0~5_cout\,
	cout => \inst3|LessThan0~7_cout\);

-- Location: LCCOMB_X62_Y24_N8
\inst3|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~9_cout\ = CARRY((\inst1|Q\(4) & (\inst|Q\(4) & !\inst3|LessThan0~7_cout\)) # (!\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst3|LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst3|LessThan0~7_cout\,
	cout => \inst3|LessThan0~9_cout\);

-- Location: LCCOMB_X62_Y24_N10
\inst3|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~11_cout\ = CARRY((\inst|Q\(5) & (\inst1|Q\(5) & !\inst3|LessThan0~9_cout\)) # (!\inst|Q\(5) & ((\inst1|Q\(5)) # (!\inst3|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst3|LessThan0~9_cout\,
	cout => \inst3|LessThan0~11_cout\);

-- Location: LCCOMB_X62_Y24_N12
\inst3|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~13_cout\ = CARRY((\inst1|Q\(6) & (\inst|Q\(6) & !\inst3|LessThan0~11_cout\)) # (!\inst1|Q\(6) & ((\inst|Q\(6)) # (!\inst3|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|LessThan0~11_cout\,
	cout => \inst3|LessThan0~13_cout\);

-- Location: LCCOMB_X62_Y24_N14
\inst3|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|LessThan0~14_combout\ = (\inst1|Q\(7) & (\inst3|LessThan0~13_cout\ & \inst|Q\(7))) # (!\inst1|Q\(7) & ((\inst3|LessThan0~13_cout\) # (\inst|Q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Q\(7),
	datad => \inst|Q\(7),
	cin => \inst3|LessThan0~13_cout\,
	combout => \inst3|LessThan0~14_combout\);

-- Location: LCCOMB_X63_Y27_N22
\inst3|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~0_combout\ = (\inst1|Q\(1) & (!\inst4|yfsm.s7~regout\ & (\inst4|yfsm.s3~regout\ & \inst3|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(1),
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst4|yfsm.s3~regout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector6~0_combout\);

-- Location: LCCOMB_X63_Y27_N24
\inst3|Selector6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~6_combout\ = (!\inst4|yfsm.s7~regout\ & ((!\inst3|LessThan0~14_combout\) # (!\inst4|yfsm.s3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~regout\,
	datac => \inst4|yfsm.s7~regout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector6~6_combout\);

-- Location: LCCOMB_X63_Y27_N0
\inst3|Result[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[3]~0_combout\ = (\inst4|yfsm.s6~regout\) # (\inst4|yfsm.s3~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datad => \inst4|yfsm.s3~regout\,
	combout => \inst3|Result[3]~0_combout\);

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N3
\inst|Q[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(1),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(1));

-- Location: LCCOMB_X63_Y27_N4
\inst3|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~4_combout\ = (\inst3|Result[3]~0_combout\ & (\inst|Q\(1) $ (((!\inst3|Result[3]~1_combout\ & \inst1|Q\(1)))))) # (!\inst3|Result[3]~0_combout\ & (\inst3|Result[3]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result[3]~1_combout\,
	datab => \inst|Q\(1),
	datac => \inst1|Q\(1),
	datad => \inst3|Result[3]~0_combout\,
	combout => \inst3|Selector6~4_combout\);

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N7
\inst|Q[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(3),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(3));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N13
\inst1|Q[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(6),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(6));

-- Location: LCCOMB_X64_Y26_N28
\inst4|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~0_combout\ = (!\inst4|yfsm.s5~regout\ & (!\inst4|yfsm.s4~regout\ & (!\inst4|yfsm.s6~regout\ & !\inst4|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~regout\,
	datab => \inst4|yfsm.s4~regout\,
	datac => \inst4|yfsm.s6~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst4|WideOr3~0_combout\);

-- Location: LCCOMB_X64_Y26_N20
\inst3|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~8_combout\ = (!\inst4|yfsm.s3~regout\ & (!\inst4|yfsm.s6~regout\ & (!\inst4|yfsm.s2~regout\ & !\inst4|yfsm.s7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~regout\,
	datab => \inst4|yfsm.s6~regout\,
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst3|Selector5~8_combout\);

-- Location: LCCOMB_X64_Y25_N10
\inst20|inst|inst1|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst1|Mux3~0_combout\ = (\En~combout\ & !\inst4|yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \En~combout\,
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst20|inst|inst1|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y25_N0
\inst20|inst|inst1|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst1|Mux1~0_combout\ = (\inst4|WideOr5~0_combout\ & (!\inst4|WideOr3~0_combout\ & (\inst3|Selector5~8_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst4|WideOr3~0_combout\,
	datac => \inst3|Selector5~8_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst1|Mux1~0_combout\);

-- Location: LCFF_X63_Y27_N7
\inst3|reg[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(6),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(1));

-- Location: LCCOMB_X64_Y26_N6
\inst4|WideOr3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr3~1_combout\ = (!\inst4|yfsm.s5~regout\ & !\inst4|yfsm.s4~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~regout\,
	datad => \inst4|yfsm.s4~regout\,
	combout => \inst4|WideOr3~1_combout\);

-- Location: LCCOMB_X63_Y25_N18
\inst3|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~0_combout\ = \inst|Q\(1) $ (VCC)
-- \inst3|Add0~1\ = CARRY(\inst|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(1),
	datad => VCC,
	combout => \inst3|Add0~0_combout\,
	cout => \inst3|Add0~1\);

-- Location: LCCOMB_X63_Y25_N4
\inst3|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~2_combout\ = (\inst4|WideOr5~1_combout\ & (((\inst4|WideOr3~1_combout\ & \inst3|Add0~0_combout\)))) # (!\inst4|WideOr5~1_combout\ & ((\inst1|Q\(3)) # ((!\inst4|WideOr3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~1_combout\,
	datab => \inst1|Q\(3),
	datac => \inst4|WideOr3~1_combout\,
	datad => \inst3|Add0~0_combout\,
	combout => \inst3|Selector6~2_combout\);

-- Location: LCCOMB_X63_Y27_N6
\inst3|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~3_combout\ = (\inst4|WideOr3~1_combout\ & (((\inst3|Selector6~2_combout\)))) # (!\inst4|WideOr3~1_combout\ & ((\inst3|Selector6~2_combout\ & ((\inst3|reg\(1)))) # (!\inst3|Selector6~2_combout\ & (\inst|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr3~1_combout\,
	datab => \inst|Q\(3),
	datac => \inst3|reg\(1),
	datad => \inst3|Selector6~2_combout\,
	combout => \inst3|Selector6~3_combout\);

-- Location: LCCOMB_X63_Y27_N18
\inst3|Selector6~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~5_combout\ = (\inst3|Result[3]~0_combout\ & (((\inst3|Selector6~4_combout\)))) # (!\inst3|Result[3]~0_combout\ & ((\inst3|Selector6~4_combout\ & (\inst|Q\(5))) # (!\inst3|Selector6~4_combout\ & ((\inst3|Selector6~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst3|Result[3]~0_combout\,
	datac => \inst3|Selector6~4_combout\,
	datad => \inst3|Selector6~3_combout\,
	combout => \inst3|Selector6~5_combout\);

-- Location: LCCOMB_X63_Y27_N2
\inst3|Selector6~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector6~7_combout\ = (\inst3|Selector6~1_combout\) # ((\inst3|Selector6~0_combout\) # ((\inst3|Selector6~6_combout\ & \inst3|Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector6~1_combout\,
	datab => \inst3|Selector6~0_combout\,
	datac => \inst3|Selector6~6_combout\,
	datad => \inst3|Selector6~5_combout\,
	combout => \inst3|Selector6~7_combout\);

-- Location: LCCOMB_X64_Y27_N24
\inst3|Result[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result[1]~feeder_combout\ = \inst3|Selector6~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Selector6~7_combout\,
	combout => \inst3|Result[1]~feeder_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\En~I\ : cycloneii_io
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
	padio => ww_En,
	combout => \En~combout\);

-- Location: LCFF_X64_Y27_N25
\inst3|Result[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Result[1]~feeder_combout\,
	sdata => VCC,
	sload => \inst4|yfsm.s8~regout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(1));

-- Location: LCCOMB_X62_Y24_N16
\inst3|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~0_combout\ = (\inst1|Q\(0) & (\inst|Q\(0) $ (VCC))) # (!\inst1|Q\(0) & (\inst|Q\(0) & VCC))
-- \inst3|Add1~1\ = CARRY((\inst1|Q\(0) & \inst|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datad => VCC,
	combout => \inst3|Add1~0_combout\,
	cout => \inst3|Add1~1\);

-- Location: LCCOMB_X62_Y24_N22
\inst3|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~6_combout\ = (\inst|Q\(3) & ((\inst1|Q\(3) & (\inst3|Add1~5\ & VCC)) # (!\inst1|Q\(3) & (!\inst3|Add1~5\)))) # (!\inst|Q\(3) & ((\inst1|Q\(3) & (!\inst3|Add1~5\)) # (!\inst1|Q\(3) & ((\inst3|Add1~5\) # (GND)))))
-- \inst3|Add1~7\ = CARRY((\inst|Q\(3) & (!\inst1|Q\(3) & !\inst3|Add1~5\)) # (!\inst|Q\(3) & ((!\inst3|Add1~5\) # (!\inst1|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(3),
	datab => \inst1|Q\(3),
	datad => VCC,
	cin => \inst3|Add1~5\,
	combout => \inst3|Add1~6_combout\,
	cout => \inst3|Add1~7\);

-- Location: LCCOMB_X63_Y24_N12
\inst3|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~0_combout\ = \inst3|Add1~4_combout\ $ (VCC)
-- \inst3|Add2~1\ = CARRY(\inst3|Add1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~4_combout\,
	datad => VCC,
	combout => \inst3|Add2~0_combout\,
	cout => \inst3|Add2~1\);

-- Location: LCCOMB_X63_Y24_N14
\inst3|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~2_combout\ = (\inst3|Add1~6_combout\ & (\inst3|Add2~1\ & VCC)) # (!\inst3|Add1~6_combout\ & (!\inst3|Add2~1\))
-- \inst3|Add2~3\ = CARRY((!\inst3|Add1~6_combout\ & !\inst3|Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~6_combout\,
	datad => VCC,
	cin => \inst3|Add2~1\,
	combout => \inst3|Add2~2_combout\,
	cout => \inst3|Add2~3\);

-- Location: LCCOMB_X64_Y27_N26
\inst3|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~3_combout\ = (\inst4|yfsm.s7~regout\ & ((\inst3|Add2~2_combout\))) # (!\inst4|yfsm.s7~regout\ & (\inst3|Selector4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector4~2_combout\,
	datab => \inst4|yfsm.s7~regout\,
	datad => \inst3|Add2~2_combout\,
	combout => \inst3|Selector4~3_combout\);

-- Location: LCCOMB_X64_Y27_N14
\inst3|Selector4~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector4~8_combout\ = (\inst3|Selector4~3_combout\) # ((\inst3|Selector4~7_combout\ & \inst3|Selector6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector4~7_combout\,
	datab => \inst3|Selector6~6_combout\,
	datad => \inst3|Selector4~3_combout\,
	combout => \inst3|Selector4~8_combout\);

-- Location: LCFF_X64_Y27_N15
\inst3|Result[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector4~8_combout\,
	sdata => VCC,
	sload => \inst4|yfsm.s8~regout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(3));

-- Location: LCCOMB_X64_Y26_N12
\inst3|Selector5~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~23_combout\ = (\inst3|Selector5~14_combout\ & (!\inst4|yfsm.s1~regout\ & (!\inst4|yfsm.s5~regout\ & !\inst4|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector5~14_combout\,
	datab => \inst4|yfsm.s1~regout\,
	datac => \inst4|yfsm.s5~regout\,
	datad => \inst4|yfsm.s4~regout\,
	combout => \inst3|Selector5~23_combout\);

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N21
\inst1|Q[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(2),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(2));

-- Location: LCCOMB_X64_Y26_N0
\inst3|Selector5~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~15_combout\ = (\inst3|Selector5~13_combout\) # ((\inst3|Selector5~23_combout\ & (\inst|Q\(2) $ (\inst1|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector5~13_combout\,
	datab => \inst|Q\(2),
	datac => \inst3|Selector5~23_combout\,
	datad => \inst1|Q\(2),
	combout => \inst3|Selector5~15_combout\);

-- Location: LCCOMB_X64_Y26_N26
\inst3|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~2_combout\ = (!\inst4|yfsm.s3~regout\ & \inst4|yfsm.s7~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|yfsm.s3~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst3|Selector3~2_combout\);

-- Location: LCCOMB_X63_Y24_N8
\inst3|Selector5~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~11_combout\ = (\inst3|Selector3~1_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst1|Q\(2))) # (!\inst3|LessThan0~14_combout\ & ((\inst|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~1_combout\,
	datab => \inst1|Q\(2),
	datac => \inst|Q\(2),
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector5~11_combout\);

-- Location: LCCOMB_X64_Y24_N20
\inst3|Selector5~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~12_combout\ = (\inst3|Selector3~0_combout\ & ((\inst3|Selector5~11_combout\) # ((\inst3|Selector3~2_combout\ & \inst3|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~0_combout\,
	datab => \inst3|Selector3~2_combout\,
	datac => \inst3|Add2~0_combout\,
	datad => \inst3|Selector5~11_combout\,
	combout => \inst3|Selector5~12_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N25
\inst1|Q[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(4),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(4));

-- Location: LCCOMB_X64_Y26_N14
\inst4|WideOr5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~1_combout\ = (!\inst4|yfsm.s1~regout\ & !\inst4|yfsm.s5~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s5~regout\,
	combout => \inst4|WideOr5~1_combout\);

-- Location: LCCOMB_X63_Y25_N20
\inst3|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~2_combout\ = (\inst|Q\(2) & (!\inst3|Add0~1\)) # (!\inst|Q\(2) & ((\inst3|Add0~1\) # (GND)))
-- \inst3|Add0~3\ = CARRY((!\inst3|Add0~1\) # (!\inst|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(2),
	datad => VCC,
	cin => \inst3|Add0~1\,
	combout => \inst3|Add0~2_combout\,
	cout => \inst3|Add0~3\);

-- Location: LCCOMB_X63_Y25_N2
\inst3|Selector5~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~16_combout\ = (\inst3|Add0~2_combout\) # (\inst4|yfsm.s8~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|Add0~2_combout\,
	datad => \inst4|yfsm.s8~regout\,
	combout => \inst3|Selector5~16_combout\);

-- Location: LCCOMB_X64_Y27_N12
\inst3|Selector5~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~17_combout\ = (\inst4|WideOr3~1_combout\ & (((\inst4|WideOr5~1_combout\ & \inst3|Selector5~16_combout\)))) # (!\inst4|WideOr3~1_combout\ & ((\inst|Q\(4)) # ((!\inst4|WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(4),
	datab => \inst4|WideOr3~1_combout\,
	datac => \inst4|WideOr5~1_combout\,
	datad => \inst3|Selector5~16_combout\,
	combout => \inst3|Selector5~17_combout\);

-- Location: LCCOMB_X64_Y27_N28
\inst3|Selector5~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~19_combout\ = (\inst4|WideOr5~1_combout\ & (((\inst3|Selector5~17_combout\)))) # (!\inst4|WideOr5~1_combout\ & ((\inst3|Selector5~17_combout\ & (\inst3|Selector5~18_combout\)) # (!\inst3|Selector5~17_combout\ & ((\inst1|Q\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector5~18_combout\,
	datab => \inst1|Q\(4),
	datac => \inst4|WideOr5~1_combout\,
	datad => \inst3|Selector5~17_combout\,
	combout => \inst3|Selector5~19_combout\);

-- Location: LCCOMB_X64_Y27_N20
\inst3|Selector5~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~20_combout\ = (\inst3|Selector5~15_combout\) # ((\inst3|Selector5~12_combout\) # ((\inst3|Selector5~8_combout\ & \inst3|Selector5~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector5~8_combout\,
	datab => \inst3|Selector5~15_combout\,
	datac => \inst3|Selector5~12_combout\,
	datad => \inst3|Selector5~19_combout\,
	combout => \inst3|Selector5~20_combout\);

-- Location: LCFF_X64_Y27_N21
\inst3|Result[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector5~20_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(2));

-- Location: LCCOMB_X63_Y26_N16
\inst3|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~0_combout\ = (!\inst4|yfsm.s2~regout\ & ((\inst3|LessThan0~14_combout\ & (\inst1|Q\(0))) # (!\inst3|LessThan0~14_combout\ & ((\inst|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(0),
	datab => \inst|Q\(0),
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector7~0_combout\);

-- Location: LCCOMB_X64_Y26_N22
\inst3|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~1_combout\ = (\inst4|yfsm.s3~regout\ & (\inst4|WideOr5~1_combout\ & (\inst4|WideOr3~0_combout\ & \inst3|Selector7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s3~regout\,
	datab => \inst4|WideOr5~1_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst3|Selector7~0_combout\,
	combout => \inst3|Selector7~1_combout\);

-- Location: LCCOMB_X64_Y26_N30
\inst3|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~2_combout\ = (\inst3|Selector7~1_combout\) # ((\inst|Q\(4) & \inst4|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(4),
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst3|Selector7~1_combout\,
	combout => \inst3|Selector7~2_combout\);

-- Location: LCCOMB_X64_Y24_N30
\inst3|Selector7~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~3_combout\ = (\inst4|yfsm.s5~regout\) # ((\inst4|yfsm.s1~regout\) # (\inst4|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~regout\,
	datab => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s4~regout\,
	combout => \inst3|Selector7~3_combout\);

-- Location: LCCOMB_X64_Y24_N4
\inst3|Selector7~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~7_combout\ = (!\inst3|Selector7~3_combout\ & ((\inst4|yfsm.s8~regout\ & (\inst3|Result\(0))) # (!\inst4|yfsm.s8~regout\ & ((\inst3|Add1~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datab => \inst3|Result\(0),
	datac => \inst3|Add1~0_combout\,
	datad => \inst3|Selector7~3_combout\,
	combout => \inst3|Selector7~7_combout\);

-- Location: LCCOMB_X63_Y24_N24
\inst3|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~9_combout\ = (\inst4|yfsm.s8~regout\) # (\inst|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|yfsm.s8~regout\,
	datad => \inst|Q\(0),
	combout => \inst3|Selector5~9_combout\);

-- Location: LCCOMB_X64_Y24_N16
\inst3|Selector7~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~4_combout\ = (\inst4|WideOr3~1_combout\ & ((\inst4|WideOr5~1_combout\ & ((\inst3|Selector5~9_combout\))) # (!\inst4|WideOr5~1_combout\ & (\inst1|Q\(2))))) # (!\inst4|WideOr3~1_combout\ & (((!\inst4|WideOr5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(2),
	datab => \inst3|Selector5~9_combout\,
	datac => \inst4|WideOr3~1_combout\,
	datad => \inst4|WideOr5~1_combout\,
	combout => \inst3|Selector7~4_combout\);

-- Location: LCFF_X64_Y24_N27
\inst3|reg[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(7),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(0));

-- Location: LCCOMB_X64_Y24_N26
\inst3|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector5~10_combout\ = (\inst4|yfsm.s8~regout\ & ((\inst3|Result\(0)))) # (!\inst4|yfsm.s8~regout\ & (\inst3|reg\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s8~regout\,
	datac => \inst3|reg\(0),
	datad => \inst3|Result\(0),
	combout => \inst3|Selector5~10_combout\);

-- Location: LCCOMB_X64_Y24_N28
\inst3|Selector7~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~5_combout\ = (\inst4|WideOr3~1_combout\ & (((\inst3|Selector7~4_combout\)))) # (!\inst4|WideOr3~1_combout\ & ((\inst3|Selector7~4_combout\ & ((\inst3|Selector5~10_combout\))) # (!\inst3|Selector7~4_combout\ & (\inst|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr3~1_combout\,
	datab => \inst|Q\(2),
	datac => \inst3|Selector7~4_combout\,
	datad => \inst3|Selector5~10_combout\,
	combout => \inst3|Selector7~5_combout\);

-- Location: LCCOMB_X64_Y24_N22
\inst3|Selector7~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~8_combout\ = (\inst4|yfsm.s6~regout\ & (!\inst4|yfsm.s7~regout\ & (\inst3|Selector7~7_combout\))) # (!\inst4|yfsm.s6~regout\ & ((\inst4|yfsm.s7~regout\ & (\inst3|Selector7~7_combout\)) # (!\inst4|yfsm.s7~regout\ & 
-- ((\inst3|Selector7~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst3|Selector7~7_combout\,
	datad => \inst3|Selector7~5_combout\,
	combout => \inst3|Selector7~8_combout\);

-- Location: LCCOMB_X64_Y26_N10
\inst3|Selector7~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector7~6_combout\ = (\inst3|Selector7~2_combout\) # ((!\inst4|yfsm.s2~regout\ & (!\inst4|yfsm.s3~regout\ & \inst3|Selector7~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s2~regout\,
	datab => \inst3|Selector7~2_combout\,
	datac => \inst4|yfsm.s3~regout\,
	datad => \inst3|Selector7~8_combout\,
	combout => \inst3|Selector7~6_combout\);

-- Location: LCFF_X64_Y26_N11
\inst3|Result[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector7~6_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(0));

-- Location: LCCOMB_X64_Y27_N18
\inst5|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst3|Result\(3) & (\inst3|Result\(0) & (\inst3|Result\(1) $ (\inst3|Result\(2))))) # (!\inst3|Result\(3) & (!\inst3|Result\(1) & (\inst3|Result\(2) $ (\inst3|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y27_N0
\inst5|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux1~0_combout\ = (\inst3|Result\(1) & ((\inst3|Result\(0) & (\inst3|Result\(3))) # (!\inst3|Result\(0) & ((\inst3|Result\(2)))))) # (!\inst3|Result\(1) & (\inst3|Result\(2) & (\inst3|Result\(3) $ (\inst3|Result\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y27_N22
\inst5|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux2~0_combout\ = (\inst3|Result\(3) & (\inst3|Result\(2) & ((\inst3|Result\(1)) # (!\inst3|Result\(0))))) # (!\inst3|Result\(3) & (\inst3|Result\(1) & (!\inst3|Result\(2) & !\inst3|Result\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y27_N16
\inst5|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux3~0_combout\ = (\inst3|Result\(0) & (\inst3|Result\(1) $ (((!\inst3|Result\(2)))))) # (!\inst3|Result\(0) & ((\inst3|Result\(1) & (\inst3|Result\(3) & !\inst3|Result\(2))) # (!\inst3|Result\(1) & (!\inst3|Result\(3) & \inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y27_N10
\inst5|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux4~0_combout\ = (\inst3|Result\(1) & (!\inst3|Result\(3) & ((\inst3|Result\(0))))) # (!\inst3|Result\(1) & ((\inst3|Result\(2) & (!\inst3|Result\(3))) # (!\inst3|Result\(2) & ((\inst3|Result\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y27_N8
\inst5|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux5~0_combout\ = (\inst3|Result\(1) & (!\inst3|Result\(3) & ((\inst3|Result\(0)) # (!\inst3|Result\(2))))) # (!\inst3|Result\(1) & (\inst3|Result\(0) & (\inst3|Result\(3) $ (!\inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y27_N30
\inst5|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|Mux6~0_combout\ = (\inst3|Result\(0) & ((\inst3|Result\(3)) # (\inst3|Result\(1) $ (\inst3|Result\(2))))) # (!\inst3|Result\(0) & ((\inst3|Result\(1)) # (\inst3|Result\(3) $ (\inst3|Result\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(1),
	datab => \inst3|Result\(3),
	datac => \inst3|Result\(2),
	datad => \inst3|Result\(0),
	combout => \inst5|Mux6~0_combout\);

-- Location: LCCOMB_X63_Y25_N28
\inst3|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~10_combout\ = (\inst|Q\(6) & (!\inst3|Add0~9\)) # (!\inst|Q\(6) & ((\inst3|Add0~9\) # (GND)))
-- \inst3|Add0~11\ = CARRY((!\inst3|Add0~9\) # (!\inst|Q\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(6),
	datad => VCC,
	cin => \inst3|Add0~9\,
	combout => \inst3|Add0~10_combout\,
	cout => \inst3|Add0~11\);

-- Location: LCCOMB_X64_Y26_N18
\inst4|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr5~0_combout\ = (\inst4|yfsm.s7~regout\) # ((\inst4|yfsm.s1~regout\) # ((\inst4|yfsm.s3~regout\) # (\inst4|yfsm.s5~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s7~regout\,
	datab => \inst4|yfsm.s1~regout\,
	datac => \inst4|yfsm.s3~regout\,
	datad => \inst4|yfsm.s5~regout\,
	combout => \inst4|WideOr5~0_combout\);

-- Location: LCCOMB_X63_Y25_N8
\inst3|Selector1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~1_combout\ = (!\inst4|yfsm.s8~regout\ & ((\inst3|LessThan0~14_combout\ & (\inst1|Q\(6))) # (!\inst3|LessThan0~14_combout\ & ((\inst|Q\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(6),
	datab => \inst4|yfsm.s8~regout\,
	datac => \inst|Q\(6),
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector1~1_combout\);

-- Location: LCCOMB_X64_Y25_N6
\inst3|Selector1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~2_combout\ = (\inst4|yfsm.s8~regout\ & ((\inst3|Result\(6)) # ((\inst4|WideOr5~0_combout\ & \inst3|Selector1~1_combout\)))) # (!\inst4|yfsm.s8~regout\ & (((\inst4|WideOr5~0_combout\ & \inst3|Selector1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datab => \inst3|Result\(6),
	datac => \inst4|WideOr5~0_combout\,
	datad => \inst3|Selector1~1_combout\,
	combout => \inst3|Selector1~2_combout\);

-- Location: LCCOMB_X64_Y25_N8
\inst3|Selector1~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~3_combout\ = (\inst3|Selector1~2_combout\) # ((!\inst4|WideOr5~0_combout\ & ((\inst4|yfsm.s8~regout\) # (\inst3|Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datab => \inst3|Add0~10_combout\,
	datac => \inst4|WideOr5~0_combout\,
	datad => \inst3|Selector1~2_combout\,
	combout => \inst3|Selector1~3_combout\);

-- Location: LCCOMB_X64_Y24_N24
\inst3|Selector1~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~5_combout\ = (\inst4|WideOr5~0_combout\ & (\inst4|yfsm.s8~regout\)) # (!\inst4|WideOr5~0_combout\ & ((\inst|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s8~regout\,
	datac => \inst|Q\(0),
	datad => \inst4|WideOr5~0_combout\,
	combout => \inst3|Selector1~5_combout\);

-- Location: LCFF_X63_Y27_N5
\inst3|reg[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(1),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(6));

-- Location: LCCOMB_X62_Y24_N24
\inst3|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~8_combout\ = ((\inst1|Q\(4) $ (\inst|Q\(4) $ (!\inst3|Add1~7\)))) # (GND)
-- \inst3|Add1~9\ = CARRY((\inst1|Q\(4) & ((\inst|Q\(4)) # (!\inst3|Add1~7\))) # (!\inst1|Q\(4) & (\inst|Q\(4) & !\inst3|Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst|Q\(4),
	datad => VCC,
	cin => \inst3|Add1~7\,
	combout => \inst3|Add1~8_combout\,
	cout => \inst3|Add1~9\);

-- Location: LCCOMB_X62_Y24_N26
\inst3|Add1~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add1~10_combout\ = (\inst|Q\(5) & ((\inst1|Q\(5) & (\inst3|Add1~9\ & VCC)) # (!\inst1|Q\(5) & (!\inst3|Add1~9\)))) # (!\inst|Q\(5) & ((\inst1|Q\(5) & (!\inst3|Add1~9\)) # (!\inst1|Q\(5) & ((\inst3|Add1~9\) # (GND)))))
-- \inst3|Add1~11\ = CARRY((\inst|Q\(5) & (!\inst1|Q\(5) & !\inst3|Add1~9\)) # (!\inst|Q\(5) & ((!\inst3|Add1~9\) # (!\inst1|Q\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(5),
	datab => \inst1|Q\(5),
	datad => VCC,
	cin => \inst3|Add1~9\,
	combout => \inst3|Add1~10_combout\,
	cout => \inst3|Add1~11\);

-- Location: LCCOMB_X63_Y24_N16
\inst3|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~4_combout\ = (\inst3|Add1~8_combout\ & ((GND) # (!\inst3|Add2~3\))) # (!\inst3|Add1~8_combout\ & (\inst3|Add2~3\ $ (GND)))
-- \inst3|Add2~5\ = CARRY((\inst3|Add1~8_combout\) # (!\inst3|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~8_combout\,
	datad => VCC,
	cin => \inst3|Add2~3\,
	combout => \inst3|Add2~4_combout\,
	cout => \inst3|Add2~5\);

-- Location: LCCOMB_X63_Y24_N18
\inst3|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~6_combout\ = (\inst3|Add1~10_combout\ & (\inst3|Add2~5\ & VCC)) # (!\inst3|Add1~10_combout\ & (!\inst3|Add2~5\))
-- \inst3|Add2~7\ = CARRY((!\inst3|Add1~10_combout\ & !\inst3|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~10_combout\,
	datad => VCC,
	cin => \inst3|Add2~5\,
	combout => \inst3|Add2~6_combout\,
	cout => \inst3|Add2~7\);

-- Location: LCCOMB_X63_Y24_N20
\inst3|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~8_combout\ = (\inst3|Add1~12_combout\ & ((GND) # (!\inst3|Add2~7\))) # (!\inst3|Add1~12_combout\ & (\inst3|Add2~7\ $ (GND)))
-- \inst3|Add2~9\ = CARRY((\inst3|Add1~12_combout\) # (!\inst3|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|Add1~12_combout\,
	datad => VCC,
	cin => \inst3|Add2~7\,
	combout => \inst3|Add2~8_combout\,
	cout => \inst3|Add2~9\);

-- Location: LCCOMB_X63_Y24_N30
\inst3|Selector1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~6_combout\ = (\inst4|WideOr5~0_combout\ & ((\inst3|Selector5~8_combout\ & (\inst3|reg\(6))) # (!\inst3|Selector5~8_combout\ & ((\inst3|Add2~8_combout\))))) # (!\inst4|WideOr5~0_combout\ & (((\inst3|Selector5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|reg\(6),
	datac => \inst3|Add2~8_combout\,
	datad => \inst3|Selector5~8_combout\,
	combout => \inst3|Selector1~6_combout\);

-- Location: LCCOMB_X63_Y24_N28
\inst3|Selector1~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~7_combout\ = (\inst3|Selector1~4_combout\ & ((\inst3|Selector1~5_combout\) # (\inst4|WideOr5~0_combout\ $ (!\inst3|Selector1~6_combout\)))) # (!\inst3|Selector1~4_combout\ & (\inst3|Selector1~6_combout\ & (\inst3|Selector1~5_combout\ $ 
-- (\inst4|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector1~4_combout\,
	datab => \inst3|Selector1~5_combout\,
	datac => \inst4|WideOr5~0_combout\,
	datad => \inst3|Selector1~6_combout\,
	combout => \inst3|Selector1~7_combout\);

-- Location: LCCOMB_X64_Y25_N2
\inst3|Selector1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector1~8_combout\ = (\inst3|Selector1~0_combout\ & ((\inst3|Selector1~3_combout\) # ((!\inst4|WideOr3~0_combout\ & \inst3|Selector1~7_combout\)))) # (!\inst3|Selector1~0_combout\ & (!\inst4|WideOr3~0_combout\ & ((\inst3|Selector1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector1~0_combout\,
	datab => \inst4|WideOr3~0_combout\,
	datac => \inst3|Selector1~3_combout\,
	datad => \inst3|Selector1~7_combout\,
	combout => \inst3|Selector1~8_combout\);

-- Location: LCFF_X64_Y25_N3
\inst3|Result[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector1~8_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(6));

-- Location: LCCOMB_X64_Y24_N10
\inst3|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~0_combout\ = (\inst4|WideOr3~1_combout\ & (!\inst4|yfsm.s1~regout\ & (!\inst4|yfsm.s2~regout\ & !\inst4|yfsm.s6~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr3~1_combout\,
	datab => \inst4|yfsm.s1~regout\,
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst4|yfsm.s6~regout\,
	combout => \inst3|Selector3~0_combout\);

-- Location: LCCOMB_X63_Y24_N6
\inst3|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~3_combout\ = (\inst3|Selector3~1_combout\ & ((\inst3|LessThan0~14_combout\ & ((\inst1|Q\(4)))) # (!\inst3|LessThan0~14_combout\ & (\inst|Q\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~1_combout\,
	datab => \inst|Q\(4),
	datac => \inst1|Q\(4),
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector3~3_combout\);

-- Location: LCCOMB_X63_Y24_N0
\inst3|Selector3~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~4_combout\ = (\inst3|Selector3~0_combout\ & ((\inst3|Selector3~3_combout\) # ((\inst3|Selector3~2_combout\ & \inst3|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~2_combout\,
	datab => \inst3|Selector3~0_combout\,
	datac => \inst3|Add2~4_combout\,
	datad => \inst3|Selector3~3_combout\,
	combout => \inst3|Selector3~4_combout\);

-- Location: LCCOMB_X64_Y26_N24
\inst3|Selector3~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~5_combout\ = (\inst3|Selector5~23_combout\ & (\inst1|Q\(4) $ (\inst|Q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(4),
	datab => \inst3|Selector5~23_combout\,
	datad => \inst|Q\(4),
	combout => \inst3|Selector3~5_combout\);

-- Location: LCCOMB_X64_Y25_N4
\inst3|Selector3~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector3~8_combout\ = (\inst3|Selector3~4_combout\) # ((\inst3|Selector3~5_combout\) # ((\inst3|Selector3~7_combout\ & \inst3|Selector5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector3~7_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst3|Selector3~4_combout\,
	datad => \inst3|Selector3~5_combout\,
	combout => \inst3|Selector3~8_combout\);

-- Location: LCFF_X64_Y25_N5
\inst3|Result[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector3~8_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(4));

-- Location: LCFF_X64_Y24_N3
\inst3|reg[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(2),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(5));

-- Location: LCCOMB_X64_Y24_N2
\inst3|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~0_combout\ = (\inst4|yfsm.s5~regout\ & (((\inst3|reg\(5))))) # (!\inst4|yfsm.s5~regout\ & ((\inst4|yfsm.s1~regout\ & (\inst3|reg\(5))) # (!\inst4|yfsm.s1~regout\ & ((\inst|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s5~regout\,
	datab => \inst4|yfsm.s1~regout\,
	datac => \inst3|reg\(5),
	datad => \inst|Q\(7),
	combout => \inst3|Selector2~0_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N11
\inst|Q[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \A~combout\(5),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Q\(5));

-- Location: LCCOMB_X63_Y24_N4
\inst3|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~3_combout\ = (\inst4|yfsm.s6~regout\ & (\inst1|Q\(5) $ ((\inst|Q\(5))))) # (!\inst4|yfsm.s6~regout\ & ((\inst3|LessThan0~14_combout\ & (\inst1|Q\(5))) # (!\inst3|LessThan0~14_combout\ & ((\inst|Q\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Q\(5),
	datab => \inst|Q\(5),
	datac => \inst4|yfsm.s6~regout\,
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector2~3_combout\);

-- Location: LCCOMB_X63_Y24_N26
\inst3|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~2_combout\ = (\inst4|yfsm.s7~regout\ & (!\inst4|yfsm.s3~regout\ & \inst3|Add2~6_combout\)) # (!\inst4|yfsm.s7~regout\ & (\inst4|yfsm.s3~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s7~regout\,
	datac => \inst4|yfsm.s3~regout\,
	datad => \inst3|Add2~6_combout\,
	combout => \inst3|Selector2~2_combout\);

-- Location: LCCOMB_X64_Y24_N14
\inst3|Selector2~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~5_combout\ = (\inst4|yfsm.s7~regout\ & (!\inst4|yfsm.s6~regout\ & ((\inst3|Selector2~2_combout\)))) # (!\inst4|yfsm.s7~regout\ & (\inst3|Selector2~3_combout\ & (\inst4|yfsm.s6~regout\ $ (\inst3|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst3|Selector2~3_combout\,
	datad => \inst3|Selector2~2_combout\,
	combout => \inst3|Selector2~5_combout\);

-- Location: LCCOMB_X64_Y24_N12
\inst3|Selector2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~4_combout\ = (\inst3|Selector2~3_combout\ & ((\inst3|Selector2~2_combout\ & (\inst4|yfsm.s6~regout\)) # (!\inst3|Selector2~2_combout\ & ((\inst4|yfsm.s7~regout\))))) # (!\inst3|Selector2~3_combout\ & ((\inst4|yfsm.s6~regout\) # 
-- (\inst4|yfsm.s7~regout\ $ (\inst3|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s6~regout\,
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst3|Selector2~3_combout\,
	datad => \inst3|Selector2~2_combout\,
	combout => \inst3|Selector2~4_combout\);

-- Location: LCCOMB_X64_Y24_N0
\inst3|Selector2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~6_combout\ = (\inst3|Selector2~5_combout\ & ((\inst3|Selector2~4_combout\ & (\inst3|Selector2~1_combout\)) # (!\inst3|Selector2~4_combout\ & ((!\inst4|yfsm.s8~regout\))))) # (!\inst3|Selector2~5_combout\ & (\inst3|Selector2~1_combout\ & 
-- ((!\inst3|Selector2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector2~1_combout\,
	datab => \inst4|yfsm.s8~regout\,
	datac => \inst3|Selector2~5_combout\,
	datad => \inst3|Selector2~4_combout\,
	combout => \inst3|Selector2~6_combout\);

-- Location: LCCOMB_X64_Y24_N8
\inst3|Selector2~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector2~7_combout\ = (\inst4|WideOr3~1_combout\ & (((!\inst4|yfsm.s2~regout\ & \inst3|Selector2~6_combout\)))) # (!\inst4|WideOr3~1_combout\ & (\inst3|Selector2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr3~1_combout\,
	datab => \inst3|Selector2~0_combout\,
	datac => \inst4|yfsm.s2~regout\,
	datad => \inst3|Selector2~6_combout\,
	combout => \inst3|Selector2~7_combout\);

-- Location: LCFF_X64_Y24_N9
\inst3|Result[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector2~7_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(5));

-- Location: LCCOMB_X63_Y25_N30
\inst3|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add0~12_combout\ = \inst|Q\(7) $ (!\inst3|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|Q\(7),
	cin => \inst3|Add0~11\,
	combout => \inst3|Add0~12_combout\);

-- Location: LCCOMB_X63_Y25_N10
\inst3|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~0_combout\ = (\inst4|WideOr5~0_combout\ & ((\inst3|LessThan0~14_combout\ & (\inst1|Q\(7))) # (!\inst3|LessThan0~14_combout\ & ((\inst|Q\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst1|Q\(7),
	datac => \inst|Q\(7),
	datad => \inst3|LessThan0~14_combout\,
	combout => \inst3|Selector0~0_combout\);

-- Location: LCCOMB_X64_Y25_N14
\inst3|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~1_combout\ = (\inst3|Selector1~0_combout\ & ((\inst3|Selector0~0_combout\) # ((\inst3|Add0~12_combout\ & !\inst4|WideOr5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector1~0_combout\,
	datab => \inst3|Add0~12_combout\,
	datac => \inst4|WideOr5~0_combout\,
	datad => \inst3|Selector0~0_combout\,
	combout => \inst3|Selector0~1_combout\);

-- Location: LCCOMB_X64_Y24_N18
\inst3|Result~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Result~2_combout\ = \inst1|Q\(7) $ (\inst|Q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|Q\(7),
	datad => \inst|Q\(7),
	combout => \inst3|Result~2_combout\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCFF_X62_Y24_N17
\inst1|Q[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \B~combout\(0),
	aclr => \ALT_INV_reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|Q\(0));

-- Location: LCFF_X64_Y25_N11
\inst3|reg[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	sdata => \inst1|Q\(0),
	sload => VCC,
	ena => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|reg\(7));

-- Location: LCCOMB_X63_Y25_N16
\inst3|Selector0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~2_combout\ = (\inst4|WideOr5~0_combout\ & (((\inst3|reg\(7)) # (!\inst3|Selector5~8_combout\)))) # (!\inst4|WideOr5~0_combout\ & (\inst|Q\(1) & ((\inst3|Selector5~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Q\(1),
	datab => \inst4|WideOr5~0_combout\,
	datac => \inst3|reg\(7),
	datad => \inst3|Selector5~8_combout\,
	combout => \inst3|Selector0~2_combout\);

-- Location: LCCOMB_X63_Y24_N22
\inst3|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Add2~10_combout\ = \inst3|Add1~14_combout\ $ (!\inst3|Add2~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Add1~14_combout\,
	cin => \inst3|Add2~9\,
	combout => \inst3|Add2~10_combout\);

-- Location: LCCOMB_X63_Y24_N2
\inst3|Selector0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~3_combout\ = (\inst3|Selector5~8_combout\ & (((\inst3|Selector0~2_combout\)))) # (!\inst3|Selector5~8_combout\ & ((\inst3|Selector0~2_combout\ & ((\inst3|Add2~10_combout\))) # (!\inst3|Selector0~2_combout\ & (\inst3|Result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Selector5~8_combout\,
	datab => \inst3|Result~2_combout\,
	datac => \inst3|Selector0~2_combout\,
	datad => \inst3|Add2~10_combout\,
	combout => \inst3|Selector0~3_combout\);

-- Location: LCCOMB_X64_Y25_N28
\inst3|Selector0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|Selector0~4_combout\ = (\inst4|yfsm.s8~regout\) # ((\inst3|Selector0~1_combout\) # ((!\inst4|WideOr3~0_combout\ & \inst3|Selector0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datab => \inst4|WideOr3~0_combout\,
	datac => \inst3|Selector0~1_combout\,
	datad => \inst3|Selector0~3_combout\,
	combout => \inst3|Selector0~4_combout\);

-- Location: LCFF_X64_Y25_N29
\inst3|Result[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_clock~combout\,
	datain => \inst3|Selector0~4_combout\,
	ena => \En~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|Result\(7));

-- Location: LCCOMB_X64_Y7_N24
\inst6|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst3|Result\(6) & (!\inst3|Result\(5) & (\inst3|Result\(4) $ (!\inst3|Result\(7))))) # (!\inst3|Result\(6) & (\inst3|Result\(4) & (\inst3|Result\(5) $ (!\inst3|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y7_N30
\inst6|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst3|Result\(5) & ((\inst3|Result\(4) & ((\inst3|Result\(7)))) # (!\inst3|Result\(4) & (\inst3|Result\(6))))) # (!\inst3|Result\(5) & (\inst3|Result\(6) & (\inst3|Result\(4) $ (\inst3|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y7_N8
\inst6|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst3|Result\(6) & (\inst3|Result\(7) & ((\inst3|Result\(5)) # (!\inst3|Result\(4))))) # (!\inst3|Result\(6) & (!\inst3|Result\(4) & (\inst3|Result\(5) & !\inst3|Result\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y7_N6
\inst6|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst3|Result\(4) & (\inst3|Result\(6) $ ((!\inst3|Result\(5))))) # (!\inst3|Result\(4) & ((\inst3|Result\(6) & (!\inst3|Result\(5) & !\inst3|Result\(7))) # (!\inst3|Result\(6) & (\inst3|Result\(5) & \inst3|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y7_N4
\inst6|Mux4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst3|Result\(5) & (((\inst3|Result\(4) & !\inst3|Result\(7))))) # (!\inst3|Result\(5) & ((\inst3|Result\(6) & ((!\inst3|Result\(7)))) # (!\inst3|Result\(6) & (\inst3|Result\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X64_Y7_N18
\inst6|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst3|Result\(6) & (\inst3|Result\(4) & (\inst3|Result\(5) $ (\inst3|Result\(7))))) # (!\inst3|Result\(6) & (!\inst3|Result\(7) & ((\inst3|Result\(4)) # (\inst3|Result\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y7_N12
\inst6|Mux6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst3|Result\(4) & ((\inst3|Result\(7)) # (\inst3|Result\(6) $ (\inst3|Result\(5))))) # (!\inst3|Result\(4) & ((\inst3|Result\(5)) # (\inst3|Result\(6) $ (\inst3|Result\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Result\(6),
	datab => \inst3|Result\(4),
	datac => \inst3|Result\(5),
	datad => \inst3|Result\(7),
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X64_Y23_N20
\inst7|Mux0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst4|yfsm.s8~regout\) # ((!\inst4|yfsm.s0~regout\ & \inst4|yfsm.s4~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s0~regout\,
	datac => \inst4|yfsm.s8~regout\,
	datad => \inst4|yfsm.s4~regout\,
	combout => \inst7|Mux0~3_combout\);

-- Location: LCCOMB_X64_Y23_N22
\inst7|Mux0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~12_combout\ = (!\inst4|yfsm.s7~regout\ & (\inst7|Mux0~3_combout\ & (!\inst4|yfsm.s1~regout\ & !\inst4|yfsm.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s7~regout\,
	datab => \inst7|Mux0~3_combout\,
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s2~regout\,
	combout => \inst7|Mux0~12_combout\);

-- Location: LCCOMB_X64_Y23_N2
\inst4|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr1~0_combout\ = ((\inst4|yfsm.s1~regout\) # ((\inst4|yfsm.s8~regout\) # (\inst4|yfsm.s2~regout\))) # (!\inst4|yfsm.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s0~regout\,
	datab => \inst4|yfsm.s1~regout\,
	datac => \inst4|yfsm.s8~regout\,
	datad => \inst4|yfsm.s2~regout\,
	combout => \inst4|WideOr1~0_combout\);

-- Location: LCCOMB_X64_Y23_N28
\inst4|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr2~0_combout\ = (\inst4|yfsm.s8~regout\) # ((\inst4|yfsm.s2~regout\) # ((\inst4|yfsm.s1~regout\) # (\inst4|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datab => \inst4|yfsm.s2~regout\,
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s4~regout\,
	combout => \inst4|WideOr2~0_combout\);

-- Location: LCCOMB_X64_Y23_N8
\inst7|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = \inst4|WideOr1~0_combout\ $ (\inst4|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr1~0_combout\,
	datad => \inst4|WideOr2~0_combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y23_N24
\inst4|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|WideOr0~0_combout\ = (\inst4|yfsm.s7~regout\) # ((\inst4|yfsm.s1~regout\) # (\inst4|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|yfsm.s7~regout\,
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s2~regout\,
	combout => \inst4|WideOr0~0_combout\);

-- Location: LCCOMB_X64_Y23_N26
\inst7|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst4|WideOr0~0_combout\) # (\inst4|WideOr1~0_combout\ $ (\inst4|WideOr2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr1~0_combout\,
	datac => \inst4|WideOr0~0_combout\,
	datad => \inst4|WideOr2~0_combout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y23_N10
\inst7|Mux4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~3_combout\ = (\inst4|yfsm.s8~regout\ & (((!\inst4|yfsm.s7~regout\)))) # (!\inst4|yfsm.s8~regout\ & (((!\inst4|yfsm.s0~regout\ & !\inst4|yfsm.s7~regout\)) # (!\inst4|yfsm.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s0~regout\,
	datab => \inst4|yfsm.s4~regout\,
	datac => \inst4|yfsm.s8~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst7|Mux4~3_combout\);

-- Location: LCCOMB_X64_Y23_N16
\inst7|Mux4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~6_combout\ = (\inst7|Mux4~3_combout\ & (!\inst4|yfsm.s1~regout\ & !\inst4|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux4~3_combout\,
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s2~regout\,
	combout => \inst7|Mux4~6_combout\);

-- Location: LCCOMB_X64_Y23_N0
\inst7|Mux5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst4|WideOr1~0_combout\) # (\inst4|WideOr2~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|WideOr1~0_combout\,
	datad => \inst4|WideOr2~0_combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X64_Y23_N18
\inst7|Mux6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~3_combout\ = (\inst4|yfsm.s8~regout\ & (((\inst4|yfsm.s7~regout\)))) # (!\inst4|yfsm.s8~regout\ & ((\inst4|yfsm.s0~regout\ & (!\inst4|yfsm.s4~regout\ & !\inst4|yfsm.s7~regout\)) # (!\inst4|yfsm.s0~regout\ & (\inst4|yfsm.s4~regout\ & 
-- \inst4|yfsm.s7~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s0~regout\,
	datab => \inst4|yfsm.s4~regout\,
	datac => \inst4|yfsm.s8~regout\,
	datad => \inst4|yfsm.s7~regout\,
	combout => \inst7|Mux6~3_combout\);

-- Location: LCCOMB_X64_Y23_N12
\inst7|Mux6~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~6_combout\ = (\inst7|Mux6~3_combout\) # ((\inst4|yfsm.s1~regout\) # (\inst4|yfsm.s2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Mux6~3_combout\,
	datac => \inst4|yfsm.s1~regout\,
	datad => \inst4|yfsm.s2~regout\,
	combout => \inst7|Mux6~6_combout\);

-- Location: LCCOMB_X64_Y23_N30
\inst20|inst3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst3~combout\ = (\inst4|yfsm.s8~regout\ & \En~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|yfsm.s8~regout\,
	datac => \En~combout\,
	combout => \inst20|inst3~combout\);

-- Location: LCCOMB_X64_Y25_N16
\inst20|inst|inst1|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst1|Mux3~1_combout\ = (\inst4|WideOr5~0_combout\ & (!\inst3|Selector5~8_combout\ & (!\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst1|Mux3~1_combout\);

-- Location: LCCOMB_X64_Y25_N22
\inst20|inst|inst1|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst1|Mux2~0_combout\ = (!\inst4|WideOr5~0_combout\ & (!\inst3|Selector5~8_combout\ & (!\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst1|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y25_N30
\inst20|inst|inst1|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst1|Mux0~0_combout\ = (!\inst4|WideOr5~0_combout\ & (\inst3|Selector5~8_combout\ & (!\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst1|Mux0~0_combout\);

-- Location: LCCOMB_X64_Y26_N4
\inst20|inst|inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst|Mux3~0_combout\ = (\inst4|WideOr5~0_combout\ & (\inst20|inst|inst1|Mux3~0_combout\ & (\inst4|WideOr3~0_combout\ & !\inst3|Selector5~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst20|inst|inst1|Mux3~0_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst3|Selector5~8_combout\,
	combout => \inst20|inst|inst|Mux3~0_combout\);

-- Location: LCCOMB_X64_Y25_N20
\inst20|inst|inst|Mux2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst|Mux2~0_combout\ = (!\inst4|WideOr5~0_combout\ & (!\inst3|Selector5~8_combout\ & (\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst|Mux2~0_combout\);

-- Location: LCCOMB_X64_Y25_N18
\inst20|inst|inst|Mux1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst|Mux1~0_combout\ = (\inst4|WideOr5~0_combout\ & (\inst3|Selector5~8_combout\ & (\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst|Mux1~0_combout\);

-- Location: LCCOMB_X64_Y25_N24
\inst20|inst|inst|Mux0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst20|inst|inst|Mux0~0_combout\ = (!\inst4|WideOr5~0_combout\ & (\inst3|Selector5~8_combout\ & (\inst4|WideOr3~0_combout\ & \inst20|inst|inst1|Mux3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|WideOr5~0_combout\,
	datab => \inst3|Selector5~8_combout\,
	datac => \inst4|WideOr3~0_combout\,
	datad => \inst20|inst|inst1|Mux3~0_combout\,
	combout => \inst20|inst|inst|Mux0~0_combout\);

-- Location: PIN_AF10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[1]~I\ : cycloneii_io
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
	datain => \inst5|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(1));

-- Location: PIN_AB12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[2]~I\ : cycloneii_io
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
	datain => \inst5|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(2));

-- Location: PIN_AC12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[3]~I\ : cycloneii_io
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
	datain => \inst5|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(3));

-- Location: PIN_AD11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[4]~I\ : cycloneii_io
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
	datain => \inst5|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(4));

-- Location: PIN_AE11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[5]~I\ : cycloneii_io
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
	datain => \inst5|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(5));

-- Location: PIN_V14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[6]~I\ : cycloneii_io
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
	datain => \inst5|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(6));

-- Location: PIN_V13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\first_number[7]~I\ : cycloneii_io
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
	datain => \inst5|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_first_number(7));

-- Location: PIN_V20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[1]~I\ : cycloneii_io
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
	datain => \inst6|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(1));

-- Location: PIN_V21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[2]~I\ : cycloneii_io
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
	datain => \inst6|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(2));

-- Location: PIN_W21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[3]~I\ : cycloneii_io
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
	datain => \inst6|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(3));

-- Location: PIN_Y22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[4]~I\ : cycloneii_io
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
	datain => \inst6|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(4));

-- Location: PIN_AA24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[5]~I\ : cycloneii_io
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
	datain => \inst6|Mux4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(5));

-- Location: PIN_AA23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[6]~I\ : cycloneii_io
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
	datain => \inst6|Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(6));

-- Location: PIN_AB24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\last_number[7]~I\ : cycloneii_io
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
	datain => \inst6|ALT_INV_Mux6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_last_number(7));

-- Location: PIN_AD23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[0]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(0));

-- Location: PIN_V18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[1]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(1));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[2]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(2));

-- Location: PIN_AD16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[3]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(3));

-- Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[4]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(4));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[5]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(5));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[6]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(6));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[7]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(7));

-- Location: PIN_AC8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[8]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(8));

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(9));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(10));

-- Location: PIN_C6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(11));

-- Location: PIN_AA6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(12));

-- Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(13));

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(14));

-- Location: PIN_U23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\OP_out[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_OP_out(15));

-- Location: PIN_K22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[7]~I\ : cycloneii_io
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
	datain => \inst|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(7));

-- Location: PIN_L21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[6]~I\ : cycloneii_io
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
	datain => \inst|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(6));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[5]~I\ : cycloneii_io
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
	datain => \inst|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(5));

-- Location: PIN_L20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[4]~I\ : cycloneii_io
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
	datain => \inst|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(4));

-- Location: PIN_G24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[3]~I\ : cycloneii_io
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
	datain => \inst|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(3));

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[2]~I\ : cycloneii_io
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
	datain => \inst|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(2));

-- Location: PIN_L19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[1]~I\ : cycloneii_io
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
	datain => \inst|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(1));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_A[0]~I\ : cycloneii_io
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
	datain => \inst|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_A(0));

-- Location: PIN_K26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[7]~I\ : cycloneii_io
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
	datain => \inst1|Q\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(7));

-- Location: PIN_J26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[6]~I\ : cycloneii_io
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
	datain => \inst1|Q\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(6));

-- Location: PIN_G23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[5]~I\ : cycloneii_io
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
	datain => \inst1|Q\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(5));

-- Location: PIN_J25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[4]~I\ : cycloneii_io
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
	datain => \inst1|Q\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(4));

-- Location: PIN_K25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[3]~I\ : cycloneii_io
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
	datain => \inst1|Q\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(3));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[2]~I\ : cycloneii_io
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
	datain => \inst1|Q\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(2));

-- Location: PIN_L23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[1]~I\ : cycloneii_io
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
	datain => \inst1|Q\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(1));

-- Location: PIN_M22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q_B[0]~I\ : cycloneii_io
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
	datain => \inst1|Q\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q_B(0));

-- Location: PIN_H23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|Result\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(3));

-- Location: PIN_G25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|Result\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(2));

-- Location: PIN_H24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|Result\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(1));

-- Location: PIN_L25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst3|Result\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R1(0));

-- Location: PIN_T20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[3]~I\ : cycloneii_io
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
	datain => \inst3|Result\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(3));

-- Location: PIN_U24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[2]~I\ : cycloneii_io
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
	datain => \inst3|Result\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(2));

-- Location: PIN_T21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[1]~I\ : cycloneii_io
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
	datain => \inst3|Result\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(1));

-- Location: PIN_U25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\R2[0]~I\ : cycloneii_io
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
	datain => \inst3|Result\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_R2(0));

-- Location: PIN_AB23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[1]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(1));

-- Location: PIN_V22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[2]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(2));

-- Location: PIN_AC25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[3]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(3));

-- Location: PIN_AC26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[4]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(4));

-- Location: PIN_AB26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[5]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(5));

-- Location: PIN_AB25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[6]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(6));

-- Location: PIN_Y24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\sign[7]~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_sign(7));

-- Location: PIN_Y23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(1));

-- Location: PIN_AA25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst7|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(2));

-- Location: PIN_AA26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(3));

-- Location: PIN_Y26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[4]~I\ : cycloneii_io
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
	datain => \inst7|ALT_INV_Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(4));

-- Location: PIN_Y25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[5]~I\ : cycloneii_io
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
	datain => \inst7|Mux4~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(5));

-- Location: PIN_U22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[6]~I\ : cycloneii_io
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
	datain => \inst7|ALT_INV_Mux5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(6));

-- Location: PIN_W24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\student_id[7]~I\ : cycloneii_io
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
	datain => \inst7|Mux6~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_student_id(7));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[15]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(15));

-- Location: PIN_AE5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[14]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(14));

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[13]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(13));

-- Location: PIN_J17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[12]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(12));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[11]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(11));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[10]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(10));

-- Location: PIN_H11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[9]~I\ : cycloneii_io
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
	datain => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(9));

-- Location: PIN_L24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[8]~I\ : cycloneii_io
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
	datain => \inst20|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(8));

-- Location: PIN_K21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[7]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst1|Mux3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(7));

-- Location: PIN_F25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[6]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst1|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(6));

-- Location: PIN_M23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[5]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst1|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(5));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[4]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst1|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(4));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[3]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst|Mux3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(3));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[2]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(2));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[1]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst|Mux1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(1));

-- Location: PIN_K23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Y[0]~I\ : cycloneii_io
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
	datain => \inst20|inst|inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Y(0));
END structure;


