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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/10/2021 00:22:32"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	VGAExample IS
    PORT (
	red_out : OUT std_logic;
	clk : IN std_logic;
	pb1 : IN std_logic;
	pb2 : IN std_logic;
	sw0 : IN std_logic;
	mouse_data : INOUT std_logic;
	mouse_clk : INOUT std_logic;
	green_out : OUT std_logic;
	blue_out : OUT std_logic;
	horiz_sync_out : OUT std_logic;
	vert_sync_out : OUT std_logic;
	seg0 : OUT std_logic_vector(6 DOWNTO 0);
	seg1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END VGAExample;

-- Design Ports Information
-- red_out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb1	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- green_out	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- blue_out	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- horiz_sync_out	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vert_sync_out	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[6]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[5]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[4]	=>  Location: PIN_G12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[3]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg0[0]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[6]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[5]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[4]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[1]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seg1[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_data	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mouse_clk	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pb2	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw0	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF VGAExample IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_red_out : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_pb1 : std_logic;
SIGNAL ww_pb2 : std_logic;
SIGNAL ww_sw0 : std_logic;
SIGNAL ww_green_out : std_logic;
SIGNAL ww_blue_out : std_logic;
SIGNAL ww_horiz_sync_out : std_logic;
SIGNAL ww_vert_sync_out : std_logic;
SIGNAL ww_seg0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_seg1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_INCLK_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|pll1_CLK_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|vert_sync_out~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|output~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst23|Add0~1\ : std_logic;
SIGNAL \inst23|Add0~0_combout\ : std_logic;
SIGNAL \inst23|Add0~3\ : std_logic;
SIGNAL \inst23|Add0~2_combout\ : std_logic;
SIGNAL \inst23|Add0~5\ : std_logic;
SIGNAL \inst23|Add0~4_combout\ : std_logic;
SIGNAL \inst23|Add0~7\ : std_logic;
SIGNAL \inst23|Add0~6_combout\ : std_logic;
SIGNAL \inst23|Add0~9\ : std_logic;
SIGNAL \inst23|Add0~8_combout\ : std_logic;
SIGNAL \inst23|Add0~11\ : std_logic;
SIGNAL \inst23|Add0~10_combout\ : std_logic;
SIGNAL \inst23|Add2~0_combout\ : std_logic;
SIGNAL \inst23|Add2~2_combout\ : std_logic;
SIGNAL \inst23|Add2~8_combout\ : std_logic;
SIGNAL \inst23|Add3~4_combout\ : std_logic;
SIGNAL \inst23|Add0~12_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[6]~22_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[7]~24_combout\ : std_logic;
SIGNAL \inst|Add1~1\ : std_logic;
SIGNAL \inst|Add1~0_combout\ : std_logic;
SIGNAL \inst|Add1~3\ : std_logic;
SIGNAL \inst|Add1~2_combout\ : std_logic;
SIGNAL \inst|Add1~5\ : std_logic;
SIGNAL \inst|Add1~4_combout\ : std_logic;
SIGNAL \inst|Add1~7\ : std_logic;
SIGNAL \inst|Add1~6_combout\ : std_logic;
SIGNAL \inst|Add1~9\ : std_logic;
SIGNAL \inst|Add1~8_combout\ : std_logic;
SIGNAL \inst|Add1~11\ : std_logic;
SIGNAL \inst|Add1~10_combout\ : std_logic;
SIGNAL \inst|Add1~13\ : std_logic;
SIGNAL \inst|Add1~12_combout\ : std_logic;
SIGNAL \inst|Add1~15\ : std_logic;
SIGNAL \inst|Add1~14_combout\ : std_logic;
SIGNAL \inst|Add1~17\ : std_logic;
SIGNAL \inst|Add1~16_combout\ : std_logic;
SIGNAL \inst|Add1~18_combout\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst17|seconds[0]~18\ : std_logic;
SIGNAL \inst17|seconds[0]~17_combout\ : std_logic;
SIGNAL \inst17|seconds[1]~21\ : std_logic;
SIGNAL \inst17|seconds[1]~20_combout\ : std_logic;
SIGNAL \inst17|seconds[2]~23\ : std_logic;
SIGNAL \inst17|seconds[2]~22_combout\ : std_logic;
SIGNAL \inst17|seconds[3]~25\ : std_logic;
SIGNAL \inst17|seconds[3]~24_combout\ : std_logic;
SIGNAL \inst17|seconds[4]~27\ : std_logic;
SIGNAL \inst17|seconds[4]~26_combout\ : std_logic;
SIGNAL \inst17|seconds[5]~29\ : std_logic;
SIGNAL \inst17|seconds[5]~28_combout\ : std_logic;
SIGNAL \inst17|seconds[6]~31\ : std_logic;
SIGNAL \inst17|seconds[6]~30_combout\ : std_logic;
SIGNAL \inst17|seconds[7]~33\ : std_logic;
SIGNAL \inst17|seconds[7]~32_combout\ : std_logic;
SIGNAL \inst17|seconds[8]~35\ : std_logic;
SIGNAL \inst17|seconds[8]~34_combout\ : std_logic;
SIGNAL \inst17|seconds[9]~37\ : std_logic;
SIGNAL \inst17|seconds[9]~36_combout\ : std_logic;
SIGNAL \inst17|seconds[10]~39\ : std_logic;
SIGNAL \inst17|seconds[10]~38_combout\ : std_logic;
SIGNAL \inst17|seconds[11]~41\ : std_logic;
SIGNAL \inst17|seconds[11]~40_combout\ : std_logic;
SIGNAL \inst17|seconds[12]~43\ : std_logic;
SIGNAL \inst17|seconds[12]~42_combout\ : std_logic;
SIGNAL \inst17|seconds[13]~45\ : std_logic;
SIGNAL \inst17|seconds[13]~44_combout\ : std_logic;
SIGNAL \inst17|seconds[14]~47\ : std_logic;
SIGNAL \inst17|seconds[14]~46_combout\ : std_logic;
SIGNAL \inst17|seconds[15]~49\ : std_logic;
SIGNAL \inst17|seconds[15]~48_combout\ : std_logic;
SIGNAL \inst17|seconds[16]~50_combout\ : std_logic;
SIGNAL \inst17|cnt[0]~9\ : std_logic;
SIGNAL \inst17|cnt[0]~8_combout\ : std_logic;
SIGNAL \inst17|cnt[1]~12\ : std_logic;
SIGNAL \inst17|cnt[1]~11_combout\ : std_logic;
SIGNAL \inst17|cnt[2]~14\ : std_logic;
SIGNAL \inst17|cnt[2]~13_combout\ : std_logic;
SIGNAL \inst17|cnt[3]~16\ : std_logic;
SIGNAL \inst17|cnt[3]~15_combout\ : std_logic;
SIGNAL \inst17|cnt[4]~18\ : std_logic;
SIGNAL \inst17|cnt[4]~17_combout\ : std_logic;
SIGNAL \inst17|cnt[5]~20\ : std_logic;
SIGNAL \inst17|cnt[5]~19_combout\ : std_logic;
SIGNAL \inst17|cnt[6]~22\ : std_logic;
SIGNAL \inst17|cnt[6]~21_combout\ : std_logic;
SIGNAL \inst17|cnt[7]~23_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~17_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~21_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~23_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ : std_logic;
SIGNAL \inst12|Mux0~0_combout\ : std_logic;
SIGNAL \inst12|Mux0~1_combout\ : std_logic;
SIGNAL \inst23|ball_on~0_combout\ : std_logic;
SIGNAL \inst23|ball_on~1_combout\ : std_logic;
SIGNAL \inst23|ball_on~2_combout\ : std_logic;
SIGNAL \inst23|ball_on~4_combout\ : std_logic;
SIGNAL \inst17|output~q\ : std_logic;
SIGNAL \inst|LessThan7~0_combout\ : std_logic;
SIGNAL \inst|process_0~0_combout\ : std_logic;
SIGNAL \inst17|Equal0~0_combout\ : std_logic;
SIGNAL \inst17|Equal0~1_combout\ : std_logic;
SIGNAL \inst17|Equal0~2_combout\ : std_logic;
SIGNAL \inst17|Equal0~3_combout\ : std_logic;
SIGNAL \inst17|Equal0~4_combout\ : std_logic;
SIGNAL \inst17|Equal0~5_combout\ : std_logic;
SIGNAL \inst17|Equal1~0_combout\ : std_logic;
SIGNAL \inst17|Equal1~1_combout\ : std_logic;
SIGNAL \inst17|Equal1~2_combout\ : std_logic;
SIGNAL \inst17|output~0_combout\ : std_logic;
SIGNAL \inst|process_0~9_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~0_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~1_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~2_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~3_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~4_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~5_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~6_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~7_combout\ : std_logic;
SIGNAL \inst23|ball_y_motion~8_combout\ : std_logic;
SIGNAL \inst17|seconds[13]~19_combout\ : std_logic;
SIGNAL \inst17|cnt[5]~10_combout\ : std_logic;
SIGNAL \inst1|PACKET_CHAR1[0]~0_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~q\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~1_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[0]~1_combout\ : std_logic;
SIGNAL \inst1|iready_set~q\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_CMD_ACK~q\ : std_logic;
SIGNAL \inst1|mouse_state.INPUT_PACKETS~0_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[0]~33_combout\ : std_logic;
SIGNAL \inst1|iready_set~0_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ : std_logic;
SIGNAL \pb1~input_o\ : std_logic;
SIGNAL \sw0~input_o\ : std_logic;
SIGNAL \inst|vert_sync_out~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|output~clkctrl_outclk\ : std_logic;
SIGNAL \inst17|seconds[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[2]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTIN[8]~feeder_combout\ : std_logic;
SIGNAL \mouse_clk~input_o\ : std_logic;
SIGNAL \inst1|filter[0]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[3]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~1_combout\ : std_logic;
SIGNAL \inst1|filter[4]~feeder_combout\ : std_logic;
SIGNAL \inst1|filter[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~2_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~3_combout\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~q\ : std_logic;
SIGNAL \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|SHIFTOUT[9]~feeder_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~11_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[1]~12\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~13_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[2]~14\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~15_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[3]~16\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[4]~18\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~19_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[5]~20\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[6]~22\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[7]~24\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~25_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[8]~26\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~27_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[9]~28\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~29_combout\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[10]~30\ : std_logic;
SIGNAL \inst1|inhibit_wait_count[11]~31_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND~q\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\ : std_logic;
SIGNAL \inst1|mouse_state.LOAD_COMMAND2~q\ : std_logic;
SIGNAL \inst1|Selector6~1_combout\ : std_logic;
SIGNAL \inst1|send_data~q\ : std_logic;
SIGNAL \inst1|OUTCNT~3_combout\ : std_logic;
SIGNAL \inst1|send_char~0_combout\ : std_logic;
SIGNAL \inst1|send_char~q\ : std_logic;
SIGNAL \inst1|output_ready~0_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~2_combout\ : std_logic;
SIGNAL \inst1|OUTCNT~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~0_combout\ : std_logic;
SIGNAL \inst1|output_ready~q\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[8]~3_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[7]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[6]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[5]~feeder_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[4]~2_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[3]~1_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[2]~0_combout\ : std_logic;
SIGNAL \inst1|SHIFTOUT[1]~feeder_combout\ : std_logic;
SIGNAL \inst1|MOUSE_DATA_BUF~q\ : std_logic;
SIGNAL \inst1|WideOr4~combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_fbout\ : std_logic;
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|pixel_column[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|h_count~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|h_count~2_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|h_count~1_combout\ : std_logic;
SIGNAL \inst|LessThan6~0_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|v_count[2]~0_combout\ : std_logic;
SIGNAL \inst|v_count[6]~4_combout\ : std_logic;
SIGNAL \inst|v_count[8]~6_combout\ : std_logic;
SIGNAL \inst|v_count[7]~5_combout\ : std_logic;
SIGNAL \inst|process_0~10_combout\ : std_logic;
SIGNAL \inst|process_0~6_combout\ : std_logic;
SIGNAL \inst|process_0~7_combout\ : std_logic;
SIGNAL \inst|process_0~8_combout\ : std_logic;
SIGNAL \inst|process_0~11_combout\ : std_logic;
SIGNAL \inst|v_count[5]~1_combout\ : std_logic;
SIGNAL \inst|v_count[9]~2_combout\ : std_logic;
SIGNAL \inst|LessThan7~1_combout\ : std_logic;
SIGNAL \inst|video_on_v~q\ : std_logic;
SIGNAL \inst|video_on_h~q\ : std_logic;
SIGNAL \inst|red_out~0_combout\ : std_logic;
SIGNAL \inst|v_count~10_combout\ : std_logic;
SIGNAL \inst|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \inst|v_count[2]~9_combout\ : std_logic;
SIGNAL \inst|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \inst|v_count[3]~8_combout\ : std_logic;
SIGNAL \inst|v_count[4]~7_combout\ : std_logic;
SIGNAL \inst|v_count[5]~3_combout\ : std_logic;
SIGNAL \inst|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \inst12|Mux0~2_combout\ : std_logic;
SIGNAL \inst12|Mux0~3_combout\ : std_logic;
SIGNAL \inst|red_out~1_combout\ : std_logic;
SIGNAL \inst|red_out~q\ : std_logic;
SIGNAL \pb2~input_o\ : std_logic;
SIGNAL \inst|green_out~4_combout\ : std_logic;
SIGNAL \inst23|Add2~1\ : std_logic;
SIGNAL \inst23|Add2~3\ : std_logic;
SIGNAL \inst23|Add2~5\ : std_logic;
SIGNAL \inst23|Add2~7\ : std_logic;
SIGNAL \inst23|Add2~9\ : std_logic;
SIGNAL \inst23|Add2~10_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[0]~10_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[0]~11\ : std_logic;
SIGNAL \inst23|ball_y_pos[1]~12_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[1]~13\ : std_logic;
SIGNAL \inst23|ball_y_pos[2]~14_combout\ : std_logic;
SIGNAL \inst23|LessThan4~0_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[2]~15\ : std_logic;
SIGNAL \inst23|ball_y_pos[3]~17\ : std_logic;
SIGNAL \inst23|ball_y_pos[4]~19\ : std_logic;
SIGNAL \inst23|ball_y_pos[5]~21\ : std_logic;
SIGNAL \inst23|ball_y_pos[6]~23\ : std_logic;
SIGNAL \inst23|ball_y_pos[7]~25\ : std_logic;
SIGNAL \inst23|ball_y_pos[8]~26_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[4]~18_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[5]~20_combout\ : std_logic;
SIGNAL \inst23|LessThan4~1_combout\ : std_logic;
SIGNAL \mouse_data~input_o\ : std_logic;
SIGNAL \inst1|INCNT~0_combout\ : std_logic;
SIGNAL \inst1|INCNT[3]~1_combout\ : std_logic;
SIGNAL \inst1|INCNT~3_combout\ : std_logic;
SIGNAL \inst1|INCNT~4_combout\ : std_logic;
SIGNAL \inst1|INCNT~2_combout\ : std_logic;
SIGNAL \inst1|LessThan1~0_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~0_combout\ : std_logic;
SIGNAL \inst1|READ_CHAR~q\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~4_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[0]~3_combout\ : std_logic;
SIGNAL \inst1|left_button~1_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT[1]~2_combout\ : std_logic;
SIGNAL \inst1|left_button~0_combout\ : std_logic;
SIGNAL \inst1|left_button~q\ : std_logic;
SIGNAL \inst23|Move_Ball~0_combout\ : std_logic;
SIGNAL \inst23|Move_Ball~1_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[8]~27\ : std_logic;
SIGNAL \inst23|ball_y_pos[9]~28_combout\ : std_logic;
SIGNAL \inst23|Add2~6_combout\ : std_logic;
SIGNAL \inst23|Add2~4_combout\ : std_logic;
SIGNAL \inst23|ball_y_pos[3]~16_combout\ : std_logic;
SIGNAL \inst23|LessThan2~1_cout\ : std_logic;
SIGNAL \inst23|LessThan2~3_cout\ : std_logic;
SIGNAL \inst23|LessThan2~5_cout\ : std_logic;
SIGNAL \inst23|LessThan2~7_cout\ : std_logic;
SIGNAL \inst23|LessThan2~9_cout\ : std_logic;
SIGNAL \inst23|LessThan2~11_cout\ : std_logic;
SIGNAL \inst23|LessThan2~13_cout\ : std_logic;
SIGNAL \inst23|LessThan2~15_cout\ : std_logic;
SIGNAL \inst23|LessThan2~17_cout\ : std_logic;
SIGNAL \inst23|LessThan2~18_combout\ : std_logic;
SIGNAL \inst23|ball_on~3_combout\ : std_logic;
SIGNAL \inst23|ball_on~5_combout\ : std_logic;
SIGNAL \inst23|Add3~1\ : std_logic;
SIGNAL \inst23|Add3~3\ : std_logic;
SIGNAL \inst23|Add3~5\ : std_logic;
SIGNAL \inst23|Add3~7\ : std_logic;
SIGNAL \inst23|Add3~9\ : std_logic;
SIGNAL \inst23|Add3~10_combout\ : std_logic;
SIGNAL \inst23|ball_on~6_combout\ : std_logic;
SIGNAL \inst23|Add3~8_combout\ : std_logic;
SIGNAL \inst23|Add3~6_combout\ : std_logic;
SIGNAL \inst23|Add3~2_combout\ : std_logic;
SIGNAL \inst23|Add3~0_combout\ : std_logic;
SIGNAL \inst|v_count~11_combout\ : std_logic;
SIGNAL \inst23|LessThan3~1_cout\ : std_logic;
SIGNAL \inst23|LessThan3~3_cout\ : std_logic;
SIGNAL \inst23|LessThan3~5_cout\ : std_logic;
SIGNAL \inst23|LessThan3~7_cout\ : std_logic;
SIGNAL \inst23|LessThan3~9_cout\ : std_logic;
SIGNAL \inst23|LessThan3~11_cout\ : std_logic;
SIGNAL \inst23|LessThan3~13_cout\ : std_logic;
SIGNAL \inst23|LessThan3~15_cout\ : std_logic;
SIGNAL \inst23|LessThan3~16_combout\ : std_logic;
SIGNAL \inst23|ball_on~7_combout\ : std_logic;
SIGNAL \inst|green_out~2_combout\ : std_logic;
SIGNAL \inst|green_out~q\ : std_logic;
SIGNAL \inst|green_out~3_combout\ : std_logic;
SIGNAL \inst|blue_out~q\ : std_logic;
SIGNAL \inst|process_0~1_combout\ : std_logic;
SIGNAL \inst|process_0~2_combout\ : std_logic;
SIGNAL \inst|process_0~3_combout\ : std_logic;
SIGNAL \inst|horiz_sync~q\ : std_logic;
SIGNAL \inst|horiz_sync_out~q\ : std_logic;
SIGNAL \inst|process_0~4_combout\ : std_logic;
SIGNAL \inst|process_0~5_combout\ : std_logic;
SIGNAL \inst|vert_sync~q\ : std_logic;
SIGNAL \inst|vert_sync_out~feeder_combout\ : std_logic;
SIGNAL \inst|vert_sync_out~q\ : std_logic;
SIGNAL \inst20|Q[0]~7_combout\ : std_logic;
SIGNAL \inst20|Q[2]~12\ : std_logic;
SIGNAL \inst20|Q[3]~13_combout\ : std_logic;
SIGNAL \inst20|Q[3]~14\ : std_logic;
SIGNAL \inst20|Q[4]~16\ : std_logic;
SIGNAL \inst20|Q[5]~17_combout\ : std_logic;
SIGNAL \inst20|Q[5]~18\ : std_logic;
SIGNAL \inst20|Q[6]~19_combout\ : std_logic;
SIGNAL \inst20|LessThan0~0_combout\ : std_logic;
SIGNAL \inst20|LessThan0~1_combout\ : std_logic;
SIGNAL \inst20|Q[0]~8\ : std_logic;
SIGNAL \inst20|Q[1]~9_combout\ : std_logic;
SIGNAL \inst20|Q[1]~10\ : std_logic;
SIGNAL \inst20|Q[2]~11_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ : std_logic;
SIGNAL \inst20|Q[4]~15_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ : std_logic;
SIGNAL \inst6|Mux0~0_combout\ : std_logic;
SIGNAL \inst6|Mux1~0_combout\ : std_logic;
SIGNAL \inst6|Mux2~0_combout\ : std_logic;
SIGNAL \inst6|Mux3~0_combout\ : std_logic;
SIGNAL \inst6|Mux4~0_combout\ : std_logic;
SIGNAL \inst6|Mux5~0_combout\ : std_logic;
SIGNAL \inst6|Mux6~0_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ : std_logic;
SIGNAL \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux1~0_combout\ : std_logic;
SIGNAL \inst7|Mux2~0_combout\ : std_logic;
SIGNAL \inst7|Mux3~0_combout\ : std_logic;
SIGNAL \inst7|Mux4~0_combout\ : std_logic;
SIGNAL \inst7|Mux5~0_combout\ : std_logic;
SIGNAL \inst7|Mux6~0_combout\ : std_logic;
SIGNAL \inst1|PACKET_COUNT\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst1|OUTCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst12|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst23|ball_y_pos\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst23|ball_y_motion\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst20|Q\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst17|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|filter\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|INCNT\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|inhibit_wait_count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst1|PACKET_CHAR1\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst17|seconds\ : std_logic_vector(16 DOWNTO 0);
SIGNAL \inst3|altpll_component|auto_generated|wire_pll1_clk\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|SHIFTOUT\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|SHIFTIN\ : std_logic_vector(8 DOWNTO 0);
SIGNAL \inst|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \inst6|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ : std_logic;
SIGNAL \inst1|ALT_INV_send_data~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ : std_logic;
SIGNAL \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ : std_logic;
SIGNAL \inst7|ALT_INV_Mux0~0_combout\ : std_logic;

BEGIN

red_out <= ww_red_out;
ww_clk <= clk;
ww_pb1 <= pb1;
ww_pb2 <= pb2;
ww_sw0 <= sw0;
green_out <= ww_green_out;
blue_out <= ww_blue_out;
horiz_sync_out <= ww_horiz_sync_out;
vert_sync_out <= ww_vert_sync_out;
seg0 <= ww_seg0;
seg1 <= ww_seg1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|pixel_row\(8) & \inst|pixel_row\(7) & \inst|pixel_row\(6) & \inst|pixel_row\(5) & \inst|pixel_row\(4) & \inst|pixel_row\(3) & \inst|pixel_row\(2) & 
\inst|pixel_row\(1));

\inst12|altsyncram_component|auto_generated|q_a\(0) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst12|altsyncram_component|auto_generated|q_a\(1) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst12|altsyncram_component|auto_generated|q_a\(2) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst12|altsyncram_component|auto_generated|q_a\(3) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst12|altsyncram_component|auto_generated|q_a\(4) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst12|altsyncram_component|auto_generated|q_a\(5) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst12|altsyncram_component|auto_generated|q_a\(6) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst12|altsyncram_component|auto_generated|q_a\(7) <= \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst3|altpll_component|auto_generated|pll1_INCLK_bus\ <= (gnd & \clk~input_o\);

\inst3|altpll_component|auto_generated|wire_pll1_clk\(0) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(0);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(1) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(1);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(2) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(2);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(3) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(3);
\inst3|altpll_component|auto_generated|wire_pll1_clk\(4) <= \inst3|altpll_component|auto_generated|pll1_CLK_bus\(4);

\inst|vert_sync_out~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|vert_sync_out~q\);

\inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst1|MOUSE_CLK_FILTER~q\);

\inst17|output~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|output~q\);

\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst3|altpll_component|auto_generated|wire_pll1_clk\(0));
\inst6|ALT_INV_Mux0~0_combout\ <= NOT \inst6|Mux0~0_combout\;
\inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\ <= NOT \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\;
\inst1|ALT_INV_send_data~q\ <= NOT \inst1|send_data~q\;
\inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\ <= NOT \inst1|mouse_state.INHIBIT_TRANS~q\;
\inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\ <= NOT \inst1|mouse_state.WAIT_OUTPUT_READY~q\;
\inst7|ALT_INV_Mux0~0_combout\ <= NOT \inst7|Mux0~0_combout\;

