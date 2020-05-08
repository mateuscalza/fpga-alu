-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.0.0 Build 200 06/17/2014 SJ Web Edition"

-- DATE "05/08/2020 18:36:41"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
LIBRARY STD;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE STD.STANDARD.ALL;

ENTITY 	alu IS
    PORT (
	a : IN std_logic_vector(7 DOWNTO 0);
	b : IN std_logic_vector(7 DOWNTO 0);
	mode : IN STD.STANDARD.integer range 0 TO 3;
	result : OUT std_logic_vector(7 DOWNTO 0);
	carryBorrow : OUT STD.STANDARD.bit
	);
END alu;

-- Design Ports Information
-- result[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_N4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_N3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[6]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[7]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryBorrow	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[0]	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[0]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[0]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[7]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[7]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[6]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[6]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[5]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[5]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[4]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[4]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[3]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[2]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[2]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b[1]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a[1]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_b : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mode : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_carryBorrow : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \result[4]~output_o\ : std_logic;
SIGNAL \result[5]~output_o\ : std_logic;
SIGNAL \result[6]~output_o\ : std_logic;
SIGNAL \result[7]~output_o\ : std_logic;
SIGNAL \carryBorrow~output_o\ : std_logic;
SIGNAL \mode[0]~input_o\ : std_logic;
SIGNAL \mode[1]~input_o\ : std_logic;
SIGNAL \a[7]~input_o\ : std_logic;
SIGNAL \b[7]~input_o\ : std_logic;
SIGNAL \a[6]~input_o\ : std_logic;
SIGNAL \b[6]~input_o\ : std_logic;
SIGNAL \a[5]~input_o\ : std_logic;
SIGNAL \b[5]~input_o\ : std_logic;
SIGNAL \b[4]~input_o\ : std_logic;
SIGNAL \a[4]~input_o\ : std_logic;
SIGNAL \b[3]~input_o\ : std_logic;
SIGNAL \a[3]~input_o\ : std_logic;
SIGNAL \b[2]~input_o\ : std_logic;
SIGNAL \a[2]~input_o\ : std_logic;
SIGNAL \b[1]~input_o\ : std_logic;
SIGNAL \a[1]~input_o\ : std_logic;
SIGNAL \a[0]~input_o\ : std_logic;
SIGNAL \b[0]~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \result~15_combout\ : std_logic;
SIGNAL \result~16_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \result~14_combout\ : std_logic;
SIGNAL \result~17_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \result~33_combout\ : std_logic;
SIGNAL \result~18_combout\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \result~19_combout\ : std_logic;
SIGNAL \result~20_combout\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \result~34_combout\ : std_logic;
SIGNAL \result~21_combout\ : std_logic;
SIGNAL \result~22_combout\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \result~35_combout\ : std_logic;
SIGNAL \result~23_combout\ : std_logic;
SIGNAL \result~24_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \result~36_combout\ : std_logic;
SIGNAL \result~25_combout\ : std_logic;
SIGNAL \result~26_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \result~37_combout\ : std_logic;
SIGNAL \result~27_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \result~28_combout\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \result~38_combout\ : std_logic;
SIGNAL \result~29_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \result~30_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \result~39_combout\ : std_logic;
SIGNAL \result~31_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \result~32_combout\ : std_logic;
SIGNAL \carryBorrow~0_combout\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_mode <= IEEE.STD_LOGIC_ARITH.CONV_STD_LOGIC_VECTOR(mode, 2);
result <= ww_result;
carryBorrow <= IEEE.STD_LOGIC_1164.TO_BIT(ww_carryBorrow);
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y44_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~17_combout\,
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X0_Y46_N16
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~20_combout\,
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X0_Y45_N16
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~22_combout\,
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X0_Y46_N23
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~24_combout\,
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOOBUF_X0_Y45_N23
\result[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~26_combout\,
	devoe => ww_devoe,
	o => \result[4]~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\result[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~28_combout\,
	devoe => ww_devoe,
	o => \result[5]~output_o\);

-- Location: IOOBUF_X0_Y50_N23
\result[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~30_combout\,
	devoe => ww_devoe,
	o => \result[6]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\result[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \result~32_combout\,
	devoe => ww_devoe,
	o => \result[7]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\carryBorrow~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \carryBorrow~0_combout\,
	devoe => ww_devoe,
	o => \carryBorrow~output_o\);

-- Location: IOIBUF_X0_Y34_N8
\mode[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(0),
	o => \mode[0]~input_o\);

-- Location: IOIBUF_X0_Y48_N1
\mode[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode(1),
	o => \mode[1]~input_o\);

-- Location: IOIBUF_X0_Y42_N8
\a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(7),
	o => \a[7]~input_o\);

-- Location: IOIBUF_X0_Y47_N15
\b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(7),
	o => \b[7]~input_o\);

-- Location: IOIBUF_X0_Y52_N1
\a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(6),
	o => \a[6]~input_o\);