-- Location: LCCOMB_X27_Y27_N8
\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst20|Q\(4) $ (VCC)
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst20|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(4),
	datad => VCC,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X27_Y27_N10
\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst20|Q\(5) & (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst20|Q\(5) & 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst20|Q\(5) & !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(5),
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X28_Y27_N2
\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X28_Y28_N6
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\,
	datad => VCC,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X28_Y28_N10
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\)))))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: LCCOMB_X28_Y28_N12
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\);

-- Location: LCCOMB_X28_Y28_N14
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\))))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # (GND))))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\ = CARRY((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # ((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\) # 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\);

-- Location: LCCOMB_X27_Y28_N12
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\);

-- Location: LCCOMB_X24_Y27_N24
\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ = (\inst20|Q\(5) & (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ & VCC)) # (!\inst20|Q\(5) & 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ = CARRY((!\inst20|Q\(5) & !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(5),
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\);

-- Location: LCCOMB_X24_Y27_N26
\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst20|Q\(6) & (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst20|Q\(6) & 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst20|Q\(6) & !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(6),
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X24_Y27_N14
\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\)))))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X24_Y28_N16
\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ = (((\inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\)))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ = CARRY((\inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\) # (\inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\,
	datad => VCC,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\);

-- Location: LCCOMB_X24_Y28_N18
\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & 
-- (!\inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\)))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X24_Y28_N20
\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & (((\inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((((\inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\)))))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ & ((\inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\);

-- Location: M9K_X25_Y6_N0
\inst12|altsyncram_component|auto_generated|ram_block1a0\ : cycloneiii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"000000010000C0007F001FC0030000400000000600018000600018001F8003C00060000000000003C00030000C00030000C00030003C000000018000F0007E00",
	mem_init1 => X"060001800060001800000003C000C00030000C00030000C0003C00000007E00180003000060000C00018007E000000018000600018000F0006600198006600000006600198003C00060003C001980066000000063001DC007F001AC00630018C0063000000018000F0006600198006600198006600000003C00198006600198006600198006600000001800060001800060001800060007E00000003C001980006000F0006000198003C000000066001B00078001F0006600198007C00000000E000F0006600198006600198003C000000060001800060001F0006600198007C00000003C00198006600198006600198003C00000006600198006E001F8007E0",
	mem_init0 => X"01D800660000000630018C0063001AC007F001DC006300000007E001800060001800060001800060000000066001B00078001C00078001B00066000000038001B0000C00030000C00030001E00000003C00060001800060001800060003C000000066001980066001F8006600198006600000003C001980066001B8006000198003C000000060001800060001E0006000180007E00000007E001800060001E0006000180007E000000078001B00066001980066001B0007800000003C00198006000180006000198003C00000007C001980066001F0006600198007C000000066001980066001F80066000F0001800000003C001880060001B8006E00198003C",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "tcgrom.mif",
	init_file_layout => "port_a",
	logical_ram_name => "char_rom:inst12|altsyncram:altsyncram_component|altsyncram_kt91:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 512,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	portaaddr => \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst12|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X24_Y6_N14
\inst23|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~0_combout\ = (\inst|pixel_column\(4) & (\inst|pixel_column\(3) $ (VCC))) # (!\inst|pixel_column\(4) & (\inst|pixel_column\(3) & VCC))
-- \inst23|Add0~1\ = CARRY((\inst|pixel_column\(4) & \inst|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(4),
	datab => \inst|pixel_column\(3),
	datad => VCC,
	combout => \inst23|Add0~0_combout\,
	cout => \inst23|Add0~1\);

-- Location: LCCOMB_X24_Y6_N16
\inst23|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~2_combout\ = (\inst|pixel_column\(5) & (!\inst23|Add0~1\)) # (!\inst|pixel_column\(5) & ((\inst23|Add0~1\) # (GND)))
-- \inst23|Add0~3\ = CARRY((!\inst23|Add0~1\) # (!\inst|pixel_column\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(5),
	datad => VCC,
	cin => \inst23|Add0~1\,
	combout => \inst23|Add0~2_combout\,
	cout => \inst23|Add0~3\);

-- Location: LCCOMB_X24_Y6_N18
\inst23|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~4_combout\ = (\inst|pixel_column\(6) & (\inst23|Add0~3\ $ (GND))) # (!\inst|pixel_column\(6) & (!\inst23|Add0~3\ & VCC))
-- \inst23|Add0~5\ = CARRY((\inst|pixel_column\(6) & !\inst23|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_column\(6),
	datad => VCC,
	cin => \inst23|Add0~3\,
	combout => \inst23|Add0~4_combout\,
	cout => \inst23|Add0~5\);

-- Location: LCCOMB_X24_Y6_N20
\inst23|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~6_combout\ = (\inst|pixel_column\(7) & (!\inst23|Add0~5\)) # (!\inst|pixel_column\(7) & ((\inst23|Add0~5\) # (GND)))
-- \inst23|Add0~7\ = CARRY((!\inst23|Add0~5\) # (!\inst|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(7),
	datad => VCC,
	cin => \inst23|Add0~5\,
	combout => \inst23|Add0~6_combout\,
	cout => \inst23|Add0~7\);

-- Location: LCCOMB_X24_Y6_N22
\inst23|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~8_combout\ = (\inst|pixel_column\(8) & (\inst23|Add0~7\ $ (GND))) # (!\inst|pixel_column\(8) & (!\inst23|Add0~7\ & VCC))
-- \inst23|Add0~9\ = CARRY((\inst|pixel_column\(8) & !\inst23|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datad => VCC,
	cin => \inst23|Add0~7\,
	combout => \inst23|Add0~8_combout\,
	cout => \inst23|Add0~9\);

-- Location: LCCOMB_X24_Y6_N24
\inst23|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~10_combout\ = (\inst|pixel_column\(9) & (!\inst23|Add0~9\)) # (!\inst|pixel_column\(9) & ((\inst23|Add0~9\) # (GND)))
-- \inst23|Add0~11\ = CARRY((!\inst23|Add0~9\) # (!\inst|pixel_column\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(9),
	datad => VCC,
	cin => \inst23|Add0~9\,
	combout => \inst23|Add0~10_combout\,
	cout => \inst23|Add0~11\);

-- Location: LCCOMB_X21_Y6_N12
\inst23|Add2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~0_combout\ = (\inst|pixel_row\(4) & (\inst|pixel_row\(3) $ (VCC))) # (!\inst|pixel_row\(4) & (\inst|pixel_row\(3) & VCC))
-- \inst23|Add2~1\ = CARRY((\inst|pixel_row\(4) & \inst|pixel_row\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst|pixel_row\(3),
	datad => VCC,
	combout => \inst23|Add2~0_combout\,
	cout => \inst23|Add2~1\);

-- Location: LCCOMB_X21_Y6_N14
\inst23|Add2~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~2_combout\ = (\inst|pixel_row\(5) & (!\inst23|Add2~1\)) # (!\inst|pixel_row\(5) & ((\inst23|Add2~1\) # (GND)))
-- \inst23|Add2~3\ = CARRY((!\inst23|Add2~1\) # (!\inst|pixel_row\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(5),
	datad => VCC,
	cin => \inst23|Add2~1\,
	combout => \inst23|Add2~2_combout\,
	cout => \inst23|Add2~3\);

-- Location: LCCOMB_X21_Y6_N20
\inst23|Add2~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~8_combout\ = (\inst|pixel_row\(8) & (\inst23|Add2~7\ $ (GND))) # (!\inst|pixel_row\(8) & (!\inst23|Add2~7\ & VCC))
-- \inst23|Add2~9\ = CARRY((\inst|pixel_row\(8) & !\inst23|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(8),
	datad => VCC,
	cin => \inst23|Add2~7\,
	combout => \inst23|Add2~8_combout\,
	cout => \inst23|Add2~9\);

-- Location: FF_X22_Y6_N15
\inst23|ball_y_pos[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[7]~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(7));

-- Location: FF_X22_Y6_N13
\inst23|ball_y_pos[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[6]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(6));

-- Location: LCCOMB_X23_Y6_N6
\inst23|Add3~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~4_combout\ = (\inst23|ball_y_pos\(6) & (\inst23|Add3~3\ $ (GND))) # (!\inst23|ball_y_pos\(6) & (!\inst23|Add3~3\ & VCC))
-- \inst23|Add3~5\ = CARRY((\inst23|ball_y_pos\(6) & !\inst23|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(6),
	datad => VCC,
	cin => \inst23|Add3~3\,
	combout => \inst23|Add3~4_combout\,
	cout => \inst23|Add3~5\);

-- Location: LCCOMB_X24_Y6_N26
\inst23|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add0~12_combout\ = !\inst23|Add0~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|Add0~11\,
	combout => \inst23|Add0~12_combout\);

-- Location: LCCOMB_X22_Y6_N12
\inst23|ball_y_pos[6]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[6]~22_combout\ = ((\inst23|ball_y_pos\(6) $ (\inst23|ball_y_motion\(3) $ (!\inst23|ball_y_pos[5]~21\)))) # (GND)
-- \inst23|ball_y_pos[6]~23\ = CARRY((\inst23|ball_y_pos\(6) & ((\inst23|ball_y_motion\(3)) # (!\inst23|ball_y_pos[5]~21\))) # (!\inst23|ball_y_pos\(6) & (\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[5]~21\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(6),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[5]~21\,
	combout => \inst23|ball_y_pos[6]~22_combout\,
	cout => \inst23|ball_y_pos[6]~23\);

-- Location: LCCOMB_X22_Y6_N14
\inst23|ball_y_pos[7]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[7]~24_combout\ = (\inst23|ball_y_pos\(7) & ((\inst23|ball_y_motion\(3) & (\inst23|ball_y_pos[6]~23\ & VCC)) # (!\inst23|ball_y_motion\(3) & (!\inst23|ball_y_pos[6]~23\)))) # (!\inst23|ball_y_pos\(7) & ((\inst23|ball_y_motion\(3) & 
-- (!\inst23|ball_y_pos[6]~23\)) # (!\inst23|ball_y_motion\(3) & ((\inst23|ball_y_pos[6]~23\) # (GND)))))
-- \inst23|ball_y_pos[7]~25\ = CARRY((\inst23|ball_y_pos\(7) & (!\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[6]~23\)) # (!\inst23|ball_y_pos\(7) & ((!\inst23|ball_y_pos[6]~23\) # (!\inst23|ball_y_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(7),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[6]~23\,
	combout => \inst23|ball_y_pos[7]~24_combout\,
	cout => \inst23|ball_y_pos[7]~25\);

-- Location: FF_X23_Y9_N5
\inst17|seconds[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst17|seconds[0]~17_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(0));

-- Location: FF_X23_Y9_N23
\inst17|seconds[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst17|seconds[1]~20_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(1));

-- Location: FF_X22_Y10_N21
\inst17|seconds[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[2]~22_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(2));

-- Location: FF_X23_Y9_N1
\inst17|seconds[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst17|seconds[3]~24_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(3));

-- Location: FF_X21_Y10_N17
\inst17|seconds[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst17|seconds[4]~26_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(4));

-- Location: FF_X23_Y9_N11
\inst17|seconds[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst17|seconds[5]~28_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(5));

-- Location: FF_X22_Y10_N31
\inst17|seconds[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[7]~32_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(7));

-- Location: FF_X22_Y9_N23
\inst17|seconds[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[6]~feeder_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(6));

-- Location: FF_X22_Y9_N1
\inst17|seconds[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[8]~34_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(8));

-- Location: FF_X22_Y9_N3
\inst17|seconds[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[9]~36_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(9));

-- Location: FF_X22_Y9_N5
\inst17|seconds[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[10]~38_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(10));

-- Location: FF_X22_Y9_N7
\inst17|seconds[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[11]~40_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(11));

-- Location: FF_X22_Y9_N9
\inst17|seconds[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[12]~42_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(12));

-- Location: FF_X22_Y9_N11
\inst17|seconds[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[13]~44_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(13));

-- Location: FF_X22_Y9_N13
\inst17|seconds[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[14]~46_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(14));

-- Location: FF_X22_Y9_N15
\inst17|seconds[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[15]~48_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(15));

-- Location: FF_X22_Y9_N17
\inst17|seconds[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|seconds[16]~50_combout\,
	sclr => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|seconds\(16));

-- Location: FF_X21_Y9_N1
\inst17|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[0]~8_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(0));

-- Location: FF_X21_Y9_N5
\inst17|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[2]~13_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(2));

-- Location: FF_X21_Y9_N3
\inst17|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[1]~11_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(1));

-- Location: FF_X21_Y9_N7
\inst17|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[3]~15_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(3));

-- Location: FF_X21_Y9_N9
\inst17|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[4]~17_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(4));

-- Location: FF_X21_Y9_N11
\inst17|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[5]~19_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(5));

-- Location: FF_X21_Y9_N13
\inst17|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[6]~21_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(6));

-- Location: FF_X21_Y9_N15
\inst17|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|cnt[7]~23_combout\,
	sclr => \inst17|cnt[5]~10_combout\,
	ena => \inst17|seconds[13]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(7));

-- Location: LCCOMB_X20_Y7_N12
\inst|Add1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~0_combout\ = \inst|v_count\(0) $ (VCC)
-- \inst|Add1~1\ = CARRY(\inst|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(0),
	datad => VCC,
	combout => \inst|Add1~0_combout\,
	cout => \inst|Add1~1\);

-- Location: LCCOMB_X20_Y7_N14
\inst|Add1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~2_combout\ = (\inst|v_count\(1) & (!\inst|Add1~1\)) # (!\inst|v_count\(1) & ((\inst|Add1~1\) # (GND)))
-- \inst|Add1~3\ = CARRY((!\inst|Add1~1\) # (!\inst|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(1),
	datad => VCC,
	cin => \inst|Add1~1\,
	combout => \inst|Add1~2_combout\,
	cout => \inst|Add1~3\);

-- Location: LCCOMB_X20_Y7_N16
\inst|Add1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~4_combout\ = (\inst|v_count\(2) & (\inst|Add1~3\ $ (GND))) # (!\inst|v_count\(2) & (!\inst|Add1~3\ & VCC))
-- \inst|Add1~5\ = CARRY((\inst|v_count\(2) & !\inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(2),
	datad => VCC,
	cin => \inst|Add1~3\,
	combout => \inst|Add1~4_combout\,
	cout => \inst|Add1~5\);

-- Location: LCCOMB_X20_Y7_N18
\inst|Add1~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~6_combout\ = (\inst|v_count\(3) & (!\inst|Add1~5\)) # (!\inst|v_count\(3) & ((\inst|Add1~5\) # (GND)))
-- \inst|Add1~7\ = CARRY((!\inst|Add1~5\) # (!\inst|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(3),
	datad => VCC,
	cin => \inst|Add1~5\,
	combout => \inst|Add1~6_combout\,
	cout => \inst|Add1~7\);

-- Location: LCCOMB_X20_Y7_N20
\inst|Add1~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~8_combout\ = (\inst|v_count\(4) & (\inst|Add1~7\ $ (GND))) # (!\inst|v_count\(4) & (!\inst|Add1~7\ & VCC))
-- \inst|Add1~9\ = CARRY((\inst|v_count\(4) & !\inst|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(4),
	datad => VCC,
	cin => \inst|Add1~7\,
	combout => \inst|Add1~8_combout\,
	cout => \inst|Add1~9\);

-- Location: LCCOMB_X20_Y7_N22
\inst|Add1~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~10_combout\ = (\inst|v_count\(5) & (!\inst|Add1~9\)) # (!\inst|v_count\(5) & ((\inst|Add1~9\) # (GND)))
-- \inst|Add1~11\ = CARRY((!\inst|Add1~9\) # (!\inst|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datad => VCC,
	cin => \inst|Add1~9\,
	combout => \inst|Add1~10_combout\,
	cout => \inst|Add1~11\);

-- Location: LCCOMB_X20_Y7_N24
\inst|Add1~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~12_combout\ = (\inst|v_count\(6) & (\inst|Add1~11\ $ (GND))) # (!\inst|v_count\(6) & (!\inst|Add1~11\ & VCC))
-- \inst|Add1~13\ = CARRY((\inst|v_count\(6) & !\inst|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(6),
	datad => VCC,
	cin => \inst|Add1~11\,
	combout => \inst|Add1~12_combout\,
	cout => \inst|Add1~13\);

-- Location: LCCOMB_X20_Y7_N26
\inst|Add1~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~14_combout\ = (\inst|v_count\(7) & (!\inst|Add1~13\)) # (!\inst|v_count\(7) & ((\inst|Add1~13\) # (GND)))
-- \inst|Add1~15\ = CARRY((!\inst|Add1~13\) # (!\inst|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(7),
	datad => VCC,
	cin => \inst|Add1~13\,
	combout => \inst|Add1~14_combout\,
	cout => \inst|Add1~15\);

-- Location: LCCOMB_X20_Y7_N28
\inst|Add1~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~16_combout\ = (\inst|v_count\(8) & (\inst|Add1~15\ $ (GND))) # (!\inst|v_count\(8) & (!\inst|Add1~15\ & VCC))
-- \inst|Add1~17\ = CARRY((\inst|v_count\(8) & !\inst|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(8),
	datad => VCC,
	cin => \inst|Add1~15\,
	combout => \inst|Add1~16_combout\,
	cout => \inst|Add1~17\);

-- Location: LCCOMB_X20_Y7_N30
\inst|Add1~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add1~18_combout\ = \inst|v_count\(9) $ (\inst|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|v_count\(9),
	cin => \inst|Add1~17\,
	combout => \inst|Add1~18_combout\);

-- Location: LCCOMB_X23_Y7_N20
\inst|Add0~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|h_count\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|h_count\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|h_count\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: LCCOMB_X22_Y10_N16
\inst17|seconds[0]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[0]~17_combout\ = \inst17|seconds\(0) $ (VCC)
-- \inst17|seconds[0]~18\ = CARRY(\inst17|seconds\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(0),
	datad => VCC,
	combout => \inst17|seconds[0]~17_combout\,
	cout => \inst17|seconds[0]~18\);

-- Location: LCCOMB_X22_Y10_N18
\inst17|seconds[1]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[1]~20_combout\ = (\inst17|seconds\(1) & (!\inst17|seconds[0]~18\)) # (!\inst17|seconds\(1) & ((\inst17|seconds[0]~18\) # (GND)))
-- \inst17|seconds[1]~21\ = CARRY((!\inst17|seconds[0]~18\) # (!\inst17|seconds\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(1),
	datad => VCC,
	cin => \inst17|seconds[0]~18\,
	combout => \inst17|seconds[1]~20_combout\,
	cout => \inst17|seconds[1]~21\);

-- Location: LCCOMB_X22_Y10_N20
\inst17|seconds[2]~22\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[2]~22_combout\ = (\inst17|seconds\(2) & (\inst17|seconds[1]~21\ $ (GND))) # (!\inst17|seconds\(2) & (!\inst17|seconds[1]~21\ & VCC))
-- \inst17|seconds[2]~23\ = CARRY((\inst17|seconds\(2) & !\inst17|seconds[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(2),
	datad => VCC,
	cin => \inst17|seconds[1]~21\,
	combout => \inst17|seconds[2]~22_combout\,
	cout => \inst17|seconds[2]~23\);

-- Location: LCCOMB_X22_Y10_N22
\inst17|seconds[3]~24\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[3]~24_combout\ = (\inst17|seconds\(3) & (!\inst17|seconds[2]~23\)) # (!\inst17|seconds\(3) & ((\inst17|seconds[2]~23\) # (GND)))
-- \inst17|seconds[3]~25\ = CARRY((!\inst17|seconds[2]~23\) # (!\inst17|seconds\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(3),
	datad => VCC,
	cin => \inst17|seconds[2]~23\,
	combout => \inst17|seconds[3]~24_combout\,
	cout => \inst17|seconds[3]~25\);

-- Location: LCCOMB_X22_Y10_N24
\inst17|seconds[4]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[4]~26_combout\ = (\inst17|seconds\(4) & (\inst17|seconds[3]~25\ $ (GND))) # (!\inst17|seconds\(4) & (!\inst17|seconds[3]~25\ & VCC))
-- \inst17|seconds[4]~27\ = CARRY((\inst17|seconds\(4) & !\inst17|seconds[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(4),
	datad => VCC,
	cin => \inst17|seconds[3]~25\,
	combout => \inst17|seconds[4]~26_combout\,
	cout => \inst17|seconds[4]~27\);

-- Location: LCCOMB_X22_Y10_N26
\inst17|seconds[5]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[5]~28_combout\ = (\inst17|seconds\(5) & (!\inst17|seconds[4]~27\)) # (!\inst17|seconds\(5) & ((\inst17|seconds[4]~27\) # (GND)))
-- \inst17|seconds[5]~29\ = CARRY((!\inst17|seconds[4]~27\) # (!\inst17|seconds\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(5),
	datad => VCC,
	cin => \inst17|seconds[4]~27\,
	combout => \inst17|seconds[5]~28_combout\,
	cout => \inst17|seconds[5]~29\);

-- Location: LCCOMB_X22_Y10_N28
\inst17|seconds[6]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[6]~30_combout\ = (\inst17|seconds\(6) & (\inst17|seconds[5]~29\ $ (GND))) # (!\inst17|seconds\(6) & (!\inst17|seconds[5]~29\ & VCC))
-- \inst17|seconds[6]~31\ = CARRY((\inst17|seconds\(6) & !\inst17|seconds[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(6),
	datad => VCC,
	cin => \inst17|seconds[5]~29\,
	combout => \inst17|seconds[6]~30_combout\,
	cout => \inst17|seconds[6]~31\);

-- Location: LCCOMB_X22_Y10_N30
\inst17|seconds[7]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[7]~32_combout\ = (\inst17|seconds\(7) & (!\inst17|seconds[6]~31\)) # (!\inst17|seconds\(7) & ((\inst17|seconds[6]~31\) # (GND)))
-- \inst17|seconds[7]~33\ = CARRY((!\inst17|seconds[6]~31\) # (!\inst17|seconds\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(7),
	datad => VCC,
	cin => \inst17|seconds[6]~31\,
	combout => \inst17|seconds[7]~32_combout\,
	cout => \inst17|seconds[7]~33\);

-- Location: LCCOMB_X22_Y9_N0
\inst17|seconds[8]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[8]~34_combout\ = (\inst17|seconds\(8) & (\inst17|seconds[7]~33\ $ (GND))) # (!\inst17|seconds\(8) & (!\inst17|seconds[7]~33\ & VCC))
-- \inst17|seconds[8]~35\ = CARRY((\inst17|seconds\(8) & !\inst17|seconds[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(8),
	datad => VCC,
	cin => \inst17|seconds[7]~33\,
	combout => \inst17|seconds[8]~34_combout\,
	cout => \inst17|seconds[8]~35\);

-- Location: LCCOMB_X22_Y9_N2
\inst17|seconds[9]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[9]~36_combout\ = (\inst17|seconds\(9) & (!\inst17|seconds[8]~35\)) # (!\inst17|seconds\(9) & ((\inst17|seconds[8]~35\) # (GND)))
-- \inst17|seconds[9]~37\ = CARRY((!\inst17|seconds[8]~35\) # (!\inst17|seconds\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(9),
	datad => VCC,
	cin => \inst17|seconds[8]~35\,
	combout => \inst17|seconds[9]~36_combout\,
	cout => \inst17|seconds[9]~37\);

-- Location: LCCOMB_X22_Y9_N4
\inst17|seconds[10]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[10]~38_combout\ = (\inst17|seconds\(10) & (\inst17|seconds[9]~37\ $ (GND))) # (!\inst17|seconds\(10) & (!\inst17|seconds[9]~37\ & VCC))
-- \inst17|seconds[10]~39\ = CARRY((\inst17|seconds\(10) & !\inst17|seconds[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(10),
	datad => VCC,
	cin => \inst17|seconds[9]~37\,
	combout => \inst17|seconds[10]~38_combout\,
	cout => \inst17|seconds[10]~39\);

-- Location: LCCOMB_X22_Y9_N6
\inst17|seconds[11]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[11]~40_combout\ = (\inst17|seconds\(11) & (!\inst17|seconds[10]~39\)) # (!\inst17|seconds\(11) & ((\inst17|seconds[10]~39\) # (GND)))
-- \inst17|seconds[11]~41\ = CARRY((!\inst17|seconds[10]~39\) # (!\inst17|seconds\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(11),
	datad => VCC,
	cin => \inst17|seconds[10]~39\,
	combout => \inst17|seconds[11]~40_combout\,
	cout => \inst17|seconds[11]~41\);

-- Location: LCCOMB_X22_Y9_N8
\inst17|seconds[12]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[12]~42_combout\ = (\inst17|seconds\(12) & (\inst17|seconds[11]~41\ $ (GND))) # (!\inst17|seconds\(12) & (!\inst17|seconds[11]~41\ & VCC))
-- \inst17|seconds[12]~43\ = CARRY((\inst17|seconds\(12) & !\inst17|seconds[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(12),
	datad => VCC,
	cin => \inst17|seconds[11]~41\,
	combout => \inst17|seconds[12]~42_combout\,
	cout => \inst17|seconds[12]~43\);

-- Location: LCCOMB_X22_Y9_N10
\inst17|seconds[13]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[13]~44_combout\ = (\inst17|seconds\(13) & (!\inst17|seconds[12]~43\)) # (!\inst17|seconds\(13) & ((\inst17|seconds[12]~43\) # (GND)))
-- \inst17|seconds[13]~45\ = CARRY((!\inst17|seconds[12]~43\) # (!\inst17|seconds\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(13),
	datad => VCC,
	cin => \inst17|seconds[12]~43\,
	combout => \inst17|seconds[13]~44_combout\,
	cout => \inst17|seconds[13]~45\);

-- Location: LCCOMB_X22_Y9_N12
\inst17|seconds[14]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[14]~46_combout\ = (\inst17|seconds\(14) & (\inst17|seconds[13]~45\ $ (GND))) # (!\inst17|seconds\(14) & (!\inst17|seconds[13]~45\ & VCC))
-- \inst17|seconds[14]~47\ = CARRY((\inst17|seconds\(14) & !\inst17|seconds[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(14),
	datad => VCC,
	cin => \inst17|seconds[13]~45\,
	combout => \inst17|seconds[14]~46_combout\,
	cout => \inst17|seconds[14]~47\);

-- Location: LCCOMB_X22_Y9_N14
\inst17|seconds[15]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[15]~48_combout\ = (\inst17|seconds\(15) & (!\inst17|seconds[14]~47\)) # (!\inst17|seconds\(15) & ((\inst17|seconds[14]~47\) # (GND)))
-- \inst17|seconds[15]~49\ = CARRY((!\inst17|seconds[14]~47\) # (!\inst17|seconds\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|seconds\(15),
	datad => VCC,
	cin => \inst17|seconds[14]~47\,
	combout => \inst17|seconds[15]~48_combout\,
	cout => \inst17|seconds[15]~49\);

-- Location: LCCOMB_X22_Y9_N16
\inst17|seconds[16]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[16]~50_combout\ = \inst17|seconds[15]~49\ $ (!\inst17|seconds\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|seconds\(16),
	cin => \inst17|seconds[15]~49\,
	combout => \inst17|seconds[16]~50_combout\);

-- Location: LCCOMB_X21_Y9_N0
\inst17|cnt[0]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[0]~8_combout\ = \inst17|cnt\(0) $ (VCC)
-- \inst17|cnt[0]~9\ = CARRY(\inst17|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(0),
	datad => VCC,
	combout => \inst17|cnt[0]~8_combout\,
	cout => \inst17|cnt[0]~9\);

-- Location: LCCOMB_X21_Y9_N2
\inst17|cnt[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[1]~11_combout\ = (\inst17|cnt\(1) & (!\inst17|cnt[0]~9\)) # (!\inst17|cnt\(1) & ((\inst17|cnt[0]~9\) # (GND)))
-- \inst17|cnt[1]~12\ = CARRY((!\inst17|cnt[0]~9\) # (!\inst17|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(1),
	datad => VCC,
	cin => \inst17|cnt[0]~9\,
	combout => \inst17|cnt[1]~11_combout\,
	cout => \inst17|cnt[1]~12\);

-- Location: LCCOMB_X21_Y9_N4
\inst17|cnt[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[2]~13_combout\ = (\inst17|cnt\(2) & (\inst17|cnt[1]~12\ $ (GND))) # (!\inst17|cnt\(2) & (!\inst17|cnt[1]~12\ & VCC))
-- \inst17|cnt[2]~14\ = CARRY((\inst17|cnt\(2) & !\inst17|cnt[1]~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(2),
	datad => VCC,
	cin => \inst17|cnt[1]~12\,
	combout => \inst17|cnt[2]~13_combout\,
	cout => \inst17|cnt[2]~14\);

-- Location: LCCOMB_X21_Y9_N6
\inst17|cnt[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[3]~15_combout\ = (\inst17|cnt\(3) & (!\inst17|cnt[2]~14\)) # (!\inst17|cnt\(3) & ((\inst17|cnt[2]~14\) # (GND)))
-- \inst17|cnt[3]~16\ = CARRY((!\inst17|cnt[2]~14\) # (!\inst17|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(3),
	datad => VCC,
	cin => \inst17|cnt[2]~14\,
	combout => \inst17|cnt[3]~15_combout\,
	cout => \inst17|cnt[3]~16\);

-- Location: LCCOMB_X21_Y9_N8
\inst17|cnt[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[4]~17_combout\ = (\inst17|cnt\(4) & (\inst17|cnt[3]~16\ $ (GND))) # (!\inst17|cnt\(4) & (!\inst17|cnt[3]~16\ & VCC))
-- \inst17|cnt[4]~18\ = CARRY((\inst17|cnt\(4) & !\inst17|cnt[3]~16\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(4),
	datad => VCC,
	cin => \inst17|cnt[3]~16\,
	combout => \inst17|cnt[4]~17_combout\,
	cout => \inst17|cnt[4]~18\);

-- Location: LCCOMB_X21_Y9_N10
\inst17|cnt[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[5]~19_combout\ = (\inst17|cnt\(5) & (!\inst17|cnt[4]~18\)) # (!\inst17|cnt\(5) & ((\inst17|cnt[4]~18\) # (GND)))
-- \inst17|cnt[5]~20\ = CARRY((!\inst17|cnt[4]~18\) # (!\inst17|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(5),
	datad => VCC,
	cin => \inst17|cnt[4]~18\,
	combout => \inst17|cnt[5]~19_combout\,
	cout => \inst17|cnt[5]~20\);

-- Location: LCCOMB_X21_Y9_N12
\inst17|cnt[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[6]~21_combout\ = (\inst17|cnt\(6) & (\inst17|cnt[5]~20\ $ (GND))) # (!\inst17|cnt\(6) & (!\inst17|cnt[5]~20\ & VCC))
-- \inst17|cnt[6]~22\ = CARRY((\inst17|cnt\(6) & !\inst17|cnt[5]~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(6),
	datad => VCC,
	cin => \inst17|cnt[5]~20\,
	combout => \inst17|cnt[6]~21_combout\,
	cout => \inst17|cnt[6]~22\);

-- Location: LCCOMB_X21_Y9_N14
\inst17|cnt[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[7]~23_combout\ = \inst17|cnt\(7) $ (\inst17|cnt[6]~22\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(7),
	cin => \inst17|cnt[6]~22\,
	combout => \inst17|cnt[7]~23_combout\);

-- Location: FF_X33_Y11_N13
\inst1|inhibit_wait_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[7]~23_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(7));

-- Location: FF_X33_Y11_N11
\inst1|inhibit_wait_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[6]~21_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(6));

-- Location: FF_X33_Y11_N7
\inst1|inhibit_wait_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[4]~17_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(4));

-- Location: LCCOMB_X33_Y11_N6
\inst1|inhibit_wait_count[4]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[4]~17_combout\ = (\inst1|inhibit_wait_count\(4) & (!\inst1|inhibit_wait_count[3]~16\)) # (!\inst1|inhibit_wait_count\(4) & ((\inst1|inhibit_wait_count[3]~16\) # (GND)))
-- \inst1|inhibit_wait_count[4]~18\ = CARRY((!\inst1|inhibit_wait_count[3]~16\) # (!\inst1|inhibit_wait_count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(4),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[3]~16\,
	combout => \inst1|inhibit_wait_count[4]~17_combout\,
	cout => \inst1|inhibit_wait_count[4]~18\);

-- Location: LCCOMB_X33_Y11_N10
\inst1|inhibit_wait_count[6]~21\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[6]~21_combout\ = (\inst1|inhibit_wait_count\(6) & (!\inst1|inhibit_wait_count[5]~20\)) # (!\inst1|inhibit_wait_count\(6) & ((\inst1|inhibit_wait_count[5]~20\) # (GND)))
-- \inst1|inhibit_wait_count[6]~22\ = CARRY((!\inst1|inhibit_wait_count[5]~20\) # (!\inst1|inhibit_wait_count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(6),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[5]~20\,
	combout => \inst1|inhibit_wait_count[6]~21_combout\,
	cout => \inst1|inhibit_wait_count[6]~22\);

-- Location: LCCOMB_X33_Y11_N12
\inst1|inhibit_wait_count[7]~23\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[7]~23_combout\ = (\inst1|inhibit_wait_count\(7) & (\inst1|inhibit_wait_count[6]~22\ $ (GND))) # (!\inst1|inhibit_wait_count\(7) & (!\inst1|inhibit_wait_count[6]~22\ & VCC))
-- \inst1|inhibit_wait_count[7]~24\ = CARRY((\inst1|inhibit_wait_count\(7) & !\inst1|inhibit_wait_count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(7),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[6]~22\,
	combout => \inst1|inhibit_wait_count[7]~23_combout\,
	cout => \inst1|inhibit_wait_count[7]~24\);

-- Location: LCCOMB_X27_Y27_N2
\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ = (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\);

-- Location: LCCOMB_X28_Y27_N30
\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\ = (\inst20|Q\(5) & \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(5),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\);

-- Location: LCCOMB_X28_Y27_N22
\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\ = (\inst20|Q\(4) & \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(4),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~42_combout\);

-- Location: LCCOMB_X28_Y27_N26
\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\ = (\inst20|Q\(3) & \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(3),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\);

-- Location: LCCOMB_X28_Y28_N20
\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~48_combout\);

-- Location: LCCOMB_X28_Y28_N22
\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ = (\inst20|Q\(3) & \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(3),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\);

-- Location: LCCOMB_X27_Y28_N0
\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\ = (\inst20|Q\(2) & !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(2),
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~52_combout\);

-- Location: LCCOMB_X27_Y28_N26
\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\ = (\inst20|Q\(1) & \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(1),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\);

-- Location: LCCOMB_X28_Y28_N4
\inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\);

-- Location: LCCOMB_X28_Y28_N30
\inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[4]~6_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\);

-- Location: LCCOMB_X27_Y28_N30
\inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\);

-- Location: LCCOMB_X24_Y27_N6
\inst20|Div0|auto_generated|divider|divider|StageOut[18]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\);

-- Location: LCCOMB_X23_Y27_N16
\inst20|Div0|auto_generated|divider|divider|StageOut[17]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\ = (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[17]~29_combout\);

-- Location: LCCOMB_X24_Y27_N30
\inst20|Div0|auto_generated|divider|divider|StageOut[16]~30\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ = (\inst20|Q\(4) & \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(4),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\);

-- Location: LCCOMB_X23_Y27_N14
\inst20|Div0|auto_generated|divider|divider|StageOut[15]~32\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\ = (\inst20|Q\(3) & \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(3),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\);

-- Location: LCCOMB_X24_Y28_N12
\inst20|Div0|auto_generated|divider|divider|StageOut[23]~34\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\);

-- Location: LCCOMB_X24_Y28_N30
\inst20|Div0|auto_generated|divider|divider|StageOut[21]~37\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[21]~37_combout\);

-- Location: LCCOMB_X24_Y28_N6
\inst20|Div0|auto_generated|divider|divider|StageOut[20]~39\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\ = (\inst20|Q\(2) & !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(2),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[20]~39_combout\);

-- Location: LCCOMB_X23_Y28_N20
\inst20|Div0|auto_generated|divider|divider|StageOut[28]~40\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~4_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\);

-- Location: LCCOMB_X23_Y28_N22
\inst20|Div0|auto_generated|divider|divider|StageOut[27]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\);

-- Location: LCCOMB_X23_Y28_N26
\inst20|Div0|auto_generated|divider|divider|StageOut[26]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\);

-- Location: LCCOMB_X24_Y28_N4
\inst20|Div0|auto_generated|divider|divider|StageOut[25]~44\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\ = (\inst20|Q\(1) & \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(1),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\);

-- Location: LCCOMB_X24_Y6_N0
\inst12|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~0_combout\ = (\inst|pixel_column\(2) & (\inst|pixel_column\(1))) # (!\inst|pixel_column\(2) & ((\inst|pixel_column\(1) & (\inst12|altsyncram_component|auto_generated|q_a\(2))) # (!\inst|pixel_column\(1) & 
-- ((\inst12|altsyncram_component|auto_generated|q_a\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst|pixel_column\(1),
	datac => \inst12|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst12|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst12|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y7_N10
\inst12|Mux0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~1_combout\ = (\inst|pixel_column\(2) & ((\inst12|Mux0~0_combout\ & (\inst12|altsyncram_component|auto_generated|q_a\(0))) # (!\inst12|Mux0~0_combout\ & ((\inst12|altsyncram_component|auto_generated|q_a\(1)))))) # (!\inst|pixel_column\(2) & 
-- (\inst12|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst12|Mux0~0_combout\,
	datac => \inst12|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst12|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst12|Mux0~1_combout\);

-- Location: FF_X24_Y7_N15
\inst|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(8),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(8));

-- Location: LCCOMB_X24_Y6_N8
\inst23|ball_on~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~0_combout\ = (!\inst23|Add0~6_combout\ & (!\inst23|Add0~10_combout\ & !\inst23|Add0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add0~6_combout\,
	datab => \inst23|Add0~10_combout\,
	datac => \inst23|Add0~8_combout\,
	combout => \inst23|ball_on~0_combout\);

-- Location: LCCOMB_X24_Y6_N6
\inst23|ball_on~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~1_combout\ = (!\inst|pixel_column\(2) & (!\inst23|Add0~0_combout\ & \inst|pixel_column\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst23|Add0~0_combout\,
	datad => \inst|pixel_column\(3),
	combout => \inst23|ball_on~1_combout\);

-- Location: LCCOMB_X24_Y6_N10
\inst23|ball_on~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~2_combout\ = (\inst23|ball_on~0_combout\ & ((\inst23|ball_on~1_combout\) # ((!\inst23|Add0~4_combout\) # (!\inst23|Add0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_on~1_combout\,
	datab => \inst23|ball_on~0_combout\,
	datac => \inst23|Add0~2_combout\,
	datad => \inst23|Add0~4_combout\,
	combout => \inst23|ball_on~2_combout\);

-- Location: FF_X24_Y7_N7
\inst|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(0),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(0));

-- Location: LCCOMB_X24_Y7_N6
\inst23|ball_on~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~4_combout\ = (\inst|pixel_column\(2) & (\inst|pixel_column\(3) & ((\inst|pixel_column\(0)) # (\inst|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(2),
	datab => \inst|pixel_column\(3),
	datac => \inst|pixel_column\(0),
	datad => \inst|pixel_column\(1),
	combout => \inst23|ball_on~4_combout\);

-- Location: FF_X22_Y9_N31
\inst17|output\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst17|output~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|output~q\);

-- Location: LCCOMB_X21_Y7_N26
\inst|LessThan7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~0_combout\ = (\inst|v_count\(5) & (\inst|v_count\(6) & (\inst|v_count\(8) & \inst|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datab => \inst|v_count\(6),
	datac => \inst|v_count\(8),
	datad => \inst|v_count\(7),
	combout => \inst|LessThan7~0_combout\);

-- Location: FF_X21_Y6_N11
\inst23|ball_y_motion[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_motion~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_motion\(2));

-- Location: FF_X21_Y6_N9
\inst23|ball_y_motion[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_motion~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_motion\(1));

-- Location: FF_X21_Y6_N27
\inst23|ball_y_motion[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_motion~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_motion\(0));

-- Location: LCCOMB_X24_Y7_N30
\inst|process_0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~0_combout\ = (!\inst|h_count\(8) & (\inst|h_count\(7) & \inst|h_count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datab => \inst|h_count\(7),
	datad => \inst|h_count\(9),
	combout => \inst|process_0~0_combout\);

-- Location: LCCOMB_X22_Y10_N12
\inst17|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~0_combout\ = (\inst17|seconds\(0)) # ((\inst17|seconds\(2)) # ((\inst17|seconds\(1)) # (!\inst17|seconds\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(0),
	datab => \inst17|seconds\(2),
	datac => \inst17|seconds\(1),
	datad => \inst17|seconds\(3),
	combout => \inst17|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y10_N2
\inst17|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~1_combout\ = (\inst17|seconds\(4)) # (((\inst17|seconds\(7)) # (\inst17|seconds\(5))) # (!\inst17|seconds\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(4),
	datab => \inst17|seconds\(6),
	datac => \inst17|seconds\(7),
	datad => \inst17|seconds\(5),
	combout => \inst17|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y10_N0
\inst17|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~2_combout\ = (\inst17|Equal0~1_combout\) # (\inst17|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Equal0~1_combout\,
	datad => \inst17|Equal0~0_combout\,
	combout => \inst17|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y9_N18
\inst17|Equal0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~3_combout\ = ((\inst17|seconds\(10)) # ((\inst17|seconds\(9)) # (\inst17|seconds\(8)))) # (!\inst17|seconds\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(11),
	datab => \inst17|seconds\(10),
	datac => \inst17|seconds\(9),
	datad => \inst17|seconds\(8),
	combout => \inst17|Equal0~3_combout\);

-- Location: LCCOMB_X22_Y9_N20
\inst17|Equal0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~4_combout\ = (((\inst17|seconds\(12)) # (!\inst17|seconds\(14))) # (!\inst17|seconds\(15))) # (!\inst17|seconds\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|seconds\(13),
	datab => \inst17|seconds\(15),
	datac => \inst17|seconds\(12),
	datad => \inst17|seconds\(14),
	combout => \inst17|Equal0~4_combout\);

-- Location: LCCOMB_X22_Y9_N26
\inst17|Equal0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal0~5_combout\ = (\inst17|Equal0~2_combout\) # ((\inst17|Equal0~3_combout\) # ((\inst17|Equal0~4_combout\) # (!\inst17|seconds\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~2_combout\,
	datab => \inst17|Equal0~3_combout\,
	datac => \inst17|Equal0~4_combout\,
	datad => \inst17|seconds\(16),
	combout => \inst17|Equal0~5_combout\);

-- Location: LCCOMB_X21_Y9_N28
\inst17|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal1~0_combout\ = ((\inst17|cnt\(0)) # ((\inst17|cnt\(2)) # (!\inst17|cnt\(1)))) # (!\inst17|cnt\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(3),
	datab => \inst17|cnt\(0),
	datac => \inst17|cnt\(2),
	datad => \inst17|cnt\(1),
	combout => \inst17|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y9_N26
\inst17|Equal1~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal1~1_combout\ = (\inst17|cnt\(6)) # ((\inst17|cnt\(7)) # ((\inst17|cnt\(4)) # (\inst17|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(6),
	datab => \inst17|cnt\(7),
	datac => \inst17|cnt\(4),
	datad => \inst17|cnt\(5),
	combout => \inst17|Equal1~1_combout\);

-- Location: LCCOMB_X21_Y9_N16
\inst17|Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|Equal1~2_combout\ = (\inst17|Equal1~0_combout\) # (\inst17|Equal1~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Equal1~0_combout\,
	datac => \inst17|Equal1~1_combout\,
	combout => \inst17|Equal1~2_combout\);

-- Location: LCCOMB_X22_Y9_N30
\inst17|output~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|output~0_combout\ = (\inst1|left_button~q\ & ((\inst17|output~q\) # ((!\inst17|Equal1~2_combout\ & !\inst17|Equal0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal1~2_combout\,
	datab => \inst17|Equal0~5_combout\,
	datac => \inst17|output~q\,
	datad => \inst1|left_button~q\,
	combout => \inst17|output~0_combout\);

-- Location: LCCOMB_X21_Y7_N10
\inst|process_0~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~9_combout\ = (!\inst|v_count\(5) & (!\inst|v_count\(4) & ((!\inst|v_count\(2)) # (!\inst|v_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(5),
	datab => \inst|v_count\(4),
	datac => \inst|v_count\(3),
	datad => \inst|v_count\(2),
	combout => \inst|process_0~9_combout\);

-- Location: LCCOMB_X22_Y6_N24
\inst23|ball_y_motion~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~0_combout\ = ((!\inst23|ball_y_pos\(6)) # (!\inst23|ball_y_pos\(7))) # (!\inst23|ball_y_pos\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ball_y_pos\(8),
	datac => \inst23|ball_y_pos\(7),
	datad => \inst23|ball_y_pos\(6),
	combout => \inst23|ball_y_motion~0_combout\);

-- Location: LCCOMB_X22_Y6_N30
\inst23|ball_y_motion~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~1_combout\ = (!\inst23|ball_y_pos\(3) & (((!\inst23|ball_y_pos\(1)) # (!\inst23|ball_y_pos\(2))) # (!\inst23|ball_y_pos\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(3),
	datab => \inst23|ball_y_pos\(0),
	datac => \inst23|ball_y_pos\(2),
	datad => \inst23|ball_y_pos\(1),
	combout => \inst23|ball_y_motion~1_combout\);

-- Location: LCCOMB_X22_Y6_N20
\inst23|ball_y_motion~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~2_combout\ = (\inst23|ball_y_motion~0_combout\) # ((!\inst23|ball_y_pos\(5) & ((\inst23|ball_y_motion~1_combout\) # (!\inst23|ball_y_pos\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(4),
	datab => \inst23|ball_y_pos\(5),
	datac => \inst23|ball_y_motion~1_combout\,
	datad => \inst23|ball_y_motion~0_combout\,
	combout => \inst23|ball_y_motion~2_combout\);

-- Location: LCCOMB_X21_Y6_N30
\inst23|ball_y_motion~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~3_combout\ = (\inst23|ball_y_pos\(7)) # ((\inst23|LessThan4~0_combout\) # (\inst23|LessThan4~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(7),
	datac => \inst23|LessThan4~0_combout\,
	datad => \inst23|LessThan4~1_combout\,
	combout => \inst23|ball_y_motion~3_combout\);

-- Location: LCCOMB_X21_Y6_N28
\inst23|ball_y_motion~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~4_combout\ = (\sw0~input_o\ & (\inst23|ball_y_motion~2_combout\ & ((!\inst1|left_button~q\)))) # (!\sw0~input_o\ & (((\inst23|ball_y_motion~3_combout\ & \inst1|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_motion~2_combout\,
	datab => \sw0~input_o\,
	datac => \inst23|ball_y_motion~3_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst23|ball_y_motion~4_combout\);

-- Location: LCCOMB_X21_Y6_N10
\inst23|ball_y_motion~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~5_combout\ = (!\inst23|ball_y_pos\(9) & \inst23|ball_y_motion~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ball_y_pos\(9),
	datad => \inst23|ball_y_motion~4_combout\,
	combout => \inst23|ball_y_motion~5_combout\);

-- Location: LCCOMB_X21_Y6_N2
\inst23|ball_y_motion~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~6_combout\ = (!\inst23|ball_y_pos\(9) & ((\inst1|left_button~q\ & (\inst23|ball_y_motion~3_combout\)) # (!\inst1|left_button~q\ & ((\inst23|ball_y_motion~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(9),
	datab => \inst1|left_button~q\,
	datac => \inst23|ball_y_motion~3_combout\,
	datad => \inst23|ball_y_motion~2_combout\,
	combout => \inst23|ball_y_motion~6_combout\);

-- Location: LCCOMB_X21_Y6_N8
\inst23|ball_y_motion~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~7_combout\ = (\sw0~input_o\ & (!\inst23|ball_y_pos\(9) & (\inst23|Move_Ball~0_combout\))) # (!\sw0~input_o\ & (((\inst23|ball_y_motion~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(9),
	datab => \inst23|Move_Ball~0_combout\,
	datac => \sw0~input_o\,
	datad => \inst23|ball_y_motion~6_combout\,
	combout => \inst23|ball_y_motion~7_combout\);

-- Location: LCCOMB_X21_Y6_N26
\inst23|ball_y_motion~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_motion~8_combout\ = (\sw0~input_o\ & \inst23|ball_y_motion~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sw0~input_o\,
	datad => \inst23|ball_y_motion~6_combout\,
	combout => \inst23|ball_y_motion~8_combout\);

-- Location: FF_X30_Y13_N29
\inst1|PACKET_CHAR1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_CHAR1[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_CHAR1\(0));

-- Location: LCCOMB_X22_Y9_N24
\inst17|seconds[13]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[13]~19_combout\ = (!\inst1|left_button~q\) # (!\inst17|Equal0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Equal0~5_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst17|seconds[13]~19_combout\);

-- Location: LCCOMB_X21_Y9_N22
\inst17|cnt[5]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|cnt[5]~10_combout\ = ((!\inst17|Equal1~0_combout\ & !\inst17|Equal1~1_combout\)) # (!\inst1|left_button~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|Equal1~0_combout\,
	datac => \inst17|Equal1~1_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst17|cnt[5]~10_combout\);

-- Location: FF_X29_Y13_N27
\inst1|OUTCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(2));

-- Location: FF_X31_Y13_N1
\inst1|SHIFTIN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTIN\(1),
	sload => VCC,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(0));

-- Location: LCCOMB_X30_Y13_N28
\inst1|PACKET_CHAR1[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_CHAR1[0]~0_combout\ = (\inst1|PACKET_COUNT\(1) & (((\inst1|PACKET_CHAR1\(0))))) # (!\inst1|PACKET_COUNT\(1) & ((\inst1|left_button~1_combout\ & (\inst1|SHIFTIN\(0))) # (!\inst1|left_button~1_combout\ & ((\inst1|PACKET_CHAR1\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_COUNT\(1),
	datab => \inst1|SHIFTIN\(0),
	datac => \inst1|PACKET_CHAR1\(0),
	datad => \inst1|left_button~1_combout\,
	combout => \inst1|PACKET_CHAR1[0]~0_combout\);

-- Location: FF_X40_Y15_N17
\inst1|filter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|filter\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(7));

-- Location: LCCOMB_X40_Y15_N16
\inst1|MOUSE_CLK_FILTER~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~0_combout\ = (\inst1|filter\(4) & ((\inst1|filter\(7)) # (!\inst1|filter\(2)))) # (!\inst1|filter\(4) & (\inst1|filter\(7) & !\inst1|filter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|filter\(4),
	datac => \inst1|filter\(7),
	datad => \inst1|filter\(2),
	combout => \inst1|MOUSE_CLK_FILTER~0_combout\);

-- Location: FF_X29_Y13_N15
\inst1|mouse_state.INPUT_PACKETS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|mouse_state.INPUT_PACKETS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INPUT_PACKETS~q\);

-- Location: LCCOMB_X29_Y13_N30
\inst1|Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|send_data~q\ & ((\inst1|mouse_state.INPUT_PACKETS~q\) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.INPUT_PACKETS~q\,
	datac => \inst1|send_data~q\,
	datad => \inst1|mouse_state.INHIBIT_TRANS~q\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y13_N26
\inst1|OUTCNT~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~1_combout\ = (!\inst1|OUTCNT\(3) & (\inst1|OUTCNT\(2) $ (((\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(3),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(2),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~1_combout\);

-- Location: FF_X33_Y11_N27
\inst1|inhibit_wait_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[0]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(0));

-- Location: FF_X31_Y13_N13
\inst1|SHIFTIN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[1]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(1));

-- Location: LCCOMB_X31_Y13_N6
\inst1|SHIFTIN[0]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~0_combout\ = (\inst1|READ_CHAR~q\ & (((!\inst1|INCNT\(2) & !\inst1|INCNT\(1))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(1),
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|SHIFTIN[0]~0_combout\);

-- Location: LCCOMB_X31_Y13_N16
\inst1|SHIFTIN[0]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[0]~1_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst1|SHIFTIN[0]~0_combout\ & ((!\inst1|INCNT\(0)) # (!\inst1|INCNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(0),
	datad => \inst1|SHIFTIN[0]~0_combout\,
	combout => \inst1|SHIFTIN[0]~1_combout\);

-- Location: FF_X30_Y13_N17
\inst1|iready_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|iready_set~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|iready_set~q\);

-- Location: FF_X29_Y13_N25
\inst1|mouse_state.WAIT_CMD_ACK\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_CMD_ACK~q\);

-- Location: LCCOMB_X29_Y13_N14
\inst1|mouse_state.INPUT_PACKETS~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.INPUT_PACKETS~0_combout\ = (\inst1|mouse_state.INPUT_PACKETS~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & \inst1|iready_set~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datac => \inst1|mouse_state.INPUT_PACKETS~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|mouse_state.INPUT_PACKETS~0_combout\);

-- Location: LCCOMB_X33_Y11_N26
\inst1|inhibit_wait_count[0]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[0]~33_combout\ = \inst1|mouse_state.INHIBIT_TRANS~q\ $ (!\inst1|inhibit_wait_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datac => \inst1|inhibit_wait_count\(0),
	combout => \inst1|inhibit_wait_count[0]~33_combout\);

-- Location: FF_X31_Y13_N19
\inst1|SHIFTIN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[2]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(2));

-- Location: LCCOMB_X30_Y13_N16
\inst1|iready_set~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|iready_set~0_combout\ = (\inst1|READ_CHAR~q\ & (((!\inst1|LessThan1~0_combout\)))) # (!\inst1|READ_CHAR~q\ & (\mouse_data~input_o\ & (\inst1|iready_set~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \mouse_data~input_o\,
	datac => \inst1|iready_set~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|iready_set~0_combout\);

-- Location: LCCOMB_X29_Y13_N24
\inst1|Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & ((\inst1|output_ready~q\) # ((\inst1|mouse_state.WAIT_CMD_ACK~q\ & !\inst1|iready_set~q\)))) # (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (((\inst1|mouse_state.WAIT_CMD_ACK~q\ & 
-- !\inst1|iready_set~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datab => \inst1|output_ready~q\,
	datac => \inst1|mouse_state.WAIT_CMD_ACK~q\,
	datad => \inst1|iready_set~q\,
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X31_Y13_N31
\inst1|SHIFTIN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[3]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(3));

-- Location: FF_X31_Y13_N25
\inst1|SHIFTIN[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[4]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(4));

-- Location: FF_X31_Y13_N3
\inst1|SHIFTIN[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[5]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(5));

-- Location: FF_X31_Y13_N11
\inst1|SHIFTIN[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[6]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(6));

-- Location: FF_X31_Y13_N9
\inst1|SHIFTIN[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[7]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(7));

-- Location: FF_X31_Y13_N21
\inst1|SHIFTIN[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTIN[8]~feeder_combout\,
	ena => \inst1|SHIFTIN[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTIN\(8));

-- Location: LCCOMB_X28_Y27_N12
\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst20|Q\(5)))) 
-- # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst20|Q\(5),
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\);

-- Location: LCCOMB_X24_Y27_N2
\inst20|Div0|auto_generated|divider|divider|StageOut[22]~48\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst20|Q\(4))) # 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(4),
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\);

-- Location: IOIBUF_X0_Y24_N1
\sw0~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw0,
	o => \sw0~input_o\);

-- Location: CLKCTRL_G5
\inst|vert_sync_out~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|vert_sync_out~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|vert_sync_out~clkctrl_outclk\);

-- Location: CLKCTRL_G19
\inst17|output~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|output~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|output~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y9_N22
\inst17|seconds[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst17|seconds[6]~feeder_combout\ = \inst17|seconds[6]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst17|seconds[6]~30_combout\,
	combout => \inst17|seconds[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N12
\inst1|SHIFTIN[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[1]~feeder_combout\ = \inst1|SHIFTIN\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(2),
	combout => \inst1|SHIFTIN[1]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N18
\inst1|SHIFTIN[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[2]~feeder_combout\ = \inst1|SHIFTIN\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(3),
	combout => \inst1|SHIFTIN[2]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N30
\inst1|SHIFTIN[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[3]~feeder_combout\ = \inst1|SHIFTIN\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(4),
	combout => \inst1|SHIFTIN[3]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N24
\inst1|SHIFTIN[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[4]~feeder_combout\ = \inst1|SHIFTIN\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(5),
	combout => \inst1|SHIFTIN[4]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N2
\inst1|SHIFTIN[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[5]~feeder_combout\ = \inst1|SHIFTIN\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(6),
	combout => \inst1|SHIFTIN[5]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N10
\inst1|SHIFTIN[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[6]~feeder_combout\ = \inst1|SHIFTIN\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTIN\(7),
	combout => \inst1|SHIFTIN[6]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N8
\inst1|SHIFTIN[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[7]~feeder_combout\ = \inst1|SHIFTIN\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTIN\(8),
	combout => \inst1|SHIFTIN[7]~feeder_combout\);

-- Location: LCCOMB_X31_Y13_N20
\inst1|SHIFTIN[8]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTIN[8]~feeder_combout\ = \mouse_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_data~input_o\,
	combout => \inst1|SHIFTIN[8]~feeder_combout\);

-- Location: IOOBUF_X41_Y25_N2
\red_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|red_out~q\,
	devoe => ww_devoe,
	o => ww_red_out);

-- Location: IOOBUF_X41_Y24_N23
\green_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|green_out~q\,
	devoe => ww_devoe,
	o => ww_green_out);

-- Location: IOOBUF_X41_Y19_N9
\blue_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|blue_out~q\,
	devoe => ww_devoe,
	o => ww_blue_out);

-- Location: IOOBUF_X41_Y18_N16
\horiz_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => ww_horiz_sync_out);

-- Location: IOOBUF_X41_Y18_N23
\vert_sync_out~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|vert_sync_out~q\,
	devoe => ww_devoe,
	o => ww_vert_sync_out);

-- Location: IOOBUF_X26_Y29_N16
\seg0[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(6));

-- Location: IOOBUF_X28_Y29_N23
\seg0[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(5));

-- Location: IOOBUF_X26_Y29_N9
\seg0[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(4));

-- Location: IOOBUF_X28_Y29_N30
\seg0[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(3));

-- Location: IOOBUF_X26_Y29_N2
\seg0[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(2));

-- Location: IOOBUF_X21_Y29_N30
\seg0[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(1));

-- Location: IOOBUF_X21_Y29_N23
\seg0[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg0(0));

-- Location: IOOBUF_X26_Y29_N23
\seg1[6]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(6));

-- Location: IOOBUF_X28_Y29_N16
\seg1[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(5));

-- Location: IOOBUF_X23_Y29_N30
\seg1[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(4));

-- Location: IOOBUF_X23_Y29_N23
\seg1[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(3));

-- Location: IOOBUF_X23_Y29_N2
\seg1[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(2));

-- Location: IOOBUF_X21_Y29_N9
\seg1[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(1));

-- Location: IOOBUF_X21_Y29_N2
\seg1[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_seg1(0));

-- Location: IOOBUF_X41_Y12_N23
\mouse_data~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|MOUSE_DATA_BUF~q\,
	oe => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	devoe => ww_devoe,
	o => mouse_data);

-- Location: IOOBUF_X41_Y11_N2
\mouse_clk~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|mouse_state.INHIBIT_TRANS~q\,
	oe => \inst1|WideOr4~combout\,
	devoe => ww_devoe,
	o => mouse_clk);

-- Location: IOIBUF_X41_Y11_N1
\mouse_clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_clk,
	o => \mouse_clk~input_o\);

-- Location: LCCOMB_X40_Y11_N4
\inst1|filter[0]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[0]~feeder_combout\ = \mouse_clk~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \mouse_clk~input_o\,
	combout => \inst1|filter[0]~feeder_combout\);

-- Location: FF_X40_Y11_N5
\inst1|filter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(0));

-- Location: LCCOMB_X40_Y15_N14
\inst1|filter[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[1]~feeder_combout\ = \inst1|filter\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(0),
	combout => \inst1|filter[1]~feeder_combout\);

-- Location: FF_X40_Y15_N15
\inst1|filter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(1));

-- Location: FF_X40_Y15_N23
\inst1|filter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|filter\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(2));

-- Location: LCCOMB_X40_Y15_N18
\inst1|filter[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[3]~feeder_combout\ = \inst1|filter\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(2),
	combout => \inst1|filter[3]~feeder_combout\);

-- Location: FF_X40_Y15_N19
\inst1|filter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(3));

-- Location: LCCOMB_X40_Y15_N24
\inst1|MOUSE_CLK_FILTER~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~1_combout\ = (\inst1|filter\(5) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(2) & \inst1|filter\(3))))) # (!\inst1|filter\(5) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(2)) # (\inst1|filter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(5),
	datab => \inst1|filter\(2),
	datac => \inst1|filter\(3),
	datad => \inst1|MOUSE_CLK_FILTER~q\,
	combout => \inst1|MOUSE_CLK_FILTER~1_combout\);

-- Location: LCCOMB_X40_Y15_N10
\inst1|filter[4]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[4]~feeder_combout\ = \inst1|filter\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(3),
	combout => \inst1|filter[4]~feeder_combout\);

-- Location: FF_X40_Y15_N11
\inst1|filter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(4));

-- Location: FF_X40_Y15_N31
\inst1|filter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|filter\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(5));

-- Location: LCCOMB_X40_Y15_N20
\inst1|filter[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|filter[6]~feeder_combout\ = \inst1|filter\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|filter\(5),
	combout => \inst1|filter[6]~feeder_combout\);

-- Location: FF_X40_Y15_N21
\inst1|filter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|filter[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|filter\(6));

-- Location: LCCOMB_X40_Y15_N12
\inst1|MOUSE_CLK_FILTER~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~2_combout\ = (\inst1|filter\(0) & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|filter\(1) & \inst1|filter\(6))))) # (!\inst1|filter\(0) & (\inst1|MOUSE_CLK_FILTER~q\ & ((\inst1|filter\(1)) # (\inst1|filter\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|filter\(0),
	datab => \inst1|filter\(1),
	datac => \inst1|filter\(6),
	datad => \inst1|MOUSE_CLK_FILTER~q\,
	combout => \inst1|MOUSE_CLK_FILTER~2_combout\);

-- Location: LCCOMB_X40_Y15_N28
\inst1|MOUSE_CLK_FILTER~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_CLK_FILTER~3_combout\ = (\inst1|MOUSE_CLK_FILTER~0_combout\ & ((\inst1|MOUSE_CLK_FILTER~q\) # ((\inst1|MOUSE_CLK_FILTER~1_combout\ & \inst1|MOUSE_CLK_FILTER~2_combout\)))) # (!\inst1|MOUSE_CLK_FILTER~0_combout\ & (\inst1|MOUSE_CLK_FILTER~q\ & 
-- ((\inst1|MOUSE_CLK_FILTER~1_combout\) # (\inst1|MOUSE_CLK_FILTER~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|MOUSE_CLK_FILTER~0_combout\,
	datab => \inst1|MOUSE_CLK_FILTER~1_combout\,
	datac => \inst1|MOUSE_CLK_FILTER~q\,
	datad => \inst1|MOUSE_CLK_FILTER~2_combout\,
	combout => \inst1|MOUSE_CLK_FILTER~3_combout\);

-- Location: FF_X40_Y15_N29
\inst1|MOUSE_CLK_FILTER\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|MOUSE_CLK_FILTER~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_CLK_FILTER~q\);

-- Location: CLKCTRL_G9
\inst1|MOUSE_CLK_FILTER~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst1|MOUSE_CLK_FILTER~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst1|MOUSE_CLK_FILTER~clkctrl_outclk\);