-- Location: IOIBUF_X0_Y43_N15
\b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(6),
	o => \b[6]~input_o\);

-- Location: IOIBUF_X0_Y35_N15
\a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(5),
	o => \a[5]~input_o\);

-- Location: IOIBUF_X0_Y47_N1
\b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(5),
	o => \b[5]~input_o\);

-- Location: IOIBUF_X0_Y49_N1
\b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(4),
	o => \b[4]~input_o\);

-- Location: IOIBUF_X0_Y49_N8
\a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(4),
	o => \a[4]~input_o\);

-- Location: IOIBUF_X0_Y51_N15
\b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(3),
	o => \b[3]~input_o\);

-- Location: IOIBUF_X0_Y48_N8
\a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(3),
	o => \a[3]~input_o\);

-- Location: IOIBUF_X0_Y50_N15
\b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(2),
	o => \b[2]~input_o\);

-- Location: IOIBUF_X0_Y35_N8
\a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(2),
	o => \a[2]~input_o\);

-- Location: IOIBUF_X0_Y52_N15
\b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(1),
	o => \b[1]~input_o\);

-- Location: IOIBUF_X0_Y47_N22
\a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(1),
	o => \a[1]~input_o\);

-- Location: IOIBUF_X0_Y42_N1
\a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a(0),
	o => \a[0]~input_o\);

-- Location: IOIBUF_X0_Y35_N1
\b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b(0),
	o => \b[0]~input_o\);