-- Location: LCCOMB_X28_Y13_N20
\inst1|SHIFTOUT[9]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[9]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst1|SHIFTOUT[9]~feeder_combout\);

-- Location: LCCOMB_X33_Y11_N0
\inst1|inhibit_wait_count[1]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[1]~11_combout\ = (\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) $ (VCC))) # (!\inst1|inhibit_wait_count\(0) & (\inst1|inhibit_wait_count\(1) & VCC))
-- \inst1|inhibit_wait_count[1]~12\ = CARRY((\inst1|inhibit_wait_count\(0) & \inst1|inhibit_wait_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inhibit_wait_count\(0),
	datab => \inst1|inhibit_wait_count\(1),
	datad => VCC,
	combout => \inst1|inhibit_wait_count[1]~11_combout\,
	cout => \inst1|inhibit_wait_count[1]~12\);

-- Location: LCCOMB_X33_Y11_N30
\inst1|Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|mouse_state.INHIBIT_TRANS~q\) # ((\inst1|inhibit_wait_count\(11) & \inst1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(11),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(10),
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X33_Y11_N31
\inst1|mouse_state.INHIBIT_TRANS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.INHIBIT_TRANS~q\);

-- Location: FF_X33_Y11_N1
\inst1|inhibit_wait_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[1]~11_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(1));

-- Location: LCCOMB_X33_Y11_N2
\inst1|inhibit_wait_count[2]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[2]~13_combout\ = (\inst1|inhibit_wait_count\(2) & (!\inst1|inhibit_wait_count[1]~12\)) # (!\inst1|inhibit_wait_count\(2) & ((\inst1|inhibit_wait_count[1]~12\) # (GND)))
-- \inst1|inhibit_wait_count[2]~14\ = CARRY((!\inst1|inhibit_wait_count[1]~12\) # (!\inst1|inhibit_wait_count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(2),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[1]~12\,
	combout => \inst1|inhibit_wait_count[2]~13_combout\,
	cout => \inst1|inhibit_wait_count[2]~14\);

-- Location: FF_X33_Y11_N3
\inst1|inhibit_wait_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[2]~13_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(2));

-- Location: LCCOMB_X33_Y11_N4
\inst1|inhibit_wait_count[3]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[3]~15_combout\ = (\inst1|inhibit_wait_count\(3) & (\inst1|inhibit_wait_count[2]~14\ $ (GND))) # (!\inst1|inhibit_wait_count\(3) & (!\inst1|inhibit_wait_count[2]~14\ & VCC))
-- \inst1|inhibit_wait_count[3]~16\ = CARRY((\inst1|inhibit_wait_count\(3) & !\inst1|inhibit_wait_count[2]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(3),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[2]~14\,
	combout => \inst1|inhibit_wait_count[3]~15_combout\,
	cout => \inst1|inhibit_wait_count[3]~16\);

-- Location: FF_X33_Y11_N5
\inst1|inhibit_wait_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[3]~15_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(3));

-- Location: LCCOMB_X33_Y11_N8
\inst1|inhibit_wait_count[5]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[5]~19_combout\ = (\inst1|inhibit_wait_count\(5) & (\inst1|inhibit_wait_count[4]~18\ $ (GND))) # (!\inst1|inhibit_wait_count\(5) & (!\inst1|inhibit_wait_count[4]~18\ & VCC))
-- \inst1|inhibit_wait_count[5]~20\ = CARRY((\inst1|inhibit_wait_count\(5) & !\inst1|inhibit_wait_count[4]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(5),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[4]~18\,
	combout => \inst1|inhibit_wait_count[5]~19_combout\,
	cout => \inst1|inhibit_wait_count[5]~20\);

-- Location: FF_X33_Y11_N9
\inst1|inhibit_wait_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[5]~19_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(5));

-- Location: LCCOMB_X33_Y11_N14
\inst1|inhibit_wait_count[8]~25\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[8]~25_combout\ = (\inst1|inhibit_wait_count\(8) & (!\inst1|inhibit_wait_count[7]~24\)) # (!\inst1|inhibit_wait_count\(8) & ((\inst1|inhibit_wait_count[7]~24\) # (GND)))
-- \inst1|inhibit_wait_count[8]~26\ = CARRY((!\inst1|inhibit_wait_count[7]~24\) # (!\inst1|inhibit_wait_count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(8),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[7]~24\,
	combout => \inst1|inhibit_wait_count[8]~25_combout\,
	cout => \inst1|inhibit_wait_count[8]~26\);

-- Location: FF_X33_Y11_N15
\inst1|inhibit_wait_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[8]~25_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(8));

-- Location: LCCOMB_X33_Y11_N16
\inst1|inhibit_wait_count[9]~27\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[9]~27_combout\ = (\inst1|inhibit_wait_count\(9) & (\inst1|inhibit_wait_count[8]~26\ $ (GND))) # (!\inst1|inhibit_wait_count\(9) & (!\inst1|inhibit_wait_count[8]~26\ & VCC))
-- \inst1|inhibit_wait_count[9]~28\ = CARRY((\inst1|inhibit_wait_count\(9) & !\inst1|inhibit_wait_count[8]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(9),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[8]~26\,
	combout => \inst1|inhibit_wait_count[9]~27_combout\,
	cout => \inst1|inhibit_wait_count[9]~28\);

-- Location: FF_X33_Y11_N17
\inst1|inhibit_wait_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[9]~27_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(9));

-- Location: LCCOMB_X33_Y11_N18
\inst1|inhibit_wait_count[10]~29\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[10]~29_combout\ = (\inst1|inhibit_wait_count\(10) & (!\inst1|inhibit_wait_count[9]~28\)) # (!\inst1|inhibit_wait_count\(10) & ((\inst1|inhibit_wait_count[9]~28\) # (GND)))
-- \inst1|inhibit_wait_count[10]~30\ = CARRY((!\inst1|inhibit_wait_count[9]~28\) # (!\inst1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(10),
	datad => VCC,
	cin => \inst1|inhibit_wait_count[9]~28\,
	combout => \inst1|inhibit_wait_count[10]~29_combout\,
	cout => \inst1|inhibit_wait_count[10]~30\);

-- Location: FF_X33_Y11_N19
\inst1|inhibit_wait_count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[10]~29_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(10));

-- Location: LCCOMB_X33_Y11_N20
\inst1|inhibit_wait_count[11]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|inhibit_wait_count[11]~31_combout\ = \inst1|inhibit_wait_count[10]~30\ $ (!\inst1|inhibit_wait_count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|inhibit_wait_count\(11),
	cin => \inst1|inhibit_wait_count[10]~30\,
	combout => \inst1|inhibit_wait_count[11]~31_combout\);

-- Location: FF_X33_Y11_N21
\inst1|inhibit_wait_count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|inhibit_wait_count[11]~31_combout\,
	ena => \inst1|ALT_INV_mouse_state.INHIBIT_TRANS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inhibit_wait_count\(11));

-- Location: LCCOMB_X33_Y11_N24
\inst1|Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|inhibit_wait_count\(11) & (!\inst1|mouse_state.INHIBIT_TRANS~q\ & \inst1|inhibit_wait_count\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inhibit_wait_count\(11),
	datac => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datad => \inst1|inhibit_wait_count\(10),
	combout => \inst1|Selector1~0_combout\);

-- Location: FF_X33_Y11_N25
\inst1|mouse_state.LOAD_COMMAND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND~q\);

-- Location: LCCOMB_X33_Y11_N22
\inst1|mouse_state.LOAD_COMMAND2~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\ = \inst1|mouse_state.LOAD_COMMAND~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|mouse_state.LOAD_COMMAND~q\,
	combout => \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\);

-- Location: FF_X33_Y11_N23
\inst1|mouse_state.LOAD_COMMAND2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|mouse_state.LOAD_COMMAND2~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.LOAD_COMMAND2~q\);

-- Location: LCCOMB_X29_Y13_N20
\inst1|Selector6~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector6~1_combout\ = (\inst1|Selector6~0_combout\) # ((\inst1|mouse_state.LOAD_COMMAND2~q\) # (\inst1|mouse_state.LOAD_COMMAND~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector6~0_combout\,
	datab => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datad => \inst1|mouse_state.LOAD_COMMAND~q\,
	combout => \inst1|Selector6~1_combout\);

-- Location: FF_X29_Y13_N31
\inst1|send_data\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst1|Selector6~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_data~q\);

-- Location: LCCOMB_X29_Y13_N28
\inst1|OUTCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~3_combout\ = (!\inst1|OUTCNT\(0) & (((!\inst1|OUTCNT\(2) & !\inst1|OUTCNT\(1))) # (!\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(0),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|OUTCNT~3_combout\);

-- Location: LCCOMB_X28_Y13_N12
\inst1|send_char~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|send_char~0_combout\ = (\inst1|send_char~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|send_char~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|send_char~0_combout\);

-- Location: FF_X28_Y13_N13
\inst1|send_char\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|send_char~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|send_char~q\);

-- Location: LCCOMB_X29_Y13_N18
\inst1|output_ready~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|output_ready~0_combout\ = (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|send_char~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|send_char~q\,
	combout => \inst1|output_ready~0_combout\);

-- Location: FF_X29_Y13_N29
\inst1|OUTCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(0));

-- Location: LCCOMB_X29_Y13_N12
\inst1|OUTCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~2_combout\ = (\inst1|OUTCNT\(3) & (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(1) $ (\inst1|OUTCNT\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(3),
	datac => \inst1|OUTCNT\(1),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~2_combout\);

-- Location: FF_X29_Y13_N13
\inst1|OUTCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(1));

-- Location: LCCOMB_X29_Y13_N4
\inst1|OUTCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|OUTCNT~0_combout\ = (\inst1|OUTCNT\(2) & (\inst1|OUTCNT\(1) & (!\inst1|OUTCNT\(3) & \inst1|OUTCNT\(0)))) # (!\inst1|OUTCNT\(2) & (!\inst1|OUTCNT\(1) & (\inst1|OUTCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datab => \inst1|OUTCNT\(1),
	datac => \inst1|OUTCNT\(3),
	datad => \inst1|OUTCNT\(0),
	combout => \inst1|OUTCNT~0_combout\);

-- Location: FF_X29_Y13_N5
\inst1|OUTCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|OUTCNT~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|OUTCNT\(3));

-- Location: LCCOMB_X29_Y13_N22
\inst1|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~0_combout\ = (\inst1|OUTCNT\(3) & ((\inst1|OUTCNT\(2)) # (\inst1|OUTCNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|OUTCNT\(2),
	datac => \inst1|OUTCNT\(3),
	datad => \inst1|OUTCNT\(1),
	combout => \inst1|LessThan0~0_combout\);

-- Location: FF_X29_Y13_N21
\inst1|output_ready\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|LessThan0~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|output_ready~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|output_ready~q\);

-- Location: LCCOMB_X29_Y13_N16
\inst1|Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|mouse_state.LOAD_COMMAND2~q\) # ((\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|output_ready~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.LOAD_COMMAND2~q\,
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|output_ready~q\,
	combout => \inst1|Selector3~0_combout\);

-- Location: FF_X29_Y13_N17
\inst1|mouse_state.WAIT_OUTPUT_READY\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mouse_state.WAIT_OUTPUT_READY~q\);

-- Location: LCCOMB_X28_Y13_N24
\inst1|MOUSE_DATA_BUF~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|MOUSE_DATA_BUF~0_combout\ = (!\inst1|send_char~q\ & (\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|send_char~q\,
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|LessThan0~0_combout\,
	combout => \inst1|MOUSE_DATA_BUF~0_combout\);

-- Location: FF_X28_Y13_N21
\inst1|SHIFTOUT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[9]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(9));

-- Location: LCCOMB_X28_Y13_N18
\inst1|SHIFTOUT[8]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[8]~3_combout\ = !\inst1|SHIFTOUT\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(9),
	combout => \inst1|SHIFTOUT[8]~3_combout\);

-- Location: FF_X28_Y13_N19
\inst1|SHIFTOUT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[8]~3_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(8));

-- Location: LCCOMB_X28_Y13_N28
\inst1|SHIFTOUT[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[7]~feeder_combout\ = \inst1|SHIFTOUT\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(8),
	combout => \inst1|SHIFTOUT[7]~feeder_combout\);

-- Location: FF_X28_Y13_N29
\inst1|SHIFTOUT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[7]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(7));

-- Location: LCCOMB_X28_Y13_N26
\inst1|SHIFTOUT[6]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[6]~feeder_combout\ = \inst1|SHIFTOUT\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(7),
	combout => \inst1|SHIFTOUT[6]~feeder_combout\);

-- Location: FF_X28_Y13_N27
\inst1|SHIFTOUT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[6]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(6));

-- Location: LCCOMB_X28_Y13_N16
\inst1|SHIFTOUT[5]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[5]~feeder_combout\ = \inst1|SHIFTOUT\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(6),
	combout => \inst1|SHIFTOUT[5]~feeder_combout\);

-- Location: FF_X28_Y13_N17
\inst1|SHIFTOUT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[5]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(5));

-- Location: LCCOMB_X28_Y13_N6
\inst1|SHIFTOUT[4]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[4]~2_combout\ = !\inst1|SHIFTOUT\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(5),
	combout => \inst1|SHIFTOUT[4]~2_combout\);

-- Location: FF_X28_Y13_N7
\inst1|SHIFTOUT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[4]~2_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(4));

-- Location: LCCOMB_X28_Y13_N8
\inst1|SHIFTOUT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[3]~1_combout\ = !\inst1|SHIFTOUT\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(4),
	combout => \inst1|SHIFTOUT[3]~1_combout\);

-- Location: FF_X28_Y13_N9
\inst1|SHIFTOUT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[3]~1_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(3));

-- Location: LCCOMB_X28_Y13_N10
\inst1|SHIFTOUT[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[2]~0_combout\ = !\inst1|SHIFTOUT\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|SHIFTOUT\(3),
	combout => \inst1|SHIFTOUT[2]~0_combout\);

-- Location: FF_X28_Y13_N11
\inst1|SHIFTOUT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[2]~0_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(2));

-- Location: LCCOMB_X28_Y13_N22
\inst1|SHIFTOUT[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|SHIFTOUT[1]~feeder_combout\ = \inst1|SHIFTOUT\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst1|SHIFTOUT\(2),
	combout => \inst1|SHIFTOUT[1]~feeder_combout\);

-- Location: FF_X28_Y13_N23
\inst1|SHIFTOUT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|SHIFTOUT[1]~feeder_combout\,
	clrn => \inst1|ALT_INV_send_data~q\,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|SHIFTOUT\(1));

-- Location: FF_X28_Y13_N25
\inst1|MOUSE_DATA_BUF\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	asdata => \inst1|SHIFTOUT\(1),
	clrn => \inst1|ALT_INV_send_data~q\,
	sload => VCC,
	ena => \inst1|MOUSE_DATA_BUF~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|MOUSE_DATA_BUF~q\);

-- Location: LCCOMB_X33_Y11_N28
\inst1|WideOr4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~combout\ = ((\inst1|mouse_state.LOAD_COMMAND~q\) # (\inst1|mouse_state.LOAD_COMMAND2~q\)) # (!\inst1|mouse_state.INHIBIT_TRANS~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mouse_state.INHIBIT_TRANS~q\,
	datab => \inst1|mouse_state.LOAD_COMMAND~q\,
	datac => \inst1|mouse_state.LOAD_COMMAND2~q\,
	combout => \inst1|WideOr4~combout\);

-- Location: IOIBUF_X41_Y15_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: PLL_2
\inst3|altpll_component|auto_generated|pll1\ : cycloneiii_pll
-- pragma translate_off
GENERIC MAP (
	auto_settings => "false",
	bandwidth_type => "medium",
	c0_high => 12,
	c0_initial => 1,
	c0_low => 12,
	c0_mode => "even",
	c0_ph => 0,
	c1_high => 0,
	c1_initial => 0,
	c1_low => 0,
	c1_mode => "bypass",
	c1_ph => 0,
	c1_use_casc_in => "off",
	c2_high => 0,
	c2_initial => 0,
	c2_low => 0,
	c2_mode => "bypass",
	c2_ph => 0,
	c2_use_casc_in => "off",
	c3_high => 0,
	c3_initial => 0,
	c3_low => 0,
	c3_mode => "bypass",
	c3_ph => 0,
	c3_use_casc_in => "off",
	c4_high => 0,
	c4_initial => 0,
	c4_low => 0,
	c4_mode => "bypass",
	c4_ph => 0,
	c4_use_casc_in => "off",
	charge_pump_current_bits => 1,
	clk0_counter => "c0",
	clk0_divide_by => 2,
	clk0_duty_cycle => 50,
	clk0_multiply_by => 1,
	clk0_phase_shift => "0",
	clk1_counter => "unused",
	clk1_divide_by => 0,
	clk1_duty_cycle => 50,
	clk1_multiply_by => 0,
	clk1_phase_shift => "0",
	clk2_counter => "unused",
	clk2_divide_by => 0,
	clk2_duty_cycle => 50,
	clk2_multiply_by => 0,
	clk2_phase_shift => "0",
	clk3_counter => "unused",
	clk3_divide_by => 0,
	clk3_duty_cycle => 50,
	clk3_multiply_by => 0,
	clk3_phase_shift => "0",
	clk4_counter => "unused",
	clk4_divide_by => 0,
	clk4_duty_cycle => 50,
	clk4_multiply_by => 0,
	clk4_phase_shift => "0",
	compensate_clock => "clock0",
	inclk0_input_frequency => 20000,
	inclk1_input_frequency => 0,
	loop_filter_c_bits => 0,
	loop_filter_r_bits => 27,
	m => 12,
	m_initial => 1,
	m_ph => 0,
	n => 1,
	operation_mode => "normal",
	pfd_max => 200000,
	pfd_min => 3076,
	pll_compensation_delay => 5738,
	self_reset_on_loss_lock => "off",
	simulation_type => "timing",
	switch_over_type => "auto",
	vco_center => 1538,
	vco_divide_by => 0,
	vco_frequency_control => "auto",
	vco_max => 3333,
	vco_min => 1538,
	vco_multiply_by => 0,
	vco_phase_shift_step => 208,
	vco_post_scale => 2)
-- pragma translate_on
PORT MAP (
	areset => GND,
	fbin => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	inclk => \inst3|altpll_component|auto_generated|pll1_INCLK_bus\,
	fbout => \inst3|altpll_component|auto_generated|wire_pll1_fbout\,
	clk => \inst3|altpll_component|auto_generated|pll1_CLK_bus\);

-- Location: CLKCTRL_G8
\inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\);

-- Location: LCCOMB_X23_Y7_N4
\inst|Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|h_count\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: FF_X23_Y7_N5
\inst|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(0));

-- Location: LCCOMB_X23_Y7_N6
\inst|Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|h_count\(1) & (!\inst|Add0~1\)) # (!\inst|h_count\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X23_Y7_N8
\inst|Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|h_count\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|h_count\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|h_count\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X23_Y7_N9
\inst|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(2));

-- Location: LCCOMB_X23_Y7_N10
\inst|Add0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|h_count\(3) & (!\inst|Add0~5\)) # (!\inst|h_count\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X23_Y7_N11
\inst|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(3));

-- Location: LCCOMB_X24_Y7_N24
\inst|pixel_column[3]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_column[3]~feeder_combout\ = \inst|h_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_count\(3),
	combout => \inst|pixel_column[3]~feeder_combout\);

-- Location: LCCOMB_X23_Y7_N18
\inst|Add0~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|h_count\(7) & (!\inst|Add0~13\)) # (!\inst|h_count\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: LCCOMB_X23_Y7_N22
\inst|Add0~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = \inst|Add0~17\ $ (\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|h_count\(9),
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\);

-- Location: LCCOMB_X23_Y7_N12
\inst|Add0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|h_count\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|h_count\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|h_count\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X23_Y7_N13
\inst|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(4));

-- Location: FF_X23_Y7_N7
\inst|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(1));

-- Location: LCCOMB_X23_Y7_N2
\inst|Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|h_count\(3) & (\inst|h_count\(4) & (\inst|h_count\(0) & \inst|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(3),
	datab => \inst|h_count\(4),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(1),
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y7_N0
\inst|h_count~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~0_combout\ = (\inst|Add0~18_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~18_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|h_count~0_combout\);

-- Location: FF_X23_Y7_N1
\inst|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(9));

-- Location: LCCOMB_X23_Y7_N28
\inst|Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|h_count\(6) & \inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(6),
	datad => \inst|h_count\(9),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y7_N14
\inst|Add0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|h_count\(5) & (!\inst|Add0~9\)) # (!\inst|h_count\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X23_Y7_N24
\inst|h_count~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~2_combout\ = (\inst|Add0~10_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~1_combout\)) # (!\inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~2_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Add0~10_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|h_count~2_combout\);