-- Location: LCCOMB_X1_Y45_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (\a[0]~input_o\ & (\b[0]~input_o\ $ (VCC))) # (!\a[0]~input_o\ & (\b[0]~input_o\ & VCC))
-- \Add0~1\ = CARRY((\a[0]~input_o\ & \b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[0]~input_o\,
	datab => \b[0]~input_o\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X1_Y45_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\b[1]~input_o\ & ((\a[1]~input_o\ & (\Add0~1\ & VCC)) # (!\a[1]~input_o\ & (!\Add0~1\)))) # (!\b[1]~input_o\ & ((\a[1]~input_o\ & (!\Add0~1\)) # (!\a[1]~input_o\ & ((\Add0~1\) # (GND)))))
-- \Add0~3\ = CARRY((\b[1]~input_o\ & (!\a[1]~input_o\ & !\Add0~1\)) # (!\b[1]~input_o\ & ((!\Add0~1\) # (!\a[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[1]~input_o\,
	datab => \a[1]~input_o\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X1_Y45_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = ((\b[2]~input_o\ $ (\a[2]~input_o\ $ (!\Add0~3\)))) # (GND)
-- \Add0~5\ = CARRY((\b[2]~input_o\ & ((\a[2]~input_o\) # (!\Add0~3\))) # (!\b[2]~input_o\ & (\a[2]~input_o\ & !\Add0~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X1_Y45_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (\Add0~5\ & VCC)) # (!\a[3]~input_o\ & (!\Add0~5\)))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & (!\Add0~5\)) # (!\a[3]~input_o\ & ((\Add0~5\) # (GND)))))
-- \Add0~7\ = CARRY((\b[3]~input_o\ & (!\a[3]~input_o\ & !\Add0~5\)) # (!\b[3]~input_o\ & ((!\Add0~5\) # (!\a[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X1_Y45_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\b[4]~input_o\ $ (\a[4]~input_o\ $ (!\Add0~7\)))) # (GND)
-- \Add0~9\ = CARRY((\b[4]~input_o\ & ((\a[4]~input_o\) # (!\Add0~7\))) # (!\b[4]~input_o\ & (\a[4]~input_o\ & !\Add0~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[4]~input_o\,
	datab => \a[4]~input_o\,
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X1_Y45_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (\a[5]~input_o\ & ((\b[5]~input_o\ & (\Add0~9\ & VCC)) # (!\b[5]~input_o\ & (!\Add0~9\)))) # (!\a[5]~input_o\ & ((\b[5]~input_o\ & (!\Add0~9\)) # (!\b[5]~input_o\ & ((\Add0~9\) # (GND)))))
-- \Add0~11\ = CARRY((\a[5]~input_o\ & (!\b[5]~input_o\ & !\Add0~9\)) # (!\a[5]~input_o\ & ((!\Add0~9\) # (!\b[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X1_Y45_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = ((\a[6]~input_o\ $ (\b[6]~input_o\ $ (!\Add0~11\)))) # (GND)
-- \Add0~13\ = CARRY((\a[6]~input_o\ & ((\b[6]~input_o\) # (!\Add0~11\))) # (!\a[6]~input_o\ & (\b[6]~input_o\ & !\Add0~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X1_Y45_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\a[7]~input_o\ & ((\b[7]~input_o\ & (\Add0~13\ & VCC)) # (!\b[7]~input_o\ & (!\Add0~13\)))) # (!\a[7]~input_o\ & ((\b[7]~input_o\ & (!\Add0~13\)) # (!\b[7]~input_o\ & ((\Add0~13\) # (GND)))))
-- \Add0~15\ = CARRY((\a[7]~input_o\ & (!\b[7]~input_o\ & !\Add0~13\)) # (!\a[7]~input_o\ & ((!\Add0~13\) # (!\b[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X1_Y45_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = !\Add0~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add0~15\,
	combout => \Add0~16_combout\);

-- Location: LCCOMB_X1_Y44_N18
\result~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~15_combout\ = (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & (!\Add0~16_combout\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Add0~0_combout\,
	combout => \result~15_combout\);

-- Location: LCCOMB_X1_Y44_N4
\result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~16_combout\ = (\mode[0]~input_o\ & (((\Add0~0_combout\)))) # (!\mode[0]~input_o\ & (\b[0]~input_o\ & (\a[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datac => \mode[0]~input_o\,
	datad => \Add0~0_combout\,
	combout => \result~16_combout\);

-- Location: LCCOMB_X1_Y46_N12
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = (\b[0]~input_o\ & (\a[0]~input_o\ $ (VCC))) # (!\b[0]~input_o\ & ((\a[0]~input_o\) # (GND)))
-- \Add1~1\ = CARRY((\a[0]~input_o\) # (!\b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[0]~input_o\,
	datab => \a[0]~input_o\,
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X1_Y46_N14
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (\a[1]~input_o\ & ((\b[1]~input_o\ & (!\Add1~1\)) # (!\b[1]~input_o\ & (\Add1~1\ & VCC)))) # (!\a[1]~input_o\ & ((\b[1]~input_o\ & ((\Add1~1\) # (GND))) # (!\b[1]~input_o\ & (!\Add1~1\))))
-- \Add1~3\ = CARRY((\a[1]~input_o\ & (\b[1]~input_o\ & !\Add1~1\)) # (!\a[1]~input_o\ & ((\b[1]~input_o\) # (!\Add1~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[1]~input_o\,
	datab => \b[1]~input_o\,
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X1_Y46_N16
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = ((\a[2]~input_o\ $ (\b[2]~input_o\ $ (\Add1~3\)))) # (GND)
-- \Add1~5\ = CARRY((\a[2]~input_o\ & ((!\Add1~3\) # (!\b[2]~input_o\))) # (!\a[2]~input_o\ & (!\b[2]~input_o\ & !\Add1~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[2]~input_o\,
	datab => \b[2]~input_o\,
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: LCCOMB_X1_Y46_N18
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (\b[3]~input_o\ & ((\a[3]~input_o\ & (!\Add1~5\)) # (!\a[3]~input_o\ & ((\Add1~5\) # (GND))))) # (!\b[3]~input_o\ & ((\a[3]~input_o\ & (\Add1~5\ & VCC)) # (!\a[3]~input_o\ & (!\Add1~5\))))
-- \Add1~7\ = CARRY((\b[3]~input_o\ & ((!\Add1~5\) # (!\a[3]~input_o\))) # (!\b[3]~input_o\ & (!\a[3]~input_o\ & !\Add1~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b[3]~input_o\,
	datab => \a[3]~input_o\,
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X1_Y46_N20
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((\a[4]~input_o\ $ (\b[4]~input_o\ $ (\Add1~7\)))) # (GND)
-- \Add1~9\ = CARRY((\a[4]~input_o\ & ((!\Add1~7\) # (!\b[4]~input_o\))) # (!\a[4]~input_o\ & (!\b[4]~input_o\ & !\Add1~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[4]~input_o\,
	datab => \b[4]~input_o\,
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X1_Y46_N22
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (\a[5]~input_o\ & ((\b[5]~input_o\ & (!\Add1~9\)) # (!\b[5]~input_o\ & (\Add1~9\ & VCC)))) # (!\a[5]~input_o\ & ((\b[5]~input_o\ & ((\Add1~9\) # (GND))) # (!\b[5]~input_o\ & (!\Add1~9\))))
-- \Add1~11\ = CARRY((\a[5]~input_o\ & (\b[5]~input_o\ & !\Add1~9\)) # (!\a[5]~input_o\ & ((\b[5]~input_o\) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[5]~input_o\,
	datab => \b[5]~input_o\,
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X1_Y46_N24
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((\a[6]~input_o\ $ (\b[6]~input_o\ $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((\a[6]~input_o\ & ((!\Add1~11\) # (!\b[6]~input_o\))) # (!\a[6]~input_o\ & (!\b[6]~input_o\ & !\Add1~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[6]~input_o\,
	datab => \b[6]~input_o\,
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X1_Y46_N26
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (\a[7]~input_o\ & ((\b[7]~input_o\ & (!\Add1~13\)) # (!\b[7]~input_o\ & (\Add1~13\ & VCC)))) # (!\a[7]~input_o\ & ((\b[7]~input_o\ & ((\Add1~13\) # (GND))) # (!\b[7]~input_o\ & (!\Add1~13\))))
-- \Add1~15\ = CARRY((\a[7]~input_o\ & (\b[7]~input_o\ & !\Add1~13\)) # (!\a[7]~input_o\ & ((\b[7]~input_o\) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \b[7]~input_o\,
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X1_Y46_N28
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = !\Add1~15\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~15\,
	combout => \Add1~16_combout\);

-- Location: LCCOMB_X1_Y44_N8
\result~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~14_combout\ = (\mode[0]~input_o\ & (!\mode[1]~input_o\ & (\Add1~16_combout\ & \Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add1~16_combout\,
	datad => \Add1~0_combout\,
	combout => \result~14_combout\);

-- Location: LCCOMB_X1_Y44_N30
\result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~17_combout\ = (\result~15_combout\) # ((\result~14_combout\) # ((\result~16_combout\ & \mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~15_combout\,
	datab => \result~16_combout\,
	datac => \result~14_combout\,
	datad => \mode[1]~input_o\,
	combout => \result~17_combout\);

-- Location: LCCOMB_X1_Y44_N12
\result~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~33_combout\ = (\mode[0]~input_o\ & (\mode[1]~input_o\)) # (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & (!\Add0~16_combout\ & \Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Add0~2_combout\,
	combout => \result~33_combout\);

-- Location: LCCOMB_X1_Y44_N0
\result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~18_combout\ = (\mode[0]~input_o\ & ((\Add1~16_combout\) # (\mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \mode[1]~input_o\,
	datac => \mode[0]~input_o\,
	combout => \result~18_combout\);

-- Location: LCCOMB_X1_Y46_N0
\result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~19_combout\ = (\result~33_combout\ & ((\a[1]~input_o\ $ (\b[1]~input_o\)))) # (!\result~33_combout\ & (\mode[1]~input_o\ & (\a[1]~input_o\ & \b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~33_combout\,
	datab => \mode[1]~input_o\,
	datac => \a[1]~input_o\,
	datad => \b[1]~input_o\,
	combout => \result~19_combout\);

-- Location: LCCOMB_X1_Y46_N2
\result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~20_combout\ = (\result~33_combout\ & (((\result~19_combout\)) # (!\result~18_combout\))) # (!\result~33_combout\ & ((\result~18_combout\ & (\Add1~2_combout\ & !\result~19_combout\)) # (!\result~18_combout\ & ((\result~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~33_combout\,
	datab => \result~18_combout\,
	datac => \Add1~2_combout\,
	datad => \result~19_combout\,
	combout => \result~20_combout\);

-- Location: LCCOMB_X1_Y45_N2
\result~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~34_combout\ = (\mode[0]~input_o\ & (((\mode[1]~input_o\)))) # (!\mode[0]~input_o\ & (\Add0~4_combout\ & (!\mode[1]~input_o\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \Add0~4_combout\,
	datac => \mode[1]~input_o\,
	datad => \Add0~16_combout\,
	combout => \result~34_combout\);

-- Location: LCCOMB_X1_Y45_N24
\result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~21_combout\ = (\result~34_combout\ & (\b[2]~input_o\ $ ((\a[2]~input_o\)))) # (!\result~34_combout\ & (\b[2]~input_o\ & (\a[2]~input_o\ & \mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[2]~input_o\,
	datab => \a[2]~input_o\,
	datac => \mode[1]~input_o\,
	datad => \result~34_combout\,
	combout => \result~21_combout\);

-- Location: LCCOMB_X1_Y45_N26
\result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~22_combout\ = (\result~21_combout\ & (((\result~34_combout\) # (!\result~18_combout\)))) # (!\result~21_combout\ & ((\result~34_combout\ & ((!\result~18_combout\))) # (!\result~34_combout\ & (\Add1~4_combout\ & \result~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~4_combout\,
	datab => \result~21_combout\,
	datac => \result~34_combout\,
	datad => \result~18_combout\,
	combout => \result~22_combout\);

-- Location: LCCOMB_X1_Y44_N22
\result~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~35_combout\ = (\mode[0]~input_o\ & (\mode[1]~input_o\)) # (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & (!\Add0~16_combout\ & \Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Add0~6_combout\,
	combout => \result~35_combout\);

-- Location: LCCOMB_X1_Y46_N4
\result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~23_combout\ = (\result~35_combout\ & (\a[3]~input_o\ $ (((\b[3]~input_o\))))) # (!\result~35_combout\ & (\a[3]~input_o\ & (\mode[1]~input_o\ & \b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[3]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \result~35_combout\,
	datad => \b[3]~input_o\,
	combout => \result~23_combout\);

-- Location: LCCOMB_X1_Y46_N6
\result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~24_combout\ = (\result~35_combout\ & (((\result~23_combout\) # (!\result~18_combout\)))) # (!\result~35_combout\ & ((\result~23_combout\ & ((!\result~18_combout\))) # (!\result~23_combout\ & (\Add1~6_combout\ & \result~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~6_combout\,
	datab => \result~35_combout\,
	datac => \result~23_combout\,
	datad => \result~18_combout\,
	combout => \result~24_combout\);

-- Location: LCCOMB_X1_Y45_N28
\result~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~36_combout\ = (\mode[1]~input_o\ & (((\mode[0]~input_o\)))) # (!\mode[1]~input_o\ & (\Add0~8_combout\ & (!\mode[0]~input_o\ & !\Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \Add0~8_combout\,
	datac => \mode[0]~input_o\,
	datad => \Add0~16_combout\,
	combout => \result~36_combout\);

-- Location: LCCOMB_X1_Y45_N30
\result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~25_combout\ = (\result~36_combout\ & ((\a[4]~input_o\ $ (\b[4]~input_o\)))) # (!\result~36_combout\ & (\mode[1]~input_o\ & (\a[4]~input_o\ & \b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[1]~input_o\,
	datab => \a[4]~input_o\,
	datac => \b[4]~input_o\,
	datad => \result~36_combout\,
	combout => \result~25_combout\);

-- Location: LCCOMB_X1_Y45_N0
\result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~26_combout\ = (\result~18_combout\ & ((\result~25_combout\ & ((\result~36_combout\))) # (!\result~25_combout\ & (\Add1~8_combout\ & !\result~36_combout\)))) # (!\result~18_combout\ & (((\result~25_combout\) # (\result~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~8_combout\,
	datab => \result~18_combout\,
	datac => \result~25_combout\,
	datad => \result~36_combout\,
	combout => \result~26_combout\);

-- Location: LCCOMB_X1_Y44_N24
\result~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~37_combout\ = (\mode[0]~input_o\ & (\mode[1]~input_o\)) # (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & (!\Add0~16_combout\ & \Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Add0~10_combout\,
	combout => \result~37_combout\);

-- Location: LCCOMB_X1_Y44_N26
\result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~27_combout\ = (\result~37_combout\ & (\b[5]~input_o\ $ (((\a[5]~input_o\))))) # (!\result~37_combout\ & (\b[5]~input_o\ & (\mode[1]~input_o\ & \a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b[5]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \a[5]~input_o\,
	datad => \result~37_combout\,
	combout => \result~27_combout\);

-- Location: LCCOMB_X1_Y44_N20
\result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~28_combout\ = (\result~27_combout\ & (((\result~37_combout\)) # (!\result~18_combout\))) # (!\result~27_combout\ & ((\result~18_combout\ & (\Add1~10_combout\ & !\result~37_combout\)) # (!\result~18_combout\ & ((\result~37_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~27_combout\,
	datab => \result~18_combout\,
	datac => \Add1~10_combout\,
	datad => \result~37_combout\,
	combout => \result~28_combout\);

-- Location: LCCOMB_X1_Y44_N10
\result~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~38_combout\ = (\mode[0]~input_o\ & (\mode[1]~input_o\)) # (!\mode[0]~input_o\ & (!\mode[1]~input_o\ & (!\Add0~16_combout\ & \Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mode[0]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \Add0~16_combout\,
	datad => \Add0~12_combout\,
	combout => \result~38_combout\);

-- Location: LCCOMB_X1_Y46_N8
\result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~29_combout\ = (\result~38_combout\ & ((\b[6]~input_o\ $ (\a[6]~input_o\)))) # (!\result~38_combout\ & (\mode[1]~input_o\ & (\b[6]~input_o\ & \a[6]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~38_combout\,
	datab => \mode[1]~input_o\,
	datac => \b[6]~input_o\,
	datad => \a[6]~input_o\,
	combout => \result~29_combout\);

-- Location: LCCOMB_X1_Y46_N10
\result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~30_combout\ = (\result~38_combout\ & (((\result~29_combout\)) # (!\result~18_combout\))) # (!\result~38_combout\ & ((\result~18_combout\ & (!\result~29_combout\ & \Add1~12_combout\)) # (!\result~18_combout\ & (\result~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~38_combout\,
	datab => \result~18_combout\,
	datac => \result~29_combout\,
	datad => \Add1~12_combout\,
	combout => \result~30_combout\);

-- Location: LCCOMB_X1_Y44_N28
\result~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~39_combout\ = (\mode[0]~input_o\ & (((\mode[1]~input_o\)))) # (!\mode[0]~input_o\ & (\Add0~14_combout\ & (!\Add0~16_combout\ & !\mode[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datab => \Add0~16_combout\,
	datac => \mode[0]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \result~39_combout\);

-- Location: LCCOMB_X1_Y44_N6
\result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~31_combout\ = (\result~39_combout\ & (\a[7]~input_o\ $ (((\b[7]~input_o\))))) # (!\result~39_combout\ & (\a[7]~input_o\ & (\mode[1]~input_o\ & \b[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a[7]~input_o\,
	datab => \mode[1]~input_o\,
	datac => \b[7]~input_o\,
	datad => \result~39_combout\,
	combout => \result~31_combout\);

-- Location: LCCOMB_X1_Y44_N16
\result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \result~32_combout\ = (\result~31_combout\ & ((\result~39_combout\) # ((!\result~18_combout\)))) # (!\result~31_combout\ & ((\result~39_combout\ & ((!\result~18_combout\))) # (!\result~39_combout\ & (\Add1~14_combout\ & \result~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \result~31_combout\,
	datab => \result~39_combout\,
	datac => \Add1~14_combout\,
	datad => \result~18_combout\,
	combout => \result~32_combout\);

-- Location: LCCOMB_X1_Y44_N2
\carryBorrow~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \carryBorrow~0_combout\ = (!\mode[1]~input_o\ & ((\mode[0]~input_o\ & (!\Add1~16_combout\)) # (!\mode[0]~input_o\ & ((\Add0~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~16_combout\,
	datab => \Add0~16_combout\,
	datac => \mode[0]~input_o\,
	datad => \mode[1]~input_o\,
	combout => \carryBorrow~0_combout\);

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;

ww_result(4) <= \result[4]~output_o\;

ww_result(5) <= \result[5]~output_o\;

ww_result(6) <= \result[6]~output_o\;

ww_result(7) <= \result[7]~output_o\;

ww_carryBorrow <= \carryBorrow~output_o\;
END structure;