-- Location: FF_X23_Y7_N25
\inst|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(5));

-- Location: LCCOMB_X23_Y7_N16
\inst|Add0~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|h_count\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|h_count\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|h_count\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X23_Y7_N17
\inst|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(6));

-- Location: FF_X23_Y7_N19
\inst|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(7));

-- Location: LCCOMB_X23_Y7_N30
\inst|Equal0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (\inst|h_count\(8) & (!\inst|h_count\(7) & (\inst|h_count\(2) & !\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(2),
	datad => \inst|h_count\(5),
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y7_N26
\inst|h_count~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|h_count~1_combout\ = (\inst|Add0~16_combout\ & (((!\inst|Equal0~0_combout\) # (!\inst|Equal0~2_combout\)) # (!\inst|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~16_combout\,
	datab => \inst|Equal0~1_combout\,
	datac => \inst|Equal0~2_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|h_count~1_combout\);

-- Location: FF_X23_Y7_N27
\inst|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|h_count\(8));

-- Location: LCCOMB_X24_Y7_N0
\inst|LessThan6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan6~0_combout\ = ((!\inst|h_count\(7) & !\inst|h_count\(8))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(8),
	datad => \inst|h_count\(9),
	combout => \inst|LessThan6~0_combout\);

-- Location: FF_X24_Y7_N25
\inst|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_column[3]~feeder_combout\,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(3));

-- Location: LCCOMB_X24_Y7_N18
\inst|Equal1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|h_count\(8)) # (((\inst|h_count\(2)) # (!\inst|h_count\(5))) # (!\inst|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(8),
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(2),
	datad => \inst|h_count\(5),
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X21_Y7_N16
\inst|v_count[2]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[2]~0_combout\ = (\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & (\inst|process_0~11_combout\ & !\inst|Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|process_0~11_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|v_count[2]~0_combout\);

-- Location: LCCOMB_X20_Y7_N0
\inst|v_count[6]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[6]~4_combout\ = (\inst|Add1~12_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(6))))) # (!\inst|Add1~12_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~12_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(6),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[6]~4_combout\);

-- Location: FF_X20_Y7_N1
\inst|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(6));

-- Location: LCCOMB_X20_Y7_N6
\inst|v_count[8]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[8]~6_combout\ = (\inst|Add1~16_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(8))))) # (!\inst|Add1~16_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~16_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(8),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[8]~6_combout\);

-- Location: FF_X20_Y7_N7
\inst|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(8));

-- Location: LCCOMB_X21_Y7_N20
\inst|v_count[7]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[7]~5_combout\ = (\inst|Add1~14_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(7))))) # (!\inst|Add1~14_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~14_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(7),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[7]~5_combout\);

-- Location: FF_X21_Y7_N21
\inst|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(7));

-- Location: LCCOMB_X21_Y7_N24
\inst|process_0~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~10_combout\ = (\inst|process_0~9_combout\ & (!\inst|v_count\(6) & (!\inst|v_count\(8) & !\inst|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~9_combout\,
	datab => \inst|v_count\(6),
	datac => \inst|v_count\(8),
	datad => \inst|v_count\(7),
	combout => \inst|process_0~10_combout\);

-- Location: LCCOMB_X24_Y7_N20
\inst|process_0~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~6_combout\ = ((!\inst|h_count\(2) & ((!\inst|h_count\(0)) # (!\inst|h_count\(1))))) # (!\inst|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(1),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(3),
	combout => \inst|process_0~6_combout\);

-- Location: LCCOMB_X24_Y7_N2
\inst|process_0~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~7_combout\ = (!\inst|h_count\(6) & (((\inst|process_0~6_combout\) # (!\inst|h_count\(5))) # (!\inst|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(4),
	datab => \inst|h_count\(5),
	datac => \inst|h_count\(6),
	datad => \inst|process_0~6_combout\,
	combout => \inst|process_0~7_combout\);

-- Location: LCCOMB_X24_Y7_N14
\inst|process_0~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~8_combout\ = (!\inst|h_count\(8) & ((\inst|process_0~7_combout\) # (!\inst|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|h_count\(7),
	datac => \inst|h_count\(8),
	datad => \inst|process_0~7_combout\,
	combout => \inst|process_0~8_combout\);

-- Location: LCCOMB_X21_Y7_N22
\inst|process_0~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~11_combout\ = ((\inst|process_0~10_combout\) # ((\inst|process_0~8_combout\) # (!\inst|v_count\(9)))) # (!\inst|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(9),
	datab => \inst|process_0~10_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|process_0~8_combout\,
	combout => \inst|process_0~11_combout\);

-- Location: LCCOMB_X21_Y7_N14
\inst|v_count[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[5]~1_combout\ = ((\inst|Equal0~1_combout\ & (\inst|Equal0~0_combout\ & !\inst|Equal1~0_combout\))) # (!\inst|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal0~1_combout\,
	datab => \inst|Equal0~0_combout\,
	datac => \inst|process_0~11_combout\,
	datad => \inst|Equal1~0_combout\,
	combout => \inst|v_count[5]~1_combout\);

-- Location: LCCOMB_X20_Y7_N4
\inst|v_count[9]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[9]~2_combout\ = (\inst|Add1~18_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(9))))) # (!\inst|Add1~18_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~18_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[9]~2_combout\);

-- Location: FF_X20_Y7_N5
\inst|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(9));

-- Location: LCCOMB_X21_Y7_N28
\inst|LessThan7~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|LessThan7~1_combout\ = (!\inst|LessThan7~0_combout\ & !\inst|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~0_combout\,
	datac => \inst|v_count\(9),
	combout => \inst|LessThan7~1_combout\);

-- Location: FF_X21_Y7_N1
\inst|video_on_v\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|LessThan7~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_v~q\);

-- Location: FF_X24_Y7_N1
\inst|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|video_on_h~q\);

-- Location: LCCOMB_X21_Y8_N0
\inst|red_out~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out~0_combout\ = (\inst|video_on_v~q\ & \inst|video_on_h~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|video_on_v~q\,
	datad => \inst|video_on_h~q\,
	combout => \inst|red_out~0_combout\);

-- Location: LCCOMB_X21_Y7_N12
\inst|v_count~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~10_combout\ = (\inst|Add1~2_combout\ & \inst|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~2_combout\,
	datac => \inst|process_0~11_combout\,
	combout => \inst|v_count~10_combout\);

-- Location: FF_X21_Y7_N13
\inst|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count~10_combout\,
	ena => \inst|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(1));

-- Location: LCCOMB_X21_Y6_N6
\inst|pixel_row[1]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[1]~feeder_combout\ = \inst|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(1),
	combout => \inst|pixel_row[1]~feeder_combout\);

-- Location: FF_X21_Y6_N7
\inst|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[1]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(1));

-- Location: LCCOMB_X20_Y7_N2
\inst|v_count[2]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[2]~9_combout\ = (\inst|Add1~4_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(2))))) # (!\inst|Add1~4_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~4_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(2),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[2]~9_combout\);

-- Location: FF_X20_Y7_N3
\inst|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[2]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(2));

-- Location: LCCOMB_X20_Y6_N4
\inst|pixel_row[2]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[2]~feeder_combout\ = \inst|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(2),
	combout => \inst|pixel_row[2]~feeder_combout\);

-- Location: FF_X20_Y6_N5
\inst|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[2]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(2));

-- Location: LCCOMB_X20_Y7_N8
\inst|v_count[3]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[3]~8_combout\ = (\inst|Add1~6_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(3))))) # (!\inst|Add1~6_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~6_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(3),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[3]~8_combout\);

-- Location: FF_X20_Y7_N9
\inst|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(3));

-- Location: FF_X21_Y6_N13
\inst|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(3),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(3));

-- Location: LCCOMB_X21_Y7_N30
\inst|v_count[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[4]~7_combout\ = (\inst|Add1~8_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(4))))) # (!\inst|Add1~8_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~8_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(4),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[4]~7_combout\);

-- Location: FF_X21_Y7_N31
\inst|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(4));

-- Location: FF_X21_Y6_N23
\inst|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(4),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(4));

-- Location: LCCOMB_X20_Y7_N10
\inst|v_count[5]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count[5]~3_combout\ = (\inst|Add1~10_combout\ & ((\inst|v_count[2]~0_combout\) # ((!\inst|v_count[5]~1_combout\ & \inst|v_count\(5))))) # (!\inst|Add1~10_combout\ & (!\inst|v_count[5]~1_combout\ & (\inst|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~10_combout\,
	datab => \inst|v_count[5]~1_combout\,
	datac => \inst|v_count\(5),
	datad => \inst|v_count[2]~0_combout\,
	combout => \inst|v_count[5]~3_combout\);

-- Location: FF_X20_Y7_N11
\inst|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(5));

-- Location: FF_X21_Y6_N15
\inst|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(5),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(5));

-- Location: FF_X21_Y6_N17
\inst|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(6),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(6));

-- Location: LCCOMB_X21_Y6_N24
\inst|pixel_row[7]~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|pixel_row[7]~feeder_combout\ = \inst|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|v_count\(7),
	combout => \inst|pixel_row[7]~feeder_combout\);

-- Location: FF_X21_Y6_N25
\inst|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|pixel_row[7]~feeder_combout\,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(7));

-- Location: FF_X21_Y6_N21
\inst|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(8),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(8));

-- Location: FF_X24_Y7_N23
\inst|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(2),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(2));

-- Location: LCCOMB_X24_Y7_N22
\inst12|Mux0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~2_combout\ = (\inst|pixel_column\(1) & (((\inst|pixel_column\(2))))) # (!\inst|pixel_column\(1) & ((\inst|pixel_column\(2) & ((\inst12|altsyncram_component|auto_generated|q_a\(5)))) # (!\inst|pixel_column\(2) & 
-- (\inst12|altsyncram_component|auto_generated|q_a\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(1),
	datab => \inst12|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst|pixel_column\(2),
	datad => \inst12|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst12|Mux0~2_combout\);

-- Location: FF_X24_Y7_N13
\inst|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(1),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(1));

-- Location: LCCOMB_X24_Y7_N16
\inst12|Mux0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst12|Mux0~3_combout\ = (\inst12|Mux0~2_combout\ & (((\inst12|altsyncram_component|auto_generated|q_a\(4)) # (!\inst|pixel_column\(1))))) # (!\inst12|Mux0~2_combout\ & (\inst12|altsyncram_component|auto_generated|q_a\(6) & ((\inst|pixel_column\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|altsyncram_component|auto_generated|q_a\(6),
	datab => \inst12|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst12|Mux0~2_combout\,
	datad => \inst|pixel_column\(1),
	combout => \inst12|Mux0~3_combout\);

-- Location: LCCOMB_X24_Y7_N26
\inst|red_out~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|red_out~1_combout\ = (\inst|red_out~0_combout\ & ((\inst|pixel_column\(3) & (\inst12|Mux0~1_combout\)) # (!\inst|pixel_column\(3) & ((\inst12|Mux0~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12|Mux0~1_combout\,
	datab => \inst|pixel_column\(3),
	datac => \inst|red_out~0_combout\,
	datad => \inst12|Mux0~3_combout\,
	combout => \inst|red_out~1_combout\);

-- Location: FF_X24_Y7_N27
\inst|red_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|red_out~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|red_out~q\);

-- Location: IOIBUF_X0_Y23_N1
\pb2~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb2,
	o => \pb2~input_o\);

-- Location: LCCOMB_X21_Y8_N2
\inst|green_out~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|green_out~4_combout\ = (\inst|video_on_v~q\ & (\pb2~input_o\ & \inst|video_on_h~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|video_on_v~q\,
	datac => \pb2~input_o\,
	datad => \inst|video_on_h~q\,
	combout => \inst|green_out~4_combout\);

-- Location: FF_X24_Y7_N29
\inst|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(7),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(7));

-- Location: FF_X24_Y6_N25
\inst|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(9),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(9));

-- Location: LCCOMB_X21_Y6_N16
\inst23|Add2~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~4_combout\ = (\inst|pixel_row\(6) & (\inst23|Add2~3\ $ (GND))) # (!\inst|pixel_row\(6) & (!\inst23|Add2~3\ & VCC))
-- \inst23|Add2~5\ = CARRY((\inst|pixel_row\(6) & !\inst23|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst23|Add2~3\,
	combout => \inst23|Add2~4_combout\,
	cout => \inst23|Add2~5\);

-- Location: LCCOMB_X21_Y6_N18
\inst23|Add2~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~6_combout\ = (\inst|pixel_row\(7) & (!\inst23|Add2~5\)) # (!\inst|pixel_row\(7) & ((\inst23|Add2~5\) # (GND)))
-- \inst23|Add2~7\ = CARRY((!\inst23|Add2~5\) # (!\inst|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(7),
	datad => VCC,
	cin => \inst23|Add2~5\,
	combout => \inst23|Add2~6_combout\,
	cout => \inst23|Add2~7\);

-- Location: LCCOMB_X21_Y6_N22
\inst23|Add2~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add2~10_combout\ = \inst23|Add2~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst23|Add2~9\,
	combout => \inst23|Add2~10_combout\);

-- Location: LCCOMB_X22_Y6_N0
\inst23|ball_y_pos[0]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[0]~10_combout\ = (\inst23|ball_y_motion\(0) & (\inst23|ball_y_pos\(0) $ (VCC))) # (!\inst23|ball_y_motion\(0) & (\inst23|ball_y_pos\(0) & VCC))
-- \inst23|ball_y_pos[0]~11\ = CARRY((\inst23|ball_y_motion\(0) & \inst23|ball_y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_motion\(0),
	datab => \inst23|ball_y_pos\(0),
	datad => VCC,
	combout => \inst23|ball_y_pos[0]~10_combout\,
	cout => \inst23|ball_y_pos[0]~11\);

-- Location: FF_X22_Y6_N1
\inst23|ball_y_pos[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[0]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(0));

-- Location: LCCOMB_X22_Y6_N2
\inst23|ball_y_pos[1]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[1]~12_combout\ = (\inst23|ball_y_motion\(1) & ((\inst23|ball_y_pos\(1) & (\inst23|ball_y_pos[0]~11\ & VCC)) # (!\inst23|ball_y_pos\(1) & (!\inst23|ball_y_pos[0]~11\)))) # (!\inst23|ball_y_motion\(1) & ((\inst23|ball_y_pos\(1) & 
-- (!\inst23|ball_y_pos[0]~11\)) # (!\inst23|ball_y_pos\(1) & ((\inst23|ball_y_pos[0]~11\) # (GND)))))
-- \inst23|ball_y_pos[1]~13\ = CARRY((\inst23|ball_y_motion\(1) & (!\inst23|ball_y_pos\(1) & !\inst23|ball_y_pos[0]~11\)) # (!\inst23|ball_y_motion\(1) & ((!\inst23|ball_y_pos[0]~11\) # (!\inst23|ball_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_motion\(1),
	datab => \inst23|ball_y_pos\(1),
	datad => VCC,
	cin => \inst23|ball_y_pos[0]~11\,
	combout => \inst23|ball_y_pos[1]~12_combout\,
	cout => \inst23|ball_y_pos[1]~13\);

-- Location: FF_X22_Y6_N3
\inst23|ball_y_pos[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[1]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(1));

-- Location: LCCOMB_X22_Y6_N4
\inst23|ball_y_pos[2]~14\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[2]~14_combout\ = ((\inst23|ball_y_motion\(2) $ (\inst23|ball_y_pos\(2) $ (!\inst23|ball_y_pos[1]~13\)))) # (GND)
-- \inst23|ball_y_pos[2]~15\ = CARRY((\inst23|ball_y_motion\(2) & ((\inst23|ball_y_pos\(2)) # (!\inst23|ball_y_pos[1]~13\))) # (!\inst23|ball_y_motion\(2) & (\inst23|ball_y_pos\(2) & !\inst23|ball_y_pos[1]~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_motion\(2),
	datab => \inst23|ball_y_pos\(2),
	datad => VCC,
	cin => \inst23|ball_y_pos[1]~13\,
	combout => \inst23|ball_y_pos[2]~14_combout\,
	cout => \inst23|ball_y_pos[2]~15\);

-- Location: FF_X22_Y6_N5
\inst23|ball_y_pos[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[2]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(2));

-- Location: LCCOMB_X22_Y6_N28
\inst23|LessThan4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan4~0_combout\ = (\inst23|ball_y_pos\(3) & ((\inst23|ball_y_pos\(0)) # ((\inst23|ball_y_pos\(2)) # (\inst23|ball_y_pos\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(3),
	datab => \inst23|ball_y_pos\(0),
	datac => \inst23|ball_y_pos\(2),
	datad => \inst23|ball_y_pos\(1),
	combout => \inst23|LessThan4~0_combout\);

-- Location: LCCOMB_X22_Y6_N6
\inst23|ball_y_pos[3]~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[3]~16_combout\ = (\inst23|ball_y_pos\(3) & ((\inst23|ball_y_motion\(3) & (\inst23|ball_y_pos[2]~15\ & VCC)) # (!\inst23|ball_y_motion\(3) & (!\inst23|ball_y_pos[2]~15\)))) # (!\inst23|ball_y_pos\(3) & ((\inst23|ball_y_motion\(3) & 
-- (!\inst23|ball_y_pos[2]~15\)) # (!\inst23|ball_y_motion\(3) & ((\inst23|ball_y_pos[2]~15\) # (GND)))))
-- \inst23|ball_y_pos[3]~17\ = CARRY((\inst23|ball_y_pos\(3) & (!\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[2]~15\)) # (!\inst23|ball_y_pos\(3) & ((!\inst23|ball_y_pos[2]~15\) # (!\inst23|ball_y_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(3),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[2]~15\,
	combout => \inst23|ball_y_pos[3]~16_combout\,
	cout => \inst23|ball_y_pos[3]~17\);

-- Location: LCCOMB_X22_Y6_N8
\inst23|ball_y_pos[4]~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[4]~18_combout\ = ((\inst23|ball_y_pos\(4) $ (\inst23|ball_y_motion\(3) $ (!\inst23|ball_y_pos[3]~17\)))) # (GND)
-- \inst23|ball_y_pos[4]~19\ = CARRY((\inst23|ball_y_pos\(4) & ((\inst23|ball_y_motion\(3)) # (!\inst23|ball_y_pos[3]~17\))) # (!\inst23|ball_y_pos\(4) & (\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[3]~17\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(4),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[3]~17\,
	combout => \inst23|ball_y_pos[4]~18_combout\,
	cout => \inst23|ball_y_pos[4]~19\);

-- Location: LCCOMB_X22_Y6_N10
\inst23|ball_y_pos[5]~20\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[5]~20_combout\ = (\inst23|ball_y_pos\(5) & ((\inst23|ball_y_motion\(3) & (\inst23|ball_y_pos[4]~19\ & VCC)) # (!\inst23|ball_y_motion\(3) & (!\inst23|ball_y_pos[4]~19\)))) # (!\inst23|ball_y_pos\(5) & ((\inst23|ball_y_motion\(3) & 
-- (!\inst23|ball_y_pos[4]~19\)) # (!\inst23|ball_y_motion\(3) & ((\inst23|ball_y_pos[4]~19\) # (GND)))))
-- \inst23|ball_y_pos[5]~21\ = CARRY((\inst23|ball_y_pos\(5) & (!\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[4]~19\)) # (!\inst23|ball_y_pos\(5) & ((!\inst23|ball_y_pos[4]~19\) # (!\inst23|ball_y_motion\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(5),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[4]~19\,
	combout => \inst23|ball_y_pos[5]~20_combout\,
	cout => \inst23|ball_y_pos[5]~21\);

-- Location: LCCOMB_X22_Y6_N16
\inst23|ball_y_pos[8]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[8]~26_combout\ = ((\inst23|ball_y_pos\(8) $ (\inst23|ball_y_motion\(3) $ (!\inst23|ball_y_pos[7]~25\)))) # (GND)
-- \inst23|ball_y_pos[8]~27\ = CARRY((\inst23|ball_y_pos\(8) & ((\inst23|ball_y_motion\(3)) # (!\inst23|ball_y_pos[7]~25\))) # (!\inst23|ball_y_pos\(8) & (\inst23|ball_y_motion\(3) & !\inst23|ball_y_pos[7]~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(8),
	datab => \inst23|ball_y_motion\(3),
	datad => VCC,
	cin => \inst23|ball_y_pos[7]~25\,
	combout => \inst23|ball_y_pos[8]~26_combout\,
	cout => \inst23|ball_y_pos[8]~27\);

-- Location: FF_X22_Y6_N17
\inst23|ball_y_pos[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[8]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(8));

-- Location: FF_X22_Y6_N9
\inst23|ball_y_pos[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[4]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(4));

-- Location: FF_X22_Y6_N11
\inst23|ball_y_pos[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[5]~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(5));

-- Location: LCCOMB_X22_Y6_N22
\inst23|LessThan4~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan4~1_combout\ = (\inst23|ball_y_pos\(6)) # ((\inst23|ball_y_pos\(8)) # ((\inst23|ball_y_pos\(4)) # (\inst23|ball_y_pos\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(6),
	datab => \inst23|ball_y_pos\(8),
	datac => \inst23|ball_y_pos\(4),
	datad => \inst23|ball_y_pos\(5),
	combout => \inst23|LessThan4~1_combout\);

-- Location: IOIBUF_X41_Y12_N22
\mouse_data~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => mouse_data,
	o => \mouse_data~input_o\);

-- Location: LCCOMB_X31_Y13_N22
\inst1|INCNT~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~0_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(2) $ (((\inst1|INCNT\(1) & \inst1|INCNT\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(3),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(2),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~0_combout\);

-- Location: LCCOMB_X31_Y13_N0
\inst1|INCNT[3]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT[3]~1_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & \inst1|READ_CHAR~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|READ_CHAR~q\,
	combout => \inst1|INCNT[3]~1_combout\);

-- Location: FF_X31_Y13_N23
\inst1|INCNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~0_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(2));

-- Location: LCCOMB_X31_Y13_N4
\inst1|INCNT~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~3_combout\ = (!\inst1|INCNT\(0) & (((!\inst1|INCNT\(1) & !\inst1|INCNT\(2))) # (!\inst1|INCNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(3),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(2),
	combout => \inst1|INCNT~3_combout\);

-- Location: FF_X31_Y13_N5
\inst1|INCNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~3_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(0));

-- Location: LCCOMB_X31_Y13_N28
\inst1|INCNT~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~4_combout\ = (\inst1|INCNT\(2) & (\inst1|INCNT\(1) & (!\inst1|INCNT\(3) & \inst1|INCNT\(0)))) # (!\inst1|INCNT\(2) & (!\inst1|INCNT\(1) & (\inst1|INCNT\(3) & !\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(3),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~4_combout\);

-- Location: FF_X31_Y13_N29
\inst1|INCNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~4_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(3));

-- Location: LCCOMB_X31_Y13_N14
\inst1|INCNT~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|INCNT~2_combout\ = (!\inst1|INCNT\(3) & (\inst1|INCNT\(1) $ (\inst1|INCNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|INCNT\(3),
	datac => \inst1|INCNT\(1),
	datad => \inst1|INCNT\(0),
	combout => \inst1|INCNT~2_combout\);

-- Location: FF_X31_Y13_N15
\inst1|INCNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|INCNT~2_combout\,
	ena => \inst1|INCNT[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|INCNT\(1));

-- Location: LCCOMB_X31_Y13_N26
\inst1|LessThan1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|LessThan1~0_combout\ = ((!\inst1|INCNT\(2) & (!\inst1|INCNT\(1) & !\inst1|INCNT\(0)))) # (!\inst1|INCNT\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|INCNT\(2),
	datab => \inst1|INCNT\(1),
	datac => \inst1|INCNT\(0),
	datad => \inst1|INCNT\(3),
	combout => \inst1|LessThan1~0_combout\);

-- Location: LCCOMB_X30_Y13_N22
\inst1|READ_CHAR~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|READ_CHAR~0_combout\ = (\inst1|READ_CHAR~q\ & ((\inst1|LessThan1~0_combout\))) # (!\inst1|READ_CHAR~q\ & (!\mouse_data~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mouse_data~input_o\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|READ_CHAR~0_combout\);

-- Location: FF_X30_Y13_N23
\inst1|READ_CHAR\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|READ_CHAR~0_combout\,
	ena => \inst1|ALT_INV_mouse_state.WAIT_OUTPUT_READY~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|READ_CHAR~q\);

-- Location: LCCOMB_X30_Y13_N30
\inst1|PACKET_COUNT[1]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~4_combout\ = (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & (\inst1|READ_CHAR~q\ & !\inst1|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datac => \inst1|READ_CHAR~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|PACKET_COUNT[1]~4_combout\);

-- Location: LCCOMB_X30_Y13_N4
\inst1|PACKET_COUNT[0]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[0]~3_combout\ = (\inst1|PACKET_COUNT[1]~4_combout\ & ((\inst1|PACKET_COUNT\(1)) # (!\inst1|PACKET_COUNT\(0)))) # (!\inst1|PACKET_COUNT[1]~4_combout\ & (\inst1|PACKET_COUNT\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|PACKET_COUNT[1]~4_combout\,
	datac => \inst1|PACKET_COUNT\(0),
	datad => \inst1|PACKET_COUNT\(1),
	combout => \inst1|PACKET_COUNT[0]~3_combout\);

-- Location: FF_X30_Y13_N5
\inst1|PACKET_COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(0));

-- Location: LCCOMB_X30_Y13_N8
\inst1|left_button~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~1_combout\ = (\inst1|READ_CHAR~q\ & (\inst1|PACKET_COUNT\(0) & (!\inst1|mouse_state.WAIT_OUTPUT_READY~q\ & !\inst1|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|READ_CHAR~q\,
	datab => \inst1|PACKET_COUNT\(0),
	datac => \inst1|mouse_state.WAIT_OUTPUT_READY~q\,
	datad => \inst1|LessThan1~0_combout\,
	combout => \inst1|left_button~1_combout\);

-- Location: LCCOMB_X30_Y13_N18
\inst1|PACKET_COUNT[1]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|PACKET_COUNT[1]~2_combout\ = \inst1|PACKET_COUNT\(1) $ (\inst1|left_button~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|PACKET_COUNT\(1),
	datad => \inst1|left_button~1_combout\,
	combout => \inst1|PACKET_COUNT[1]~2_combout\);

-- Location: FF_X30_Y13_N19
\inst1|PACKET_COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|PACKET_COUNT[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|PACKET_COUNT\(1));

-- Location: LCCOMB_X22_Y9_N28
\inst1|left_button~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|left_button~0_combout\ = (\inst1|PACKET_COUNT\(1) & ((\inst1|left_button~1_combout\ & (\inst1|PACKET_CHAR1\(0))) # (!\inst1|left_button~1_combout\ & ((\inst1|left_button~q\))))) # (!\inst1|PACKET_COUNT\(1) & (((\inst1|left_button~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|PACKET_CHAR1\(0),
	datab => \inst1|PACKET_COUNT\(1),
	datac => \inst1|left_button~q\,
	datad => \inst1|left_button~1_combout\,
	combout => \inst1|left_button~0_combout\);

-- Location: FF_X22_Y9_N29
\inst1|left_button\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst1|ALT_INV_MOUSE_CLK_FILTER~clkctrl_outclk\,
	d => \inst1|left_button~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|left_button~q\);

-- Location: LCCOMB_X21_Y6_N0
\inst23|Move_Ball~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Move_Ball~0_combout\ = (\inst1|left_button~q\ & ((\inst23|ball_y_pos\(7)) # ((\inst23|LessThan4~0_combout\) # (\inst23|LessThan4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(7),
	datab => \inst23|LessThan4~0_combout\,
	datac => \inst23|LessThan4~1_combout\,
	datad => \inst1|left_button~q\,
	combout => \inst23|Move_Ball~0_combout\);

-- Location: LCCOMB_X21_Y6_N4
\inst23|Move_Ball~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Move_Ball~1_combout\ = (!\inst23|ball_y_pos\(9) & \inst23|Move_Ball~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|ball_y_pos\(9),
	datad => \inst23|Move_Ball~0_combout\,
	combout => \inst23|Move_Ball~1_combout\);

-- Location: FF_X21_Y6_N5
\inst23|ball_y_motion[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|Move_Ball~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_motion\(3));

-- Location: LCCOMB_X22_Y6_N18
\inst23|ball_y_pos[9]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_y_pos[9]~28_combout\ = \inst23|ball_y_pos\(9) $ (\inst23|ball_y_motion\(3) $ (\inst23|ball_y_pos[8]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(9),
	datab => \inst23|ball_y_motion\(3),
	cin => \inst23|ball_y_pos[8]~27\,
	combout => \inst23|ball_y_pos[9]~28_combout\);

-- Location: FF_X22_Y6_N19
\inst23|ball_y_pos[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[9]~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(9));

-- Location: FF_X22_Y6_N7
\inst23|ball_y_pos[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|vert_sync_out~clkctrl_outclk\,
	d => \inst23|ball_y_pos[3]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst23|ball_y_pos\(3));

-- Location: LCCOMB_X20_Y6_N6
\inst23|LessThan2~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~1_cout\ = CARRY((!\inst|pixel_row\(0) & \inst23|ball_y_pos\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(0),
	datab => \inst23|ball_y_pos\(0),
	datad => VCC,
	cout => \inst23|LessThan2~1_cout\);

-- Location: LCCOMB_X20_Y6_N8
\inst23|LessThan2~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~3_cout\ = CARRY((\inst23|ball_y_pos\(1) & (\inst|pixel_row\(1) & !\inst23|LessThan2~1_cout\)) # (!\inst23|ball_y_pos\(1) & ((\inst|pixel_row\(1)) # (!\inst23|LessThan2~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(1),
	datab => \inst|pixel_row\(1),
	datad => VCC,
	cin => \inst23|LessThan2~1_cout\,
	cout => \inst23|LessThan2~3_cout\);

-- Location: LCCOMB_X20_Y6_N10
\inst23|LessThan2~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~5_cout\ = CARRY((\inst|pixel_row\(2) & (\inst23|ball_y_pos\(2) & !\inst23|LessThan2~3_cout\)) # (!\inst|pixel_row\(2) & ((\inst23|ball_y_pos\(2)) # (!\inst23|LessThan2~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst23|ball_y_pos\(2),
	datad => VCC,
	cin => \inst23|LessThan2~3_cout\,
	cout => \inst23|LessThan2~5_cout\);

-- Location: LCCOMB_X20_Y6_N12
\inst23|LessThan2~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~7_cout\ = CARRY((\inst|pixel_row\(3) & (!\inst23|ball_y_pos\(3) & !\inst23|LessThan2~5_cout\)) # (!\inst|pixel_row\(3) & ((!\inst23|LessThan2~5_cout\) # (!\inst23|ball_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst23|ball_y_pos\(3),
	datad => VCC,
	cin => \inst23|LessThan2~5_cout\,
	cout => \inst23|LessThan2~7_cout\);

-- Location: LCCOMB_X20_Y6_N14
\inst23|LessThan2~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~9_cout\ = CARRY((\inst23|Add2~0_combout\ & (\inst23|ball_y_pos\(4) & !\inst23|LessThan2~7_cout\)) # (!\inst23|Add2~0_combout\ & ((\inst23|ball_y_pos\(4)) # (!\inst23|LessThan2~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add2~0_combout\,
	datab => \inst23|ball_y_pos\(4),
	datad => VCC,
	cin => \inst23|LessThan2~7_cout\,
	cout => \inst23|LessThan2~9_cout\);

-- Location: LCCOMB_X20_Y6_N16
\inst23|LessThan2~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~11_cout\ = CARRY((\inst23|Add2~2_combout\ & ((!\inst23|LessThan2~9_cout\) # (!\inst23|ball_y_pos\(5)))) # (!\inst23|Add2~2_combout\ & (!\inst23|ball_y_pos\(5) & !\inst23|LessThan2~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add2~2_combout\,
	datab => \inst23|ball_y_pos\(5),
	datad => VCC,
	cin => \inst23|LessThan2~9_cout\,
	cout => \inst23|LessThan2~11_cout\);

-- Location: LCCOMB_X20_Y6_N18
\inst23|LessThan2~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~13_cout\ = CARRY((\inst23|ball_y_pos\(6) & ((!\inst23|LessThan2~11_cout\) # (!\inst23|Add2~4_combout\))) # (!\inst23|ball_y_pos\(6) & (!\inst23|Add2~4_combout\ & !\inst23|LessThan2~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(6),
	datab => \inst23|Add2~4_combout\,
	datad => VCC,
	cin => \inst23|LessThan2~11_cout\,
	cout => \inst23|LessThan2~13_cout\);

-- Location: LCCOMB_X20_Y6_N20
\inst23|LessThan2~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~15_cout\ = CARRY((\inst23|ball_y_pos\(7) & (\inst23|Add2~6_combout\ & !\inst23|LessThan2~13_cout\)) # (!\inst23|ball_y_pos\(7) & ((\inst23|Add2~6_combout\) # (!\inst23|LessThan2~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(7),
	datab => \inst23|Add2~6_combout\,
	datad => VCC,
	cin => \inst23|LessThan2~13_cout\,
	cout => \inst23|LessThan2~15_cout\);

-- Location: LCCOMB_X20_Y6_N22
\inst23|LessThan2~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~17_cout\ = CARRY((\inst23|Add2~8_combout\ & (\inst23|ball_y_pos\(8) & !\inst23|LessThan2~15_cout\)) # (!\inst23|Add2~8_combout\ & ((\inst23|ball_y_pos\(8)) # (!\inst23|LessThan2~15_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add2~8_combout\,
	datab => \inst23|ball_y_pos\(8),
	datad => VCC,
	cin => \inst23|LessThan2~15_cout\,
	cout => \inst23|LessThan2~17_cout\);

-- Location: LCCOMB_X20_Y6_N24
\inst23|LessThan2~18\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan2~18_combout\ = (\inst23|Add2~10_combout\ & (\inst23|LessThan2~17_cout\ & \inst23|ball_y_pos\(9))) # (!\inst23|Add2~10_combout\ & ((\inst23|LessThan2~17_cout\) # (\inst23|ball_y_pos\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst23|Add2~10_combout\,
	datad => \inst23|ball_y_pos\(9),
	cin => \inst23|LessThan2~17_cout\,
	combout => \inst23|LessThan2~18_combout\);

-- Location: LCCOMB_X24_Y6_N4
\inst23|ball_on~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~3_combout\ = (\inst|pixel_column\(8)) # ((\inst|pixel_column\(7)) # ((\inst|pixel_column\(9)) # (\inst23|LessThan2~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_column\(8),
	datab => \inst|pixel_column\(7),
	datac => \inst|pixel_column\(9),
	datad => \inst23|LessThan2~18_combout\,
	combout => \inst23|ball_on~3_combout\);

-- Location: FF_X24_Y6_N17
\inst|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(5),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(5));

-- Location: FF_X24_Y6_N7
\inst|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(4),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(4));

-- Location: FF_X24_Y6_N21
\inst|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|h_count\(6),
	sload => VCC,
	ena => \inst|LessThan6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_column\(6));

-- Location: LCCOMB_X24_Y6_N28
\inst23|ball_on~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~5_combout\ = (\inst|pixel_column\(5) & (\inst|pixel_column\(6) & ((\inst23|ball_on~4_combout\) # (\inst|pixel_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_on~4_combout\,
	datab => \inst|pixel_column\(5),
	datac => \inst|pixel_column\(4),
	datad => \inst|pixel_column\(6),
	combout => \inst23|ball_on~5_combout\);

-- Location: LCCOMB_X23_Y6_N2
\inst23|Add3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~0_combout\ = (\inst23|ball_y_pos\(4) & (\inst23|ball_y_pos\(3) $ (VCC))) # (!\inst23|ball_y_pos\(4) & (\inst23|ball_y_pos\(3) & VCC))
-- \inst23|Add3~1\ = CARRY((\inst23|ball_y_pos\(4) & \inst23|ball_y_pos\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(4),
	datab => \inst23|ball_y_pos\(3),
	datad => VCC,
	combout => \inst23|Add3~0_combout\,
	cout => \inst23|Add3~1\);

-- Location: LCCOMB_X23_Y6_N4
\inst23|Add3~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~2_combout\ = (\inst23|ball_y_pos\(5) & (!\inst23|Add3~1\)) # (!\inst23|ball_y_pos\(5) & ((\inst23|Add3~1\) # (GND)))
-- \inst23|Add3~3\ = CARRY((!\inst23|Add3~1\) # (!\inst23|ball_y_pos\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(5),
	datad => VCC,
	cin => \inst23|Add3~1\,
	combout => \inst23|Add3~2_combout\,
	cout => \inst23|Add3~3\);

-- Location: LCCOMB_X23_Y6_N8
\inst23|Add3~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~6_combout\ = (\inst23|ball_y_pos\(7) & (!\inst23|Add3~5\)) # (!\inst23|ball_y_pos\(7) & ((\inst23|Add3~5\) # (GND)))
-- \inst23|Add3~7\ = CARRY((!\inst23|Add3~5\) # (!\inst23|ball_y_pos\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(7),
	datad => VCC,
	cin => \inst23|Add3~5\,
	combout => \inst23|Add3~6_combout\,
	cout => \inst23|Add3~7\);

-- Location: LCCOMB_X23_Y6_N10
\inst23|Add3~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~8_combout\ = (\inst23|ball_y_pos\(8) & (\inst23|Add3~7\ $ (GND))) # (!\inst23|ball_y_pos\(8) & (!\inst23|Add3~7\ & VCC))
-- \inst23|Add3~9\ = CARRY((\inst23|ball_y_pos\(8) & !\inst23|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(8),
	datad => VCC,
	cin => \inst23|Add3~7\,
	combout => \inst23|Add3~8_combout\,
	cout => \inst23|Add3~9\);

-- Location: LCCOMB_X23_Y6_N12
\inst23|Add3~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|Add3~10_combout\ = \inst23|Add3~9\ $ (\inst23|ball_y_pos\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst23|ball_y_pos\(9),
	cin => \inst23|Add3~9\,
	combout => \inst23|Add3~10_combout\);

-- Location: LCCOMB_X23_Y6_N0
\inst23|ball_on~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~6_combout\ = (\inst23|Add2~10_combout\) # (\inst23|Add3~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst23|Add2~10_combout\,
	datad => \inst23|Add3~10_combout\,
	combout => \inst23|ball_on~6_combout\);

-- Location: LCCOMB_X21_Y7_N18
\inst|v_count~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|v_count~11_combout\ = (\inst|Add1~0_combout\ & \inst|process_0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add1~0_combout\,
	datac => \inst|process_0~11_combout\,
	combout => \inst|v_count~11_combout\);

-- Location: FF_X21_Y7_N19
\inst|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|v_count~11_combout\,
	ena => \inst|v_count[5]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|v_count\(0));

-- Location: FF_X20_Y6_N31
\inst|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|v_count\(0),
	sload => VCC,
	ena => \inst|LessThan7~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|pixel_row\(0));

-- Location: LCCOMB_X23_Y6_N14
\inst23|LessThan3~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~1_cout\ = CARRY((!\inst23|ball_y_pos\(0) & \inst|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(0),
	datab => \inst|pixel_row\(0),
	datad => VCC,
	cout => \inst23|LessThan3~1_cout\);

-- Location: LCCOMB_X23_Y6_N16
\inst23|LessThan3~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~3_cout\ = CARRY((\inst23|ball_y_pos\(1) & ((!\inst23|LessThan3~1_cout\) # (!\inst|pixel_row\(1)))) # (!\inst23|ball_y_pos\(1) & (!\inst|pixel_row\(1) & !\inst23|LessThan3~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_y_pos\(1),
	datab => \inst|pixel_row\(1),
	datad => VCC,
	cin => \inst23|LessThan3~1_cout\,
	cout => \inst23|LessThan3~3_cout\);

-- Location: LCCOMB_X23_Y6_N18
\inst23|LessThan3~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~5_cout\ = CARRY((\inst|pixel_row\(2) & ((!\inst23|LessThan3~3_cout\) # (!\inst23|ball_y_pos\(2)))) # (!\inst|pixel_row\(2) & (!\inst23|ball_y_pos\(2) & !\inst23|LessThan3~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(2),
	datab => \inst23|ball_y_pos\(2),
	datad => VCC,
	cin => \inst23|LessThan3~3_cout\,
	cout => \inst23|LessThan3~5_cout\);

-- Location: LCCOMB_X23_Y6_N20
\inst23|LessThan3~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~7_cout\ = CARRY((\inst|pixel_row\(3) & (!\inst23|ball_y_pos\(3) & !\inst23|LessThan3~5_cout\)) # (!\inst|pixel_row\(3) & ((!\inst23|LessThan3~5_cout\) # (!\inst23|ball_y_pos\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(3),
	datab => \inst23|ball_y_pos\(3),
	datad => VCC,
	cin => \inst23|LessThan3~5_cout\,
	cout => \inst23|LessThan3~7_cout\);

-- Location: LCCOMB_X23_Y6_N22
\inst23|LessThan3~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~9_cout\ = CARRY((\inst|pixel_row\(4) & ((!\inst23|LessThan3~7_cout\) # (!\inst23|Add3~0_combout\))) # (!\inst|pixel_row\(4) & (!\inst23|Add3~0_combout\ & !\inst23|LessThan3~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(4),
	datab => \inst23|Add3~0_combout\,
	datad => VCC,
	cin => \inst23|LessThan3~7_cout\,
	cout => \inst23|LessThan3~9_cout\);

-- Location: LCCOMB_X23_Y6_N24
\inst23|LessThan3~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~11_cout\ = CARRY((\inst|pixel_row\(5) & (\inst23|Add3~2_combout\ & !\inst23|LessThan3~9_cout\)) # (!\inst|pixel_row\(5) & ((\inst23|Add3~2_combout\) # (!\inst23|LessThan3~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(5),
	datab => \inst23|Add3~2_combout\,
	datad => VCC,
	cin => \inst23|LessThan3~9_cout\,
	cout => \inst23|LessThan3~11_cout\);

-- Location: LCCOMB_X23_Y6_N26
\inst23|LessThan3~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~13_cout\ = CARRY((\inst23|Add3~4_combout\ & (\inst|pixel_row\(6) & !\inst23|LessThan3~11_cout\)) # (!\inst23|Add3~4_combout\ & ((\inst|pixel_row\(6)) # (!\inst23|LessThan3~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add3~4_combout\,
	datab => \inst|pixel_row\(6),
	datad => VCC,
	cin => \inst23|LessThan3~11_cout\,
	cout => \inst23|LessThan3~13_cout\);

-- Location: LCCOMB_X23_Y6_N28
\inst23|LessThan3~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~15_cout\ = CARRY((\inst|pixel_row\(7) & (\inst23|Add3~6_combout\ & !\inst23|LessThan3~13_cout\)) # (!\inst|pixel_row\(7) & ((\inst23|Add3~6_combout\) # (!\inst23|LessThan3~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|pixel_row\(7),
	datab => \inst23|Add3~6_combout\,
	datad => VCC,
	cin => \inst23|LessThan3~13_cout\,
	cout => \inst23|LessThan3~15_cout\);

-- Location: LCCOMB_X23_Y6_N30
\inst23|LessThan3~16\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|LessThan3~16_combout\ = (\inst|pixel_row\(8) & ((!\inst23|Add3~8_combout\) # (!\inst23|LessThan3~15_cout\))) # (!\inst|pixel_row\(8) & (!\inst23|LessThan3~15_cout\ & !\inst23|Add3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|pixel_row\(8),
	datad => \inst23|Add3~8_combout\,
	cin => \inst23|LessThan3~15_cout\,
	combout => \inst23|LessThan3~16_combout\);

-- Location: LCCOMB_X24_Y6_N2
\inst23|ball_on~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst23|ball_on~7_combout\ = (\inst23|Add0~12_combout\) # ((\inst23|ball_on~5_combout\) # ((\inst23|ball_on~6_combout\) # (\inst23|LessThan3~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|Add0~12_combout\,
	datab => \inst23|ball_on~5_combout\,
	datac => \inst23|ball_on~6_combout\,
	datad => \inst23|LessThan3~16_combout\,
	combout => \inst23|ball_on~7_combout\);

-- Location: LCCOMB_X24_Y6_N12
\inst|green_out~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|green_out~2_combout\ = (\inst|green_out~4_combout\ & ((\inst23|ball_on~2_combout\) # ((\inst23|ball_on~3_combout\) # (\inst23|ball_on~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_on~2_combout\,
	datab => \inst|green_out~4_combout\,
	datac => \inst23|ball_on~3_combout\,
	datad => \inst23|ball_on~7_combout\,
	combout => \inst|green_out~2_combout\);

-- Location: FF_X24_Y6_N13
\inst|green_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|green_out~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|green_out~q\);

-- Location: LCCOMB_X24_Y6_N30
\inst|green_out~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|green_out~3_combout\ = (\inst|red_out~0_combout\ & ((\inst23|ball_on~2_combout\) # ((\inst23|ball_on~3_combout\) # (\inst23|ball_on~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|ball_on~2_combout\,
	datab => \inst|red_out~0_combout\,
	datac => \inst23|ball_on~3_combout\,
	datad => \inst23|ball_on~7_combout\,
	combout => \inst|green_out~3_combout\);

-- Location: FF_X24_Y6_N31
\inst|blue_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|green_out~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|blue_out~q\);

-- Location: LCCOMB_X24_Y7_N8
\inst|process_0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~1_combout\ = (\inst|h_count\(2)) # ((\inst|h_count\(1) & (\inst|h_count\(0) & !\inst|h_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(2),
	datab => \inst|h_count\(1),
	datac => \inst|h_count\(0),
	datad => \inst|h_count\(5),
	combout => \inst|process_0~1_combout\);

-- Location: LCCOMB_X24_Y7_N28
\inst|process_0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~2_combout\ = (\inst|h_count\(4) & ((\inst|process_0~1_combout\) # (\inst|h_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|h_count\(4),
	datab => \inst|process_0~1_combout\,
	datad => \inst|h_count\(3),
	combout => \inst|process_0~2_combout\);

-- Location: LCCOMB_X24_Y7_N4
\inst|process_0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~3_combout\ = ((\inst|h_count\(5) & (\inst|h_count\(6) & \inst|process_0~2_combout\)) # (!\inst|h_count\(5) & (!\inst|h_count\(6) & !\inst|process_0~2_combout\))) # (!\inst|process_0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|process_0~0_combout\,
	datab => \inst|h_count\(5),
	datac => \inst|h_count\(6),
	datad => \inst|process_0~2_combout\,
	combout => \inst|process_0~3_combout\);

-- Location: FF_X24_Y7_N5
\inst|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|process_0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync~q\);

-- Location: FF_X24_Y7_N31
\inst|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	asdata => \inst|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|horiz_sync_out~q\);

-- Location: LCCOMB_X21_Y7_N4
\inst|process_0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~4_combout\ = ((\inst|v_count\(0) $ (!\inst|v_count\(1))) # (!\inst|v_count\(2))) # (!\inst|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|v_count\(3),
	datab => \inst|v_count\(0),
	datac => \inst|v_count\(1),
	datad => \inst|v_count\(2),
	combout => \inst|process_0~4_combout\);

-- Location: LCCOMB_X21_Y7_N2
\inst|process_0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|process_0~5_combout\ = ((\inst|process_0~4_combout\) # ((\inst|v_count\(9)) # (\inst|v_count\(4)))) # (!\inst|LessThan7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LessThan7~0_combout\,
	datab => \inst|process_0~4_combout\,
	datac => \inst|v_count\(9),
	datad => \inst|v_count\(4),
	combout => \inst|process_0~5_combout\);

-- Location: FF_X21_Y7_N3
\inst|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|process_0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync~q\);

-- Location: LCCOMB_X40_Y15_N26
\inst|vert_sync_out~feeder\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|vert_sync_out~feeder_combout\ = \inst|vert_sync~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|vert_sync~q\,
	combout => \inst|vert_sync_out~feeder_combout\);

-- Location: FF_X40_Y15_N27
\inst|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst3|altpll_component|auto_generated|wire_pll1_clk[0]~clkctrl_outclk\,
	d => \inst|vert_sync_out~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|vert_sync_out~q\);

-- Location: LCCOMB_X27_Y27_N18
\inst20|Q[0]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[0]~7_combout\ = \inst20|Q\(0) $ (VCC)
-- \inst20|Q[0]~8\ = CARRY(\inst20|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(0),
	datad => VCC,
	combout => \inst20|Q[0]~7_combout\,
	cout => \inst20|Q[0]~8\);

-- Location: LCCOMB_X27_Y27_N22
\inst20|Q[2]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[2]~11_combout\ = (\inst20|Q\(2) & (\inst20|Q[1]~10\ $ (GND))) # (!\inst20|Q\(2) & (!\inst20|Q[1]~10\ & VCC))
-- \inst20|Q[2]~12\ = CARRY((\inst20|Q\(2) & !\inst20|Q[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(2),
	datad => VCC,
	cin => \inst20|Q[1]~10\,
	combout => \inst20|Q[2]~11_combout\,
	cout => \inst20|Q[2]~12\);

-- Location: LCCOMB_X27_Y27_N24
\inst20|Q[3]~13\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[3]~13_combout\ = (\inst20|Q\(3) & (!\inst20|Q[2]~12\)) # (!\inst20|Q\(3) & ((\inst20|Q[2]~12\) # (GND)))
-- \inst20|Q[3]~14\ = CARRY((!\inst20|Q[2]~12\) # (!\inst20|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(3),
	datad => VCC,
	cin => \inst20|Q[2]~12\,
	combout => \inst20|Q[3]~13_combout\,
	cout => \inst20|Q[3]~14\);

-- Location: FF_X27_Y27_N25
\inst20|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[3]~13_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(3));

-- Location: LCCOMB_X27_Y27_N26
\inst20|Q[4]~15\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[4]~15_combout\ = (\inst20|Q\(4) & (\inst20|Q[3]~14\ $ (GND))) # (!\inst20|Q\(4) & (!\inst20|Q[3]~14\ & VCC))
-- \inst20|Q[4]~16\ = CARRY((\inst20|Q\(4) & !\inst20|Q[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(4),
	datad => VCC,
	cin => \inst20|Q[3]~14\,
	combout => \inst20|Q[4]~15_combout\,
	cout => \inst20|Q[4]~16\);

-- Location: LCCOMB_X27_Y27_N28
\inst20|Q[5]~17\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[5]~17_combout\ = (\inst20|Q\(5) & (!\inst20|Q[4]~16\)) # (!\inst20|Q\(5) & ((\inst20|Q[4]~16\) # (GND)))
-- \inst20|Q[5]~18\ = CARRY((!\inst20|Q[4]~16\) # (!\inst20|Q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(5),
	datad => VCC,
	cin => \inst20|Q[4]~16\,
	combout => \inst20|Q[5]~17_combout\,
	cout => \inst20|Q[5]~18\);

-- Location: FF_X27_Y27_N29
\inst20|Q[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[5]~17_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(5));

-- Location: LCCOMB_X27_Y27_N30
\inst20|Q[6]~19\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[6]~19_combout\ = \inst20|Q\(6) $ (!\inst20|Q[5]~18\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(6),
	cin => \inst20|Q[5]~18\,
	combout => \inst20|Q[6]~19_combout\);

-- Location: FF_X27_Y27_N31
\inst20|Q[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[6]~19_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(6));

-- Location: LCCOMB_X27_Y27_N16
\inst20|LessThan0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|LessThan0~0_combout\ = (!\inst20|Q\(4) & (!\inst20|Q\(3) & ((!\inst20|Q\(1)) # (!\inst20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(4),
	datab => \inst20|Q\(0),
	datac => \inst20|Q\(1),
	datad => \inst20|Q\(3),
	combout => \inst20|LessThan0~0_combout\);

-- Location: LCCOMB_X27_Y27_N6
\inst20|LessThan0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|LessThan0~1_combout\ = (\inst20|Q\(5) & (\inst20|Q\(6) & ((\inst20|Q\(2)) # (!\inst20|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(2),
	datab => \inst20|Q\(5),
	datac => \inst20|Q\(6),
	datad => \inst20|LessThan0~0_combout\,
	combout => \inst20|LessThan0~1_combout\);

-- Location: FF_X27_Y27_N19
\inst20|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[0]~7_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(0));

-- Location: LCCOMB_X27_Y27_N20
\inst20|Q[1]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Q[1]~9_combout\ = (\inst20|Q\(1) & (!\inst20|Q[0]~8\)) # (!\inst20|Q\(1) & ((\inst20|Q[0]~8\) # (GND)))
-- \inst20|Q[1]~10\ = CARRY((!\inst20|Q[0]~8\) # (!\inst20|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(1),
	datad => VCC,
	cin => \inst20|Q[0]~8\,
	combout => \inst20|Q[1]~9_combout\,
	cout => \inst20|Q[1]~10\);

-- Location: FF_X27_Y27_N21
\inst20|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[1]~9_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(1));

-- Location: FF_X27_Y27_N23
\inst20|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[2]~11_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(2));

-- Location: LCCOMB_X27_Y27_N12
\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\ = (\inst20|Q\(6) & (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ $ (GND))) # (!\inst20|Q\(6) & 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\ & VCC))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\ = CARRY((\inst20|Q\(6) & !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(6),
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~3\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\);

-- Location: LCCOMB_X27_Y27_N14
\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X27_Y27_N4
\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ = (\inst20|Q\(6) & \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(6),
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\);

-- Location: LCCOMB_X28_Y27_N28
\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\);

-- Location: LCCOMB_X28_Y27_N20
\inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[22]~43_combout\);

-- Location: LCCOMB_X28_Y27_N16
\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\ = (\inst20|Q\(3) & !\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(3),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\);

-- Location: LCCOMB_X28_Y27_N0
\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~44_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[21]~45_combout\,
	datad => VCC,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X28_Y27_N4
\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((((\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\)))))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~40_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[23]~41_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\);

-- Location: LCCOMB_X28_Y27_N6
\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~39_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[24]~38_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\);

-- Location: LCCOMB_X28_Y27_N8
\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X28_Y28_N24
\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~46_combout\);

-- Location: LCCOMB_X28_Y28_N2
\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~47_combout\);

-- Location: FF_X27_Y27_N27
\inst20|Q[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|output~clkctrl_outclk\,
	d => \inst20|Q[4]~15_combout\,
	sclr => \inst20|LessThan0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst20|Q\(4));

-- Location: LCCOMB_X28_Y27_N18
\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst20|Q\(4)))) 
-- # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst20|Q\(4),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\);

-- Location: LCCOMB_X28_Y27_N14
\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ = (!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\);

-- Location: LCCOMB_X26_Y28_N4
\inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\ = (\inst20|Q\(2) & \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(2),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[28]~51_combout\);

-- Location: LCCOMB_X28_Y28_N8
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~49_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[29]~50_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~1\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~3\);

-- Location: LCCOMB_X28_Y28_N16
\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ = !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[5]~9\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\);

-- Location: LCCOMB_X27_Y28_N24
\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\ = (\inst20|Q\(2) & \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(2),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\);

-- Location: LCCOMB_X27_Y27_N0
\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst20|Q\(6))) # 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(6),
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_3_result_int[3]~4_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\);

-- Location: LCCOMB_X28_Y28_N0
\inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\) # 
-- ((!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[4]~6_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|StageOut[32]~67_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\);

-- Location: LCCOMB_X27_Y28_N2
\inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\) # 
-- ((!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[31]~68_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[3]~4_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\);

-- Location: LCCOMB_X28_Y28_N18
\inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\) # 
-- ((\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|StageOut[30]~69_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\);

-- Location: LCCOMB_X28_Y27_N24
\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst20|Q\(3))) # 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	datab => \inst20|Q\(3),
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\);

-- Location: LCCOMB_X28_Y28_N26
\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[1]~0_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\);

-- Location: LCCOMB_X27_Y28_N8
\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\ = (\inst20|Q\(1) & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(1),
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\);

-- Location: LCCOMB_X27_Y28_N10
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\ = (((\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\)))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ = CARRY((\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\) # (\inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~53_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[35]~54_combout\,
	datad => VCC,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\);

-- Location: LCCOMB_X27_Y28_N14
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((((\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\)))))
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\);

-- Location: LCCOMB_X27_Y28_N16
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~57_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[38]~66_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X27_Y28_N18
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\ = CARRY((\inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\) # ((\inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\) # 
-- (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~56_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[39]~65_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\);

-- Location: LCCOMB_X27_Y28_N20
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\ = CARRY((!\inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\ & 
-- !\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~55_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[40]~64_combout\,
	datad => VCC,
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[5]~9_cout\,
	cout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\);

-- Location: LCCOMB_X27_Y28_N22
\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ = \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[6]~11_cout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\);

-- Location: LCCOMB_X27_Y28_N6
\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\) # 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[2]~2_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~59_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[36]~60_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\);

-- Location: LCCOMB_X28_Y28_N28
\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\ & !\inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[2]~2_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_5_result_int[6]~10_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\);

-- Location: LCCOMB_X27_Y28_N28
\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\) # 
-- ((\inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (((\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~70_combout\,
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[3]~4_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[37]~58_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\);

-- Location: LCCOMB_X27_Y28_N4
\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ = (\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ & (\inst20|Q\(1))) # (!\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\ 
-- & ((\inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(1),
	datac => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[7]~12_combout\,
	datad => \inst20|Mod0|auto_generated|divider|divider|add_sub_6_result_int[1]~0_combout\,
	combout => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\);

-- Location: LCCOMB_X26_Y28_N2
\inst6|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux0~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (!\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & ((!\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # 
-- (!\inst20|Q\(0))))) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ $ (((\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux0~0_combout\);

-- Location: LCCOMB_X26_Y28_N8
\inst6|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux1~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # ((\inst20|Q\(0) & 
-- \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\) # 
-- ((!\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \inst20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux1~0_combout\);

-- Location: LCCOMB_X26_Y28_N22
\inst6|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux2~0_combout\ = (\inst20|Q\(0)) # ((\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\))) # 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux2~0_combout\);

-- Location: LCCOMB_X26_Y28_N12
\inst6|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux3~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (\inst20|Q\(0) $ 
-- (!\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\inst20|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux3~0_combout\);

-- Location: LCCOMB_X26_Y28_N10
\inst6|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux4~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (!\inst20|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux4~0_combout\);

-- Location: LCCOMB_X26_Y28_N24
\inst6|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux5~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & ((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\) # (\inst20|Q\(0) $ 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ & (\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & 
-- ((\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux5~0_combout\);

-- Location: LCCOMB_X26_Y28_N30
\inst6|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst6|Mux6~0_combout\ = (\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & (((\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\)))) # (!\inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\ & 
-- (\inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\ $ (((!\inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\ & \inst20|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Mod0|auto_generated|divider|divider|StageOut[44]~62_combout\,
	datab => \inst20|Mod0|auto_generated|divider|divider|StageOut[45]~63_combout\,
	datac => \inst20|Q\(0),
	datad => \inst20|Mod0|auto_generated|divider|divider|StageOut[43]~61_combout\,
	combout => \inst6|Mux6~0_combout\);

-- Location: LCCOMB_X24_Y27_N22
\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ = \inst20|Q\(4) $ (VCC)
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\ = CARRY(\inst20|Q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(4),
	datad => VCC,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~1\);

-- Location: LCCOMB_X24_Y27_N28
\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ = !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[3]~5\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\);

-- Location: LCCOMB_X24_Y27_N4
\inst20|Div0|auto_generated|divider|divider|StageOut[18]~26\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & \inst20|Q\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst20|Q\(6),
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\);

-- Location: LCCOMB_X24_Y27_N20
\inst20|Div0|auto_generated|divider|divider|StageOut[17]~28\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\ = (\inst20|Q\(5) & \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(5),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[17]~28_combout\);

-- Location: LCCOMB_X24_Y27_N8
\inst20|Div0|auto_generated|divider|divider|StageOut[16]~31\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[1]~0_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\);

-- Location: LCCOMB_X26_Y27_N8
\inst20|Div0|auto_generated|divider|divider|StageOut[15]~33\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\ = (\inst20|Q\(3) & !\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|Q\(3),
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\);

-- Location: LCCOMB_X24_Y27_N10
\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\ = (((\inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\)))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ = CARRY((\inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\) # (\inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[15]~32_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[15]~33_combout\,
	datad => VCC,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\);

-- Location: LCCOMB_X24_Y27_N12
\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (((\inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & 
-- (!\inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\)))
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[16]~30_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[16]~31_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~1\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~3\);

-- Location: LCCOMB_X24_Y27_N16
\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[18]~27_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[18]~26_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[3]~5\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y27_N18
\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ = \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[4]~7_cout\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y27_N0
\inst20|Div0|auto_generated|divider|divider|StageOut[23]~47\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & ((\inst20|Q\(5)))) 
-- # (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[2]~2_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datac => \inst20|Q\(5),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\);

-- Location: LCCOMB_X24_Y28_N14
\inst20|Div0|auto_generated|divider|divider|StageOut[22]~35\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[22]~35_combout\);

-- Location: LCCOMB_X24_Y28_N0
\inst20|Div0|auto_generated|divider|divider|StageOut[21]~36\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\ = (\inst20|Q\(3) & \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(3),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[21]~36_combout\);

-- Location: LCCOMB_X24_Y28_N8
\inst20|Div0|auto_generated|divider|divider|StageOut[20]~38\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\ = (\inst20|Q\(2) & \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Q\(2),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[20]~38_combout\);

-- Location: LCCOMB_X24_Y28_N22
\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[23]~34_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[23]~47_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[3]~5\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\);

-- Location: LCCOMB_X24_Y28_N24
\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ = \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[4]~7_cout\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\);

-- Location: LCCOMB_X24_Y28_N28
\inst20|Div0|auto_generated|divider|divider|StageOut[28]~46\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\) # 
-- ((\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\ & !\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[22]~48_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[2]~2_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\);

-- Location: LCCOMB_X24_Y28_N10
\inst20|Div0|auto_generated|divider|divider|StageOut[27]~49\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Q\(3)))) 
-- # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[1]~0_combout\,
	datac => \inst20|Q\(3),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\);

-- Location: LCCOMB_X23_Y28_N0
\inst20|Div0|auto_generated|divider|divider|StageOut[26]~42\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ = (\inst20|Q\(2) & \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(2),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\);

-- Location: LCCOMB_X24_Y28_N26
\inst20|Div0|auto_generated|divider|divider|StageOut[25]~45\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\ = (\inst20|Q\(1) & !\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst20|Q\(1),
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst20|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\);

-- Location: LCCOMB_X23_Y28_N10
\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\ = CARRY((\inst20|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\) # (\inst20|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[25]~44_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[25]~45_combout\,
	datad => VCC,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\);

-- Location: LCCOMB_X23_Y28_N12
\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[26]~43_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[26]~42_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[1]~1_cout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\);

-- Location: LCCOMB_X23_Y28_N14
\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\ & ((\inst20|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\) # 
-- (\inst20|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[27]~41_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[27]~49_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[2]~3_cout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\);

-- Location: LCCOMB_X23_Y28_N16
\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\ = CARRY((!\inst20|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\ & (!\inst20|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\ & 
-- !\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|StageOut[28]~40_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|StageOut[28]~46_combout\,
	datad => VCC,
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[3]~5_cout\,
	cout => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\);

-- Location: LCCOMB_X23_Y28_N18
\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ = \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[4]~7_cout\,
	combout => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\);

-- Location: LCCOMB_X23_Y28_N24
\inst7|Mux0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ 
-- (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- ((\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X23_Y28_N8
\inst7|Mux1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux1~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- ((!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) 
-- # (!\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ $ (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\)) # 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y28_N2
\inst7|Mux2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux2~0_combout\ = ((\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & ((!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y28_N28
\inst7|Mux3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux3~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) 
-- # (!\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ & ((\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)) # 
-- (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux3~0_combout\);

-- Location: LCCOMB_X24_Y28_N2
\inst7|Mux4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux4~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- ((\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (((!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y28_N6
\inst7|Mux5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux5~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ & 
-- (\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\ $ (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\)))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\ & 
-- (((!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux5~0_combout\);

-- Location: LCCOMB_X23_Y28_N4
\inst7|Mux6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst7|Mux6~0_combout\ = (\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & (\inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\ $ 
-- (((\inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))) # (!\inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\ & 
-- (((!\inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst20|Div0|auto_generated|divider|divider|add_sub_6_result_int[5]~8_combout\,
	datab => \inst20|Div0|auto_generated|divider|divider|add_sub_3_result_int[4]~6_combout\,
	datac => \inst20|Div0|auto_generated|divider|divider|add_sub_4_result_int[5]~8_combout\,
	datad => \inst20|Div0|auto_generated|divider|divider|add_sub_5_result_int[5]~8_combout\,
	combout => \inst7|Mux6~0_combout\);

-- Location: IOIBUF_X0_Y23_N15
\pb1~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb1,
	o => \pb1~input_o\);
END structure;


