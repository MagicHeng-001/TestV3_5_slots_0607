// Copyright (C) 2018  Intel Corporation. All rights reserved.
// Your use of Intel Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Intel Program License 
// Subscription Agreement, the Intel Quartus Prime License Agreement,
// the Intel FPGA IP License Agreement, or other applicable license
// agreement, including, without limitation, that your use is for
// the sole purpose of programming logic devices manufactured by
// Intel and sold by Intel or its authorized distributors.  Please
// refer to the applicable agreement for further details.

// VENDOR "Altera"
// PROGRAM "Quartus Prime"
// VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

// DATE "12/30/2022 18:23:10"

// 
// Device: Altera 5CSEMA5F31C6 Package FBGA896
// 

// 
// This greybox netlist file is for third party Synthesis Tools
// for timing and resource estimation only.
// 


module LDPCencode (
	clk_clk,
	in_startofpacket,
	in_endofpacket,
	in_valid,
	in_ready,
	in_in_data,
	out_startofpacket,
	out_endofpacket,
	out_valid,
	out_ready,
	out_out_data,
	reset_reset_n)/* synthesis synthesis_greybox=1 */;
input 	clk_clk;
input 	in_startofpacket;
input 	in_endofpacket;
input 	in_valid;
output 	in_ready;
input 	[0:0] in_in_data;
output 	out_startofpacket;
output 	out_endofpacket;
output 	out_valid;
input 	out_ready;
output 	[0:0] out_out_data;
input 	reset_reset_n;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \ldpc_0|encoder|wimedia|in_ready~combout ;
wire \ldpc_0|encoder|wimedia|pline_out_sop~q ;
wire \ldpc_0|encoder|wimedia|pline_out_eop~q ;
wire \ldpc_0|encoder|wimedia|pline_out_valid~q ;
wire \ldpc_0|encoder|wimedia|pline_out_data[0]~q ;
wire \out_ready~input_o ;
wire \clk_clk~input_o ;
wire \reset_reset_n~input_o ;
wire \in_endofpacket~input_o ;
wire \in_valid~input_o ;
wire \in_startofpacket~input_o ;
wire \in_in_data[0]~input_o ;


LDPCencode_LDPCencode_ldpc_0 ldpc_0(
	.in_ready(\ldpc_0|encoder|wimedia|in_ready~combout ),
	.pline_out_sop(\ldpc_0|encoder|wimedia|pline_out_sop~q ),
	.pline_out_eop(\ldpc_0|encoder|wimedia|pline_out_eop~q ),
	.pline_out_valid(\ldpc_0|encoder|wimedia|pline_out_valid~q ),
	.pline_out_data_0(\ldpc_0|encoder|wimedia|pline_out_data[0]~q ),
	.out_ready(\out_ready~input_o ),
	.clk_clk(\clk_clk~input_o ),
	.reset_reset_n(\reset_reset_n~input_o ),
	.in_endofpacket(\in_endofpacket~input_o ),
	.in_valid(\in_valid~input_o ),
	.in_startofpacket(\in_startofpacket~input_o ),
	.in_in_data_0(\in_in_data[0]~input_o ));

assign \out_ready~input_o  = out_ready;

assign \clk_clk~input_o  = clk_clk;

assign \reset_reset_n~input_o  = reset_reset_n;

assign \in_endofpacket~input_o  = in_endofpacket;

assign \in_valid~input_o  = in_valid;

assign \in_startofpacket~input_o  = in_startofpacket;

assign \in_in_data[0]~input_o  = in_in_data[0];

assign in_ready = \ldpc_0|encoder|wimedia|in_ready~combout ;

assign out_startofpacket = \ldpc_0|encoder|wimedia|pline_out_sop~q ;

assign out_endofpacket = \ldpc_0|encoder|wimedia|pline_out_eop~q ;

assign out_valid = \ldpc_0|encoder|wimedia|pline_out_valid~q ;

assign out_out_data[0] = \ldpc_0|encoder|wimedia|pline_out_data[0]~q ;

endmodule

module LDPCencode_LDPCencode_ldpc_0 (
	in_ready,
	pline_out_sop,
	pline_out_eop,
	pline_out_valid,
	pline_out_data_0,
	out_ready,
	clk_clk,
	reset_reset_n,
	in_endofpacket,
	in_valid,
	in_startofpacket,
	in_in_data_0)/* synthesis synthesis_greybox=1 */;
output 	in_ready;
output 	pline_out_sop;
output 	pline_out_eop;
output 	pline_out_valid;
output 	pline_out_data_0;
input 	out_ready;
input 	clk_clk;
input 	reset_reset_n;
input 	in_endofpacket;
input 	in_valid;
input 	in_startofpacket;
input 	in_in_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_LDPCencode_ldpc_0_encoder encoder(
	.in_ready(in_ready),
	.pline_out_sop(pline_out_sop),
	.pline_out_eop(pline_out_eop),
	.pline_out_valid(pline_out_valid),
	.pline_out_data_0(pline_out_data_0),
	.out_ready(out_ready),
	.clk_clk(clk_clk),
	.reset_reset_n(reset_reset_n),
	.in_endofpacket(in_endofpacket),
	.in_valid(in_valid),
	.in_startofpacket(in_startofpacket),
	.in_in_data_0(in_in_data_0));

endmodule

module LDPCencode_LDPCencode_ldpc_0_encoder (
	in_ready,
	pline_out_sop,
	pline_out_eop,
	pline_out_valid,
	pline_out_data_0,
	out_ready,
	clk_clk,
	reset_reset_n,
	in_endofpacket,
	in_valid,
	in_startofpacket,
	in_in_data_0)/* synthesis synthesis_greybox=1 */;
output 	in_ready;
output 	pline_out_sop;
output 	pline_out_eop;
output 	pline_out_valid;
output 	pline_out_data_0;
input 	out_ready;
input 	clk_clk;
input 	reset_reset_n;
input 	in_endofpacket;
input 	in_valid;
input 	in_startofpacket;
input 	in_in_data_0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altera_ldpc_wimedia_enc wimedia(
	.in_ready1(in_ready),
	.pline_out_sop1(pline_out_sop),
	.pline_out_eop1(pline_out_eop),
	.pline_out_valid1(pline_out_valid),
	.pline_out_data_0(pline_out_data_0),
	.out_ready(out_ready),
	.clk_clk(clk_clk),
	.reset_reset_n(reset_reset_n),
	.in_endofpacket(in_endofpacket),
	.in_valid(in_valid),
	.in_startofpacket(in_startofpacket),
	.in_data({in_in_data_0}));

endmodule

module LDPCencode_altera_ldpc_wimedia_enc (
	in_ready1,
	pline_out_sop1,
	pline_out_eop1,
	pline_out_valid1,
	pline_out_data_0,
	out_ready,
	clk_clk,
	reset_reset_n,
	in_endofpacket,
	in_valid,
	in_startofpacket,
	in_data)/* synthesis synthesis_greybox=1 */;
output 	in_ready1;
output 	pline_out_sop1;
output 	pline_out_eop1;
output 	pline_out_valid1;
output 	pline_out_data_0;
input 	out_ready;
input 	clk_clk;
input 	reset_reset_n;
input 	in_endofpacket;
input 	in_valid;
input 	in_startofpacket;
input 	[0:0] in_data;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[0] ;
wire \counter_group[0]~q ;
wire \counter_group[1]~q ;
wire \counter_group[2]~q ;
wire \counter_group[3]~q ;
wire \counter_group[4]~q ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[15] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[0] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[29] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[1] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[28] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[2] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[27] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[3] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[26] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[4] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[25] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[5] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[24] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[6] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[23] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[7] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[22] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[8] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[21] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[9] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[20] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[10] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[19] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[11] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[18] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[12] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[17] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[13] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[16] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[14] ;
wire \get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[15] ;
wire \pipelining_state_comp_parity1|register_last[0][0]~q ;
wire \pipelining_sop|register_last[0][0]~q ;
wire \pipelining_lastcheck|register[3][0][0]~q ;
wire \pipelining_valid1|register_last[0][0]~q ;
wire \pipelining_data1|register[0][0][0]~q ;
wire \pipelining_state_comp_parity0|register_last[0][0]~q ;
wire \pipelining_valid0|register_last[0][0]~q ;
wire \pipelining_data0|register_last[0][0]~q ;
wire \pipelining_loadROM|register_last[0][0]~q ;
wire \state_compute_parity~0_combout ;
wire \is_active~0_combout ;
wire \Add0~0_combout ;
wire \Add0~1_combout ;
wire \Add0~2_combout ;
wire \Add0~3_combout ;
wire \pline_in_data[0]~q ;
wire \counter_group[0]~_wirecell_combout ;
wire \pline_in_eop[0]~q ;
wire \pline_in_valid[0]~q ;
wire \pline_in_valid[1]~q ;
wire \flag_last_chksym~combout ;
wire \pline_in_sop~q ;
wire \state_idle~0_combout ;
wire \state_idle~q ;
wire \control_Z_reg[28]~0_combout ;
wire \control_Z_reg[29]~q ;
wire \control_Z_reg~1_combout ;
wire \control_Z_reg[0]~q ;
wire \control_Z_reg[0]~_wirecell_combout ;
wire \control_Z_reg[1]~q ;
wire \control_Z_reg[2]~q ;
wire \control_Z_reg[3]~q ;
wire \control_Z_reg[4]~q ;
wire \control_Z_reg[5]~q ;
wire \control_Z_reg[6]~q ;
wire \control_Z_reg[7]~q ;
wire \control_Z_reg[8]~q ;
wire \control_Z_reg[9]~q ;
wire \control_Z_reg[10]~q ;
wire \control_Z_reg[11]~q ;
wire \control_Z_reg[12]~q ;
wire \control_Z_reg[13]~q ;
wire \control_Z_reg[14]~q ;
wire \control_Z_reg[15]~q ;
wire \control_Z_reg[16]~q ;
wire \control_Z_reg[17]~q ;
wire \control_Z_reg[18]~q ;
wire \control_Z_reg[19]~q ;
wire \control_Z_reg[20]~q ;
wire \control_Z_reg[21]~q ;
wire \control_Z_reg[22]~q ;
wire \control_Z_reg[23]~q ;
wire \control_Z_reg[24]~q ;
wire \control_Z_reg[25]~q ;
wire \control_Z_reg[26]~q ;
wire \control_Z_reg[27]~q ;
wire \control_Z_reg[28]~q ;
wire \last_Z_reg~0_combout ;
wire \last_Z_reg~q ;
wire \always5~0_combout ;
wire \compute_last_input~q ;
wire \state_output_parity~0_combout ;
wire \state_output_parity~q ;
wire \pline_in_eop[1]~q ;
wire \control_group[7]~0_combout ;
wire \control_group[7]~1_combout ;
wire \control_group[7]~q ;
wire \control_group~3_combout ;
wire \control_group~2_combout ;
wire \control_group[0]~q ;
wire \control_group[0]~_wirecell_combout ;
wire \control_group[1]~q ;
wire \control_group[2]~q ;
wire \control_group[3]~q ;
wire \control_group[4]~q ;
wire \control_group[5]~q ;
wire \control_group[6]~q ;
wire \last_group_output~0_combout ;
wire \last_group_output~q ;
wire \ready~0_combout ;
wire \ready~q ;
wire \pline_out_sop~0_combout ;
wire \pline_out_eop~0_combout ;
wire \parity_shift[0][0][1]~0_combout ;
wire \parity_shift[0][0][1]~1_combout ;
wire \parity_shift[0][0][1]~q ;
wire \parity_shift[0][0][2]~q ;
wire \parity_shift[0][0][3]~q ;
wire \parity_shift[0][0][4]~q ;
wire \parity_shift[0][0][5]~q ;
wire \parity_shift[0][0][6]~q ;
wire \parity_shift[0][0][7]~q ;
wire \parity_shift[0][0][8]~q ;
wire \parity_shift[0][0][9]~q ;
wire \parity_shift[0][0][10]~q ;
wire \parity_shift[0][0][11]~q ;
wire \parity_shift[0][0][12]~q ;
wire \parity_shift[0][0][13]~q ;
wire \parity_shift[0][0][14]~q ;
wire \parity_shift[0][0][15]~q ;
wire \parity_shift[0][0][16]~q ;
wire \parity_shift[0][0][17]~q ;
wire \parity_shift[0][0][18]~q ;
wire \parity_shift[0][0][19]~q ;
wire \parity_shift[0][0][20]~q ;
wire \parity_shift[0][0][21]~q ;
wire \parity_shift[0][0][22]~q ;
wire \parity_shift[0][0][23]~q ;
wire \parity_shift[0][0][24]~q ;
wire \parity_shift[0][0][25]~q ;
wire \parity_shift[0][0][26]~q ;
wire \parity_shift[0][0][27]~q ;
wire \parity_shift[0][0][28]~q ;
wire \parity_shift[0][0][29]~q ;
wire \parity_shift[0][0][0]~q ;
wire \parity_acc~0_combout ;
wire \parity_acc~1_combout ;
wire \parity_acc~2_combout ;
wire \parity_acc~3_combout ;
wire \parity_acc~4_combout ;
wire \parity_acc~5_combout ;
wire \parity_acc~6_combout ;
wire \parity_acc~7_combout ;
wire \parity_acc~8_combout ;
wire \parity_acc~9_combout ;
wire \parity_acc~10_combout ;
wire \parity_acc~11_combout ;
wire \parity_acc~12_combout ;
wire \parity_acc~13_combout ;
wire \parity_acc~14_combout ;
wire \parity_acc~15_combout ;
wire \parity_acc~16_combout ;
wire \parity_acc~17_combout ;
wire \parity_acc~18_combout ;
wire \parity_acc~19_combout ;
wire \parity_acc~20_combout ;
wire \parity_acc~21_combout ;
wire \parity_acc~22_combout ;
wire \parity_acc~23_combout ;
wire \parity_acc~24_combout ;
wire \parity_acc~25_combout ;
wire \parity_acc~26_combout ;
wire \parity_acc~27_combout ;
wire \parity_acc~28_combout ;
wire \parity_acc~29_combout ;
wire \parity_shift[1][0][1]~q ;
wire \parity_shift[1][0][2]~q ;
wire \parity_shift[1][0][3]~q ;
wire \parity_shift[1][0][4]~q ;
wire \parity_shift[1][0][5]~q ;
wire \parity_shift[1][0][6]~q ;
wire \parity_shift[1][0][7]~q ;
wire \parity_shift[1][0][8]~q ;
wire \parity_shift[1][0][9]~q ;
wire \parity_shift[1][0][10]~q ;
wire \parity_shift[1][0][11]~q ;
wire \parity_shift[1][0][12]~q ;
wire \parity_shift[1][0][13]~q ;
wire \parity_shift[1][0][14]~q ;
wire \parity_shift[1][0][15]~q ;
wire \parity_shift[1][0][16]~q ;
wire \parity_shift[1][0][17]~q ;
wire \parity_shift[1][0][18]~q ;
wire \parity_shift[1][0][19]~q ;
wire \parity_shift[1][0][20]~q ;
wire \parity_shift[1][0][21]~q ;
wire \parity_shift[1][0][22]~q ;
wire \parity_shift[1][0][23]~q ;
wire \parity_shift[1][0][24]~q ;
wire \parity_shift[1][0][25]~q ;
wire \parity_shift[1][0][26]~q ;
wire \parity_shift[1][0][27]~q ;
wire \parity_shift[1][0][28]~q ;
wire \parity_shift[1][0][29]~q ;
wire \parity_shift[1][0][0]~q ;
wire \parity_acc~30_combout ;
wire \parity_acc~31_combout ;
wire \parity_acc~32_combout ;
wire \parity_acc~33_combout ;
wire \parity_acc~34_combout ;
wire \parity_acc~35_combout ;
wire \parity_acc~36_combout ;
wire \parity_acc~37_combout ;
wire \parity_acc~38_combout ;
wire \parity_acc~39_combout ;
wire \parity_acc~40_combout ;
wire \parity_acc~41_combout ;
wire \parity_acc~42_combout ;
wire \parity_acc~43_combout ;
wire \parity_acc~44_combout ;
wire \parity_acc~45_combout ;
wire \parity_acc~46_combout ;
wire \parity_acc~47_combout ;
wire \parity_acc~48_combout ;
wire \parity_acc~49_combout ;
wire \parity_acc~50_combout ;
wire \parity_acc~51_combout ;
wire \parity_acc~52_combout ;
wire \parity_acc~53_combout ;
wire \parity_acc~54_combout ;
wire \parity_acc~55_combout ;
wire \parity_acc~56_combout ;
wire \parity_acc~57_combout ;
wire \parity_acc~58_combout ;
wire \parity_acc~59_combout ;
wire \parity_shift[2][0][1]~q ;
wire \parity_shift[2][0][2]~q ;
wire \parity_shift[2][0][3]~q ;
wire \parity_shift[2][0][4]~q ;
wire \parity_shift[2][0][5]~q ;
wire \parity_shift[2][0][6]~q ;
wire \parity_shift[2][0][7]~q ;
wire \parity_shift[2][0][8]~q ;
wire \parity_shift[2][0][9]~q ;
wire \parity_shift[2][0][10]~q ;
wire \parity_shift[2][0][11]~q ;
wire \parity_shift[2][0][12]~q ;
wire \parity_shift[2][0][13]~q ;
wire \parity_shift[2][0][14]~q ;
wire \parity_shift[2][0][15]~q ;
wire \parity_shift[2][0][16]~q ;
wire \parity_shift[2][0][17]~q ;
wire \parity_shift[2][0][18]~q ;
wire \parity_shift[2][0][19]~q ;
wire \parity_shift[2][0][20]~q ;
wire \parity_shift[2][0][21]~q ;
wire \parity_shift[2][0][22]~q ;
wire \parity_shift[2][0][23]~q ;
wire \parity_shift[2][0][24]~q ;
wire \parity_shift[2][0][25]~q ;
wire \parity_shift[2][0][26]~q ;
wire \parity_shift[2][0][27]~q ;
wire \parity_shift[2][0][28]~q ;
wire \parity_shift[2][0][29]~q ;
wire \parity_shift[2][0][0]~q ;
wire \parity_acc~60_combout ;
wire \parity_acc~61_combout ;
wire \parity_acc~62_combout ;
wire \parity_acc~63_combout ;
wire \parity_acc~64_combout ;
wire \parity_acc~65_combout ;
wire \parity_acc~66_combout ;
wire \parity_acc~67_combout ;
wire \parity_acc~68_combout ;
wire \parity_acc~69_combout ;
wire \parity_acc~70_combout ;
wire \parity_acc~71_combout ;
wire \parity_acc~72_combout ;
wire \parity_acc~73_combout ;
wire \parity_acc~74_combout ;
wire \parity_acc~75_combout ;
wire \parity_acc~76_combout ;
wire \parity_acc~77_combout ;
wire \parity_acc~78_combout ;
wire \parity_acc~79_combout ;
wire \parity_acc~80_combout ;
wire \parity_acc~81_combout ;
wire \parity_acc~82_combout ;
wire \parity_acc~83_combout ;
wire \parity_acc~84_combout ;
wire \parity_acc~85_combout ;
wire \parity_acc~86_combout ;
wire \parity_acc~87_combout ;
wire \parity_acc~88_combout ;
wire \parity_acc~89_combout ;
wire \parity_shift[3][0][1]~q ;
wire \parity_shift[3][0][2]~q ;
wire \parity_shift[3][0][3]~q ;
wire \parity_shift[3][0][4]~q ;
wire \parity_shift[3][0][5]~q ;
wire \parity_shift[3][0][6]~q ;
wire \parity_shift[3][0][7]~q ;
wire \parity_shift[3][0][8]~q ;
wire \parity_shift[3][0][9]~q ;
wire \parity_shift[3][0][10]~q ;
wire \parity_shift[3][0][11]~q ;
wire \parity_shift[3][0][12]~q ;
wire \parity_shift[3][0][13]~q ;
wire \parity_shift[3][0][14]~q ;
wire \parity_shift[3][0][15]~q ;
wire \parity_shift[3][0][16]~q ;
wire \parity_shift[3][0][17]~q ;
wire \parity_shift[3][0][18]~q ;
wire \parity_shift[3][0][19]~q ;
wire \parity_shift[3][0][20]~q ;
wire \parity_shift[3][0][21]~q ;
wire \parity_shift[3][0][22]~q ;
wire \parity_shift[3][0][23]~q ;
wire \parity_shift[3][0][24]~q ;
wire \parity_shift[3][0][25]~q ;
wire \parity_shift[3][0][26]~q ;
wire \parity_shift[3][0][27]~q ;
wire \parity_shift[3][0][28]~q ;
wire \parity_shift[3][0][29]~q ;
wire \parity_shift[3][0][0]~q ;
wire \parity_acc~90_combout ;
wire \parity_acc~91_combout ;
wire \parity_acc~92_combout ;
wire \parity_acc~93_combout ;
wire \parity_acc~94_combout ;
wire \parity_acc~95_combout ;
wire \parity_acc~96_combout ;
wire \parity_acc~97_combout ;
wire \parity_acc~98_combout ;
wire \parity_acc~99_combout ;
wire \parity_acc~100_combout ;
wire \parity_acc~101_combout ;
wire \parity_acc~102_combout ;
wire \parity_acc~103_combout ;
wire \parity_acc~104_combout ;
wire \parity_acc~105_combout ;
wire \parity_acc~106_combout ;
wire \parity_acc~107_combout ;
wire \parity_acc~108_combout ;
wire \parity_acc~109_combout ;
wire \parity_acc~110_combout ;
wire \parity_acc~111_combout ;
wire \parity_acc~112_combout ;
wire \parity_acc~113_combout ;
wire \parity_acc~114_combout ;
wire \parity_acc~115_combout ;
wire \parity_acc~116_combout ;
wire \parity_acc~117_combout ;
wire \parity_acc~118_combout ;
wire \parity_acc~119_combout ;
wire \parity_shift[4][0][1]~q ;
wire \parity_shift[4][0][2]~q ;
wire \parity_shift[4][0][3]~q ;
wire \parity_shift[4][0][4]~q ;
wire \parity_shift[4][0][5]~q ;
wire \parity_shift[4][0][6]~q ;
wire \parity_shift[4][0][7]~q ;
wire \parity_shift[4][0][8]~q ;
wire \parity_shift[4][0][9]~q ;
wire \parity_shift[4][0][10]~q ;
wire \parity_shift[4][0][11]~q ;
wire \parity_shift[4][0][12]~q ;
wire \parity_shift[4][0][13]~q ;
wire \parity_shift[4][0][14]~q ;
wire \parity_shift[4][0][15]~q ;
wire \parity_shift[4][0][16]~q ;
wire \parity_shift[4][0][17]~q ;
wire \parity_shift[4][0][18]~q ;
wire \parity_shift[4][0][19]~q ;
wire \parity_shift[4][0][20]~q ;
wire \parity_shift[4][0][21]~q ;
wire \parity_shift[4][0][22]~q ;
wire \parity_shift[4][0][23]~q ;
wire \parity_shift[4][0][24]~q ;
wire \parity_shift[4][0][25]~q ;
wire \parity_shift[4][0][26]~q ;
wire \parity_shift[4][0][27]~q ;
wire \parity_shift[4][0][28]~q ;
wire \parity_shift[4][0][29]~q ;
wire \parity_shift[4][0][0]~q ;
wire \parity_acc~120_combout ;
wire \parity_acc~121_combout ;
wire \parity_acc~122_combout ;
wire \parity_acc~123_combout ;
wire \parity_acc~124_combout ;
wire \parity_acc~125_combout ;
wire \parity_acc~126_combout ;
wire \parity_acc~127_combout ;
wire \parity_acc~128_combout ;
wire \parity_acc~129_combout ;
wire \parity_acc~130_combout ;
wire \parity_acc~131_combout ;
wire \parity_acc~132_combout ;
wire \parity_acc~133_combout ;
wire \parity_acc~134_combout ;
wire \parity_acc~135_combout ;
wire \parity_acc~136_combout ;
wire \parity_acc~137_combout ;
wire \parity_acc~138_combout ;
wire \parity_acc~139_combout ;
wire \parity_acc~140_combout ;
wire \parity_acc~141_combout ;
wire \parity_acc~142_combout ;
wire \parity_acc~143_combout ;
wire \parity_acc~144_combout ;
wire \parity_acc~145_combout ;
wire \parity_acc~146_combout ;
wire \parity_acc~147_combout ;
wire \parity_acc~148_combout ;
wire \parity_acc~149_combout ;
wire \parity_shift[5][0][1]~q ;
wire \parity_shift[5][0][2]~q ;
wire \parity_shift[5][0][3]~q ;
wire \parity_shift[5][0][4]~q ;
wire \parity_shift[5][0][5]~q ;
wire \parity_shift[5][0][6]~q ;
wire \parity_shift[5][0][7]~q ;
wire \parity_shift[5][0][8]~q ;
wire \parity_shift[5][0][9]~q ;
wire \parity_shift[5][0][10]~q ;
wire \parity_shift[5][0][11]~q ;
wire \parity_shift[5][0][12]~q ;
wire \parity_shift[5][0][13]~q ;
wire \parity_shift[5][0][14]~q ;
wire \parity_shift[5][0][15]~q ;
wire \parity_shift[5][0][16]~q ;
wire \parity_shift[5][0][17]~q ;
wire \parity_shift[5][0][18]~q ;
wire \parity_shift[5][0][19]~q ;
wire \parity_shift[5][0][20]~q ;
wire \parity_shift[5][0][21]~q ;
wire \parity_shift[5][0][22]~q ;
wire \parity_shift[5][0][23]~q ;
wire \parity_shift[5][0][24]~q ;
wire \parity_shift[5][0][25]~q ;
wire \parity_shift[5][0][26]~q ;
wire \parity_shift[5][0][27]~q ;
wire \parity_shift[5][0][28]~q ;
wire \parity_shift[5][0][29]~q ;
wire \parity_shift[5][0][0]~q ;
wire \parity_acc~150_combout ;
wire \parity_acc~151_combout ;
wire \parity_acc~152_combout ;
wire \parity_acc~153_combout ;
wire \parity_acc~154_combout ;
wire \parity_acc~155_combout ;
wire \parity_acc~156_combout ;
wire \parity_acc~157_combout ;
wire \parity_acc~158_combout ;
wire \parity_acc~159_combout ;
wire \parity_acc~160_combout ;
wire \parity_acc~161_combout ;
wire \parity_acc~162_combout ;
wire \parity_acc~163_combout ;
wire \parity_acc~164_combout ;
wire \parity_acc~165_combout ;
wire \parity_acc~166_combout ;
wire \parity_acc~167_combout ;
wire \parity_acc~168_combout ;
wire \parity_acc~169_combout ;
wire \parity_acc~170_combout ;
wire \parity_acc~171_combout ;
wire \parity_acc~172_combout ;
wire \parity_acc~173_combout ;
wire \parity_acc~174_combout ;
wire \parity_acc~175_combout ;
wire \parity_acc~176_combout ;
wire \parity_acc~177_combout ;
wire \parity_acc~178_combout ;
wire \parity_acc~179_combout ;
wire \parity_shift[6][0][1]~q ;
wire \parity_shift[6][0][2]~q ;
wire \parity_shift[6][0][3]~q ;
wire \parity_shift[6][0][4]~q ;
wire \parity_shift[6][0][5]~q ;
wire \parity_shift[6][0][6]~q ;
wire \parity_shift[6][0][7]~q ;
wire \parity_shift[6][0][8]~q ;
wire \parity_shift[6][0][9]~q ;
wire \parity_shift[6][0][10]~q ;
wire \parity_shift[6][0][11]~q ;
wire \parity_shift[6][0][12]~q ;
wire \parity_shift[6][0][13]~q ;
wire \parity_shift[6][0][14]~q ;
wire \parity_shift[6][0][15]~q ;
wire \parity_shift[6][0][16]~q ;
wire \parity_shift[6][0][17]~q ;
wire \parity_shift[6][0][18]~q ;
wire \parity_shift[6][0][19]~q ;
wire \parity_shift[6][0][20]~q ;
wire \parity_shift[6][0][21]~q ;
wire \parity_shift[6][0][22]~q ;
wire \parity_shift[6][0][23]~q ;
wire \parity_shift[6][0][24]~q ;
wire \parity_shift[6][0][25]~q ;
wire \parity_shift[6][0][26]~q ;
wire \parity_shift[6][0][27]~q ;
wire \parity_shift[6][0][28]~q ;
wire \parity_shift[6][0][29]~q ;
wire \parity_shift[6][0][0]~q ;
wire \parity_acc~180_combout ;
wire \parity_acc~181_combout ;
wire \parity_acc~182_combout ;
wire \parity_acc~183_combout ;
wire \parity_acc~184_combout ;
wire \parity_acc~185_combout ;
wire \parity_acc~186_combout ;
wire \parity_acc~187_combout ;
wire \parity_acc~188_combout ;
wire \parity_acc~189_combout ;
wire \parity_acc~190_combout ;
wire \parity_acc~191_combout ;
wire \parity_acc~192_combout ;
wire \parity_acc~193_combout ;
wire \parity_acc~194_combout ;
wire \parity_acc~195_combout ;
wire \parity_acc~196_combout ;
wire \parity_acc~197_combout ;
wire \parity_acc~198_combout ;
wire \parity_acc~199_combout ;
wire \parity_acc~200_combout ;
wire \parity_acc~201_combout ;
wire \parity_acc~202_combout ;
wire \parity_acc~203_combout ;
wire \parity_acc~204_combout ;
wire \parity_acc~205_combout ;
wire \parity_acc~206_combout ;
wire \parity_acc~207_combout ;
wire \parity_acc~208_combout ;
wire \parity_acc~209_combout ;
wire \parity_shift[7][0][1]~q ;
wire \parity_shift[7][0][2]~q ;
wire \parity_shift[7][0][3]~q ;
wire \parity_shift[7][0][4]~q ;
wire \parity_shift[7][0][5]~q ;
wire \parity_shift[7][0][6]~q ;
wire \parity_shift[7][0][7]~q ;
wire \parity_shift[7][0][8]~q ;
wire \parity_shift[7][0][9]~q ;
wire \parity_shift[7][0][10]~q ;
wire \parity_shift[7][0][11]~q ;
wire \parity_shift[7][0][12]~q ;
wire \parity_shift[7][0][13]~q ;
wire \parity_shift[7][0][14]~q ;
wire \parity_shift[7][0][15]~q ;
wire \parity_shift[7][0][16]~q ;
wire \parity_shift[7][0][17]~q ;
wire \parity_shift[7][0][18]~q ;
wire \parity_shift[7][0][19]~q ;
wire \parity_shift[7][0][20]~q ;
wire \parity_shift[7][0][21]~q ;
wire \parity_shift[7][0][22]~q ;
wire \parity_shift[7][0][23]~q ;
wire \parity_shift[7][0][24]~q ;
wire \parity_shift[7][0][25]~q ;
wire \parity_shift[7][0][26]~q ;
wire \parity_shift[7][0][27]~q ;
wire \parity_shift[7][0][28]~q ;
wire \parity_shift[7][0][29]~q ;
wire \parity_shift[7][0][0]~q ;
wire \parity_acc~210_combout ;
wire \parity_acc~211_combout ;
wire \parity_acc~212_combout ;
wire \parity_acc~213_combout ;
wire \parity_acc~214_combout ;
wire \parity_acc~215_combout ;
wire \parity_acc~216_combout ;
wire \parity_acc~217_combout ;
wire \parity_acc~218_combout ;
wire \parity_acc~219_combout ;
wire \parity_acc~220_combout ;
wire \parity_acc~221_combout ;
wire \parity_acc~222_combout ;
wire \parity_acc~223_combout ;
wire \parity_acc~224_combout ;
wire \parity_acc~225_combout ;
wire \parity_acc~226_combout ;
wire \parity_acc~227_combout ;
wire \parity_acc~228_combout ;
wire \parity_acc~229_combout ;
wire \parity_acc~230_combout ;
wire \parity_acc~231_combout ;
wire \parity_acc~232_combout ;
wire \parity_acc~233_combout ;
wire \parity_acc~234_combout ;
wire \parity_acc~235_combout ;
wire \parity_acc~236_combout ;
wire \parity_acc~237_combout ;
wire \parity_acc~238_combout ;
wire \parity_acc~239_combout ;
wire \parity_acc[7][29]~q ;
wire \parity_acc[7][28]~q ;
wire \parity_acc[7][27]~q ;
wire \parity_acc[7][26]~q ;
wire \parity_acc[7][25]~q ;
wire \parity_acc[7][24]~q ;
wire \parity_acc[7][23]~q ;
wire \parity_acc[7][22]~q ;
wire \parity_acc[7][21]~q ;
wire \parity_acc[7][20]~q ;
wire \parity_acc[7][19]~q ;
wire \parity_acc[7][18]~q ;
wire \parity_acc[7][17]~q ;
wire \parity_acc[7][16]~q ;
wire \parity_acc[7][15]~q ;
wire \parity_acc[7][14]~q ;
wire \parity_acc[7][13]~q ;
wire \parity_acc[7][12]~q ;
wire \parity_acc[7][11]~q ;
wire \parity_acc[7][10]~q ;
wire \parity_acc[7][9]~q ;
wire \parity_acc[7][8]~q ;
wire \parity_acc[7][7]~q ;
wire \parity_acc[7][6]~q ;
wire \parity_acc[7][5]~q ;
wire \parity_acc[7][4]~q ;
wire \parity_acc[7][3]~q ;
wire \parity_acc[7][2]~q ;
wire \parity_acc[7][1]~q ;
wire \parity_acc[7][0]~q ;
wire \parity_acc[6][29]~q ;
wire \parity_acc[6][28]~q ;
wire \parity_acc[6][27]~q ;
wire \parity_acc[6][26]~q ;
wire \parity_acc[6][25]~q ;
wire \parity_acc[6][24]~q ;
wire \parity_acc[6][23]~q ;
wire \parity_acc[6][22]~q ;
wire \parity_acc[6][21]~q ;
wire \parity_acc[6][20]~q ;
wire \parity_acc[6][19]~q ;
wire \parity_acc[6][18]~q ;
wire \parity_acc[6][17]~q ;
wire \parity_acc[6][16]~q ;
wire \parity_acc[6][15]~q ;
wire \parity_acc[6][14]~q ;
wire \parity_acc[6][13]~q ;
wire \parity_acc[6][12]~q ;
wire \parity_acc[6][11]~q ;
wire \parity_acc[6][10]~q ;
wire \parity_acc[6][9]~q ;
wire \parity_acc[6][8]~q ;
wire \parity_acc[6][7]~q ;
wire \parity_acc[6][6]~q ;
wire \parity_acc[6][5]~q ;
wire \parity_acc[6][4]~q ;
wire \parity_acc[6][3]~q ;
wire \parity_acc[6][2]~q ;
wire \parity_acc[6][1]~q ;
wire \parity_acc[6][0]~q ;
wire \parity_acc[5][29]~q ;
wire \parity_acc[5][28]~q ;
wire \parity_acc[5][27]~q ;
wire \parity_acc[5][26]~q ;
wire \parity_acc[5][25]~q ;
wire \parity_acc[5][24]~q ;
wire \parity_acc[5][23]~q ;
wire \parity_acc[5][22]~q ;
wire \parity_acc[5][21]~q ;
wire \parity_acc[5][20]~q ;
wire \parity_acc[5][19]~q ;
wire \parity_acc[5][18]~q ;
wire \parity_acc[5][17]~q ;
wire \parity_acc[5][16]~q ;
wire \parity_acc[5][15]~q ;
wire \parity_acc[5][14]~q ;
wire \parity_acc[5][13]~q ;
wire \parity_acc[5][12]~q ;
wire \parity_acc[5][11]~q ;
wire \parity_acc[5][10]~q ;
wire \parity_acc[5][9]~q ;
wire \parity_acc[5][8]~q ;
wire \parity_acc[5][7]~q ;
wire \parity_acc[5][6]~q ;
wire \parity_acc[5][5]~q ;
wire \parity_acc[5][4]~q ;
wire \parity_acc[5][3]~q ;
wire \parity_acc[5][2]~q ;
wire \parity_acc[5][1]~q ;
wire \parity_acc[5][0]~q ;
wire \parity_acc[4][29]~q ;
wire \parity_acc[4][28]~q ;
wire \parity_acc[4][27]~q ;
wire \parity_acc[4][26]~q ;
wire \parity_acc[4][25]~q ;
wire \parity_acc[4][24]~q ;
wire \parity_acc[4][23]~q ;
wire \parity_acc[4][22]~q ;
wire \parity_acc[4][21]~q ;
wire \parity_acc[4][20]~q ;
wire \parity_acc[4][19]~q ;
wire \parity_acc[4][18]~q ;
wire \parity_acc[4][17]~q ;
wire \parity_acc[4][16]~q ;
wire \parity_acc[4][15]~q ;
wire \parity_acc[4][14]~q ;
wire \parity_acc[4][13]~q ;
wire \parity_acc[4][12]~q ;
wire \parity_acc[4][11]~q ;
wire \parity_acc[4][10]~q ;
wire \parity_acc[4][9]~q ;
wire \parity_acc[4][8]~q ;
wire \parity_acc[4][7]~q ;
wire \parity_acc[4][6]~q ;
wire \parity_acc[4][5]~q ;
wire \parity_acc[4][4]~q ;
wire \parity_acc[4][3]~q ;
wire \parity_acc[4][2]~q ;
wire \parity_acc[4][1]~q ;
wire \parity_acc[4][0]~q ;
wire \parity_acc[3][29]~q ;
wire \parity_acc[3][28]~q ;
wire \parity_acc[3][27]~q ;
wire \parity_acc[3][26]~q ;
wire \parity_acc[3][25]~q ;
wire \parity_acc[3][24]~q ;
wire \parity_acc[3][23]~q ;
wire \parity_acc[3][22]~q ;
wire \parity_acc[3][21]~q ;
wire \parity_acc[3][20]~q ;
wire \parity_acc[3][19]~q ;
wire \parity_acc[3][18]~q ;
wire \parity_acc[3][17]~q ;
wire \parity_acc[3][16]~q ;
wire \parity_acc[3][15]~q ;
wire \parity_acc[3][14]~q ;
wire \parity_acc[3][13]~q ;
wire \parity_acc[3][12]~q ;
wire \parity_acc[3][11]~q ;
wire \parity_acc[3][10]~q ;
wire \parity_acc[3][9]~q ;
wire \parity_acc[3][8]~q ;
wire \parity_acc[3][7]~q ;
wire \parity_acc[3][6]~q ;
wire \parity_acc[3][5]~q ;
wire \parity_acc[3][4]~q ;
wire \parity_acc[3][3]~q ;
wire \parity_acc[3][2]~q ;
wire \parity_acc[3][1]~q ;
wire \parity_acc[3][0]~q ;
wire \parity_acc[2][29]~q ;
wire \parity_acc[2][28]~q ;
wire \parity_acc[2][27]~q ;
wire \parity_acc[2][26]~q ;
wire \parity_acc[2][25]~q ;
wire \parity_acc[2][24]~q ;
wire \parity_acc[2][23]~q ;
wire \parity_acc[2][22]~q ;
wire \parity_acc[2][21]~q ;
wire \parity_acc[2][20]~q ;
wire \parity_acc[2][19]~q ;
wire \parity_acc[2][18]~q ;
wire \parity_acc[2][17]~q ;
wire \parity_acc[2][16]~q ;
wire \parity_acc[2][15]~q ;
wire \parity_acc[2][14]~q ;
wire \parity_acc[2][13]~q ;
wire \parity_acc[2][12]~q ;
wire \parity_acc[2][11]~q ;
wire \parity_acc[2][10]~q ;
wire \parity_acc[2][9]~q ;
wire \parity_acc[2][8]~q ;
wire \parity_acc[2][7]~q ;
wire \parity_acc[2][6]~q ;
wire \parity_acc[2][5]~q ;
wire \parity_acc[2][4]~q ;
wire \parity_acc[2][3]~q ;
wire \parity_acc[2][2]~q ;
wire \parity_acc[2][1]~q ;
wire \parity_acc[2][0]~q ;
wire \parity_acc[1][29]~q ;
wire \parity_acc[1][28]~q ;
wire \parity_acc[1][27]~q ;
wire \parity_acc[1][26]~q ;
wire \parity_acc[1][25]~q ;
wire \parity_acc[1][24]~q ;
wire \parity_acc[1][23]~q ;
wire \parity_acc[1][22]~q ;
wire \parity_acc[1][21]~q ;
wire \parity_acc[1][20]~q ;
wire \parity_acc[1][19]~q ;
wire \parity_acc[1][18]~q ;
wire \parity_acc[1][17]~q ;
wire \parity_acc[1][16]~q ;
wire \parity_acc[1][15]~q ;
wire \parity_acc[1][14]~q ;
wire \parity_acc[1][13]~q ;
wire \parity_acc[1][12]~q ;
wire \parity_acc[1][11]~q ;
wire \parity_acc[1][10]~q ;
wire \parity_acc[1][9]~q ;
wire \parity_acc[1][8]~q ;
wire \parity_acc[1][7]~q ;
wire \parity_acc[1][6]~q ;
wire \parity_acc[1][5]~q ;
wire \parity_acc[1][4]~q ;
wire \parity_acc[1][3]~q ;
wire \parity_acc[1][2]~q ;
wire \parity_acc[1][1]~q ;
wire \parity_acc[1][0]~q ;
wire \parity_acc[0][29]~q ;
wire \parity_acc[0][28]~q ;
wire \parity_acc[0][27]~q ;
wire \parity_acc[0][26]~q ;
wire \parity_acc[0][25]~q ;
wire \parity_acc[0][24]~q ;
wire \parity_acc[0][23]~q ;
wire \parity_acc[0][22]~q ;
wire \parity_acc[0][21]~q ;
wire \parity_acc[0][20]~q ;
wire \parity_acc[0][19]~q ;
wire \parity_acc[0][18]~q ;
wire \parity_acc[0][17]~q ;
wire \parity_acc[0][16]~q ;
wire \parity_acc[0][15]~q ;
wire \parity_acc[0][14]~q ;
wire \parity_acc[0][13]~q ;
wire \parity_acc[0][12]~q ;
wire \parity_acc[0][11]~q ;
wire \parity_acc[0][10]~q ;
wire \parity_acc[0][9]~q ;
wire \parity_acc[0][8]~q ;
wire \parity_acc[0][7]~q ;
wire \parity_acc[0][6]~q ;
wire \parity_acc[0][5]~q ;
wire \parity_acc[0][4]~q ;
wire \parity_acc[0][3]~q ;
wire \parity_acc[0][2]~q ;
wire \parity_acc[0][1]~q ;
wire \parity_acc[0][0]~q ;
wire \pline_out_data~0_combout ;


LDPCencode_altera_ldpc_wimedia_enc_ROMs get_parity_ROM(
	.q_a_0(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[0] ),
	.counter_group_0(\counter_group[0]~q ),
	.counter_group_1(\counter_group[1]~q ),
	.counter_group_2(\counter_group[2]~q ),
	.counter_group_3(\counter_group[3]~q ),
	.counter_group_4(\counter_group[4]~q ),
	.q_a_29(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[29] ),
	.q_a_1(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[1] ),
	.q_a_28(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[28] ),
	.q_a_2(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[2] ),
	.q_a_27(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[27] ),
	.q_a_3(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[3] ),
	.q_a_26(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[26] ),
	.q_a_4(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[4] ),
	.q_a_25(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[25] ),
	.q_a_5(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[5] ),
	.q_a_24(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[24] ),
	.q_a_6(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[6] ),
	.q_a_23(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[23] ),
	.q_a_7(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[7] ),
	.q_a_22(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[22] ),
	.q_a_8(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[8] ),
	.q_a_21(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[21] ),
	.q_a_9(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[9] ),
	.q_a_20(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[20] ),
	.q_a_10(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[10] ),
	.q_a_19(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[19] ),
	.q_a_11(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[11] ),
	.q_a_18(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[18] ),
	.q_a_12(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[12] ),
	.q_a_17(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[17] ),
	.q_a_13(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[13] ),
	.q_a_16(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[16] ),
	.q_a_14(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[14] ),
	.q_a_15(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[15] ),
	.q_a_01(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[0] ),
	.q_a_291(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[29] ),
	.q_a_110(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[1] ),
	.q_a_281(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[28] ),
	.q_a_210(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[2] ),
	.q_a_271(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[27] ),
	.q_a_31(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[3] ),
	.q_a_261(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[26] ),
	.q_a_41(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[4] ),
	.q_a_251(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[25] ),
	.q_a_51(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[5] ),
	.q_a_241(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[24] ),
	.q_a_61(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[6] ),
	.q_a_231(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[23] ),
	.q_a_71(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[7] ),
	.q_a_221(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[22] ),
	.q_a_81(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[8] ),
	.q_a_211(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[21] ),
	.q_a_91(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[9] ),
	.q_a_201(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[20] ),
	.q_a_101(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[10] ),
	.q_a_191(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[19] ),
	.q_a_111(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[11] ),
	.q_a_181(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[18] ),
	.q_a_121(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[12] ),
	.q_a_171(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[17] ),
	.q_a_131(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[13] ),
	.q_a_161(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[16] ),
	.q_a_141(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[14] ),
	.q_a_151(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[15] ),
	.q_a_02(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[0] ),
	.q_a_292(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[29] ),
	.q_a_112(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[1] ),
	.q_a_282(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[28] ),
	.q_a_212(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[2] ),
	.q_a_272(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[27] ),
	.q_a_32(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[3] ),
	.q_a_262(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[26] ),
	.q_a_42(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[4] ),
	.q_a_252(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[25] ),
	.q_a_52(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[5] ),
	.q_a_242(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[24] ),
	.q_a_62(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[6] ),
	.q_a_232(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[23] ),
	.q_a_72(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[7] ),
	.q_a_222(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[22] ),
	.q_a_82(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[8] ),
	.q_a_213(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[21] ),
	.q_a_92(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[9] ),
	.q_a_202(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[20] ),
	.q_a_102(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[10] ),
	.q_a_192(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[19] ),
	.q_a_113(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[11] ),
	.q_a_182(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[18] ),
	.q_a_122(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[12] ),
	.q_a_172(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[17] ),
	.q_a_132(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[13] ),
	.q_a_162(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[16] ),
	.q_a_142(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[14] ),
	.q_a_152(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[15] ),
	.q_a_03(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[0] ),
	.q_a_293(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[29] ),
	.q_a_114(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[1] ),
	.q_a_283(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[28] ),
	.q_a_214(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[2] ),
	.q_a_273(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[27] ),
	.q_a_33(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[3] ),
	.q_a_263(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[26] ),
	.q_a_43(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[4] ),
	.q_a_253(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[25] ),
	.q_a_53(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[5] ),
	.q_a_243(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[24] ),
	.q_a_63(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[6] ),
	.q_a_233(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[23] ),
	.q_a_73(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[7] ),
	.q_a_223(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[22] ),
	.q_a_83(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[8] ),
	.q_a_215(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[21] ),
	.q_a_93(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[9] ),
	.q_a_203(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[20] ),
	.q_a_103(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[10] ),
	.q_a_193(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[19] ),
	.q_a_115(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[11] ),
	.q_a_183(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[18] ),
	.q_a_123(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[12] ),
	.q_a_173(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[17] ),
	.q_a_133(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[13] ),
	.q_a_163(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[16] ),
	.q_a_143(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[14] ),
	.q_a_153(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[15] ),
	.q_a_04(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[0] ),
	.q_a_294(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[29] ),
	.q_a_116(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[1] ),
	.q_a_284(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[28] ),
	.q_a_216(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[2] ),
	.q_a_274(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[27] ),
	.q_a_34(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[3] ),
	.q_a_264(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[26] ),
	.q_a_44(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[4] ),
	.q_a_254(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[25] ),
	.q_a_54(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[5] ),
	.q_a_244(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[24] ),
	.q_a_64(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[6] ),
	.q_a_234(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[23] ),
	.q_a_74(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[7] ),
	.q_a_224(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[22] ),
	.q_a_84(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[8] ),
	.q_a_217(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[21] ),
	.q_a_94(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[9] ),
	.q_a_204(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[20] ),
	.q_a_104(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[10] ),
	.q_a_194(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[19] ),
	.q_a_117(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[11] ),
	.q_a_184(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[18] ),
	.q_a_124(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[12] ),
	.q_a_174(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[17] ),
	.q_a_134(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[13] ),
	.q_a_164(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[16] ),
	.q_a_144(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[14] ),
	.q_a_154(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[15] ),
	.q_a_05(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[0] ),
	.q_a_295(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[29] ),
	.q_a_118(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[1] ),
	.q_a_285(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[28] ),
	.q_a_218(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[2] ),
	.q_a_275(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[27] ),
	.q_a_35(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[3] ),
	.q_a_265(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[26] ),
	.q_a_45(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[4] ),
	.q_a_255(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[25] ),
	.q_a_55(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[5] ),
	.q_a_245(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[24] ),
	.q_a_65(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[6] ),
	.q_a_235(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[23] ),
	.q_a_75(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[7] ),
	.q_a_225(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[22] ),
	.q_a_85(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[8] ),
	.q_a_219(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[21] ),
	.q_a_95(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[9] ),
	.q_a_205(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[20] ),
	.q_a_105(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[10] ),
	.q_a_195(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[19] ),
	.q_a_119(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[11] ),
	.q_a_185(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[18] ),
	.q_a_125(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[12] ),
	.q_a_175(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[17] ),
	.q_a_135(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[13] ),
	.q_a_165(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[16] ),
	.q_a_145(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[14] ),
	.q_a_155(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[15] ),
	.q_a_06(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[0] ),
	.q_a_296(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[29] ),
	.q_a_120(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[1] ),
	.q_a_286(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[28] ),
	.q_a_220(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[2] ),
	.q_a_276(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[27] ),
	.q_a_36(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[3] ),
	.q_a_266(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[26] ),
	.q_a_46(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[4] ),
	.q_a_256(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[25] ),
	.q_a_56(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[5] ),
	.q_a_246(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[24] ),
	.q_a_66(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[6] ),
	.q_a_236(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[23] ),
	.q_a_76(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[7] ),
	.q_a_226(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[22] ),
	.q_a_86(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[8] ),
	.q_a_2110(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[21] ),
	.q_a_96(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[9] ),
	.q_a_206(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[20] ),
	.q_a_106(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[10] ),
	.q_a_196(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[19] ),
	.q_a_1110(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[11] ),
	.q_a_186(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[18] ),
	.q_a_126(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[12] ),
	.q_a_176(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[17] ),
	.q_a_136(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[13] ),
	.q_a_166(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[16] ),
	.q_a_146(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[14] ),
	.q_a_156(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[15] ),
	.q_a_07(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[0] ),
	.q_a_297(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[29] ),
	.q_a_127(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[1] ),
	.q_a_287(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[28] ),
	.q_a_227(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[2] ),
	.q_a_277(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[27] ),
	.q_a_37(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[3] ),
	.q_a_267(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[26] ),
	.q_a_47(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[4] ),
	.q_a_257(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[25] ),
	.q_a_57(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[5] ),
	.q_a_247(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[24] ),
	.q_a_67(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[6] ),
	.q_a_237(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[23] ),
	.q_a_77(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[7] ),
	.q_a_228(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[22] ),
	.q_a_87(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[8] ),
	.q_a_2111(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[21] ),
	.q_a_97(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[9] ),
	.q_a_207(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[20] ),
	.q_a_107(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[10] ),
	.q_a_197(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[19] ),
	.q_a_1111(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[11] ),
	.q_a_187(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[18] ),
	.q_a_128(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[12] ),
	.q_a_177(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[17] ),
	.q_a_137(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[13] ),
	.q_a_167(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[16] ),
	.q_a_147(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[14] ),
	.q_a_157(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[15] ),
	.clk_clk(clk_clk));

LDPCencode_altera_ldpc_delay_and_duplicate pipelining_data0(
	.register_last_0_0(\pipelining_data0|register_last[0][0]~q ),
	.in({\pline_in_data[0]~q }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_1 pipelining_loadROM(
	.in({\control_Z_reg[29]~q }),
	.register_last_0_0(\pipelining_loadROM|register_last[0][0]~q ),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_2 pipelining_sop(
	.register_last_0_0(\pipelining_sop|register_last[0][0]~q ),
	.in({\pline_in_sop~q }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_4 pipelining_state_comp_parity1(
	.register_last_0_0(\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.in({\pipelining_state_comp_parity0|register_last[0][0]~q }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_3 pipelining_state_comp_parity0(
	.register_last_0_0(\pipelining_state_comp_parity0|register_last[0][0]~q ),
	.in({\state_compute_parity~0_combout }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_6 pipelining_valid1(
	.register_last_0_0(\pipelining_valid1|register_last[0][0]~q ),
	.in({\pipelining_valid0|register_last[0][0]~q }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_delay_and_duplicate_5 pipelining_valid0(
	.register_last_0_0(\pipelining_valid0|register_last[0][0]~q ),
	.in({\is_active~0_combout }),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_msa_delay_1 pipelining_lastcheck(
	.register300(\pipelining_lastcheck|register[3][0][0]~q ),
	.in_0_0(\flag_last_chksym~combout ),
	.clk(clk_clk),
	.rst(reset_reset_n));

LDPCencode_altera_ldpc_msa_delay pipelining_data1(
	.register000(\pipelining_data1|register[0][0][0]~q ),
	.in_0_0(\pipelining_data0|register_last[0][0]~q ),
	.clk(clk_clk),
	.rst(reset_reset_n));

dffeas \counter_group[0] (
	.clk(clk_clk),
	.d(\counter_group[0]~_wirecell_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\counter_group[0]~q ),
	.prn(vcc));
defparam \counter_group[0] .is_wysiwyg = "true";
defparam \counter_group[0] .power_up = "low";

dffeas \counter_group[1] (
	.clk(clk_clk),
	.d(\Add0~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\counter_group[1]~q ),
	.prn(vcc));
defparam \counter_group[1] .is_wysiwyg = "true";
defparam \counter_group[1] .power_up = "low";

dffeas \counter_group[2] (
	.clk(clk_clk),
	.d(\Add0~1_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\counter_group[2]~q ),
	.prn(vcc));
defparam \counter_group[2] .is_wysiwyg = "true";
defparam \counter_group[2] .power_up = "low";

dffeas \counter_group[3] (
	.clk(clk_clk),
	.d(\Add0~2_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\counter_group[3]~q ),
	.prn(vcc));
defparam \counter_group[3] .is_wysiwyg = "true";
defparam \counter_group[3] .power_up = "low";

dffeas \counter_group[4] (
	.clk(clk_clk),
	.d(\Add0~3_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\counter_group[4]~q ),
	.prn(vcc));
defparam \counter_group[4] .is_wysiwyg = "true";
defparam \counter_group[4] .power_up = "low";

cyclonev_lcell_comb \state_compute_parity~0 (
	.dataa(!\state_output_parity~q ),
	.datab(!\state_idle~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\state_compute_parity~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \state_compute_parity~0 .extended_lut = "off";
defparam \state_compute_parity~0 .lut_mask = 64'hBBBBBBBBBBBBBBBB;
defparam \state_compute_parity~0 .shared_arith = "off";

cyclonev_lcell_comb \is_active~0 (
	.dataa(!out_ready),
	.datab(!\state_output_parity~q ),
	.datac(!\state_idle~q ),
	.datad(!\pline_in_valid[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\is_active~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \is_active~0 .extended_lut = "off";
defparam \is_active~0 .lut_mask = 64'h47FF47FF47FF47FF;
defparam \is_active~0 .shared_arith = "off";

cyclonev_lcell_comb \Add0~0 (
	.dataa(!\counter_group[0]~q ),
	.datab(!\counter_group[1]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~0 .extended_lut = "off";
defparam \Add0~0 .lut_mask = 64'h6666666666666666;
defparam \Add0~0 .shared_arith = "off";

cyclonev_lcell_comb \Add0~1 (
	.dataa(!\counter_group[0]~q ),
	.datab(!\counter_group[1]~q ),
	.datac(!\counter_group[2]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~1 .extended_lut = "off";
defparam \Add0~1 .lut_mask = 64'h9696969696969696;
defparam \Add0~1 .shared_arith = "off";

cyclonev_lcell_comb \Add0~2 (
	.dataa(!\counter_group[0]~q ),
	.datab(!\counter_group[1]~q ),
	.datac(!\counter_group[2]~q ),
	.datad(!\counter_group[3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~2 .extended_lut = "off";
defparam \Add0~2 .lut_mask = 64'h6996699669966996;
defparam \Add0~2 .shared_arith = "off";

cyclonev_lcell_comb \Add0~3 (
	.dataa(!\counter_group[0]~q ),
	.datab(!\counter_group[1]~q ),
	.datac(!\counter_group[2]~q ),
	.datad(!\counter_group[3]~q ),
	.datae(!\counter_group[4]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\Add0~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \Add0~3 .extended_lut = "off";
defparam \Add0~3 .lut_mask = 64'h9669699696696996;
defparam \Add0~3 .shared_arith = "off";

dffeas \pline_in_data[0] (
	.clk(clk_clk),
	.d(in_data[0]),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(in_ready1),
	.q(\pline_in_data[0]~q ),
	.prn(vcc));
defparam \pline_in_data[0] .is_wysiwyg = "true";
defparam \pline_in_data[0] .power_up = "low";

cyclonev_lcell_comb \counter_group[0]~_wirecell (
	.dataa(!\counter_group[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\counter_group[0]~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \counter_group[0]~_wirecell .extended_lut = "off";
defparam \counter_group[0]~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \counter_group[0]~_wirecell .shared_arith = "off";

cyclonev_lcell_comb in_ready(
	.dataa(!out_ready),
	.datab(!\ready~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(in_ready1),
	.sumout(),
	.cout(),
	.shareout());
defparam in_ready.extended_lut = "off";
defparam in_ready.lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam in_ready.shared_arith = "off";

dffeas pline_out_sop(
	.clk(clk_clk),
	.d(\pline_out_sop~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(pline_out_sop1),
	.prn(vcc));
defparam pline_out_sop.is_wysiwyg = "true";
defparam pline_out_sop.power_up = "low";

dffeas pline_out_eop(
	.clk(clk_clk),
	.d(\pline_out_eop~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(pline_out_eop1),
	.prn(vcc));
defparam pline_out_eop.is_wysiwyg = "true";
defparam pline_out_eop.power_up = "low";

dffeas pline_out_valid(
	.clk(clk_clk),
	.d(\pipelining_valid1|register_last[0][0]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(pline_out_valid1),
	.prn(vcc));
defparam pline_out_valid.is_wysiwyg = "true";
defparam pline_out_valid.power_up = "low";

dffeas \pline_out_data[0] (
	.clk(clk_clk),
	.d(\pline_out_data~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(pline_out_data_0),
	.prn(vcc));
defparam \pline_out_data[0] .is_wysiwyg = "true";
defparam \pline_out_data[0] .power_up = "low";

dffeas \pline_in_eop[0] (
	.clk(clk_clk),
	.d(in_endofpacket),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(in_ready1),
	.q(\pline_in_eop[0]~q ),
	.prn(vcc));
defparam \pline_in_eop[0] .is_wysiwyg = "true";
defparam \pline_in_eop[0] .power_up = "low";

dffeas \pline_in_valid[0] (
	.clk(clk_clk),
	.d(in_valid),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(in_ready1),
	.q(\pline_in_valid[0]~q ),
	.prn(vcc));
defparam \pline_in_valid[0] .is_wysiwyg = "true";
defparam \pline_in_valid[0] .power_up = "low";

dffeas \pline_in_valid[1] (
	.clk(clk_clk),
	.d(\pline_in_valid[0]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\pline_in_valid[1]~q ),
	.prn(vcc));
defparam \pline_in_valid[1] .is_wysiwyg = "true";
defparam \pline_in_valid[1] .power_up = "low";

cyclonev_lcell_comb flag_last_chksym(
	.dataa(!\last_group_output~q ),
	.datab(!\last_Z_reg~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\flag_last_chksym~combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam flag_last_chksym.extended_lut = "off";
defparam flag_last_chksym.lut_mask = 64'h7777777777777777;
defparam flag_last_chksym.shared_arith = "off";

dffeas pline_in_sop(
	.clk(clk_clk),
	.d(in_startofpacket),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(in_ready1),
	.q(\pline_in_sop~q ),
	.prn(vcc));
defparam pline_in_sop.is_wysiwyg = "true";
defparam pline_in_sop.power_up = "low";

cyclonev_lcell_comb \state_idle~0 (
	.dataa(!out_ready),
	.datab(!\ready~q ),
	.datac(!\pline_in_valid[0]~q ),
	.datad(!\state_idle~q ),
	.datae(!\flag_last_chksym~combout ),
	.dataf(!\pline_in_sop~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\state_idle~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \state_idle~0 .extended_lut = "off";
defparam \state_idle~0 .lut_mask = 64'hDFFF8FFFFFFFFFFF;
defparam \state_idle~0 .shared_arith = "off";

dffeas state_idle(
	.clk(clk_clk),
	.d(\state_idle~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\state_idle~q ),
	.prn(vcc));
defparam state_idle.is_wysiwyg = "true";
defparam state_idle.power_up = "low";

cyclonev_lcell_comb \control_Z_reg[28]~0 (
	.dataa(!out_ready),
	.datab(!\state_output_parity~q ),
	.datac(!\state_idle~q ),
	.datad(!\pline_in_valid[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_Z_reg[28]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_Z_reg[28]~0 .extended_lut = "off";
defparam \control_Z_reg[28]~0 .lut_mask = 64'hD1FFD1FFD1FFD1FF;
defparam \control_Z_reg[28]~0 .shared_arith = "off";

dffeas \control_Z_reg[29] (
	.clk(clk_clk),
	.d(\control_Z_reg[28]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[29]~q ),
	.prn(vcc));
defparam \control_Z_reg[29] .is_wysiwyg = "true";
defparam \control_Z_reg[29] .power_up = "low";

cyclonev_lcell_comb \control_Z_reg~1 (
	.dataa(!out_ready),
	.datab(!\state_output_parity~q ),
	.datac(!\state_idle~q ),
	.datad(!\pline_in_valid[1]~q ),
	.datae(!\control_Z_reg[29]~q ),
	.dataf(!\control_Z_reg[0]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_Z_reg~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_Z_reg~1 .extended_lut = "off";
defparam \control_Z_reg~1 .lut_mask = 64'hFFFF9F6FFFFFFFFF;
defparam \control_Z_reg~1 .shared_arith = "off";

dffeas \control_Z_reg[0] (
	.clk(clk_clk),
	.d(\control_Z_reg~1_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\control_Z_reg[0]~q ),
	.prn(vcc));
defparam \control_Z_reg[0] .is_wysiwyg = "true";
defparam \control_Z_reg[0] .power_up = "low";

cyclonev_lcell_comb \control_Z_reg[0]~_wirecell (
	.dataa(!\control_Z_reg[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_Z_reg[0]~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_Z_reg[0]~_wirecell .extended_lut = "off";
defparam \control_Z_reg[0]~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \control_Z_reg[0]~_wirecell .shared_arith = "off";

dffeas \control_Z_reg[1] (
	.clk(clk_clk),
	.d(\control_Z_reg[0]~_wirecell_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[1]~q ),
	.prn(vcc));
defparam \control_Z_reg[1] .is_wysiwyg = "true";
defparam \control_Z_reg[1] .power_up = "low";

dffeas \control_Z_reg[2] (
	.clk(clk_clk),
	.d(\control_Z_reg[1]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[2]~q ),
	.prn(vcc));
defparam \control_Z_reg[2] .is_wysiwyg = "true";
defparam \control_Z_reg[2] .power_up = "low";

dffeas \control_Z_reg[3] (
	.clk(clk_clk),
	.d(\control_Z_reg[2]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[3]~q ),
	.prn(vcc));
defparam \control_Z_reg[3] .is_wysiwyg = "true";
defparam \control_Z_reg[3] .power_up = "low";

dffeas \control_Z_reg[4] (
	.clk(clk_clk),
	.d(\control_Z_reg[3]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[4]~q ),
	.prn(vcc));
defparam \control_Z_reg[4] .is_wysiwyg = "true";
defparam \control_Z_reg[4] .power_up = "low";

dffeas \control_Z_reg[5] (
	.clk(clk_clk),
	.d(\control_Z_reg[4]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[5]~q ),
	.prn(vcc));
defparam \control_Z_reg[5] .is_wysiwyg = "true";
defparam \control_Z_reg[5] .power_up = "low";

dffeas \control_Z_reg[6] (
	.clk(clk_clk),
	.d(\control_Z_reg[5]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[6]~q ),
	.prn(vcc));
defparam \control_Z_reg[6] .is_wysiwyg = "true";
defparam \control_Z_reg[6] .power_up = "low";

dffeas \control_Z_reg[7] (
	.clk(clk_clk),
	.d(\control_Z_reg[6]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[7]~q ),
	.prn(vcc));
defparam \control_Z_reg[7] .is_wysiwyg = "true";
defparam \control_Z_reg[7] .power_up = "low";

dffeas \control_Z_reg[8] (
	.clk(clk_clk),
	.d(\control_Z_reg[7]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[8]~q ),
	.prn(vcc));
defparam \control_Z_reg[8] .is_wysiwyg = "true";
defparam \control_Z_reg[8] .power_up = "low";

dffeas \control_Z_reg[9] (
	.clk(clk_clk),
	.d(\control_Z_reg[8]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[9]~q ),
	.prn(vcc));
defparam \control_Z_reg[9] .is_wysiwyg = "true";
defparam \control_Z_reg[9] .power_up = "low";

dffeas \control_Z_reg[10] (
	.clk(clk_clk),
	.d(\control_Z_reg[9]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[10]~q ),
	.prn(vcc));
defparam \control_Z_reg[10] .is_wysiwyg = "true";
defparam \control_Z_reg[10] .power_up = "low";

dffeas \control_Z_reg[11] (
	.clk(clk_clk),
	.d(\control_Z_reg[10]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[11]~q ),
	.prn(vcc));
defparam \control_Z_reg[11] .is_wysiwyg = "true";
defparam \control_Z_reg[11] .power_up = "low";

dffeas \control_Z_reg[12] (
	.clk(clk_clk),
	.d(\control_Z_reg[11]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[12]~q ),
	.prn(vcc));
defparam \control_Z_reg[12] .is_wysiwyg = "true";
defparam \control_Z_reg[12] .power_up = "low";

dffeas \control_Z_reg[13] (
	.clk(clk_clk),
	.d(\control_Z_reg[12]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[13]~q ),
	.prn(vcc));
defparam \control_Z_reg[13] .is_wysiwyg = "true";
defparam \control_Z_reg[13] .power_up = "low";

dffeas \control_Z_reg[14] (
	.clk(clk_clk),
	.d(\control_Z_reg[13]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[14]~q ),
	.prn(vcc));
defparam \control_Z_reg[14] .is_wysiwyg = "true";
defparam \control_Z_reg[14] .power_up = "low";

dffeas \control_Z_reg[15] (
	.clk(clk_clk),
	.d(\control_Z_reg[14]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[15]~q ),
	.prn(vcc));
defparam \control_Z_reg[15] .is_wysiwyg = "true";
defparam \control_Z_reg[15] .power_up = "low";

dffeas \control_Z_reg[16] (
	.clk(clk_clk),
	.d(\control_Z_reg[15]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[16]~q ),
	.prn(vcc));
defparam \control_Z_reg[16] .is_wysiwyg = "true";
defparam \control_Z_reg[16] .power_up = "low";

dffeas \control_Z_reg[17] (
	.clk(clk_clk),
	.d(\control_Z_reg[16]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[17]~q ),
	.prn(vcc));
defparam \control_Z_reg[17] .is_wysiwyg = "true";
defparam \control_Z_reg[17] .power_up = "low";

dffeas \control_Z_reg[18] (
	.clk(clk_clk),
	.d(\control_Z_reg[17]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[18]~q ),
	.prn(vcc));
defparam \control_Z_reg[18] .is_wysiwyg = "true";
defparam \control_Z_reg[18] .power_up = "low";

dffeas \control_Z_reg[19] (
	.clk(clk_clk),
	.d(\control_Z_reg[18]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[19]~q ),
	.prn(vcc));
defparam \control_Z_reg[19] .is_wysiwyg = "true";
defparam \control_Z_reg[19] .power_up = "low";

dffeas \control_Z_reg[20] (
	.clk(clk_clk),
	.d(\control_Z_reg[19]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[20]~q ),
	.prn(vcc));
defparam \control_Z_reg[20] .is_wysiwyg = "true";
defparam \control_Z_reg[20] .power_up = "low";

dffeas \control_Z_reg[21] (
	.clk(clk_clk),
	.d(\control_Z_reg[20]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[21]~q ),
	.prn(vcc));
defparam \control_Z_reg[21] .is_wysiwyg = "true";
defparam \control_Z_reg[21] .power_up = "low";

dffeas \control_Z_reg[22] (
	.clk(clk_clk),
	.d(\control_Z_reg[21]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[22]~q ),
	.prn(vcc));
defparam \control_Z_reg[22] .is_wysiwyg = "true";
defparam \control_Z_reg[22] .power_up = "low";

dffeas \control_Z_reg[23] (
	.clk(clk_clk),
	.d(\control_Z_reg[22]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[23]~q ),
	.prn(vcc));
defparam \control_Z_reg[23] .is_wysiwyg = "true";
defparam \control_Z_reg[23] .power_up = "low";

dffeas \control_Z_reg[24] (
	.clk(clk_clk),
	.d(\control_Z_reg[23]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[24]~q ),
	.prn(vcc));
defparam \control_Z_reg[24] .is_wysiwyg = "true";
defparam \control_Z_reg[24] .power_up = "low";

dffeas \control_Z_reg[25] (
	.clk(clk_clk),
	.d(\control_Z_reg[24]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[25]~q ),
	.prn(vcc));
defparam \control_Z_reg[25] .is_wysiwyg = "true";
defparam \control_Z_reg[25] .power_up = "low";

dffeas \control_Z_reg[26] (
	.clk(clk_clk),
	.d(\control_Z_reg[25]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[26]~q ),
	.prn(vcc));
defparam \control_Z_reg[26] .is_wysiwyg = "true";
defparam \control_Z_reg[26] .power_up = "low";

dffeas \control_Z_reg[27] (
	.clk(clk_clk),
	.d(\control_Z_reg[26]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[27]~q ),
	.prn(vcc));
defparam \control_Z_reg[27] .is_wysiwyg = "true";
defparam \control_Z_reg[27] .power_up = "low";

dffeas \control_Z_reg[28] (
	.clk(clk_clk),
	.d(\control_Z_reg[27]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(!\state_idle~q ),
	.sload(gnd),
	.ena(\control_Z_reg[28]~0_combout ),
	.q(\control_Z_reg[28]~q ),
	.prn(vcc));
defparam \control_Z_reg[28] .is_wysiwyg = "true";
defparam \control_Z_reg[28] .power_up = "low";

cyclonev_lcell_comb \last_Z_reg~0 (
	.dataa(!out_ready),
	.datab(!\control_Z_reg[28]~q ),
	.datac(!\state_output_parity~q ),
	.datad(!\last_Z_reg~q ),
	.datae(!\state_idle~q ),
	.dataf(!\pline_in_valid[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\last_Z_reg~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \last_Z_reg~0 .extended_lut = "off";
defparam \last_Z_reg~0 .lut_mask = 64'h7BFFB7FFB7FF7BFF;
defparam \last_Z_reg~0 .shared_arith = "off";

dffeas last_Z_reg(
	.clk(clk_clk),
	.d(\last_Z_reg~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\last_Z_reg~q ),
	.prn(vcc));
defparam last_Z_reg.is_wysiwyg = "true";
defparam last_Z_reg.power_up = "low";

cyclonev_lcell_comb \always5~0 (
	.dataa(!\pline_in_eop[0]~q ),
	.datab(!\pline_in_valid[0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\always5~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \always5~0 .extended_lut = "off";
defparam \always5~0 .lut_mask = 64'h7777777777777777;
defparam \always5~0 .shared_arith = "off";

dffeas compute_last_input(
	.clk(clk_clk),
	.d(\always5~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\compute_last_input~q ),
	.prn(vcc));
defparam compute_last_input.is_wysiwyg = "true";
defparam compute_last_input.power_up = "low";

cyclonev_lcell_comb \state_output_parity~0 (
	.dataa(!out_ready),
	.datab(!\last_group_output~q ),
	.datac(!\state_output_parity~q ),
	.datad(!\last_Z_reg~q ),
	.datae(!\compute_last_input~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\state_output_parity~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \state_output_parity~0 .extended_lut = "off";
defparam \state_output_parity~0 .lut_mask = 64'hFFEFFFFFFFEFFFFF;
defparam \state_output_parity~0 .shared_arith = "off";

dffeas state_output_parity(
	.clk(clk_clk),
	.d(\state_output_parity~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\state_output_parity~q ),
	.prn(vcc));
defparam state_output_parity.is_wysiwyg = "true";
defparam state_output_parity.power_up = "low";

dffeas \pline_in_eop[1] (
	.clk(clk_clk),
	.d(\pline_in_eop[0]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\pline_in_eop[1]~q ),
	.prn(vcc));
defparam \pline_in_eop[1] .is_wysiwyg = "true";
defparam \pline_in_eop[1] .power_up = "low";

cyclonev_lcell_comb \control_group[7]~0 (
	.dataa(!\last_group_output~q ),
	.datab(!\state_output_parity~q ),
	.datac(!\state_idle~q ),
	.datad(!\pline_in_eop[1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_group[7]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_group[7]~0 .extended_lut = "off";
defparam \control_group[7]~0 .lut_mask = 64'hD1FFD1FFD1FFD1FF;
defparam \control_group[7]~0 .shared_arith = "off";

cyclonev_lcell_comb \control_group[7]~1 (
	.dataa(!out_ready),
	.datab(!\state_output_parity~q ),
	.datac(!\last_Z_reg~q ),
	.datad(!\state_idle~q ),
	.datae(!\pline_in_valid[1]~q ),
	.dataf(!\pline_in_eop[1]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_group[7]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_group[7]~1 .extended_lut = "off";
defparam \control_group[7]~1 .lut_mask = 64'hDF1FFFFFFFFFFFFF;
defparam \control_group[7]~1 .shared_arith = "off";

dffeas \control_group[7] (
	.clk(clk_clk),
	.d(\control_group[6]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[7]~q ),
	.prn(vcc));
defparam \control_group[7] .is_wysiwyg = "true";
defparam \control_group[7] .power_up = "low";

cyclonev_lcell_comb \control_group~3 (
	.dataa(!\control_group[0]~q ),
	.datab(!\state_output_parity~q ),
	.datac(!out_ready),
	.datad(!\last_Z_reg~q ),
	.datae(!\control_group[7]~q ),
	.dataf(!\last_group_output~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_group~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_group~3 .extended_lut = "off";
defparam \control_group~3 .lut_mask = 64'hFFFFFFFFFFFFD77D;
defparam \control_group~3 .shared_arith = "off";

cyclonev_lcell_comb \control_group~2 (
	.dataa(!\pline_in_valid[1]~q ),
	.datab(!\control_group[0]~q ),
	.datac(!\state_output_parity~q ),
	.datad(!\state_idle~q ),
	.datae(!\pline_in_eop[1]~q ),
	.dataf(!\control_group~3_combout ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_group~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_group~2 .extended_lut = "off";
defparam \control_group~2 .lut_mask = 64'hFFFF7BFFFFFFFFFF;
defparam \control_group~2 .shared_arith = "off";

dffeas \control_group[0] (
	.clk(clk_clk),
	.d(\control_group~2_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\control_group[0]~q ),
	.prn(vcc));
defparam \control_group[0] .is_wysiwyg = "true";
defparam \control_group[0] .power_up = "low";

cyclonev_lcell_comb \control_group[0]~_wirecell (
	.dataa(!\control_group[0]~q ),
	.datab(gnd),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\control_group[0]~_wirecell_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \control_group[0]~_wirecell .extended_lut = "off";
defparam \control_group[0]~_wirecell .lut_mask = 64'hAAAAAAAAAAAAAAAA;
defparam \control_group[0]~_wirecell .shared_arith = "off";

dffeas \control_group[1] (
	.clk(clk_clk),
	.d(\control_group[0]~_wirecell_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[1]~q ),
	.prn(vcc));
defparam \control_group[1] .is_wysiwyg = "true";
defparam \control_group[1] .power_up = "low";

dffeas \control_group[2] (
	.clk(clk_clk),
	.d(\control_group[1]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[2]~q ),
	.prn(vcc));
defparam \control_group[2] .is_wysiwyg = "true";
defparam \control_group[2] .power_up = "low";

dffeas \control_group[3] (
	.clk(clk_clk),
	.d(\control_group[2]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[3]~q ),
	.prn(vcc));
defparam \control_group[3] .is_wysiwyg = "true";
defparam \control_group[3] .power_up = "low";

dffeas \control_group[4] (
	.clk(clk_clk),
	.d(\control_group[3]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[4]~q ),
	.prn(vcc));
defparam \control_group[4] .is_wysiwyg = "true";
defparam \control_group[4] .power_up = "low";

dffeas \control_group[5] (
	.clk(clk_clk),
	.d(\control_group[4]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[5]~q ),
	.prn(vcc));
defparam \control_group[5] .is_wysiwyg = "true";
defparam \control_group[5] .power_up = "low";

dffeas \control_group[6] (
	.clk(clk_clk),
	.d(\control_group[5]~q ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(\control_group[7]~0_combout ),
	.sload(gnd),
	.ena(\control_group[7]~1_combout ),
	.q(\control_group[6]~q ),
	.prn(vcc));
defparam \control_group[6] .is_wysiwyg = "true";
defparam \control_group[6] .power_up = "low";

cyclonev_lcell_comb \last_group_output~0 (
	.dataa(!out_ready),
	.datab(!\last_group_output~q ),
	.datac(!\control_group[6]~q ),
	.datad(!\state_output_parity~q ),
	.datae(!\last_Z_reg~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\last_group_output~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \last_group_output~0 .extended_lut = "off";
defparam \last_group_output~0 .lut_mask = 64'hBF7F7FBFBF7F7FBF;
defparam \last_group_output~0 .shared_arith = "off";

dffeas last_group_output(
	.clk(clk_clk),
	.d(\last_group_output~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\last_group_output~q ),
	.prn(vcc));
defparam last_group_output.is_wysiwyg = "true";
defparam last_group_output.power_up = "low";

cyclonev_lcell_comb \ready~0 (
	.dataa(!out_ready),
	.datab(!\ready~q ),
	.datac(!\pline_in_eop[0]~q ),
	.datad(!\pline_in_valid[0]~q ),
	.datae(!\last_group_output~q ),
	.dataf(!\control_Z_reg[28]~q ),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\ready~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \ready~0 .extended_lut = "off";
defparam \ready~0 .lut_mask = 64'hFFFFFFFFFFFFBFFF;
defparam \ready~0 .shared_arith = "off";

dffeas ready(
	.clk(clk_clk),
	.d(\ready~0_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\ready~q ),
	.prn(vcc));
defparam ready.is_wysiwyg = "true";
defparam ready.power_up = "low";

cyclonev_lcell_comb \pline_out_sop~0 (
	.dataa(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.datab(!\pipelining_sop|register_last[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\pline_out_sop~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \pline_out_sop~0 .extended_lut = "off";
defparam \pline_out_sop~0 .lut_mask = 64'h7777777777777777;
defparam \pline_out_sop~0 .shared_arith = "off";

cyclonev_lcell_comb \pline_out_eop~0 (
	.dataa(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.datab(!\pipelining_lastcheck|register[3][0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\pline_out_eop~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \pline_out_eop~0 .extended_lut = "off";
defparam \pline_out_eop~0 .lut_mask = 64'hBBBBBBBBBBBBBBBB;
defparam \pline_out_eop~0 .shared_arith = "off";

cyclonev_lcell_comb \parity_shift[0][0][1]~0 (
	.dataa(!\pipelining_state_comp_parity0|register_last[0][0]~q ),
	.datab(!\pipelining_loadROM|register_last[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_shift[0][0][1]~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_shift[0][0][1]~0 .extended_lut = "off";
defparam \parity_shift[0][0][1]~0 .lut_mask = 64'hDDDDDDDDDDDDDDDD;
defparam \parity_shift[0][0][1]~0 .shared_arith = "off";

cyclonev_lcell_comb \parity_shift[0][0][1]~1 (
	.dataa(!\pipelining_state_comp_parity0|register_last[0][0]~q ),
	.datab(!\pipelining_valid0|register_last[0][0]~q ),
	.datac(gnd),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_shift[0][0][1]~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_shift[0][0][1]~1 .extended_lut = "off";
defparam \parity_shift[0][0][1]~1 .lut_mask = 64'hBBBBBBBBBBBBBBBB;
defparam \parity_shift[0][0][1]~1 .shared_arith = "off";

dffeas \parity_shift[0][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[1] ),
	.asdata(\parity_shift[0][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][1] .is_wysiwyg = "true";
defparam \parity_shift[0][0][1] .power_up = "low";

dffeas \parity_shift[0][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[2] ),
	.asdata(\parity_shift[0][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][2] .is_wysiwyg = "true";
defparam \parity_shift[0][0][2] .power_up = "low";

dffeas \parity_shift[0][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[3] ),
	.asdata(\parity_shift[0][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][3] .is_wysiwyg = "true";
defparam \parity_shift[0][0][3] .power_up = "low";

dffeas \parity_shift[0][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[4] ),
	.asdata(\parity_shift[0][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][4] .is_wysiwyg = "true";
defparam \parity_shift[0][0][4] .power_up = "low";

dffeas \parity_shift[0][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[5] ),
	.asdata(\parity_shift[0][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][5] .is_wysiwyg = "true";
defparam \parity_shift[0][0][5] .power_up = "low";

dffeas \parity_shift[0][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[6] ),
	.asdata(\parity_shift[0][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][6] .is_wysiwyg = "true";
defparam \parity_shift[0][0][6] .power_up = "low";

dffeas \parity_shift[0][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[7] ),
	.asdata(\parity_shift[0][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][7] .is_wysiwyg = "true";
defparam \parity_shift[0][0][7] .power_up = "low";

dffeas \parity_shift[0][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[8] ),
	.asdata(\parity_shift[0][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][8] .is_wysiwyg = "true";
defparam \parity_shift[0][0][8] .power_up = "low";

dffeas \parity_shift[0][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[9] ),
	.asdata(\parity_shift[0][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][9] .is_wysiwyg = "true";
defparam \parity_shift[0][0][9] .power_up = "low";

dffeas \parity_shift[0][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[10] ),
	.asdata(\parity_shift[0][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][10] .is_wysiwyg = "true";
defparam \parity_shift[0][0][10] .power_up = "low";

dffeas \parity_shift[0][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[11] ),
	.asdata(\parity_shift[0][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][11] .is_wysiwyg = "true";
defparam \parity_shift[0][0][11] .power_up = "low";

dffeas \parity_shift[0][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[12] ),
	.asdata(\parity_shift[0][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][12] .is_wysiwyg = "true";
defparam \parity_shift[0][0][12] .power_up = "low";

dffeas \parity_shift[0][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[13] ),
	.asdata(\parity_shift[0][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][13] .is_wysiwyg = "true";
defparam \parity_shift[0][0][13] .power_up = "low";

dffeas \parity_shift[0][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[14] ),
	.asdata(\parity_shift[0][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][14] .is_wysiwyg = "true";
defparam \parity_shift[0][0][14] .power_up = "low";

dffeas \parity_shift[0][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[15] ),
	.asdata(\parity_shift[0][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][15] .is_wysiwyg = "true";
defparam \parity_shift[0][0][15] .power_up = "low";

dffeas \parity_shift[0][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[16] ),
	.asdata(\parity_shift[0][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][16] .is_wysiwyg = "true";
defparam \parity_shift[0][0][16] .power_up = "low";

dffeas \parity_shift[0][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[17] ),
	.asdata(\parity_shift[0][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][17] .is_wysiwyg = "true";
defparam \parity_shift[0][0][17] .power_up = "low";

dffeas \parity_shift[0][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[18] ),
	.asdata(\parity_shift[0][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][18] .is_wysiwyg = "true";
defparam \parity_shift[0][0][18] .power_up = "low";

dffeas \parity_shift[0][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[19] ),
	.asdata(\parity_shift[0][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][19] .is_wysiwyg = "true";
defparam \parity_shift[0][0][19] .power_up = "low";

dffeas \parity_shift[0][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[20] ),
	.asdata(\parity_shift[0][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][20] .is_wysiwyg = "true";
defparam \parity_shift[0][0][20] .power_up = "low";

dffeas \parity_shift[0][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[21] ),
	.asdata(\parity_shift[0][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][21] .is_wysiwyg = "true";
defparam \parity_shift[0][0][21] .power_up = "low";

dffeas \parity_shift[0][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[22] ),
	.asdata(\parity_shift[0][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][22] .is_wysiwyg = "true";
defparam \parity_shift[0][0][22] .power_up = "low";

dffeas \parity_shift[0][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[23] ),
	.asdata(\parity_shift[0][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][23] .is_wysiwyg = "true";
defparam \parity_shift[0][0][23] .power_up = "low";

dffeas \parity_shift[0][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[24] ),
	.asdata(\parity_shift[0][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][24] .is_wysiwyg = "true";
defparam \parity_shift[0][0][24] .power_up = "low";

dffeas \parity_shift[0][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[25] ),
	.asdata(\parity_shift[0][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][25] .is_wysiwyg = "true";
defparam \parity_shift[0][0][25] .power_up = "low";

dffeas \parity_shift[0][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[26] ),
	.asdata(\parity_shift[0][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][26] .is_wysiwyg = "true";
defparam \parity_shift[0][0][26] .power_up = "low";

dffeas \parity_shift[0][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[27] ),
	.asdata(\parity_shift[0][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][27] .is_wysiwyg = "true";
defparam \parity_shift[0][0][27] .power_up = "low";

dffeas \parity_shift[0][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[28] ),
	.asdata(\parity_shift[0][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][28] .is_wysiwyg = "true";
defparam \parity_shift[0][0][28] .power_up = "low";

dffeas \parity_shift[0][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[29] ),
	.asdata(\parity_shift[0][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][29] .is_wysiwyg = "true";
defparam \parity_shift[0][0][29] .power_up = "low";

dffeas \parity_shift[0][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_0|auto_generated|q_a[0] ),
	.asdata(\parity_shift[0][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[0][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[0][0][0] .is_wysiwyg = "true";
defparam \parity_shift[0][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~0 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\parity_acc[0][0]~q ),
	.datac(!\pipelining_data0|register_last[0][0]~q ),
	.datad(!\parity_shift[0][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~0 .extended_lut = "off";
defparam \parity_acc~0 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~0 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~1 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][1]~q ),
	.datad(!\parity_shift[0][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~1_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~1 .extended_lut = "off";
defparam \parity_acc~1 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~1 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~2 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][2]~q ),
	.datad(!\parity_shift[0][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~2_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~2 .extended_lut = "off";
defparam \parity_acc~2 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~2 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~3 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][3]~q ),
	.datad(!\parity_shift[0][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~3_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~3 .extended_lut = "off";
defparam \parity_acc~3 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~3 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~4 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][4]~q ),
	.datad(!\parity_shift[0][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~4_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~4 .extended_lut = "off";
defparam \parity_acc~4 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~4 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~5 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][5]~q ),
	.datad(!\parity_shift[0][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~5_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~5 .extended_lut = "off";
defparam \parity_acc~5 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~5 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~6 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][6]~q ),
	.datad(!\parity_shift[0][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~6_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~6 .extended_lut = "off";
defparam \parity_acc~6 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~6 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~7 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][7]~q ),
	.datad(!\parity_shift[0][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~7_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~7 .extended_lut = "off";
defparam \parity_acc~7 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~7 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~8 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][8]~q ),
	.datad(!\parity_shift[0][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~8_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~8 .extended_lut = "off";
defparam \parity_acc~8 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~8 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~9 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][9]~q ),
	.datad(!\parity_shift[0][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~9_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~9 .extended_lut = "off";
defparam \parity_acc~9 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~9 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~10 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][10]~q ),
	.datad(!\parity_shift[0][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~10_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~10 .extended_lut = "off";
defparam \parity_acc~10 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~10 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~11 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][11]~q ),
	.datad(!\parity_shift[0][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~11_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~11 .extended_lut = "off";
defparam \parity_acc~11 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~11 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~12 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][12]~q ),
	.datad(!\parity_shift[0][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~12_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~12 .extended_lut = "off";
defparam \parity_acc~12 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~12 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~13 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][13]~q ),
	.datad(!\parity_shift[0][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~13_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~13 .extended_lut = "off";
defparam \parity_acc~13 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~13 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~14 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][14]~q ),
	.datad(!\parity_shift[0][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~14_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~14 .extended_lut = "off";
defparam \parity_acc~14 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~14 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~15 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[0][15]~q ),
	.datad(!\parity_shift[0][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~15_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~15 .extended_lut = "off";
defparam \parity_acc~15 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~15 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~16 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][16]~q ),
	.datad(!\parity_acc[0][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~16_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~16 .extended_lut = "off";
defparam \parity_acc~16 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~16 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~17 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][17]~q ),
	.datad(!\parity_acc[0][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~17_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~17 .extended_lut = "off";
defparam \parity_acc~17 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~17 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~18 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][18]~q ),
	.datad(!\parity_acc[0][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~18_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~18 .extended_lut = "off";
defparam \parity_acc~18 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~18 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~19 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][19]~q ),
	.datad(!\parity_acc[0][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~19_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~19 .extended_lut = "off";
defparam \parity_acc~19 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~19 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~20 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][20]~q ),
	.datad(!\parity_acc[0][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~20_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~20 .extended_lut = "off";
defparam \parity_acc~20 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~20 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~21 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][21]~q ),
	.datad(!\parity_acc[0][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~21_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~21 .extended_lut = "off";
defparam \parity_acc~21 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~21 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~22 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][22]~q ),
	.datad(!\parity_acc[0][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~22_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~22 .extended_lut = "off";
defparam \parity_acc~22 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~22 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~23 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][23]~q ),
	.datad(!\parity_acc[0][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~23_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~23 .extended_lut = "off";
defparam \parity_acc~23 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~23 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~24 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][24]~q ),
	.datad(!\parity_acc[0][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~24_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~24 .extended_lut = "off";
defparam \parity_acc~24 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~24 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~25 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][25]~q ),
	.datad(!\parity_acc[0][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~25_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~25 .extended_lut = "off";
defparam \parity_acc~25 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~25 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~26 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][26]~q ),
	.datad(!\parity_acc[0][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~26_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~26 .extended_lut = "off";
defparam \parity_acc~26 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~26 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~27 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][27]~q ),
	.datad(!\parity_acc[0][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~27_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~27 .extended_lut = "off";
defparam \parity_acc~27 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~27 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~28 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][28]~q ),
	.datad(!\parity_acc[0][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~28_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~28 .extended_lut = "off";
defparam \parity_acc~28 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~28 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~29 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[0][0][29]~q ),
	.datad(!\parity_acc[0][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~29_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~29 .extended_lut = "off";
defparam \parity_acc~29 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~29 .shared_arith = "off";

dffeas \parity_shift[1][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[1] ),
	.asdata(\parity_shift[1][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][1] .is_wysiwyg = "true";
defparam \parity_shift[1][0][1] .power_up = "low";

dffeas \parity_shift[1][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[2] ),
	.asdata(\parity_shift[1][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][2] .is_wysiwyg = "true";
defparam \parity_shift[1][0][2] .power_up = "low";

dffeas \parity_shift[1][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[3] ),
	.asdata(\parity_shift[1][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][3] .is_wysiwyg = "true";
defparam \parity_shift[1][0][3] .power_up = "low";

dffeas \parity_shift[1][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[4] ),
	.asdata(\parity_shift[1][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][4] .is_wysiwyg = "true";
defparam \parity_shift[1][0][4] .power_up = "low";

dffeas \parity_shift[1][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[5] ),
	.asdata(\parity_shift[1][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][5] .is_wysiwyg = "true";
defparam \parity_shift[1][0][5] .power_up = "low";

dffeas \parity_shift[1][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[6] ),
	.asdata(\parity_shift[1][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][6] .is_wysiwyg = "true";
defparam \parity_shift[1][0][6] .power_up = "low";

dffeas \parity_shift[1][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[7] ),
	.asdata(\parity_shift[1][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][7] .is_wysiwyg = "true";
defparam \parity_shift[1][0][7] .power_up = "low";

dffeas \parity_shift[1][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[8] ),
	.asdata(\parity_shift[1][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][8] .is_wysiwyg = "true";
defparam \parity_shift[1][0][8] .power_up = "low";

dffeas \parity_shift[1][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[9] ),
	.asdata(\parity_shift[1][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][9] .is_wysiwyg = "true";
defparam \parity_shift[1][0][9] .power_up = "low";

dffeas \parity_shift[1][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[10] ),
	.asdata(\parity_shift[1][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][10] .is_wysiwyg = "true";
defparam \parity_shift[1][0][10] .power_up = "low";

dffeas \parity_shift[1][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[11] ),
	.asdata(\parity_shift[1][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][11] .is_wysiwyg = "true";
defparam \parity_shift[1][0][11] .power_up = "low";

dffeas \parity_shift[1][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[12] ),
	.asdata(\parity_shift[1][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][12] .is_wysiwyg = "true";
defparam \parity_shift[1][0][12] .power_up = "low";

dffeas \parity_shift[1][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[13] ),
	.asdata(\parity_shift[1][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][13] .is_wysiwyg = "true";
defparam \parity_shift[1][0][13] .power_up = "low";

dffeas \parity_shift[1][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[14] ),
	.asdata(\parity_shift[1][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][14] .is_wysiwyg = "true";
defparam \parity_shift[1][0][14] .power_up = "low";

dffeas \parity_shift[1][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[15] ),
	.asdata(\parity_shift[1][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][15] .is_wysiwyg = "true";
defparam \parity_shift[1][0][15] .power_up = "low";

dffeas \parity_shift[1][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[16] ),
	.asdata(\parity_shift[1][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][16] .is_wysiwyg = "true";
defparam \parity_shift[1][0][16] .power_up = "low";

dffeas \parity_shift[1][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[17] ),
	.asdata(\parity_shift[1][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][17] .is_wysiwyg = "true";
defparam \parity_shift[1][0][17] .power_up = "low";

dffeas \parity_shift[1][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[18] ),
	.asdata(\parity_shift[1][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][18] .is_wysiwyg = "true";
defparam \parity_shift[1][0][18] .power_up = "low";

dffeas \parity_shift[1][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[19] ),
	.asdata(\parity_shift[1][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][19] .is_wysiwyg = "true";
defparam \parity_shift[1][0][19] .power_up = "low";

dffeas \parity_shift[1][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[20] ),
	.asdata(\parity_shift[1][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][20] .is_wysiwyg = "true";
defparam \parity_shift[1][0][20] .power_up = "low";

dffeas \parity_shift[1][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[21] ),
	.asdata(\parity_shift[1][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][21] .is_wysiwyg = "true";
defparam \parity_shift[1][0][21] .power_up = "low";

dffeas \parity_shift[1][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[22] ),
	.asdata(\parity_shift[1][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][22] .is_wysiwyg = "true";
defparam \parity_shift[1][0][22] .power_up = "low";

dffeas \parity_shift[1][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[23] ),
	.asdata(\parity_shift[1][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][23] .is_wysiwyg = "true";
defparam \parity_shift[1][0][23] .power_up = "low";

dffeas \parity_shift[1][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[24] ),
	.asdata(\parity_shift[1][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][24] .is_wysiwyg = "true";
defparam \parity_shift[1][0][24] .power_up = "low";

dffeas \parity_shift[1][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[25] ),
	.asdata(\parity_shift[1][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][25] .is_wysiwyg = "true";
defparam \parity_shift[1][0][25] .power_up = "low";

dffeas \parity_shift[1][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[26] ),
	.asdata(\parity_shift[1][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][26] .is_wysiwyg = "true";
defparam \parity_shift[1][0][26] .power_up = "low";

dffeas \parity_shift[1][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[27] ),
	.asdata(\parity_shift[1][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][27] .is_wysiwyg = "true";
defparam \parity_shift[1][0][27] .power_up = "low";

dffeas \parity_shift[1][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[28] ),
	.asdata(\parity_shift[1][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][28] .is_wysiwyg = "true";
defparam \parity_shift[1][0][28] .power_up = "low";

dffeas \parity_shift[1][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[29] ),
	.asdata(\parity_shift[1][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][29] .is_wysiwyg = "true";
defparam \parity_shift[1][0][29] .power_up = "low";

dffeas \parity_shift[1][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_1|auto_generated|q_a[0] ),
	.asdata(\parity_shift[1][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[1][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[1][0][0] .is_wysiwyg = "true";
defparam \parity_shift[1][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~30 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][0]~q ),
	.datad(!\parity_shift[1][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~30_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~30 .extended_lut = "off";
defparam \parity_acc~30 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~30 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~31 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][1]~q ),
	.datad(!\parity_shift[1][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~31_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~31 .extended_lut = "off";
defparam \parity_acc~31 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~31 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~32 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][2]~q ),
	.datad(!\parity_shift[1][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~32_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~32 .extended_lut = "off";
defparam \parity_acc~32 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~32 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~33 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][3]~q ),
	.datad(!\parity_shift[1][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~33_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~33 .extended_lut = "off";
defparam \parity_acc~33 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~33 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~34 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][4]~q ),
	.datad(!\parity_shift[1][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~34_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~34 .extended_lut = "off";
defparam \parity_acc~34 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~34 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~35 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][5]~q ),
	.datad(!\parity_shift[1][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~35_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~35 .extended_lut = "off";
defparam \parity_acc~35 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~35 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~36 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][6]~q ),
	.datad(!\parity_shift[1][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~36_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~36 .extended_lut = "off";
defparam \parity_acc~36 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~36 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~37 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][7]~q ),
	.datad(!\parity_shift[1][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~37_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~37 .extended_lut = "off";
defparam \parity_acc~37 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~37 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~38 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][8]~q ),
	.datad(!\parity_shift[1][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~38_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~38 .extended_lut = "off";
defparam \parity_acc~38 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~38 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~39 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][9]~q ),
	.datad(!\parity_shift[1][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~39_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~39 .extended_lut = "off";
defparam \parity_acc~39 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~39 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~40 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][10]~q ),
	.datad(!\parity_shift[1][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~40_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~40 .extended_lut = "off";
defparam \parity_acc~40 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~40 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~41 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][11]~q ),
	.datad(!\parity_shift[1][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~41_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~41 .extended_lut = "off";
defparam \parity_acc~41 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~41 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~42 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][12]~q ),
	.datad(!\parity_shift[1][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~42_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~42 .extended_lut = "off";
defparam \parity_acc~42 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~42 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~43 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][13]~q ),
	.datad(!\parity_shift[1][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~43_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~43 .extended_lut = "off";
defparam \parity_acc~43 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~43 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~44 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][14]~q ),
	.datad(!\parity_shift[1][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~44_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~44 .extended_lut = "off";
defparam \parity_acc~44 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~44 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~45 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[1][15]~q ),
	.datad(!\parity_shift[1][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~45_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~45 .extended_lut = "off";
defparam \parity_acc~45 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~45 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~46 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][16]~q ),
	.datad(!\parity_acc[1][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~46_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~46 .extended_lut = "off";
defparam \parity_acc~46 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~46 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~47 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][17]~q ),
	.datad(!\parity_acc[1][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~47_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~47 .extended_lut = "off";
defparam \parity_acc~47 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~47 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~48 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][18]~q ),
	.datad(!\parity_acc[1][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~48_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~48 .extended_lut = "off";
defparam \parity_acc~48 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~48 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~49 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][19]~q ),
	.datad(!\parity_acc[1][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~49_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~49 .extended_lut = "off";
defparam \parity_acc~49 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~49 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~50 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][20]~q ),
	.datad(!\parity_acc[1][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~50_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~50 .extended_lut = "off";
defparam \parity_acc~50 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~50 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~51 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][21]~q ),
	.datad(!\parity_acc[1][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~51_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~51 .extended_lut = "off";
defparam \parity_acc~51 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~51 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~52 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][22]~q ),
	.datad(!\parity_acc[1][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~52_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~52 .extended_lut = "off";
defparam \parity_acc~52 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~52 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~53 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][23]~q ),
	.datad(!\parity_acc[1][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~53_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~53 .extended_lut = "off";
defparam \parity_acc~53 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~53 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~54 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][24]~q ),
	.datad(!\parity_acc[1][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~54_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~54 .extended_lut = "off";
defparam \parity_acc~54 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~54 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~55 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][25]~q ),
	.datad(!\parity_acc[1][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~55_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~55 .extended_lut = "off";
defparam \parity_acc~55 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~55 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~56 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][26]~q ),
	.datad(!\parity_acc[1][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~56_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~56 .extended_lut = "off";
defparam \parity_acc~56 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~56 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~57 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][27]~q ),
	.datad(!\parity_acc[1][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~57_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~57 .extended_lut = "off";
defparam \parity_acc~57 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~57 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~58 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][28]~q ),
	.datad(!\parity_acc[1][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~58_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~58 .extended_lut = "off";
defparam \parity_acc~58 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~58 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~59 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[1][0][29]~q ),
	.datad(!\parity_acc[1][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~59_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~59 .extended_lut = "off";
defparam \parity_acc~59 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~59 .shared_arith = "off";

dffeas \parity_shift[2][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[1] ),
	.asdata(\parity_shift[2][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][1] .is_wysiwyg = "true";
defparam \parity_shift[2][0][1] .power_up = "low";

dffeas \parity_shift[2][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[2] ),
	.asdata(\parity_shift[2][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][2] .is_wysiwyg = "true";
defparam \parity_shift[2][0][2] .power_up = "low";

dffeas \parity_shift[2][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[3] ),
	.asdata(\parity_shift[2][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][3] .is_wysiwyg = "true";
defparam \parity_shift[2][0][3] .power_up = "low";

dffeas \parity_shift[2][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[4] ),
	.asdata(\parity_shift[2][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][4] .is_wysiwyg = "true";
defparam \parity_shift[2][0][4] .power_up = "low";

dffeas \parity_shift[2][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[5] ),
	.asdata(\parity_shift[2][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][5] .is_wysiwyg = "true";
defparam \parity_shift[2][0][5] .power_up = "low";

dffeas \parity_shift[2][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[6] ),
	.asdata(\parity_shift[2][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][6] .is_wysiwyg = "true";
defparam \parity_shift[2][0][6] .power_up = "low";

dffeas \parity_shift[2][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[7] ),
	.asdata(\parity_shift[2][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][7] .is_wysiwyg = "true";
defparam \parity_shift[2][0][7] .power_up = "low";

dffeas \parity_shift[2][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[8] ),
	.asdata(\parity_shift[2][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][8] .is_wysiwyg = "true";
defparam \parity_shift[2][0][8] .power_up = "low";

dffeas \parity_shift[2][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[9] ),
	.asdata(\parity_shift[2][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][9] .is_wysiwyg = "true";
defparam \parity_shift[2][0][9] .power_up = "low";

dffeas \parity_shift[2][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[10] ),
	.asdata(\parity_shift[2][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][10] .is_wysiwyg = "true";
defparam \parity_shift[2][0][10] .power_up = "low";

dffeas \parity_shift[2][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[11] ),
	.asdata(\parity_shift[2][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][11] .is_wysiwyg = "true";
defparam \parity_shift[2][0][11] .power_up = "low";

dffeas \parity_shift[2][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[12] ),
	.asdata(\parity_shift[2][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][12] .is_wysiwyg = "true";
defparam \parity_shift[2][0][12] .power_up = "low";

dffeas \parity_shift[2][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[13] ),
	.asdata(\parity_shift[2][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][13] .is_wysiwyg = "true";
defparam \parity_shift[2][0][13] .power_up = "low";

dffeas \parity_shift[2][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[14] ),
	.asdata(\parity_shift[2][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][14] .is_wysiwyg = "true";
defparam \parity_shift[2][0][14] .power_up = "low";

dffeas \parity_shift[2][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[15] ),
	.asdata(\parity_shift[2][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][15] .is_wysiwyg = "true";
defparam \parity_shift[2][0][15] .power_up = "low";

dffeas \parity_shift[2][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[16] ),
	.asdata(\parity_shift[2][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][16] .is_wysiwyg = "true";
defparam \parity_shift[2][0][16] .power_up = "low";

dffeas \parity_shift[2][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[17] ),
	.asdata(\parity_shift[2][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][17] .is_wysiwyg = "true";
defparam \parity_shift[2][0][17] .power_up = "low";

dffeas \parity_shift[2][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[18] ),
	.asdata(\parity_shift[2][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][18] .is_wysiwyg = "true";
defparam \parity_shift[2][0][18] .power_up = "low";

dffeas \parity_shift[2][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[19] ),
	.asdata(\parity_shift[2][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][19] .is_wysiwyg = "true";
defparam \parity_shift[2][0][19] .power_up = "low";

dffeas \parity_shift[2][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[20] ),
	.asdata(\parity_shift[2][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][20] .is_wysiwyg = "true";
defparam \parity_shift[2][0][20] .power_up = "low";

dffeas \parity_shift[2][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[21] ),
	.asdata(\parity_shift[2][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][21] .is_wysiwyg = "true";
defparam \parity_shift[2][0][21] .power_up = "low";

dffeas \parity_shift[2][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[22] ),
	.asdata(\parity_shift[2][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][22] .is_wysiwyg = "true";
defparam \parity_shift[2][0][22] .power_up = "low";

dffeas \parity_shift[2][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[23] ),
	.asdata(\parity_shift[2][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][23] .is_wysiwyg = "true";
defparam \parity_shift[2][0][23] .power_up = "low";

dffeas \parity_shift[2][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[24] ),
	.asdata(\parity_shift[2][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][24] .is_wysiwyg = "true";
defparam \parity_shift[2][0][24] .power_up = "low";

dffeas \parity_shift[2][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[25] ),
	.asdata(\parity_shift[2][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][25] .is_wysiwyg = "true";
defparam \parity_shift[2][0][25] .power_up = "low";

dffeas \parity_shift[2][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[26] ),
	.asdata(\parity_shift[2][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][26] .is_wysiwyg = "true";
defparam \parity_shift[2][0][26] .power_up = "low";

dffeas \parity_shift[2][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[27] ),
	.asdata(\parity_shift[2][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][27] .is_wysiwyg = "true";
defparam \parity_shift[2][0][27] .power_up = "low";

dffeas \parity_shift[2][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[28] ),
	.asdata(\parity_shift[2][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][28] .is_wysiwyg = "true";
defparam \parity_shift[2][0][28] .power_up = "low";

dffeas \parity_shift[2][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[29] ),
	.asdata(\parity_shift[2][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][29] .is_wysiwyg = "true";
defparam \parity_shift[2][0][29] .power_up = "low";

dffeas \parity_shift[2][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_2|auto_generated|q_a[0] ),
	.asdata(\parity_shift[2][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[2][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[2][0][0] .is_wysiwyg = "true";
defparam \parity_shift[2][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~60 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][0]~q ),
	.datad(!\parity_shift[2][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~60_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~60 .extended_lut = "off";
defparam \parity_acc~60 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~60 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~61 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][1]~q ),
	.datad(!\parity_shift[2][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~61_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~61 .extended_lut = "off";
defparam \parity_acc~61 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~61 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~62 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][2]~q ),
	.datad(!\parity_shift[2][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~62_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~62 .extended_lut = "off";
defparam \parity_acc~62 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~62 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~63 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][3]~q ),
	.datad(!\parity_shift[2][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~63_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~63 .extended_lut = "off";
defparam \parity_acc~63 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~63 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~64 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][4]~q ),
	.datad(!\parity_shift[2][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~64_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~64 .extended_lut = "off";
defparam \parity_acc~64 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~64 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~65 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][5]~q ),
	.datad(!\parity_shift[2][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~65_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~65 .extended_lut = "off";
defparam \parity_acc~65 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~65 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~66 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][6]~q ),
	.datad(!\parity_shift[2][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~66_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~66 .extended_lut = "off";
defparam \parity_acc~66 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~66 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~67 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][7]~q ),
	.datad(!\parity_shift[2][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~67_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~67 .extended_lut = "off";
defparam \parity_acc~67 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~67 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~68 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][8]~q ),
	.datad(!\parity_shift[2][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~68_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~68 .extended_lut = "off";
defparam \parity_acc~68 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~68 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~69 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][9]~q ),
	.datad(!\parity_shift[2][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~69_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~69 .extended_lut = "off";
defparam \parity_acc~69 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~69 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~70 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][10]~q ),
	.datad(!\parity_shift[2][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~70_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~70 .extended_lut = "off";
defparam \parity_acc~70 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~70 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~71 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][11]~q ),
	.datad(!\parity_shift[2][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~71_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~71 .extended_lut = "off";
defparam \parity_acc~71 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~71 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~72 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][12]~q ),
	.datad(!\parity_shift[2][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~72_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~72 .extended_lut = "off";
defparam \parity_acc~72 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~72 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~73 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][13]~q ),
	.datad(!\parity_shift[2][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~73_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~73 .extended_lut = "off";
defparam \parity_acc~73 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~73 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~74 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][14]~q ),
	.datad(!\parity_shift[2][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~74_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~74 .extended_lut = "off";
defparam \parity_acc~74 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~74 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~75 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[2][15]~q ),
	.datad(!\parity_shift[2][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~75_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~75 .extended_lut = "off";
defparam \parity_acc~75 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~75 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~76 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][16]~q ),
	.datad(!\parity_acc[2][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~76_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~76 .extended_lut = "off";
defparam \parity_acc~76 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~76 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~77 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][17]~q ),
	.datad(!\parity_acc[2][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~77_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~77 .extended_lut = "off";
defparam \parity_acc~77 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~77 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~78 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][18]~q ),
	.datad(!\parity_acc[2][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~78_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~78 .extended_lut = "off";
defparam \parity_acc~78 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~78 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~79 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][19]~q ),
	.datad(!\parity_acc[2][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~79_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~79 .extended_lut = "off";
defparam \parity_acc~79 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~79 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~80 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][20]~q ),
	.datad(!\parity_acc[2][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~80_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~80 .extended_lut = "off";
defparam \parity_acc~80 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~80 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~81 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][21]~q ),
	.datad(!\parity_acc[2][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~81_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~81 .extended_lut = "off";
defparam \parity_acc~81 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~81 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~82 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][22]~q ),
	.datad(!\parity_acc[2][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~82_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~82 .extended_lut = "off";
defparam \parity_acc~82 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~82 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~83 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][23]~q ),
	.datad(!\parity_acc[2][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~83_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~83 .extended_lut = "off";
defparam \parity_acc~83 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~83 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~84 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][24]~q ),
	.datad(!\parity_acc[2][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~84_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~84 .extended_lut = "off";
defparam \parity_acc~84 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~84 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~85 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][25]~q ),
	.datad(!\parity_acc[2][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~85_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~85 .extended_lut = "off";
defparam \parity_acc~85 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~85 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~86 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][26]~q ),
	.datad(!\parity_acc[2][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~86_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~86 .extended_lut = "off";
defparam \parity_acc~86 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~86 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~87 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][27]~q ),
	.datad(!\parity_acc[2][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~87_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~87 .extended_lut = "off";
defparam \parity_acc~87 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~87 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~88 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][28]~q ),
	.datad(!\parity_acc[2][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~88_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~88 .extended_lut = "off";
defparam \parity_acc~88 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~88 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~89 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[2][0][29]~q ),
	.datad(!\parity_acc[2][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~89_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~89 .extended_lut = "off";
defparam \parity_acc~89 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~89 .shared_arith = "off";

dffeas \parity_shift[3][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[1] ),
	.asdata(\parity_shift[3][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][1] .is_wysiwyg = "true";
defparam \parity_shift[3][0][1] .power_up = "low";

dffeas \parity_shift[3][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[2] ),
	.asdata(\parity_shift[3][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][2] .is_wysiwyg = "true";
defparam \parity_shift[3][0][2] .power_up = "low";

dffeas \parity_shift[3][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[3] ),
	.asdata(\parity_shift[3][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][3] .is_wysiwyg = "true";
defparam \parity_shift[3][0][3] .power_up = "low";

dffeas \parity_shift[3][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[4] ),
	.asdata(\parity_shift[3][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][4] .is_wysiwyg = "true";
defparam \parity_shift[3][0][4] .power_up = "low";

dffeas \parity_shift[3][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[5] ),
	.asdata(\parity_shift[3][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][5] .is_wysiwyg = "true";
defparam \parity_shift[3][0][5] .power_up = "low";

dffeas \parity_shift[3][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[6] ),
	.asdata(\parity_shift[3][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][6] .is_wysiwyg = "true";
defparam \parity_shift[3][0][6] .power_up = "low";

dffeas \parity_shift[3][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[7] ),
	.asdata(\parity_shift[3][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][7] .is_wysiwyg = "true";
defparam \parity_shift[3][0][7] .power_up = "low";

dffeas \parity_shift[3][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[8] ),
	.asdata(\parity_shift[3][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][8] .is_wysiwyg = "true";
defparam \parity_shift[3][0][8] .power_up = "low";

dffeas \parity_shift[3][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[9] ),
	.asdata(\parity_shift[3][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][9] .is_wysiwyg = "true";
defparam \parity_shift[3][0][9] .power_up = "low";

dffeas \parity_shift[3][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[10] ),
	.asdata(\parity_shift[3][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][10] .is_wysiwyg = "true";
defparam \parity_shift[3][0][10] .power_up = "low";

dffeas \parity_shift[3][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[11] ),
	.asdata(\parity_shift[3][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][11] .is_wysiwyg = "true";
defparam \parity_shift[3][0][11] .power_up = "low";

dffeas \parity_shift[3][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[12] ),
	.asdata(\parity_shift[3][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][12] .is_wysiwyg = "true";
defparam \parity_shift[3][0][12] .power_up = "low";

dffeas \parity_shift[3][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[13] ),
	.asdata(\parity_shift[3][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][13] .is_wysiwyg = "true";
defparam \parity_shift[3][0][13] .power_up = "low";

dffeas \parity_shift[3][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[14] ),
	.asdata(\parity_shift[3][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][14] .is_wysiwyg = "true";
defparam \parity_shift[3][0][14] .power_up = "low";

dffeas \parity_shift[3][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[15] ),
	.asdata(\parity_shift[3][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][15] .is_wysiwyg = "true";
defparam \parity_shift[3][0][15] .power_up = "low";

dffeas \parity_shift[3][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[16] ),
	.asdata(\parity_shift[3][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][16] .is_wysiwyg = "true";
defparam \parity_shift[3][0][16] .power_up = "low";

dffeas \parity_shift[3][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[17] ),
	.asdata(\parity_shift[3][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][17] .is_wysiwyg = "true";
defparam \parity_shift[3][0][17] .power_up = "low";

dffeas \parity_shift[3][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[18] ),
	.asdata(\parity_shift[3][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][18] .is_wysiwyg = "true";
defparam \parity_shift[3][0][18] .power_up = "low";

dffeas \parity_shift[3][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[19] ),
	.asdata(\parity_shift[3][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][19] .is_wysiwyg = "true";
defparam \parity_shift[3][0][19] .power_up = "low";

dffeas \parity_shift[3][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[20] ),
	.asdata(\parity_shift[3][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][20] .is_wysiwyg = "true";
defparam \parity_shift[3][0][20] .power_up = "low";

dffeas \parity_shift[3][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[21] ),
	.asdata(\parity_shift[3][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][21] .is_wysiwyg = "true";
defparam \parity_shift[3][0][21] .power_up = "low";

dffeas \parity_shift[3][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[22] ),
	.asdata(\parity_shift[3][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][22] .is_wysiwyg = "true";
defparam \parity_shift[3][0][22] .power_up = "low";

dffeas \parity_shift[3][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[23] ),
	.asdata(\parity_shift[3][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][23] .is_wysiwyg = "true";
defparam \parity_shift[3][0][23] .power_up = "low";

dffeas \parity_shift[3][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[24] ),
	.asdata(\parity_shift[3][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][24] .is_wysiwyg = "true";
defparam \parity_shift[3][0][24] .power_up = "low";

dffeas \parity_shift[3][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[25] ),
	.asdata(\parity_shift[3][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][25] .is_wysiwyg = "true";
defparam \parity_shift[3][0][25] .power_up = "low";

dffeas \parity_shift[3][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[26] ),
	.asdata(\parity_shift[3][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][26] .is_wysiwyg = "true";
defparam \parity_shift[3][0][26] .power_up = "low";

dffeas \parity_shift[3][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[27] ),
	.asdata(\parity_shift[3][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][27] .is_wysiwyg = "true";
defparam \parity_shift[3][0][27] .power_up = "low";

dffeas \parity_shift[3][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[28] ),
	.asdata(\parity_shift[3][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][28] .is_wysiwyg = "true";
defparam \parity_shift[3][0][28] .power_up = "low";

dffeas \parity_shift[3][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[29] ),
	.asdata(\parity_shift[3][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][29] .is_wysiwyg = "true";
defparam \parity_shift[3][0][29] .power_up = "low";

dffeas \parity_shift[3][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_3|auto_generated|q_a[0] ),
	.asdata(\parity_shift[3][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[3][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[3][0][0] .is_wysiwyg = "true";
defparam \parity_shift[3][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~90 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][0]~q ),
	.datad(!\parity_shift[3][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~90_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~90 .extended_lut = "off";
defparam \parity_acc~90 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~90 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~91 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][1]~q ),
	.datad(!\parity_shift[3][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~91_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~91 .extended_lut = "off";
defparam \parity_acc~91 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~91 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~92 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][2]~q ),
	.datad(!\parity_shift[3][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~92_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~92 .extended_lut = "off";
defparam \parity_acc~92 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~92 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~93 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][3]~q ),
	.datad(!\parity_shift[3][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~93_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~93 .extended_lut = "off";
defparam \parity_acc~93 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~93 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~94 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][4]~q ),
	.datad(!\parity_shift[3][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~94_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~94 .extended_lut = "off";
defparam \parity_acc~94 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~94 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~95 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][5]~q ),
	.datad(!\parity_shift[3][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~95_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~95 .extended_lut = "off";
defparam \parity_acc~95 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~95 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~96 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][6]~q ),
	.datad(!\parity_shift[3][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~96_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~96 .extended_lut = "off";
defparam \parity_acc~96 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~96 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~97 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][7]~q ),
	.datad(!\parity_shift[3][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~97_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~97 .extended_lut = "off";
defparam \parity_acc~97 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~97 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~98 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][8]~q ),
	.datad(!\parity_shift[3][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~98_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~98 .extended_lut = "off";
defparam \parity_acc~98 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~98 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~99 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][9]~q ),
	.datad(!\parity_shift[3][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~99_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~99 .extended_lut = "off";
defparam \parity_acc~99 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~99 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~100 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][10]~q ),
	.datad(!\parity_shift[3][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~100_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~100 .extended_lut = "off";
defparam \parity_acc~100 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~100 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~101 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][11]~q ),
	.datad(!\parity_shift[3][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~101_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~101 .extended_lut = "off";
defparam \parity_acc~101 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~101 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~102 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][12]~q ),
	.datad(!\parity_shift[3][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~102_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~102 .extended_lut = "off";
defparam \parity_acc~102 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~102 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~103 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][13]~q ),
	.datad(!\parity_shift[3][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~103_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~103 .extended_lut = "off";
defparam \parity_acc~103 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~103 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~104 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][14]~q ),
	.datad(!\parity_shift[3][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~104_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~104 .extended_lut = "off";
defparam \parity_acc~104 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~104 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~105 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[3][15]~q ),
	.datad(!\parity_shift[3][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~105_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~105 .extended_lut = "off";
defparam \parity_acc~105 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~105 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~106 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][16]~q ),
	.datad(!\parity_acc[3][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~106_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~106 .extended_lut = "off";
defparam \parity_acc~106 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~106 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~107 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][17]~q ),
	.datad(!\parity_acc[3][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~107_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~107 .extended_lut = "off";
defparam \parity_acc~107 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~107 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~108 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][18]~q ),
	.datad(!\parity_acc[3][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~108_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~108 .extended_lut = "off";
defparam \parity_acc~108 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~108 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~109 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][19]~q ),
	.datad(!\parity_acc[3][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~109_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~109 .extended_lut = "off";
defparam \parity_acc~109 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~109 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~110 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][20]~q ),
	.datad(!\parity_acc[3][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~110_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~110 .extended_lut = "off";
defparam \parity_acc~110 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~110 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~111 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][21]~q ),
	.datad(!\parity_acc[3][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~111_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~111 .extended_lut = "off";
defparam \parity_acc~111 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~111 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~112 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][22]~q ),
	.datad(!\parity_acc[3][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~112_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~112 .extended_lut = "off";
defparam \parity_acc~112 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~112 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~113 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][23]~q ),
	.datad(!\parity_acc[3][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~113_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~113 .extended_lut = "off";
defparam \parity_acc~113 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~113 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~114 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][24]~q ),
	.datad(!\parity_acc[3][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~114_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~114 .extended_lut = "off";
defparam \parity_acc~114 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~114 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~115 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][25]~q ),
	.datad(!\parity_acc[3][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~115_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~115 .extended_lut = "off";
defparam \parity_acc~115 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~115 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~116 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][26]~q ),
	.datad(!\parity_acc[3][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~116_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~116 .extended_lut = "off";
defparam \parity_acc~116 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~116 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~117 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][27]~q ),
	.datad(!\parity_acc[3][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~117_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~117 .extended_lut = "off";
defparam \parity_acc~117 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~117 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~118 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][28]~q ),
	.datad(!\parity_acc[3][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~118_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~118 .extended_lut = "off";
defparam \parity_acc~118 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~118 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~119 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[3][0][29]~q ),
	.datad(!\parity_acc[3][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~119_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~119 .extended_lut = "off";
defparam \parity_acc~119 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~119 .shared_arith = "off";

dffeas \parity_shift[4][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[1] ),
	.asdata(\parity_shift[4][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][1] .is_wysiwyg = "true";
defparam \parity_shift[4][0][1] .power_up = "low";

dffeas \parity_shift[4][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[2] ),
	.asdata(\parity_shift[4][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][2] .is_wysiwyg = "true";
defparam \parity_shift[4][0][2] .power_up = "low";

dffeas \parity_shift[4][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[3] ),
	.asdata(\parity_shift[4][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][3] .is_wysiwyg = "true";
defparam \parity_shift[4][0][3] .power_up = "low";

dffeas \parity_shift[4][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[4] ),
	.asdata(\parity_shift[4][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][4] .is_wysiwyg = "true";
defparam \parity_shift[4][0][4] .power_up = "low";

dffeas \parity_shift[4][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[5] ),
	.asdata(\parity_shift[4][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][5] .is_wysiwyg = "true";
defparam \parity_shift[4][0][5] .power_up = "low";

dffeas \parity_shift[4][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[6] ),
	.asdata(\parity_shift[4][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][6] .is_wysiwyg = "true";
defparam \parity_shift[4][0][6] .power_up = "low";

dffeas \parity_shift[4][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[7] ),
	.asdata(\parity_shift[4][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][7] .is_wysiwyg = "true";
defparam \parity_shift[4][0][7] .power_up = "low";

dffeas \parity_shift[4][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[8] ),
	.asdata(\parity_shift[4][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][8] .is_wysiwyg = "true";
defparam \parity_shift[4][0][8] .power_up = "low";

dffeas \parity_shift[4][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[9] ),
	.asdata(\parity_shift[4][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][9] .is_wysiwyg = "true";
defparam \parity_shift[4][0][9] .power_up = "low";

dffeas \parity_shift[4][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[10] ),
	.asdata(\parity_shift[4][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][10] .is_wysiwyg = "true";
defparam \parity_shift[4][0][10] .power_up = "low";

dffeas \parity_shift[4][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[11] ),
	.asdata(\parity_shift[4][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][11] .is_wysiwyg = "true";
defparam \parity_shift[4][0][11] .power_up = "low";

dffeas \parity_shift[4][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[12] ),
	.asdata(\parity_shift[4][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][12] .is_wysiwyg = "true";
defparam \parity_shift[4][0][12] .power_up = "low";

dffeas \parity_shift[4][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[13] ),
	.asdata(\parity_shift[4][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][13] .is_wysiwyg = "true";
defparam \parity_shift[4][0][13] .power_up = "low";

dffeas \parity_shift[4][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[14] ),
	.asdata(\parity_shift[4][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][14] .is_wysiwyg = "true";
defparam \parity_shift[4][0][14] .power_up = "low";

dffeas \parity_shift[4][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[15] ),
	.asdata(\parity_shift[4][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][15] .is_wysiwyg = "true";
defparam \parity_shift[4][0][15] .power_up = "low";

dffeas \parity_shift[4][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[16] ),
	.asdata(\parity_shift[4][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][16] .is_wysiwyg = "true";
defparam \parity_shift[4][0][16] .power_up = "low";

dffeas \parity_shift[4][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[17] ),
	.asdata(\parity_shift[4][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][17] .is_wysiwyg = "true";
defparam \parity_shift[4][0][17] .power_up = "low";

dffeas \parity_shift[4][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[18] ),
	.asdata(\parity_shift[4][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][18] .is_wysiwyg = "true";
defparam \parity_shift[4][0][18] .power_up = "low";

dffeas \parity_shift[4][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[19] ),
	.asdata(\parity_shift[4][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][19] .is_wysiwyg = "true";
defparam \parity_shift[4][0][19] .power_up = "low";

dffeas \parity_shift[4][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[20] ),
	.asdata(\parity_shift[4][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][20] .is_wysiwyg = "true";
defparam \parity_shift[4][0][20] .power_up = "low";

dffeas \parity_shift[4][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[21] ),
	.asdata(\parity_shift[4][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][21] .is_wysiwyg = "true";
defparam \parity_shift[4][0][21] .power_up = "low";

dffeas \parity_shift[4][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[22] ),
	.asdata(\parity_shift[4][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][22] .is_wysiwyg = "true";
defparam \parity_shift[4][0][22] .power_up = "low";

dffeas \parity_shift[4][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[23] ),
	.asdata(\parity_shift[4][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][23] .is_wysiwyg = "true";
defparam \parity_shift[4][0][23] .power_up = "low";

dffeas \parity_shift[4][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[24] ),
	.asdata(\parity_shift[4][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][24] .is_wysiwyg = "true";
defparam \parity_shift[4][0][24] .power_up = "low";

dffeas \parity_shift[4][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[25] ),
	.asdata(\parity_shift[4][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][25] .is_wysiwyg = "true";
defparam \parity_shift[4][0][25] .power_up = "low";

dffeas \parity_shift[4][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[26] ),
	.asdata(\parity_shift[4][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][26] .is_wysiwyg = "true";
defparam \parity_shift[4][0][26] .power_up = "low";

dffeas \parity_shift[4][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[27] ),
	.asdata(\parity_shift[4][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][27] .is_wysiwyg = "true";
defparam \parity_shift[4][0][27] .power_up = "low";

dffeas \parity_shift[4][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[28] ),
	.asdata(\parity_shift[4][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][28] .is_wysiwyg = "true";
defparam \parity_shift[4][0][28] .power_up = "low";

dffeas \parity_shift[4][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[29] ),
	.asdata(\parity_shift[4][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][29] .is_wysiwyg = "true";
defparam \parity_shift[4][0][29] .power_up = "low";

dffeas \parity_shift[4][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_4|auto_generated|q_a[0] ),
	.asdata(\parity_shift[4][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[4][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[4][0][0] .is_wysiwyg = "true";
defparam \parity_shift[4][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~120 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][0]~q ),
	.datad(!\parity_shift[4][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~120_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~120 .extended_lut = "off";
defparam \parity_acc~120 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~120 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~121 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][1]~q ),
	.datad(!\parity_shift[4][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~121_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~121 .extended_lut = "off";
defparam \parity_acc~121 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~121 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~122 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][2]~q ),
	.datad(!\parity_shift[4][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~122_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~122 .extended_lut = "off";
defparam \parity_acc~122 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~122 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~123 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][3]~q ),
	.datad(!\parity_shift[4][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~123_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~123 .extended_lut = "off";
defparam \parity_acc~123 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~123 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~124 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][4]~q ),
	.datad(!\parity_shift[4][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~124_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~124 .extended_lut = "off";
defparam \parity_acc~124 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~124 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~125 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][5]~q ),
	.datad(!\parity_shift[4][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~125_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~125 .extended_lut = "off";
defparam \parity_acc~125 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~125 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~126 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][6]~q ),
	.datad(!\parity_shift[4][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~126_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~126 .extended_lut = "off";
defparam \parity_acc~126 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~126 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~127 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][7]~q ),
	.datad(!\parity_shift[4][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~127_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~127 .extended_lut = "off";
defparam \parity_acc~127 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~127 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~128 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][8]~q ),
	.datad(!\parity_shift[4][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~128_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~128 .extended_lut = "off";
defparam \parity_acc~128 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~128 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~129 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][9]~q ),
	.datad(!\parity_shift[4][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~129_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~129 .extended_lut = "off";
defparam \parity_acc~129 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~129 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~130 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][10]~q ),
	.datad(!\parity_shift[4][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~130_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~130 .extended_lut = "off";
defparam \parity_acc~130 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~130 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~131 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][11]~q ),
	.datad(!\parity_shift[4][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~131_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~131 .extended_lut = "off";
defparam \parity_acc~131 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~131 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~132 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][12]~q ),
	.datad(!\parity_shift[4][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~132_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~132 .extended_lut = "off";
defparam \parity_acc~132 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~132 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~133 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][13]~q ),
	.datad(!\parity_shift[4][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~133_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~133 .extended_lut = "off";
defparam \parity_acc~133 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~133 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~134 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][14]~q ),
	.datad(!\parity_shift[4][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~134_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~134 .extended_lut = "off";
defparam \parity_acc~134 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~134 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~135 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[4][15]~q ),
	.datad(!\parity_shift[4][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~135_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~135 .extended_lut = "off";
defparam \parity_acc~135 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~135 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~136 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][16]~q ),
	.datad(!\parity_acc[4][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~136_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~136 .extended_lut = "off";
defparam \parity_acc~136 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~136 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~137 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][17]~q ),
	.datad(!\parity_acc[4][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~137_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~137 .extended_lut = "off";
defparam \parity_acc~137 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~137 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~138 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][18]~q ),
	.datad(!\parity_acc[4][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~138_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~138 .extended_lut = "off";
defparam \parity_acc~138 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~138 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~139 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][19]~q ),
	.datad(!\parity_acc[4][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~139_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~139 .extended_lut = "off";
defparam \parity_acc~139 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~139 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~140 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][20]~q ),
	.datad(!\parity_acc[4][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~140_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~140 .extended_lut = "off";
defparam \parity_acc~140 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~140 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~141 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][21]~q ),
	.datad(!\parity_acc[4][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~141_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~141 .extended_lut = "off";
defparam \parity_acc~141 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~141 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~142 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][22]~q ),
	.datad(!\parity_acc[4][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~142_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~142 .extended_lut = "off";
defparam \parity_acc~142 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~142 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~143 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][23]~q ),
	.datad(!\parity_acc[4][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~143_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~143 .extended_lut = "off";
defparam \parity_acc~143 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~143 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~144 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][24]~q ),
	.datad(!\parity_acc[4][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~144_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~144 .extended_lut = "off";
defparam \parity_acc~144 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~144 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~145 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][25]~q ),
	.datad(!\parity_acc[4][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~145_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~145 .extended_lut = "off";
defparam \parity_acc~145 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~145 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~146 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][26]~q ),
	.datad(!\parity_acc[4][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~146_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~146 .extended_lut = "off";
defparam \parity_acc~146 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~146 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~147 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][27]~q ),
	.datad(!\parity_acc[4][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~147_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~147 .extended_lut = "off";
defparam \parity_acc~147 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~147 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~148 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][28]~q ),
	.datad(!\parity_acc[4][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~148_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~148 .extended_lut = "off";
defparam \parity_acc~148 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~148 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~149 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[4][0][29]~q ),
	.datad(!\parity_acc[4][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~149_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~149 .extended_lut = "off";
defparam \parity_acc~149 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~149 .shared_arith = "off";

dffeas \parity_shift[5][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[1] ),
	.asdata(\parity_shift[5][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][1] .is_wysiwyg = "true";
defparam \parity_shift[5][0][1] .power_up = "low";

dffeas \parity_shift[5][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[2] ),
	.asdata(\parity_shift[5][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][2] .is_wysiwyg = "true";
defparam \parity_shift[5][0][2] .power_up = "low";

dffeas \parity_shift[5][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[3] ),
	.asdata(\parity_shift[5][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][3] .is_wysiwyg = "true";
defparam \parity_shift[5][0][3] .power_up = "low";

dffeas \parity_shift[5][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[4] ),
	.asdata(\parity_shift[5][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][4] .is_wysiwyg = "true";
defparam \parity_shift[5][0][4] .power_up = "low";

dffeas \parity_shift[5][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[5] ),
	.asdata(\parity_shift[5][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][5] .is_wysiwyg = "true";
defparam \parity_shift[5][0][5] .power_up = "low";

dffeas \parity_shift[5][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[6] ),
	.asdata(\parity_shift[5][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][6] .is_wysiwyg = "true";
defparam \parity_shift[5][0][6] .power_up = "low";

dffeas \parity_shift[5][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[7] ),
	.asdata(\parity_shift[5][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][7] .is_wysiwyg = "true";
defparam \parity_shift[5][0][7] .power_up = "low";

dffeas \parity_shift[5][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[8] ),
	.asdata(\parity_shift[5][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][8] .is_wysiwyg = "true";
defparam \parity_shift[5][0][8] .power_up = "low";

dffeas \parity_shift[5][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[9] ),
	.asdata(\parity_shift[5][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][9] .is_wysiwyg = "true";
defparam \parity_shift[5][0][9] .power_up = "low";

dffeas \parity_shift[5][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[10] ),
	.asdata(\parity_shift[5][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][10] .is_wysiwyg = "true";
defparam \parity_shift[5][0][10] .power_up = "low";

dffeas \parity_shift[5][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[11] ),
	.asdata(\parity_shift[5][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][11] .is_wysiwyg = "true";
defparam \parity_shift[5][0][11] .power_up = "low";

dffeas \parity_shift[5][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[12] ),
	.asdata(\parity_shift[5][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][12] .is_wysiwyg = "true";
defparam \parity_shift[5][0][12] .power_up = "low";

dffeas \parity_shift[5][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[13] ),
	.asdata(\parity_shift[5][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][13] .is_wysiwyg = "true";
defparam \parity_shift[5][0][13] .power_up = "low";

dffeas \parity_shift[5][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[14] ),
	.asdata(\parity_shift[5][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][14] .is_wysiwyg = "true";
defparam \parity_shift[5][0][14] .power_up = "low";

dffeas \parity_shift[5][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[15] ),
	.asdata(\parity_shift[5][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][15] .is_wysiwyg = "true";
defparam \parity_shift[5][0][15] .power_up = "low";

dffeas \parity_shift[5][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[16] ),
	.asdata(\parity_shift[5][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][16] .is_wysiwyg = "true";
defparam \parity_shift[5][0][16] .power_up = "low";

dffeas \parity_shift[5][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[17] ),
	.asdata(\parity_shift[5][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][17] .is_wysiwyg = "true";
defparam \parity_shift[5][0][17] .power_up = "low";

dffeas \parity_shift[5][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[18] ),
	.asdata(\parity_shift[5][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][18] .is_wysiwyg = "true";
defparam \parity_shift[5][0][18] .power_up = "low";

dffeas \parity_shift[5][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[19] ),
	.asdata(\parity_shift[5][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][19] .is_wysiwyg = "true";
defparam \parity_shift[5][0][19] .power_up = "low";

dffeas \parity_shift[5][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[20] ),
	.asdata(\parity_shift[5][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][20] .is_wysiwyg = "true";
defparam \parity_shift[5][0][20] .power_up = "low";

dffeas \parity_shift[5][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[21] ),
	.asdata(\parity_shift[5][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][21] .is_wysiwyg = "true";
defparam \parity_shift[5][0][21] .power_up = "low";

dffeas \parity_shift[5][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[22] ),
	.asdata(\parity_shift[5][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][22] .is_wysiwyg = "true";
defparam \parity_shift[5][0][22] .power_up = "low";

dffeas \parity_shift[5][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[23] ),
	.asdata(\parity_shift[5][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][23] .is_wysiwyg = "true";
defparam \parity_shift[5][0][23] .power_up = "low";

dffeas \parity_shift[5][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[24] ),
	.asdata(\parity_shift[5][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][24] .is_wysiwyg = "true";
defparam \parity_shift[5][0][24] .power_up = "low";

dffeas \parity_shift[5][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[25] ),
	.asdata(\parity_shift[5][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][25] .is_wysiwyg = "true";
defparam \parity_shift[5][0][25] .power_up = "low";

dffeas \parity_shift[5][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[26] ),
	.asdata(\parity_shift[5][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][26] .is_wysiwyg = "true";
defparam \parity_shift[5][0][26] .power_up = "low";

dffeas \parity_shift[5][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[27] ),
	.asdata(\parity_shift[5][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][27] .is_wysiwyg = "true";
defparam \parity_shift[5][0][27] .power_up = "low";

dffeas \parity_shift[5][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[28] ),
	.asdata(\parity_shift[5][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][28] .is_wysiwyg = "true";
defparam \parity_shift[5][0][28] .power_up = "low";

dffeas \parity_shift[5][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[29] ),
	.asdata(\parity_shift[5][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][29] .is_wysiwyg = "true";
defparam \parity_shift[5][0][29] .power_up = "low";

dffeas \parity_shift[5][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_5|auto_generated|q_a[0] ),
	.asdata(\parity_shift[5][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[5][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[5][0][0] .is_wysiwyg = "true";
defparam \parity_shift[5][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~150 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][0]~q ),
	.datad(!\parity_shift[5][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~150_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~150 .extended_lut = "off";
defparam \parity_acc~150 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~150 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~151 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][1]~q ),
	.datad(!\parity_shift[5][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~151_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~151 .extended_lut = "off";
defparam \parity_acc~151 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~151 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~152 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][2]~q ),
	.datad(!\parity_shift[5][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~152_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~152 .extended_lut = "off";
defparam \parity_acc~152 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~152 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~153 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][3]~q ),
	.datad(!\parity_shift[5][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~153_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~153 .extended_lut = "off";
defparam \parity_acc~153 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~153 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~154 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][4]~q ),
	.datad(!\parity_shift[5][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~154_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~154 .extended_lut = "off";
defparam \parity_acc~154 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~154 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~155 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][5]~q ),
	.datad(!\parity_shift[5][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~155_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~155 .extended_lut = "off";
defparam \parity_acc~155 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~155 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~156 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][6]~q ),
	.datad(!\parity_shift[5][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~156_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~156 .extended_lut = "off";
defparam \parity_acc~156 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~156 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~157 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][7]~q ),
	.datad(!\parity_shift[5][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~157_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~157 .extended_lut = "off";
defparam \parity_acc~157 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~157 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~158 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][8]~q ),
	.datad(!\parity_shift[5][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~158_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~158 .extended_lut = "off";
defparam \parity_acc~158 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~158 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~159 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][9]~q ),
	.datad(!\parity_shift[5][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~159_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~159 .extended_lut = "off";
defparam \parity_acc~159 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~159 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~160 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][10]~q ),
	.datad(!\parity_shift[5][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~160_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~160 .extended_lut = "off";
defparam \parity_acc~160 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~160 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~161 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][11]~q ),
	.datad(!\parity_shift[5][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~161_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~161 .extended_lut = "off";
defparam \parity_acc~161 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~161 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~162 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][12]~q ),
	.datad(!\parity_shift[5][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~162_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~162 .extended_lut = "off";
defparam \parity_acc~162 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~162 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~163 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][13]~q ),
	.datad(!\parity_shift[5][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~163_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~163 .extended_lut = "off";
defparam \parity_acc~163 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~163 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~164 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][14]~q ),
	.datad(!\parity_shift[5][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~164_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~164 .extended_lut = "off";
defparam \parity_acc~164 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~164 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~165 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[5][15]~q ),
	.datad(!\parity_shift[5][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~165_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~165 .extended_lut = "off";
defparam \parity_acc~165 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~165 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~166 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][16]~q ),
	.datad(!\parity_acc[5][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~166_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~166 .extended_lut = "off";
defparam \parity_acc~166 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~166 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~167 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][17]~q ),
	.datad(!\parity_acc[5][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~167_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~167 .extended_lut = "off";
defparam \parity_acc~167 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~167 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~168 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][18]~q ),
	.datad(!\parity_acc[5][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~168_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~168 .extended_lut = "off";
defparam \parity_acc~168 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~168 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~169 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][19]~q ),
	.datad(!\parity_acc[5][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~169_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~169 .extended_lut = "off";
defparam \parity_acc~169 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~169 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~170 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][20]~q ),
	.datad(!\parity_acc[5][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~170_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~170 .extended_lut = "off";
defparam \parity_acc~170 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~170 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~171 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][21]~q ),
	.datad(!\parity_acc[5][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~171_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~171 .extended_lut = "off";
defparam \parity_acc~171 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~171 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~172 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][22]~q ),
	.datad(!\parity_acc[5][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~172_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~172 .extended_lut = "off";
defparam \parity_acc~172 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~172 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~173 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][23]~q ),
	.datad(!\parity_acc[5][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~173_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~173 .extended_lut = "off";
defparam \parity_acc~173 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~173 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~174 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][24]~q ),
	.datad(!\parity_acc[5][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~174_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~174 .extended_lut = "off";
defparam \parity_acc~174 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~174 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~175 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][25]~q ),
	.datad(!\parity_acc[5][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~175_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~175 .extended_lut = "off";
defparam \parity_acc~175 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~175 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~176 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][26]~q ),
	.datad(!\parity_acc[5][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~176_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~176 .extended_lut = "off";
defparam \parity_acc~176 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~176 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~177 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][27]~q ),
	.datad(!\parity_acc[5][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~177_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~177 .extended_lut = "off";
defparam \parity_acc~177 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~177 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~178 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][28]~q ),
	.datad(!\parity_acc[5][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~178_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~178 .extended_lut = "off";
defparam \parity_acc~178 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~178 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~179 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[5][0][29]~q ),
	.datad(!\parity_acc[5][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~179_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~179 .extended_lut = "off";
defparam \parity_acc~179 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~179 .shared_arith = "off";

dffeas \parity_shift[6][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[1] ),
	.asdata(\parity_shift[6][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][1] .is_wysiwyg = "true";
defparam \parity_shift[6][0][1] .power_up = "low";

dffeas \parity_shift[6][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[2] ),
	.asdata(\parity_shift[6][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][2] .is_wysiwyg = "true";
defparam \parity_shift[6][0][2] .power_up = "low";

dffeas \parity_shift[6][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[3] ),
	.asdata(\parity_shift[6][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][3] .is_wysiwyg = "true";
defparam \parity_shift[6][0][3] .power_up = "low";

dffeas \parity_shift[6][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[4] ),
	.asdata(\parity_shift[6][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][4] .is_wysiwyg = "true";
defparam \parity_shift[6][0][4] .power_up = "low";

dffeas \parity_shift[6][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[5] ),
	.asdata(\parity_shift[6][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][5] .is_wysiwyg = "true";
defparam \parity_shift[6][0][5] .power_up = "low";

dffeas \parity_shift[6][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[6] ),
	.asdata(\parity_shift[6][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][6] .is_wysiwyg = "true";
defparam \parity_shift[6][0][6] .power_up = "low";

dffeas \parity_shift[6][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[7] ),
	.asdata(\parity_shift[6][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][7] .is_wysiwyg = "true";
defparam \parity_shift[6][0][7] .power_up = "low";

dffeas \parity_shift[6][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[8] ),
	.asdata(\parity_shift[6][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][8] .is_wysiwyg = "true";
defparam \parity_shift[6][0][8] .power_up = "low";

dffeas \parity_shift[6][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[9] ),
	.asdata(\parity_shift[6][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][9] .is_wysiwyg = "true";
defparam \parity_shift[6][0][9] .power_up = "low";

dffeas \parity_shift[6][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[10] ),
	.asdata(\parity_shift[6][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][10] .is_wysiwyg = "true";
defparam \parity_shift[6][0][10] .power_up = "low";

dffeas \parity_shift[6][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[11] ),
	.asdata(\parity_shift[6][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][11] .is_wysiwyg = "true";
defparam \parity_shift[6][0][11] .power_up = "low";

dffeas \parity_shift[6][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[12] ),
	.asdata(\parity_shift[6][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][12] .is_wysiwyg = "true";
defparam \parity_shift[6][0][12] .power_up = "low";

dffeas \parity_shift[6][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[13] ),
	.asdata(\parity_shift[6][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][13] .is_wysiwyg = "true";
defparam \parity_shift[6][0][13] .power_up = "low";

dffeas \parity_shift[6][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[14] ),
	.asdata(\parity_shift[6][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][14] .is_wysiwyg = "true";
defparam \parity_shift[6][0][14] .power_up = "low";

dffeas \parity_shift[6][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[15] ),
	.asdata(\parity_shift[6][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][15] .is_wysiwyg = "true";
defparam \parity_shift[6][0][15] .power_up = "low";

dffeas \parity_shift[6][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[16] ),
	.asdata(\parity_shift[6][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][16] .is_wysiwyg = "true";
defparam \parity_shift[6][0][16] .power_up = "low";

dffeas \parity_shift[6][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[17] ),
	.asdata(\parity_shift[6][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][17] .is_wysiwyg = "true";
defparam \parity_shift[6][0][17] .power_up = "low";

dffeas \parity_shift[6][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[18] ),
	.asdata(\parity_shift[6][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][18] .is_wysiwyg = "true";
defparam \parity_shift[6][0][18] .power_up = "low";

dffeas \parity_shift[6][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[19] ),
	.asdata(\parity_shift[6][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][19] .is_wysiwyg = "true";
defparam \parity_shift[6][0][19] .power_up = "low";

dffeas \parity_shift[6][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[20] ),
	.asdata(\parity_shift[6][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][20] .is_wysiwyg = "true";
defparam \parity_shift[6][0][20] .power_up = "low";

dffeas \parity_shift[6][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[21] ),
	.asdata(\parity_shift[6][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][21] .is_wysiwyg = "true";
defparam \parity_shift[6][0][21] .power_up = "low";

dffeas \parity_shift[6][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[22] ),
	.asdata(\parity_shift[6][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][22] .is_wysiwyg = "true";
defparam \parity_shift[6][0][22] .power_up = "low";

dffeas \parity_shift[6][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[23] ),
	.asdata(\parity_shift[6][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][23] .is_wysiwyg = "true";
defparam \parity_shift[6][0][23] .power_up = "low";

dffeas \parity_shift[6][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[24] ),
	.asdata(\parity_shift[6][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][24] .is_wysiwyg = "true";
defparam \parity_shift[6][0][24] .power_up = "low";

dffeas \parity_shift[6][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[25] ),
	.asdata(\parity_shift[6][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][25] .is_wysiwyg = "true";
defparam \parity_shift[6][0][25] .power_up = "low";

dffeas \parity_shift[6][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[26] ),
	.asdata(\parity_shift[6][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][26] .is_wysiwyg = "true";
defparam \parity_shift[6][0][26] .power_up = "low";

dffeas \parity_shift[6][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[27] ),
	.asdata(\parity_shift[6][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][27] .is_wysiwyg = "true";
defparam \parity_shift[6][0][27] .power_up = "low";

dffeas \parity_shift[6][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[28] ),
	.asdata(\parity_shift[6][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][28] .is_wysiwyg = "true";
defparam \parity_shift[6][0][28] .power_up = "low";

dffeas \parity_shift[6][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[29] ),
	.asdata(\parity_shift[6][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][29] .is_wysiwyg = "true";
defparam \parity_shift[6][0][29] .power_up = "low";

dffeas \parity_shift[6][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_6|auto_generated|q_a[0] ),
	.asdata(\parity_shift[6][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[6][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[6][0][0] .is_wysiwyg = "true";
defparam \parity_shift[6][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~180 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][0]~q ),
	.datad(!\parity_shift[6][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~180_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~180 .extended_lut = "off";
defparam \parity_acc~180 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~180 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~181 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][1]~q ),
	.datad(!\parity_shift[6][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~181_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~181 .extended_lut = "off";
defparam \parity_acc~181 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~181 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~182 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][2]~q ),
	.datad(!\parity_shift[6][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~182_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~182 .extended_lut = "off";
defparam \parity_acc~182 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~182 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~183 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][3]~q ),
	.datad(!\parity_shift[6][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~183_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~183 .extended_lut = "off";
defparam \parity_acc~183 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~183 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~184 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][4]~q ),
	.datad(!\parity_shift[6][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~184_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~184 .extended_lut = "off";
defparam \parity_acc~184 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~184 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~185 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][5]~q ),
	.datad(!\parity_shift[6][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~185_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~185 .extended_lut = "off";
defparam \parity_acc~185 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~185 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~186 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][6]~q ),
	.datad(!\parity_shift[6][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~186_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~186 .extended_lut = "off";
defparam \parity_acc~186 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~186 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~187 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][7]~q ),
	.datad(!\parity_shift[6][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~187_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~187 .extended_lut = "off";
defparam \parity_acc~187 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~187 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~188 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][8]~q ),
	.datad(!\parity_shift[6][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~188_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~188 .extended_lut = "off";
defparam \parity_acc~188 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~188 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~189 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][9]~q ),
	.datad(!\parity_shift[6][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~189_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~189 .extended_lut = "off";
defparam \parity_acc~189 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~189 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~190 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][10]~q ),
	.datad(!\parity_shift[6][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~190_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~190 .extended_lut = "off";
defparam \parity_acc~190 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~190 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~191 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][11]~q ),
	.datad(!\parity_shift[6][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~191_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~191 .extended_lut = "off";
defparam \parity_acc~191 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~191 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~192 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][12]~q ),
	.datad(!\parity_shift[6][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~192_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~192 .extended_lut = "off";
defparam \parity_acc~192 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~192 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~193 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][13]~q ),
	.datad(!\parity_shift[6][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~193_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~193 .extended_lut = "off";
defparam \parity_acc~193 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~193 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~194 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][14]~q ),
	.datad(!\parity_shift[6][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~194_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~194 .extended_lut = "off";
defparam \parity_acc~194 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~194 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~195 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[6][15]~q ),
	.datad(!\parity_shift[6][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~195_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~195 .extended_lut = "off";
defparam \parity_acc~195 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~195 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~196 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][16]~q ),
	.datad(!\parity_acc[6][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~196_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~196 .extended_lut = "off";
defparam \parity_acc~196 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~196 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~197 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][17]~q ),
	.datad(!\parity_acc[6][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~197_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~197 .extended_lut = "off";
defparam \parity_acc~197 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~197 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~198 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][18]~q ),
	.datad(!\parity_acc[6][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~198_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~198 .extended_lut = "off";
defparam \parity_acc~198 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~198 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~199 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][19]~q ),
	.datad(!\parity_acc[6][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~199_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~199 .extended_lut = "off";
defparam \parity_acc~199 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~199 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~200 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][20]~q ),
	.datad(!\parity_acc[6][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~200_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~200 .extended_lut = "off";
defparam \parity_acc~200 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~200 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~201 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][21]~q ),
	.datad(!\parity_acc[6][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~201_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~201 .extended_lut = "off";
defparam \parity_acc~201 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~201 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~202 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][22]~q ),
	.datad(!\parity_acc[6][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~202_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~202 .extended_lut = "off";
defparam \parity_acc~202 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~202 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~203 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][23]~q ),
	.datad(!\parity_acc[6][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~203_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~203 .extended_lut = "off";
defparam \parity_acc~203 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~203 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~204 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][24]~q ),
	.datad(!\parity_acc[6][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~204_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~204 .extended_lut = "off";
defparam \parity_acc~204 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~204 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~205 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][25]~q ),
	.datad(!\parity_acc[6][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~205_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~205 .extended_lut = "off";
defparam \parity_acc~205 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~205 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~206 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][26]~q ),
	.datad(!\parity_acc[6][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~206_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~206 .extended_lut = "off";
defparam \parity_acc~206 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~206 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~207 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][27]~q ),
	.datad(!\parity_acc[6][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~207_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~207 .extended_lut = "off";
defparam \parity_acc~207 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~207 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~208 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][28]~q ),
	.datad(!\parity_acc[6][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~208_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~208 .extended_lut = "off";
defparam \parity_acc~208 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~208 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~209 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[6][0][29]~q ),
	.datad(!\parity_acc[6][29]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~209_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~209 .extended_lut = "off";
defparam \parity_acc~209 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~209 .shared_arith = "off";

dffeas \parity_shift[7][0][1] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[1] ),
	.asdata(\parity_shift[7][0][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][1]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][1] .is_wysiwyg = "true";
defparam \parity_shift[7][0][1] .power_up = "low";

dffeas \parity_shift[7][0][2] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[2] ),
	.asdata(\parity_shift[7][0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][2]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][2] .is_wysiwyg = "true";
defparam \parity_shift[7][0][2] .power_up = "low";

dffeas \parity_shift[7][0][3] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[3] ),
	.asdata(\parity_shift[7][0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][3]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][3] .is_wysiwyg = "true";
defparam \parity_shift[7][0][3] .power_up = "low";

dffeas \parity_shift[7][0][4] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[4] ),
	.asdata(\parity_shift[7][0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][4]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][4] .is_wysiwyg = "true";
defparam \parity_shift[7][0][4] .power_up = "low";

dffeas \parity_shift[7][0][5] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[5] ),
	.asdata(\parity_shift[7][0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][5]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][5] .is_wysiwyg = "true";
defparam \parity_shift[7][0][5] .power_up = "low";

dffeas \parity_shift[7][0][6] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[6] ),
	.asdata(\parity_shift[7][0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][6]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][6] .is_wysiwyg = "true";
defparam \parity_shift[7][0][6] .power_up = "low";

dffeas \parity_shift[7][0][7] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[7] ),
	.asdata(\parity_shift[7][0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][7]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][7] .is_wysiwyg = "true";
defparam \parity_shift[7][0][7] .power_up = "low";

dffeas \parity_shift[7][0][8] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[8] ),
	.asdata(\parity_shift[7][0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][8]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][8] .is_wysiwyg = "true";
defparam \parity_shift[7][0][8] .power_up = "low";

dffeas \parity_shift[7][0][9] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[9] ),
	.asdata(\parity_shift[7][0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][9]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][9] .is_wysiwyg = "true";
defparam \parity_shift[7][0][9] .power_up = "low";

dffeas \parity_shift[7][0][10] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[10] ),
	.asdata(\parity_shift[7][0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][10]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][10] .is_wysiwyg = "true";
defparam \parity_shift[7][0][10] .power_up = "low";

dffeas \parity_shift[7][0][11] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[11] ),
	.asdata(\parity_shift[7][0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][11]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][11] .is_wysiwyg = "true";
defparam \parity_shift[7][0][11] .power_up = "low";

dffeas \parity_shift[7][0][12] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[12] ),
	.asdata(\parity_shift[7][0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][12]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][12] .is_wysiwyg = "true";
defparam \parity_shift[7][0][12] .power_up = "low";

dffeas \parity_shift[7][0][13] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[13] ),
	.asdata(\parity_shift[7][0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][13]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][13] .is_wysiwyg = "true";
defparam \parity_shift[7][0][13] .power_up = "low";

dffeas \parity_shift[7][0][14] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[14] ),
	.asdata(\parity_shift[7][0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][14]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][14] .is_wysiwyg = "true";
defparam \parity_shift[7][0][14] .power_up = "low";

dffeas \parity_shift[7][0][15] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[15] ),
	.asdata(\parity_shift[7][0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][15]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][15] .is_wysiwyg = "true";
defparam \parity_shift[7][0][15] .power_up = "low";

dffeas \parity_shift[7][0][16] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[16] ),
	.asdata(\parity_shift[7][0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][16]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][16] .is_wysiwyg = "true";
defparam \parity_shift[7][0][16] .power_up = "low";

dffeas \parity_shift[7][0][17] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[17] ),
	.asdata(\parity_shift[7][0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][17]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][17] .is_wysiwyg = "true";
defparam \parity_shift[7][0][17] .power_up = "low";

dffeas \parity_shift[7][0][18] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[18] ),
	.asdata(\parity_shift[7][0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][18]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][18] .is_wysiwyg = "true";
defparam \parity_shift[7][0][18] .power_up = "low";

dffeas \parity_shift[7][0][19] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[19] ),
	.asdata(\parity_shift[7][0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][19]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][19] .is_wysiwyg = "true";
defparam \parity_shift[7][0][19] .power_up = "low";

dffeas \parity_shift[7][0][20] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[20] ),
	.asdata(\parity_shift[7][0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][20]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][20] .is_wysiwyg = "true";
defparam \parity_shift[7][0][20] .power_up = "low";

dffeas \parity_shift[7][0][21] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[21] ),
	.asdata(\parity_shift[7][0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][21]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][21] .is_wysiwyg = "true";
defparam \parity_shift[7][0][21] .power_up = "low";

dffeas \parity_shift[7][0][22] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[22] ),
	.asdata(\parity_shift[7][0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][22]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][22] .is_wysiwyg = "true";
defparam \parity_shift[7][0][22] .power_up = "low";

dffeas \parity_shift[7][0][23] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[23] ),
	.asdata(\parity_shift[7][0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][23]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][23] .is_wysiwyg = "true";
defparam \parity_shift[7][0][23] .power_up = "low";

dffeas \parity_shift[7][0][24] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[24] ),
	.asdata(\parity_shift[7][0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][24]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][24] .is_wysiwyg = "true";
defparam \parity_shift[7][0][24] .power_up = "low";

dffeas \parity_shift[7][0][25] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[25] ),
	.asdata(\parity_shift[7][0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][25]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][25] .is_wysiwyg = "true";
defparam \parity_shift[7][0][25] .power_up = "low";

dffeas \parity_shift[7][0][26] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[26] ),
	.asdata(\parity_shift[7][0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][26]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][26] .is_wysiwyg = "true";
defparam \parity_shift[7][0][26] .power_up = "low";

dffeas \parity_shift[7][0][27] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[27] ),
	.asdata(\parity_shift[7][0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][27]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][27] .is_wysiwyg = "true";
defparam \parity_shift[7][0][27] .power_up = "low";

dffeas \parity_shift[7][0][28] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[28] ),
	.asdata(\parity_shift[7][0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][28]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][28] .is_wysiwyg = "true";
defparam \parity_shift[7][0][28] .power_up = "low";

dffeas \parity_shift[7][0][29] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[29] ),
	.asdata(\parity_shift[7][0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][29]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][29] .is_wysiwyg = "true";
defparam \parity_shift[7][0][29] .power_up = "low";

dffeas \parity_shift[7][0][0] (
	.clk(clk_clk),
	.d(\get_parity_ROM|ROM_PARITY_7|auto_generated|q_a[0] ),
	.asdata(\parity_shift[7][0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(\parity_shift[0][0][1]~0_combout ),
	.ena(\parity_shift[0][0][1]~1_combout ),
	.q(\parity_shift[7][0][0]~q ),
	.prn(vcc));
defparam \parity_shift[7][0][0] .is_wysiwyg = "true";
defparam \parity_shift[7][0][0] .power_up = "low";

cyclonev_lcell_comb \parity_acc~210 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][0]~q ),
	.datad(!\parity_shift[7][0][0]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~210_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~210 .extended_lut = "off";
defparam \parity_acc~210 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~210 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~211 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][1]~q ),
	.datad(!\parity_shift[7][0][1]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~211_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~211 .extended_lut = "off";
defparam \parity_acc~211 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~211 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~212 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][2]~q ),
	.datad(!\parity_shift[7][0][2]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~212_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~212 .extended_lut = "off";
defparam \parity_acc~212 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~212 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~213 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][3]~q ),
	.datad(!\parity_shift[7][0][3]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~213_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~213 .extended_lut = "off";
defparam \parity_acc~213 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~213 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~214 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][4]~q ),
	.datad(!\parity_shift[7][0][4]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~214_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~214 .extended_lut = "off";
defparam \parity_acc~214 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~214 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~215 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][5]~q ),
	.datad(!\parity_shift[7][0][5]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~215_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~215 .extended_lut = "off";
defparam \parity_acc~215 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~215 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~216 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][6]~q ),
	.datad(!\parity_shift[7][0][6]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~216_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~216 .extended_lut = "off";
defparam \parity_acc~216 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~216 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~217 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][7]~q ),
	.datad(!\parity_shift[7][0][7]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~217_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~217 .extended_lut = "off";
defparam \parity_acc~217 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~217 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~218 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][8]~q ),
	.datad(!\parity_shift[7][0][8]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~218_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~218 .extended_lut = "off";
defparam \parity_acc~218 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~218 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~219 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][9]~q ),
	.datad(!\parity_shift[7][0][9]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~219_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~219 .extended_lut = "off";
defparam \parity_acc~219 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~219 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~220 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][10]~q ),
	.datad(!\parity_shift[7][0][10]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~220_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~220 .extended_lut = "off";
defparam \parity_acc~220 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~220 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~221 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][11]~q ),
	.datad(!\parity_shift[7][0][11]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~221_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~221 .extended_lut = "off";
defparam \parity_acc~221 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~221 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~222 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][12]~q ),
	.datad(!\parity_shift[7][0][12]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~222_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~222 .extended_lut = "off";
defparam \parity_acc~222 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~222 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~223 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][13]~q ),
	.datad(!\parity_shift[7][0][13]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~223_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~223 .extended_lut = "off";
defparam \parity_acc~223 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~223 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~224 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][14]~q ),
	.datad(!\parity_shift[7][0][14]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~224_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~224 .extended_lut = "off";
defparam \parity_acc~224 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~224 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~225 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_acc[7][15]~q ),
	.datad(!\parity_shift[7][0][15]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~225_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~225 .extended_lut = "off";
defparam \parity_acc~225 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~225 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~226 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][16]~q ),
	.datad(!\parity_acc[7][16]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~226_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~226 .extended_lut = "off";
defparam \parity_acc~226 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~226 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~227 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][17]~q ),
	.datad(!\parity_acc[7][17]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~227_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~227 .extended_lut = "off";
defparam \parity_acc~227 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~227 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~228 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][18]~q ),
	.datad(!\parity_acc[7][18]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~228_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~228 .extended_lut = "off";
defparam \parity_acc~228 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~228 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~229 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][19]~q ),
	.datad(!\parity_acc[7][19]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~229_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~229 .extended_lut = "off";
defparam \parity_acc~229 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~229 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~230 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][20]~q ),
	.datad(!\parity_acc[7][20]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~230_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~230 .extended_lut = "off";
defparam \parity_acc~230 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~230 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~231 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][21]~q ),
	.datad(!\parity_acc[7][21]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~231_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~231 .extended_lut = "off";
defparam \parity_acc~231 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~231 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~232 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][22]~q ),
	.datad(!\parity_acc[7][22]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~232_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~232 .extended_lut = "off";
defparam \parity_acc~232 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~232 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~233 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][23]~q ),
	.datad(!\parity_acc[7][23]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~233_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~233 .extended_lut = "off";
defparam \parity_acc~233 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~233 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~234 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][24]~q ),
	.datad(!\parity_acc[7][24]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~234_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~234 .extended_lut = "off";
defparam \parity_acc~234 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~234 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~235 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][25]~q ),
	.datad(!\parity_acc[7][25]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~235_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~235 .extended_lut = "off";
defparam \parity_acc~235 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~235 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~236 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][26]~q ),
	.datad(!\parity_acc[7][26]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~236_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~236 .extended_lut = "off";
defparam \parity_acc~236 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~236 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~237 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][27]~q ),
	.datad(!\parity_acc[7][27]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~237_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~237 .extended_lut = "off";
defparam \parity_acc~237 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~237 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~238 (
	.dataa(!\pipelining_sop|register_last[0][0]~q ),
	.datab(!\pipelining_data0|register_last[0][0]~q ),
	.datac(!\parity_shift[7][0][28]~q ),
	.datad(!\parity_acc[7][28]~q ),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~238_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~238 .extended_lut = "off";
defparam \parity_acc~238 .lut_mask = 64'h6996699669966996;
defparam \parity_acc~238 .shared_arith = "off";

cyclonev_lcell_comb \parity_acc~239 (
	.dataa(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.datab(!\pipelining_sop|register_last[0][0]~q ),
	.datac(!\pipelining_data0|register_last[0][0]~q ),
	.datad(!\parity_shift[7][0][29]~q ),
	.datae(!\parity_acc[7][29]~q ),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\parity_acc~239_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \parity_acc~239 .extended_lut = "off";
defparam \parity_acc~239 .lut_mask = 64'h7DD7D77D7DD7D77D;
defparam \parity_acc~239 .shared_arith = "off";

dffeas \parity_acc[7][29] (
	.clk(clk_clk),
	.d(\parity_acc~239_combout ),
	.asdata(vcc),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][29]~q ),
	.prn(vcc));
defparam \parity_acc[7][29] .is_wysiwyg = "true";
defparam \parity_acc[7][29] .power_up = "low";

dffeas \parity_acc[7][28] (
	.clk(clk_clk),
	.d(\parity_acc~238_combout ),
	.asdata(\parity_acc[7][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][28]~q ),
	.prn(vcc));
defparam \parity_acc[7][28] .is_wysiwyg = "true";
defparam \parity_acc[7][28] .power_up = "low";

dffeas \parity_acc[7][27] (
	.clk(clk_clk),
	.d(\parity_acc~237_combout ),
	.asdata(\parity_acc[7][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][27]~q ),
	.prn(vcc));
defparam \parity_acc[7][27] .is_wysiwyg = "true";
defparam \parity_acc[7][27] .power_up = "low";

dffeas \parity_acc[7][26] (
	.clk(clk_clk),
	.d(\parity_acc~236_combout ),
	.asdata(\parity_acc[7][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][26]~q ),
	.prn(vcc));
defparam \parity_acc[7][26] .is_wysiwyg = "true";
defparam \parity_acc[7][26] .power_up = "low";

dffeas \parity_acc[7][25] (
	.clk(clk_clk),
	.d(\parity_acc~235_combout ),
	.asdata(\parity_acc[7][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][25]~q ),
	.prn(vcc));
defparam \parity_acc[7][25] .is_wysiwyg = "true";
defparam \parity_acc[7][25] .power_up = "low";

dffeas \parity_acc[7][24] (
	.clk(clk_clk),
	.d(\parity_acc~234_combout ),
	.asdata(\parity_acc[7][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][24]~q ),
	.prn(vcc));
defparam \parity_acc[7][24] .is_wysiwyg = "true";
defparam \parity_acc[7][24] .power_up = "low";

dffeas \parity_acc[7][23] (
	.clk(clk_clk),
	.d(\parity_acc~233_combout ),
	.asdata(\parity_acc[7][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][23]~q ),
	.prn(vcc));
defparam \parity_acc[7][23] .is_wysiwyg = "true";
defparam \parity_acc[7][23] .power_up = "low";

dffeas \parity_acc[7][22] (
	.clk(clk_clk),
	.d(\parity_acc~232_combout ),
	.asdata(\parity_acc[7][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][22]~q ),
	.prn(vcc));
defparam \parity_acc[7][22] .is_wysiwyg = "true";
defparam \parity_acc[7][22] .power_up = "low";

dffeas \parity_acc[7][21] (
	.clk(clk_clk),
	.d(\parity_acc~231_combout ),
	.asdata(\parity_acc[7][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][21]~q ),
	.prn(vcc));
defparam \parity_acc[7][21] .is_wysiwyg = "true";
defparam \parity_acc[7][21] .power_up = "low";

dffeas \parity_acc[7][20] (
	.clk(clk_clk),
	.d(\parity_acc~230_combout ),
	.asdata(\parity_acc[7][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][20]~q ),
	.prn(vcc));
defparam \parity_acc[7][20] .is_wysiwyg = "true";
defparam \parity_acc[7][20] .power_up = "low";

dffeas \parity_acc[7][19] (
	.clk(clk_clk),
	.d(\parity_acc~229_combout ),
	.asdata(\parity_acc[7][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][19]~q ),
	.prn(vcc));
defparam \parity_acc[7][19] .is_wysiwyg = "true";
defparam \parity_acc[7][19] .power_up = "low";

dffeas \parity_acc[7][18] (
	.clk(clk_clk),
	.d(\parity_acc~228_combout ),
	.asdata(\parity_acc[7][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][18]~q ),
	.prn(vcc));
defparam \parity_acc[7][18] .is_wysiwyg = "true";
defparam \parity_acc[7][18] .power_up = "low";

dffeas \parity_acc[7][17] (
	.clk(clk_clk),
	.d(\parity_acc~227_combout ),
	.asdata(\parity_acc[7][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][17]~q ),
	.prn(vcc));
defparam \parity_acc[7][17] .is_wysiwyg = "true";
defparam \parity_acc[7][17] .power_up = "low";

dffeas \parity_acc[7][16] (
	.clk(clk_clk),
	.d(\parity_acc~226_combout ),
	.asdata(\parity_acc[7][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][16]~q ),
	.prn(vcc));
defparam \parity_acc[7][16] .is_wysiwyg = "true";
defparam \parity_acc[7][16] .power_up = "low";

dffeas \parity_acc[7][15] (
	.clk(clk_clk),
	.d(\parity_acc~225_combout ),
	.asdata(\parity_acc[7][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][15]~q ),
	.prn(vcc));
defparam \parity_acc[7][15] .is_wysiwyg = "true";
defparam \parity_acc[7][15] .power_up = "low";

dffeas \parity_acc[7][14] (
	.clk(clk_clk),
	.d(\parity_acc~224_combout ),
	.asdata(\parity_acc[7][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][14]~q ),
	.prn(vcc));
defparam \parity_acc[7][14] .is_wysiwyg = "true";
defparam \parity_acc[7][14] .power_up = "low";

dffeas \parity_acc[7][13] (
	.clk(clk_clk),
	.d(\parity_acc~223_combout ),
	.asdata(\parity_acc[7][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][13]~q ),
	.prn(vcc));
defparam \parity_acc[7][13] .is_wysiwyg = "true";
defparam \parity_acc[7][13] .power_up = "low";

dffeas \parity_acc[7][12] (
	.clk(clk_clk),
	.d(\parity_acc~222_combout ),
	.asdata(\parity_acc[7][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][12]~q ),
	.prn(vcc));
defparam \parity_acc[7][12] .is_wysiwyg = "true";
defparam \parity_acc[7][12] .power_up = "low";

dffeas \parity_acc[7][11] (
	.clk(clk_clk),
	.d(\parity_acc~221_combout ),
	.asdata(\parity_acc[7][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][11]~q ),
	.prn(vcc));
defparam \parity_acc[7][11] .is_wysiwyg = "true";
defparam \parity_acc[7][11] .power_up = "low";

dffeas \parity_acc[7][10] (
	.clk(clk_clk),
	.d(\parity_acc~220_combout ),
	.asdata(\parity_acc[7][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][10]~q ),
	.prn(vcc));
defparam \parity_acc[7][10] .is_wysiwyg = "true";
defparam \parity_acc[7][10] .power_up = "low";

dffeas \parity_acc[7][9] (
	.clk(clk_clk),
	.d(\parity_acc~219_combout ),
	.asdata(\parity_acc[7][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][9]~q ),
	.prn(vcc));
defparam \parity_acc[7][9] .is_wysiwyg = "true";
defparam \parity_acc[7][9] .power_up = "low";

dffeas \parity_acc[7][8] (
	.clk(clk_clk),
	.d(\parity_acc~218_combout ),
	.asdata(\parity_acc[7][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][8]~q ),
	.prn(vcc));
defparam \parity_acc[7][8] .is_wysiwyg = "true";
defparam \parity_acc[7][8] .power_up = "low";

dffeas \parity_acc[7][7] (
	.clk(clk_clk),
	.d(\parity_acc~217_combout ),
	.asdata(\parity_acc[7][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][7]~q ),
	.prn(vcc));
defparam \parity_acc[7][7] .is_wysiwyg = "true";
defparam \parity_acc[7][7] .power_up = "low";

dffeas \parity_acc[7][6] (
	.clk(clk_clk),
	.d(\parity_acc~216_combout ),
	.asdata(\parity_acc[7][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][6]~q ),
	.prn(vcc));
defparam \parity_acc[7][6] .is_wysiwyg = "true";
defparam \parity_acc[7][6] .power_up = "low";

dffeas \parity_acc[7][5] (
	.clk(clk_clk),
	.d(\parity_acc~215_combout ),
	.asdata(\parity_acc[7][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][5]~q ),
	.prn(vcc));
defparam \parity_acc[7][5] .is_wysiwyg = "true";
defparam \parity_acc[7][5] .power_up = "low";

dffeas \parity_acc[7][4] (
	.clk(clk_clk),
	.d(\parity_acc~214_combout ),
	.asdata(\parity_acc[7][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][4]~q ),
	.prn(vcc));
defparam \parity_acc[7][4] .is_wysiwyg = "true";
defparam \parity_acc[7][4] .power_up = "low";

dffeas \parity_acc[7][3] (
	.clk(clk_clk),
	.d(\parity_acc~213_combout ),
	.asdata(\parity_acc[7][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][3]~q ),
	.prn(vcc));
defparam \parity_acc[7][3] .is_wysiwyg = "true";
defparam \parity_acc[7][3] .power_up = "low";

dffeas \parity_acc[7][2] (
	.clk(clk_clk),
	.d(\parity_acc~212_combout ),
	.asdata(\parity_acc[7][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][2]~q ),
	.prn(vcc));
defparam \parity_acc[7][2] .is_wysiwyg = "true";
defparam \parity_acc[7][2] .power_up = "low";

dffeas \parity_acc[7][1] (
	.clk(clk_clk),
	.d(\parity_acc~211_combout ),
	.asdata(\parity_acc[7][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][1]~q ),
	.prn(vcc));
defparam \parity_acc[7][1] .is_wysiwyg = "true";
defparam \parity_acc[7][1] .power_up = "low";

dffeas \parity_acc[7][0] (
	.clk(clk_clk),
	.d(\parity_acc~210_combout ),
	.asdata(\parity_acc[7][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[7][0]~q ),
	.prn(vcc));
defparam \parity_acc[7][0] .is_wysiwyg = "true";
defparam \parity_acc[7][0] .power_up = "low";

dffeas \parity_acc[6][29] (
	.clk(clk_clk),
	.d(\parity_acc~209_combout ),
	.asdata(\parity_acc[7][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][29]~q ),
	.prn(vcc));
defparam \parity_acc[6][29] .is_wysiwyg = "true";
defparam \parity_acc[6][29] .power_up = "low";

dffeas \parity_acc[6][28] (
	.clk(clk_clk),
	.d(\parity_acc~208_combout ),
	.asdata(\parity_acc[6][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][28]~q ),
	.prn(vcc));
defparam \parity_acc[6][28] .is_wysiwyg = "true";
defparam \parity_acc[6][28] .power_up = "low";

dffeas \parity_acc[6][27] (
	.clk(clk_clk),
	.d(\parity_acc~207_combout ),
	.asdata(\parity_acc[6][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][27]~q ),
	.prn(vcc));
defparam \parity_acc[6][27] .is_wysiwyg = "true";
defparam \parity_acc[6][27] .power_up = "low";

dffeas \parity_acc[6][26] (
	.clk(clk_clk),
	.d(\parity_acc~206_combout ),
	.asdata(\parity_acc[6][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][26]~q ),
	.prn(vcc));
defparam \parity_acc[6][26] .is_wysiwyg = "true";
defparam \parity_acc[6][26] .power_up = "low";

dffeas \parity_acc[6][25] (
	.clk(clk_clk),
	.d(\parity_acc~205_combout ),
	.asdata(\parity_acc[6][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][25]~q ),
	.prn(vcc));
defparam \parity_acc[6][25] .is_wysiwyg = "true";
defparam \parity_acc[6][25] .power_up = "low";

dffeas \parity_acc[6][24] (
	.clk(clk_clk),
	.d(\parity_acc~204_combout ),
	.asdata(\parity_acc[6][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][24]~q ),
	.prn(vcc));
defparam \parity_acc[6][24] .is_wysiwyg = "true";
defparam \parity_acc[6][24] .power_up = "low";

dffeas \parity_acc[6][23] (
	.clk(clk_clk),
	.d(\parity_acc~203_combout ),
	.asdata(\parity_acc[6][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][23]~q ),
	.prn(vcc));
defparam \parity_acc[6][23] .is_wysiwyg = "true";
defparam \parity_acc[6][23] .power_up = "low";

dffeas \parity_acc[6][22] (
	.clk(clk_clk),
	.d(\parity_acc~202_combout ),
	.asdata(\parity_acc[6][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][22]~q ),
	.prn(vcc));
defparam \parity_acc[6][22] .is_wysiwyg = "true";
defparam \parity_acc[6][22] .power_up = "low";

dffeas \parity_acc[6][21] (
	.clk(clk_clk),
	.d(\parity_acc~201_combout ),
	.asdata(\parity_acc[6][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][21]~q ),
	.prn(vcc));
defparam \parity_acc[6][21] .is_wysiwyg = "true";
defparam \parity_acc[6][21] .power_up = "low";

dffeas \parity_acc[6][20] (
	.clk(clk_clk),
	.d(\parity_acc~200_combout ),
	.asdata(\parity_acc[6][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][20]~q ),
	.prn(vcc));
defparam \parity_acc[6][20] .is_wysiwyg = "true";
defparam \parity_acc[6][20] .power_up = "low";

dffeas \parity_acc[6][19] (
	.clk(clk_clk),
	.d(\parity_acc~199_combout ),
	.asdata(\parity_acc[6][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][19]~q ),
	.prn(vcc));
defparam \parity_acc[6][19] .is_wysiwyg = "true";
defparam \parity_acc[6][19] .power_up = "low";

dffeas \parity_acc[6][18] (
	.clk(clk_clk),
	.d(\parity_acc~198_combout ),
	.asdata(\parity_acc[6][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][18]~q ),
	.prn(vcc));
defparam \parity_acc[6][18] .is_wysiwyg = "true";
defparam \parity_acc[6][18] .power_up = "low";

dffeas \parity_acc[6][17] (
	.clk(clk_clk),
	.d(\parity_acc~197_combout ),
	.asdata(\parity_acc[6][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][17]~q ),
	.prn(vcc));
defparam \parity_acc[6][17] .is_wysiwyg = "true";
defparam \parity_acc[6][17] .power_up = "low";

dffeas \parity_acc[6][16] (
	.clk(clk_clk),
	.d(\parity_acc~196_combout ),
	.asdata(\parity_acc[6][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][16]~q ),
	.prn(vcc));
defparam \parity_acc[6][16] .is_wysiwyg = "true";
defparam \parity_acc[6][16] .power_up = "low";

dffeas \parity_acc[6][15] (
	.clk(clk_clk),
	.d(\parity_acc~195_combout ),
	.asdata(\parity_acc[6][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][15]~q ),
	.prn(vcc));
defparam \parity_acc[6][15] .is_wysiwyg = "true";
defparam \parity_acc[6][15] .power_up = "low";

dffeas \parity_acc[6][14] (
	.clk(clk_clk),
	.d(\parity_acc~194_combout ),
	.asdata(\parity_acc[6][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][14]~q ),
	.prn(vcc));
defparam \parity_acc[6][14] .is_wysiwyg = "true";
defparam \parity_acc[6][14] .power_up = "low";

dffeas \parity_acc[6][13] (
	.clk(clk_clk),
	.d(\parity_acc~193_combout ),
	.asdata(\parity_acc[6][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][13]~q ),
	.prn(vcc));
defparam \parity_acc[6][13] .is_wysiwyg = "true";
defparam \parity_acc[6][13] .power_up = "low";

dffeas \parity_acc[6][12] (
	.clk(clk_clk),
	.d(\parity_acc~192_combout ),
	.asdata(\parity_acc[6][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][12]~q ),
	.prn(vcc));
defparam \parity_acc[6][12] .is_wysiwyg = "true";
defparam \parity_acc[6][12] .power_up = "low";

dffeas \parity_acc[6][11] (
	.clk(clk_clk),
	.d(\parity_acc~191_combout ),
	.asdata(\parity_acc[6][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][11]~q ),
	.prn(vcc));
defparam \parity_acc[6][11] .is_wysiwyg = "true";
defparam \parity_acc[6][11] .power_up = "low";

dffeas \parity_acc[6][10] (
	.clk(clk_clk),
	.d(\parity_acc~190_combout ),
	.asdata(\parity_acc[6][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][10]~q ),
	.prn(vcc));
defparam \parity_acc[6][10] .is_wysiwyg = "true";
defparam \parity_acc[6][10] .power_up = "low";

dffeas \parity_acc[6][9] (
	.clk(clk_clk),
	.d(\parity_acc~189_combout ),
	.asdata(\parity_acc[6][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][9]~q ),
	.prn(vcc));
defparam \parity_acc[6][9] .is_wysiwyg = "true";
defparam \parity_acc[6][9] .power_up = "low";

dffeas \parity_acc[6][8] (
	.clk(clk_clk),
	.d(\parity_acc~188_combout ),
	.asdata(\parity_acc[6][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][8]~q ),
	.prn(vcc));
defparam \parity_acc[6][8] .is_wysiwyg = "true";
defparam \parity_acc[6][8] .power_up = "low";

dffeas \parity_acc[6][7] (
	.clk(clk_clk),
	.d(\parity_acc~187_combout ),
	.asdata(\parity_acc[6][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][7]~q ),
	.prn(vcc));
defparam \parity_acc[6][7] .is_wysiwyg = "true";
defparam \parity_acc[6][7] .power_up = "low";

dffeas \parity_acc[6][6] (
	.clk(clk_clk),
	.d(\parity_acc~186_combout ),
	.asdata(\parity_acc[6][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][6]~q ),
	.prn(vcc));
defparam \parity_acc[6][6] .is_wysiwyg = "true";
defparam \parity_acc[6][6] .power_up = "low";

dffeas \parity_acc[6][5] (
	.clk(clk_clk),
	.d(\parity_acc~185_combout ),
	.asdata(\parity_acc[6][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][5]~q ),
	.prn(vcc));
defparam \parity_acc[6][5] .is_wysiwyg = "true";
defparam \parity_acc[6][5] .power_up = "low";

dffeas \parity_acc[6][4] (
	.clk(clk_clk),
	.d(\parity_acc~184_combout ),
	.asdata(\parity_acc[6][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][4]~q ),
	.prn(vcc));
defparam \parity_acc[6][4] .is_wysiwyg = "true";
defparam \parity_acc[6][4] .power_up = "low";

dffeas \parity_acc[6][3] (
	.clk(clk_clk),
	.d(\parity_acc~183_combout ),
	.asdata(\parity_acc[6][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][3]~q ),
	.prn(vcc));
defparam \parity_acc[6][3] .is_wysiwyg = "true";
defparam \parity_acc[6][3] .power_up = "low";

dffeas \parity_acc[6][2] (
	.clk(clk_clk),
	.d(\parity_acc~182_combout ),
	.asdata(\parity_acc[6][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][2]~q ),
	.prn(vcc));
defparam \parity_acc[6][2] .is_wysiwyg = "true";
defparam \parity_acc[6][2] .power_up = "low";

dffeas \parity_acc[6][1] (
	.clk(clk_clk),
	.d(\parity_acc~181_combout ),
	.asdata(\parity_acc[6][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][1]~q ),
	.prn(vcc));
defparam \parity_acc[6][1] .is_wysiwyg = "true";
defparam \parity_acc[6][1] .power_up = "low";

dffeas \parity_acc[6][0] (
	.clk(clk_clk),
	.d(\parity_acc~180_combout ),
	.asdata(\parity_acc[6][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[6][0]~q ),
	.prn(vcc));
defparam \parity_acc[6][0] .is_wysiwyg = "true";
defparam \parity_acc[6][0] .power_up = "low";

dffeas \parity_acc[5][29] (
	.clk(clk_clk),
	.d(\parity_acc~179_combout ),
	.asdata(\parity_acc[6][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][29]~q ),
	.prn(vcc));
defparam \parity_acc[5][29] .is_wysiwyg = "true";
defparam \parity_acc[5][29] .power_up = "low";

dffeas \parity_acc[5][28] (
	.clk(clk_clk),
	.d(\parity_acc~178_combout ),
	.asdata(\parity_acc[5][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][28]~q ),
	.prn(vcc));
defparam \parity_acc[5][28] .is_wysiwyg = "true";
defparam \parity_acc[5][28] .power_up = "low";

dffeas \parity_acc[5][27] (
	.clk(clk_clk),
	.d(\parity_acc~177_combout ),
	.asdata(\parity_acc[5][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][27]~q ),
	.prn(vcc));
defparam \parity_acc[5][27] .is_wysiwyg = "true";
defparam \parity_acc[5][27] .power_up = "low";

dffeas \parity_acc[5][26] (
	.clk(clk_clk),
	.d(\parity_acc~176_combout ),
	.asdata(\parity_acc[5][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][26]~q ),
	.prn(vcc));
defparam \parity_acc[5][26] .is_wysiwyg = "true";
defparam \parity_acc[5][26] .power_up = "low";

dffeas \parity_acc[5][25] (
	.clk(clk_clk),
	.d(\parity_acc~175_combout ),
	.asdata(\parity_acc[5][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][25]~q ),
	.prn(vcc));
defparam \parity_acc[5][25] .is_wysiwyg = "true";
defparam \parity_acc[5][25] .power_up = "low";

dffeas \parity_acc[5][24] (
	.clk(clk_clk),
	.d(\parity_acc~174_combout ),
	.asdata(\parity_acc[5][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][24]~q ),
	.prn(vcc));
defparam \parity_acc[5][24] .is_wysiwyg = "true";
defparam \parity_acc[5][24] .power_up = "low";

dffeas \parity_acc[5][23] (
	.clk(clk_clk),
	.d(\parity_acc~173_combout ),
	.asdata(\parity_acc[5][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][23]~q ),
	.prn(vcc));
defparam \parity_acc[5][23] .is_wysiwyg = "true";
defparam \parity_acc[5][23] .power_up = "low";

dffeas \parity_acc[5][22] (
	.clk(clk_clk),
	.d(\parity_acc~172_combout ),
	.asdata(\parity_acc[5][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][22]~q ),
	.prn(vcc));
defparam \parity_acc[5][22] .is_wysiwyg = "true";
defparam \parity_acc[5][22] .power_up = "low";

dffeas \parity_acc[5][21] (
	.clk(clk_clk),
	.d(\parity_acc~171_combout ),
	.asdata(\parity_acc[5][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][21]~q ),
	.prn(vcc));
defparam \parity_acc[5][21] .is_wysiwyg = "true";
defparam \parity_acc[5][21] .power_up = "low";

dffeas \parity_acc[5][20] (
	.clk(clk_clk),
	.d(\parity_acc~170_combout ),
	.asdata(\parity_acc[5][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][20]~q ),
	.prn(vcc));
defparam \parity_acc[5][20] .is_wysiwyg = "true";
defparam \parity_acc[5][20] .power_up = "low";

dffeas \parity_acc[5][19] (
	.clk(clk_clk),
	.d(\parity_acc~169_combout ),
	.asdata(\parity_acc[5][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][19]~q ),
	.prn(vcc));
defparam \parity_acc[5][19] .is_wysiwyg = "true";
defparam \parity_acc[5][19] .power_up = "low";

dffeas \parity_acc[5][18] (
	.clk(clk_clk),
	.d(\parity_acc~168_combout ),
	.asdata(\parity_acc[5][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][18]~q ),
	.prn(vcc));
defparam \parity_acc[5][18] .is_wysiwyg = "true";
defparam \parity_acc[5][18] .power_up = "low";

dffeas \parity_acc[5][17] (
	.clk(clk_clk),
	.d(\parity_acc~167_combout ),
	.asdata(\parity_acc[5][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][17]~q ),
	.prn(vcc));
defparam \parity_acc[5][17] .is_wysiwyg = "true";
defparam \parity_acc[5][17] .power_up = "low";

dffeas \parity_acc[5][16] (
	.clk(clk_clk),
	.d(\parity_acc~166_combout ),
	.asdata(\parity_acc[5][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][16]~q ),
	.prn(vcc));
defparam \parity_acc[5][16] .is_wysiwyg = "true";
defparam \parity_acc[5][16] .power_up = "low";

dffeas \parity_acc[5][15] (
	.clk(clk_clk),
	.d(\parity_acc~165_combout ),
	.asdata(\parity_acc[5][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][15]~q ),
	.prn(vcc));
defparam \parity_acc[5][15] .is_wysiwyg = "true";
defparam \parity_acc[5][15] .power_up = "low";

dffeas \parity_acc[5][14] (
	.clk(clk_clk),
	.d(\parity_acc~164_combout ),
	.asdata(\parity_acc[5][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][14]~q ),
	.prn(vcc));
defparam \parity_acc[5][14] .is_wysiwyg = "true";
defparam \parity_acc[5][14] .power_up = "low";

dffeas \parity_acc[5][13] (
	.clk(clk_clk),
	.d(\parity_acc~163_combout ),
	.asdata(\parity_acc[5][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][13]~q ),
	.prn(vcc));
defparam \parity_acc[5][13] .is_wysiwyg = "true";
defparam \parity_acc[5][13] .power_up = "low";

dffeas \parity_acc[5][12] (
	.clk(clk_clk),
	.d(\parity_acc~162_combout ),
	.asdata(\parity_acc[5][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][12]~q ),
	.prn(vcc));
defparam \parity_acc[5][12] .is_wysiwyg = "true";
defparam \parity_acc[5][12] .power_up = "low";

dffeas \parity_acc[5][11] (
	.clk(clk_clk),
	.d(\parity_acc~161_combout ),
	.asdata(\parity_acc[5][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][11]~q ),
	.prn(vcc));
defparam \parity_acc[5][11] .is_wysiwyg = "true";
defparam \parity_acc[5][11] .power_up = "low";

dffeas \parity_acc[5][10] (
	.clk(clk_clk),
	.d(\parity_acc~160_combout ),
	.asdata(\parity_acc[5][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][10]~q ),
	.prn(vcc));
defparam \parity_acc[5][10] .is_wysiwyg = "true";
defparam \parity_acc[5][10] .power_up = "low";

dffeas \parity_acc[5][9] (
	.clk(clk_clk),
	.d(\parity_acc~159_combout ),
	.asdata(\parity_acc[5][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][9]~q ),
	.prn(vcc));
defparam \parity_acc[5][9] .is_wysiwyg = "true";
defparam \parity_acc[5][9] .power_up = "low";

dffeas \parity_acc[5][8] (
	.clk(clk_clk),
	.d(\parity_acc~158_combout ),
	.asdata(\parity_acc[5][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][8]~q ),
	.prn(vcc));
defparam \parity_acc[5][8] .is_wysiwyg = "true";
defparam \parity_acc[5][8] .power_up = "low";

dffeas \parity_acc[5][7] (
	.clk(clk_clk),
	.d(\parity_acc~157_combout ),
	.asdata(\parity_acc[5][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][7]~q ),
	.prn(vcc));
defparam \parity_acc[5][7] .is_wysiwyg = "true";
defparam \parity_acc[5][7] .power_up = "low";

dffeas \parity_acc[5][6] (
	.clk(clk_clk),
	.d(\parity_acc~156_combout ),
	.asdata(\parity_acc[5][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][6]~q ),
	.prn(vcc));
defparam \parity_acc[5][6] .is_wysiwyg = "true";
defparam \parity_acc[5][6] .power_up = "low";

dffeas \parity_acc[5][5] (
	.clk(clk_clk),
	.d(\parity_acc~155_combout ),
	.asdata(\parity_acc[5][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][5]~q ),
	.prn(vcc));
defparam \parity_acc[5][5] .is_wysiwyg = "true";
defparam \parity_acc[5][5] .power_up = "low";

dffeas \parity_acc[5][4] (
	.clk(clk_clk),
	.d(\parity_acc~154_combout ),
	.asdata(\parity_acc[5][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][4]~q ),
	.prn(vcc));
defparam \parity_acc[5][4] .is_wysiwyg = "true";
defparam \parity_acc[5][4] .power_up = "low";

dffeas \parity_acc[5][3] (
	.clk(clk_clk),
	.d(\parity_acc~153_combout ),
	.asdata(\parity_acc[5][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][3]~q ),
	.prn(vcc));
defparam \parity_acc[5][3] .is_wysiwyg = "true";
defparam \parity_acc[5][3] .power_up = "low";

dffeas \parity_acc[5][2] (
	.clk(clk_clk),
	.d(\parity_acc~152_combout ),
	.asdata(\parity_acc[5][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][2]~q ),
	.prn(vcc));
defparam \parity_acc[5][2] .is_wysiwyg = "true";
defparam \parity_acc[5][2] .power_up = "low";

dffeas \parity_acc[5][1] (
	.clk(clk_clk),
	.d(\parity_acc~151_combout ),
	.asdata(\parity_acc[5][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][1]~q ),
	.prn(vcc));
defparam \parity_acc[5][1] .is_wysiwyg = "true";
defparam \parity_acc[5][1] .power_up = "low";

dffeas \parity_acc[5][0] (
	.clk(clk_clk),
	.d(\parity_acc~150_combout ),
	.asdata(\parity_acc[5][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[5][0]~q ),
	.prn(vcc));
defparam \parity_acc[5][0] .is_wysiwyg = "true";
defparam \parity_acc[5][0] .power_up = "low";

dffeas \parity_acc[4][29] (
	.clk(clk_clk),
	.d(\parity_acc~149_combout ),
	.asdata(\parity_acc[5][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][29]~q ),
	.prn(vcc));
defparam \parity_acc[4][29] .is_wysiwyg = "true";
defparam \parity_acc[4][29] .power_up = "low";

dffeas \parity_acc[4][28] (
	.clk(clk_clk),
	.d(\parity_acc~148_combout ),
	.asdata(\parity_acc[4][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][28]~q ),
	.prn(vcc));
defparam \parity_acc[4][28] .is_wysiwyg = "true";
defparam \parity_acc[4][28] .power_up = "low";

dffeas \parity_acc[4][27] (
	.clk(clk_clk),
	.d(\parity_acc~147_combout ),
	.asdata(\parity_acc[4][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][27]~q ),
	.prn(vcc));
defparam \parity_acc[4][27] .is_wysiwyg = "true";
defparam \parity_acc[4][27] .power_up = "low";

dffeas \parity_acc[4][26] (
	.clk(clk_clk),
	.d(\parity_acc~146_combout ),
	.asdata(\parity_acc[4][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][26]~q ),
	.prn(vcc));
defparam \parity_acc[4][26] .is_wysiwyg = "true";
defparam \parity_acc[4][26] .power_up = "low";

dffeas \parity_acc[4][25] (
	.clk(clk_clk),
	.d(\parity_acc~145_combout ),
	.asdata(\parity_acc[4][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][25]~q ),
	.prn(vcc));
defparam \parity_acc[4][25] .is_wysiwyg = "true";
defparam \parity_acc[4][25] .power_up = "low";

dffeas \parity_acc[4][24] (
	.clk(clk_clk),
	.d(\parity_acc~144_combout ),
	.asdata(\parity_acc[4][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][24]~q ),
	.prn(vcc));
defparam \parity_acc[4][24] .is_wysiwyg = "true";
defparam \parity_acc[4][24] .power_up = "low";

dffeas \parity_acc[4][23] (
	.clk(clk_clk),
	.d(\parity_acc~143_combout ),
	.asdata(\parity_acc[4][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][23]~q ),
	.prn(vcc));
defparam \parity_acc[4][23] .is_wysiwyg = "true";
defparam \parity_acc[4][23] .power_up = "low";

dffeas \parity_acc[4][22] (
	.clk(clk_clk),
	.d(\parity_acc~142_combout ),
	.asdata(\parity_acc[4][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][22]~q ),
	.prn(vcc));
defparam \parity_acc[4][22] .is_wysiwyg = "true";
defparam \parity_acc[4][22] .power_up = "low";

dffeas \parity_acc[4][21] (
	.clk(clk_clk),
	.d(\parity_acc~141_combout ),
	.asdata(\parity_acc[4][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][21]~q ),
	.prn(vcc));
defparam \parity_acc[4][21] .is_wysiwyg = "true";
defparam \parity_acc[4][21] .power_up = "low";

dffeas \parity_acc[4][20] (
	.clk(clk_clk),
	.d(\parity_acc~140_combout ),
	.asdata(\parity_acc[4][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][20]~q ),
	.prn(vcc));
defparam \parity_acc[4][20] .is_wysiwyg = "true";
defparam \parity_acc[4][20] .power_up = "low";

dffeas \parity_acc[4][19] (
	.clk(clk_clk),
	.d(\parity_acc~139_combout ),
	.asdata(\parity_acc[4][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][19]~q ),
	.prn(vcc));
defparam \parity_acc[4][19] .is_wysiwyg = "true";
defparam \parity_acc[4][19] .power_up = "low";

dffeas \parity_acc[4][18] (
	.clk(clk_clk),
	.d(\parity_acc~138_combout ),
	.asdata(\parity_acc[4][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][18]~q ),
	.prn(vcc));
defparam \parity_acc[4][18] .is_wysiwyg = "true";
defparam \parity_acc[4][18] .power_up = "low";

dffeas \parity_acc[4][17] (
	.clk(clk_clk),
	.d(\parity_acc~137_combout ),
	.asdata(\parity_acc[4][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][17]~q ),
	.prn(vcc));
defparam \parity_acc[4][17] .is_wysiwyg = "true";
defparam \parity_acc[4][17] .power_up = "low";

dffeas \parity_acc[4][16] (
	.clk(clk_clk),
	.d(\parity_acc~136_combout ),
	.asdata(\parity_acc[4][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][16]~q ),
	.prn(vcc));
defparam \parity_acc[4][16] .is_wysiwyg = "true";
defparam \parity_acc[4][16] .power_up = "low";

dffeas \parity_acc[4][15] (
	.clk(clk_clk),
	.d(\parity_acc~135_combout ),
	.asdata(\parity_acc[4][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][15]~q ),
	.prn(vcc));
defparam \parity_acc[4][15] .is_wysiwyg = "true";
defparam \parity_acc[4][15] .power_up = "low";

dffeas \parity_acc[4][14] (
	.clk(clk_clk),
	.d(\parity_acc~134_combout ),
	.asdata(\parity_acc[4][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][14]~q ),
	.prn(vcc));
defparam \parity_acc[4][14] .is_wysiwyg = "true";
defparam \parity_acc[4][14] .power_up = "low";

dffeas \parity_acc[4][13] (
	.clk(clk_clk),
	.d(\parity_acc~133_combout ),
	.asdata(\parity_acc[4][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][13]~q ),
	.prn(vcc));
defparam \parity_acc[4][13] .is_wysiwyg = "true";
defparam \parity_acc[4][13] .power_up = "low";

dffeas \parity_acc[4][12] (
	.clk(clk_clk),
	.d(\parity_acc~132_combout ),
	.asdata(\parity_acc[4][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][12]~q ),
	.prn(vcc));
defparam \parity_acc[4][12] .is_wysiwyg = "true";
defparam \parity_acc[4][12] .power_up = "low";

dffeas \parity_acc[4][11] (
	.clk(clk_clk),
	.d(\parity_acc~131_combout ),
	.asdata(\parity_acc[4][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][11]~q ),
	.prn(vcc));
defparam \parity_acc[4][11] .is_wysiwyg = "true";
defparam \parity_acc[4][11] .power_up = "low";

dffeas \parity_acc[4][10] (
	.clk(clk_clk),
	.d(\parity_acc~130_combout ),
	.asdata(\parity_acc[4][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][10]~q ),
	.prn(vcc));
defparam \parity_acc[4][10] .is_wysiwyg = "true";
defparam \parity_acc[4][10] .power_up = "low";

dffeas \parity_acc[4][9] (
	.clk(clk_clk),
	.d(\parity_acc~129_combout ),
	.asdata(\parity_acc[4][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][9]~q ),
	.prn(vcc));
defparam \parity_acc[4][9] .is_wysiwyg = "true";
defparam \parity_acc[4][9] .power_up = "low";

dffeas \parity_acc[4][8] (
	.clk(clk_clk),
	.d(\parity_acc~128_combout ),
	.asdata(\parity_acc[4][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][8]~q ),
	.prn(vcc));
defparam \parity_acc[4][8] .is_wysiwyg = "true";
defparam \parity_acc[4][8] .power_up = "low";

dffeas \parity_acc[4][7] (
	.clk(clk_clk),
	.d(\parity_acc~127_combout ),
	.asdata(\parity_acc[4][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][7]~q ),
	.prn(vcc));
defparam \parity_acc[4][7] .is_wysiwyg = "true";
defparam \parity_acc[4][7] .power_up = "low";

dffeas \parity_acc[4][6] (
	.clk(clk_clk),
	.d(\parity_acc~126_combout ),
	.asdata(\parity_acc[4][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][6]~q ),
	.prn(vcc));
defparam \parity_acc[4][6] .is_wysiwyg = "true";
defparam \parity_acc[4][6] .power_up = "low";

dffeas \parity_acc[4][5] (
	.clk(clk_clk),
	.d(\parity_acc~125_combout ),
	.asdata(\parity_acc[4][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][5]~q ),
	.prn(vcc));
defparam \parity_acc[4][5] .is_wysiwyg = "true";
defparam \parity_acc[4][5] .power_up = "low";

dffeas \parity_acc[4][4] (
	.clk(clk_clk),
	.d(\parity_acc~124_combout ),
	.asdata(\parity_acc[4][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][4]~q ),
	.prn(vcc));
defparam \parity_acc[4][4] .is_wysiwyg = "true";
defparam \parity_acc[4][4] .power_up = "low";

dffeas \parity_acc[4][3] (
	.clk(clk_clk),
	.d(\parity_acc~123_combout ),
	.asdata(\parity_acc[4][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][3]~q ),
	.prn(vcc));
defparam \parity_acc[4][3] .is_wysiwyg = "true";
defparam \parity_acc[4][3] .power_up = "low";

dffeas \parity_acc[4][2] (
	.clk(clk_clk),
	.d(\parity_acc~122_combout ),
	.asdata(\parity_acc[4][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][2]~q ),
	.prn(vcc));
defparam \parity_acc[4][2] .is_wysiwyg = "true";
defparam \parity_acc[4][2] .power_up = "low";

dffeas \parity_acc[4][1] (
	.clk(clk_clk),
	.d(\parity_acc~121_combout ),
	.asdata(\parity_acc[4][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][1]~q ),
	.prn(vcc));
defparam \parity_acc[4][1] .is_wysiwyg = "true";
defparam \parity_acc[4][1] .power_up = "low";

dffeas \parity_acc[4][0] (
	.clk(clk_clk),
	.d(\parity_acc~120_combout ),
	.asdata(\parity_acc[4][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[4][0]~q ),
	.prn(vcc));
defparam \parity_acc[4][0] .is_wysiwyg = "true";
defparam \parity_acc[4][0] .power_up = "low";

dffeas \parity_acc[3][29] (
	.clk(clk_clk),
	.d(\parity_acc~119_combout ),
	.asdata(\parity_acc[4][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][29]~q ),
	.prn(vcc));
defparam \parity_acc[3][29] .is_wysiwyg = "true";
defparam \parity_acc[3][29] .power_up = "low";

dffeas \parity_acc[3][28] (
	.clk(clk_clk),
	.d(\parity_acc~118_combout ),
	.asdata(\parity_acc[3][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][28]~q ),
	.prn(vcc));
defparam \parity_acc[3][28] .is_wysiwyg = "true";
defparam \parity_acc[3][28] .power_up = "low";

dffeas \parity_acc[3][27] (
	.clk(clk_clk),
	.d(\parity_acc~117_combout ),
	.asdata(\parity_acc[3][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][27]~q ),
	.prn(vcc));
defparam \parity_acc[3][27] .is_wysiwyg = "true";
defparam \parity_acc[3][27] .power_up = "low";

dffeas \parity_acc[3][26] (
	.clk(clk_clk),
	.d(\parity_acc~116_combout ),
	.asdata(\parity_acc[3][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][26]~q ),
	.prn(vcc));
defparam \parity_acc[3][26] .is_wysiwyg = "true";
defparam \parity_acc[3][26] .power_up = "low";

dffeas \parity_acc[3][25] (
	.clk(clk_clk),
	.d(\parity_acc~115_combout ),
	.asdata(\parity_acc[3][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][25]~q ),
	.prn(vcc));
defparam \parity_acc[3][25] .is_wysiwyg = "true";
defparam \parity_acc[3][25] .power_up = "low";

dffeas \parity_acc[3][24] (
	.clk(clk_clk),
	.d(\parity_acc~114_combout ),
	.asdata(\parity_acc[3][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][24]~q ),
	.prn(vcc));
defparam \parity_acc[3][24] .is_wysiwyg = "true";
defparam \parity_acc[3][24] .power_up = "low";

dffeas \parity_acc[3][23] (
	.clk(clk_clk),
	.d(\parity_acc~113_combout ),
	.asdata(\parity_acc[3][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][23]~q ),
	.prn(vcc));
defparam \parity_acc[3][23] .is_wysiwyg = "true";
defparam \parity_acc[3][23] .power_up = "low";

dffeas \parity_acc[3][22] (
	.clk(clk_clk),
	.d(\parity_acc~112_combout ),
	.asdata(\parity_acc[3][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][22]~q ),
	.prn(vcc));
defparam \parity_acc[3][22] .is_wysiwyg = "true";
defparam \parity_acc[3][22] .power_up = "low";

dffeas \parity_acc[3][21] (
	.clk(clk_clk),
	.d(\parity_acc~111_combout ),
	.asdata(\parity_acc[3][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][21]~q ),
	.prn(vcc));
defparam \parity_acc[3][21] .is_wysiwyg = "true";
defparam \parity_acc[3][21] .power_up = "low";

dffeas \parity_acc[3][20] (
	.clk(clk_clk),
	.d(\parity_acc~110_combout ),
	.asdata(\parity_acc[3][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][20]~q ),
	.prn(vcc));
defparam \parity_acc[3][20] .is_wysiwyg = "true";
defparam \parity_acc[3][20] .power_up = "low";

dffeas \parity_acc[3][19] (
	.clk(clk_clk),
	.d(\parity_acc~109_combout ),
	.asdata(\parity_acc[3][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][19]~q ),
	.prn(vcc));
defparam \parity_acc[3][19] .is_wysiwyg = "true";
defparam \parity_acc[3][19] .power_up = "low";

dffeas \parity_acc[3][18] (
	.clk(clk_clk),
	.d(\parity_acc~108_combout ),
	.asdata(\parity_acc[3][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][18]~q ),
	.prn(vcc));
defparam \parity_acc[3][18] .is_wysiwyg = "true";
defparam \parity_acc[3][18] .power_up = "low";

dffeas \parity_acc[3][17] (
	.clk(clk_clk),
	.d(\parity_acc~107_combout ),
	.asdata(\parity_acc[3][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][17]~q ),
	.prn(vcc));
defparam \parity_acc[3][17] .is_wysiwyg = "true";
defparam \parity_acc[3][17] .power_up = "low";

dffeas \parity_acc[3][16] (
	.clk(clk_clk),
	.d(\parity_acc~106_combout ),
	.asdata(\parity_acc[3][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][16]~q ),
	.prn(vcc));
defparam \parity_acc[3][16] .is_wysiwyg = "true";
defparam \parity_acc[3][16] .power_up = "low";

dffeas \parity_acc[3][15] (
	.clk(clk_clk),
	.d(\parity_acc~105_combout ),
	.asdata(\parity_acc[3][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][15]~q ),
	.prn(vcc));
defparam \parity_acc[3][15] .is_wysiwyg = "true";
defparam \parity_acc[3][15] .power_up = "low";

dffeas \parity_acc[3][14] (
	.clk(clk_clk),
	.d(\parity_acc~104_combout ),
	.asdata(\parity_acc[3][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][14]~q ),
	.prn(vcc));
defparam \parity_acc[3][14] .is_wysiwyg = "true";
defparam \parity_acc[3][14] .power_up = "low";

dffeas \parity_acc[3][13] (
	.clk(clk_clk),
	.d(\parity_acc~103_combout ),
	.asdata(\parity_acc[3][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][13]~q ),
	.prn(vcc));
defparam \parity_acc[3][13] .is_wysiwyg = "true";
defparam \parity_acc[3][13] .power_up = "low";

dffeas \parity_acc[3][12] (
	.clk(clk_clk),
	.d(\parity_acc~102_combout ),
	.asdata(\parity_acc[3][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][12]~q ),
	.prn(vcc));
defparam \parity_acc[3][12] .is_wysiwyg = "true";
defparam \parity_acc[3][12] .power_up = "low";

dffeas \parity_acc[3][11] (
	.clk(clk_clk),
	.d(\parity_acc~101_combout ),
	.asdata(\parity_acc[3][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][11]~q ),
	.prn(vcc));
defparam \parity_acc[3][11] .is_wysiwyg = "true";
defparam \parity_acc[3][11] .power_up = "low";

dffeas \parity_acc[3][10] (
	.clk(clk_clk),
	.d(\parity_acc~100_combout ),
	.asdata(\parity_acc[3][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][10]~q ),
	.prn(vcc));
defparam \parity_acc[3][10] .is_wysiwyg = "true";
defparam \parity_acc[3][10] .power_up = "low";

dffeas \parity_acc[3][9] (
	.clk(clk_clk),
	.d(\parity_acc~99_combout ),
	.asdata(\parity_acc[3][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][9]~q ),
	.prn(vcc));
defparam \parity_acc[3][9] .is_wysiwyg = "true";
defparam \parity_acc[3][9] .power_up = "low";

dffeas \parity_acc[3][8] (
	.clk(clk_clk),
	.d(\parity_acc~98_combout ),
	.asdata(\parity_acc[3][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][8]~q ),
	.prn(vcc));
defparam \parity_acc[3][8] .is_wysiwyg = "true";
defparam \parity_acc[3][8] .power_up = "low";

dffeas \parity_acc[3][7] (
	.clk(clk_clk),
	.d(\parity_acc~97_combout ),
	.asdata(\parity_acc[3][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][7]~q ),
	.prn(vcc));
defparam \parity_acc[3][7] .is_wysiwyg = "true";
defparam \parity_acc[3][7] .power_up = "low";

dffeas \parity_acc[3][6] (
	.clk(clk_clk),
	.d(\parity_acc~96_combout ),
	.asdata(\parity_acc[3][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][6]~q ),
	.prn(vcc));
defparam \parity_acc[3][6] .is_wysiwyg = "true";
defparam \parity_acc[3][6] .power_up = "low";

dffeas \parity_acc[3][5] (
	.clk(clk_clk),
	.d(\parity_acc~95_combout ),
	.asdata(\parity_acc[3][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][5]~q ),
	.prn(vcc));
defparam \parity_acc[3][5] .is_wysiwyg = "true";
defparam \parity_acc[3][5] .power_up = "low";

dffeas \parity_acc[3][4] (
	.clk(clk_clk),
	.d(\parity_acc~94_combout ),
	.asdata(\parity_acc[3][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][4]~q ),
	.prn(vcc));
defparam \parity_acc[3][4] .is_wysiwyg = "true";
defparam \parity_acc[3][4] .power_up = "low";

dffeas \parity_acc[3][3] (
	.clk(clk_clk),
	.d(\parity_acc~93_combout ),
	.asdata(\parity_acc[3][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][3]~q ),
	.prn(vcc));
defparam \parity_acc[3][3] .is_wysiwyg = "true";
defparam \parity_acc[3][3] .power_up = "low";

dffeas \parity_acc[3][2] (
	.clk(clk_clk),
	.d(\parity_acc~92_combout ),
	.asdata(\parity_acc[3][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][2]~q ),
	.prn(vcc));
defparam \parity_acc[3][2] .is_wysiwyg = "true";
defparam \parity_acc[3][2] .power_up = "low";

dffeas \parity_acc[3][1] (
	.clk(clk_clk),
	.d(\parity_acc~91_combout ),
	.asdata(\parity_acc[3][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][1]~q ),
	.prn(vcc));
defparam \parity_acc[3][1] .is_wysiwyg = "true";
defparam \parity_acc[3][1] .power_up = "low";

dffeas \parity_acc[3][0] (
	.clk(clk_clk),
	.d(\parity_acc~90_combout ),
	.asdata(\parity_acc[3][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[3][0]~q ),
	.prn(vcc));
defparam \parity_acc[3][0] .is_wysiwyg = "true";
defparam \parity_acc[3][0] .power_up = "low";

dffeas \parity_acc[2][29] (
	.clk(clk_clk),
	.d(\parity_acc~89_combout ),
	.asdata(\parity_acc[3][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][29]~q ),
	.prn(vcc));
defparam \parity_acc[2][29] .is_wysiwyg = "true";
defparam \parity_acc[2][29] .power_up = "low";

dffeas \parity_acc[2][28] (
	.clk(clk_clk),
	.d(\parity_acc~88_combout ),
	.asdata(\parity_acc[2][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][28]~q ),
	.prn(vcc));
defparam \parity_acc[2][28] .is_wysiwyg = "true";
defparam \parity_acc[2][28] .power_up = "low";

dffeas \parity_acc[2][27] (
	.clk(clk_clk),
	.d(\parity_acc~87_combout ),
	.asdata(\parity_acc[2][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][27]~q ),
	.prn(vcc));
defparam \parity_acc[2][27] .is_wysiwyg = "true";
defparam \parity_acc[2][27] .power_up = "low";

dffeas \parity_acc[2][26] (
	.clk(clk_clk),
	.d(\parity_acc~86_combout ),
	.asdata(\parity_acc[2][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][26]~q ),
	.prn(vcc));
defparam \parity_acc[2][26] .is_wysiwyg = "true";
defparam \parity_acc[2][26] .power_up = "low";

dffeas \parity_acc[2][25] (
	.clk(clk_clk),
	.d(\parity_acc~85_combout ),
	.asdata(\parity_acc[2][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][25]~q ),
	.prn(vcc));
defparam \parity_acc[2][25] .is_wysiwyg = "true";
defparam \parity_acc[2][25] .power_up = "low";

dffeas \parity_acc[2][24] (
	.clk(clk_clk),
	.d(\parity_acc~84_combout ),
	.asdata(\parity_acc[2][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][24]~q ),
	.prn(vcc));
defparam \parity_acc[2][24] .is_wysiwyg = "true";
defparam \parity_acc[2][24] .power_up = "low";

dffeas \parity_acc[2][23] (
	.clk(clk_clk),
	.d(\parity_acc~83_combout ),
	.asdata(\parity_acc[2][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][23]~q ),
	.prn(vcc));
defparam \parity_acc[2][23] .is_wysiwyg = "true";
defparam \parity_acc[2][23] .power_up = "low";

dffeas \parity_acc[2][22] (
	.clk(clk_clk),
	.d(\parity_acc~82_combout ),
	.asdata(\parity_acc[2][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][22]~q ),
	.prn(vcc));
defparam \parity_acc[2][22] .is_wysiwyg = "true";
defparam \parity_acc[2][22] .power_up = "low";

dffeas \parity_acc[2][21] (
	.clk(clk_clk),
	.d(\parity_acc~81_combout ),
	.asdata(\parity_acc[2][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][21]~q ),
	.prn(vcc));
defparam \parity_acc[2][21] .is_wysiwyg = "true";
defparam \parity_acc[2][21] .power_up = "low";

dffeas \parity_acc[2][20] (
	.clk(clk_clk),
	.d(\parity_acc~80_combout ),
	.asdata(\parity_acc[2][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][20]~q ),
	.prn(vcc));
defparam \parity_acc[2][20] .is_wysiwyg = "true";
defparam \parity_acc[2][20] .power_up = "low";

dffeas \parity_acc[2][19] (
	.clk(clk_clk),
	.d(\parity_acc~79_combout ),
	.asdata(\parity_acc[2][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][19]~q ),
	.prn(vcc));
defparam \parity_acc[2][19] .is_wysiwyg = "true";
defparam \parity_acc[2][19] .power_up = "low";

dffeas \parity_acc[2][18] (
	.clk(clk_clk),
	.d(\parity_acc~78_combout ),
	.asdata(\parity_acc[2][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][18]~q ),
	.prn(vcc));
defparam \parity_acc[2][18] .is_wysiwyg = "true";
defparam \parity_acc[2][18] .power_up = "low";

dffeas \parity_acc[2][17] (
	.clk(clk_clk),
	.d(\parity_acc~77_combout ),
	.asdata(\parity_acc[2][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][17]~q ),
	.prn(vcc));
defparam \parity_acc[2][17] .is_wysiwyg = "true";
defparam \parity_acc[2][17] .power_up = "low";

dffeas \parity_acc[2][16] (
	.clk(clk_clk),
	.d(\parity_acc~76_combout ),
	.asdata(\parity_acc[2][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][16]~q ),
	.prn(vcc));
defparam \parity_acc[2][16] .is_wysiwyg = "true";
defparam \parity_acc[2][16] .power_up = "low";

dffeas \parity_acc[2][15] (
	.clk(clk_clk),
	.d(\parity_acc~75_combout ),
	.asdata(\parity_acc[2][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][15]~q ),
	.prn(vcc));
defparam \parity_acc[2][15] .is_wysiwyg = "true";
defparam \parity_acc[2][15] .power_up = "low";

dffeas \parity_acc[2][14] (
	.clk(clk_clk),
	.d(\parity_acc~74_combout ),
	.asdata(\parity_acc[2][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][14]~q ),
	.prn(vcc));
defparam \parity_acc[2][14] .is_wysiwyg = "true";
defparam \parity_acc[2][14] .power_up = "low";

dffeas \parity_acc[2][13] (
	.clk(clk_clk),
	.d(\parity_acc~73_combout ),
	.asdata(\parity_acc[2][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][13]~q ),
	.prn(vcc));
defparam \parity_acc[2][13] .is_wysiwyg = "true";
defparam \parity_acc[2][13] .power_up = "low";

dffeas \parity_acc[2][12] (
	.clk(clk_clk),
	.d(\parity_acc~72_combout ),
	.asdata(\parity_acc[2][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][12]~q ),
	.prn(vcc));
defparam \parity_acc[2][12] .is_wysiwyg = "true";
defparam \parity_acc[2][12] .power_up = "low";

dffeas \parity_acc[2][11] (
	.clk(clk_clk),
	.d(\parity_acc~71_combout ),
	.asdata(\parity_acc[2][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][11]~q ),
	.prn(vcc));
defparam \parity_acc[2][11] .is_wysiwyg = "true";
defparam \parity_acc[2][11] .power_up = "low";

dffeas \parity_acc[2][10] (
	.clk(clk_clk),
	.d(\parity_acc~70_combout ),
	.asdata(\parity_acc[2][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][10]~q ),
	.prn(vcc));
defparam \parity_acc[2][10] .is_wysiwyg = "true";
defparam \parity_acc[2][10] .power_up = "low";

dffeas \parity_acc[2][9] (
	.clk(clk_clk),
	.d(\parity_acc~69_combout ),
	.asdata(\parity_acc[2][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][9]~q ),
	.prn(vcc));
defparam \parity_acc[2][9] .is_wysiwyg = "true";
defparam \parity_acc[2][9] .power_up = "low";

dffeas \parity_acc[2][8] (
	.clk(clk_clk),
	.d(\parity_acc~68_combout ),
	.asdata(\parity_acc[2][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][8]~q ),
	.prn(vcc));
defparam \parity_acc[2][8] .is_wysiwyg = "true";
defparam \parity_acc[2][8] .power_up = "low";

dffeas \parity_acc[2][7] (
	.clk(clk_clk),
	.d(\parity_acc~67_combout ),
	.asdata(\parity_acc[2][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][7]~q ),
	.prn(vcc));
defparam \parity_acc[2][7] .is_wysiwyg = "true";
defparam \parity_acc[2][7] .power_up = "low";

dffeas \parity_acc[2][6] (
	.clk(clk_clk),
	.d(\parity_acc~66_combout ),
	.asdata(\parity_acc[2][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][6]~q ),
	.prn(vcc));
defparam \parity_acc[2][6] .is_wysiwyg = "true";
defparam \parity_acc[2][6] .power_up = "low";

dffeas \parity_acc[2][5] (
	.clk(clk_clk),
	.d(\parity_acc~65_combout ),
	.asdata(\parity_acc[2][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][5]~q ),
	.prn(vcc));
defparam \parity_acc[2][5] .is_wysiwyg = "true";
defparam \parity_acc[2][5] .power_up = "low";

dffeas \parity_acc[2][4] (
	.clk(clk_clk),
	.d(\parity_acc~64_combout ),
	.asdata(\parity_acc[2][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][4]~q ),
	.prn(vcc));
defparam \parity_acc[2][4] .is_wysiwyg = "true";
defparam \parity_acc[2][4] .power_up = "low";

dffeas \parity_acc[2][3] (
	.clk(clk_clk),
	.d(\parity_acc~63_combout ),
	.asdata(\parity_acc[2][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][3]~q ),
	.prn(vcc));
defparam \parity_acc[2][3] .is_wysiwyg = "true";
defparam \parity_acc[2][3] .power_up = "low";

dffeas \parity_acc[2][2] (
	.clk(clk_clk),
	.d(\parity_acc~62_combout ),
	.asdata(\parity_acc[2][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][2]~q ),
	.prn(vcc));
defparam \parity_acc[2][2] .is_wysiwyg = "true";
defparam \parity_acc[2][2] .power_up = "low";

dffeas \parity_acc[2][1] (
	.clk(clk_clk),
	.d(\parity_acc~61_combout ),
	.asdata(\parity_acc[2][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][1]~q ),
	.prn(vcc));
defparam \parity_acc[2][1] .is_wysiwyg = "true";
defparam \parity_acc[2][1] .power_up = "low";

dffeas \parity_acc[2][0] (
	.clk(clk_clk),
	.d(\parity_acc~60_combout ),
	.asdata(\parity_acc[2][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[2][0]~q ),
	.prn(vcc));
defparam \parity_acc[2][0] .is_wysiwyg = "true";
defparam \parity_acc[2][0] .power_up = "low";

dffeas \parity_acc[1][29] (
	.clk(clk_clk),
	.d(\parity_acc~59_combout ),
	.asdata(\parity_acc[2][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][29]~q ),
	.prn(vcc));
defparam \parity_acc[1][29] .is_wysiwyg = "true";
defparam \parity_acc[1][29] .power_up = "low";

dffeas \parity_acc[1][28] (
	.clk(clk_clk),
	.d(\parity_acc~58_combout ),
	.asdata(\parity_acc[1][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][28]~q ),
	.prn(vcc));
defparam \parity_acc[1][28] .is_wysiwyg = "true";
defparam \parity_acc[1][28] .power_up = "low";

dffeas \parity_acc[1][27] (
	.clk(clk_clk),
	.d(\parity_acc~57_combout ),
	.asdata(\parity_acc[1][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][27]~q ),
	.prn(vcc));
defparam \parity_acc[1][27] .is_wysiwyg = "true";
defparam \parity_acc[1][27] .power_up = "low";

dffeas \parity_acc[1][26] (
	.clk(clk_clk),
	.d(\parity_acc~56_combout ),
	.asdata(\parity_acc[1][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][26]~q ),
	.prn(vcc));
defparam \parity_acc[1][26] .is_wysiwyg = "true";
defparam \parity_acc[1][26] .power_up = "low";

dffeas \parity_acc[1][25] (
	.clk(clk_clk),
	.d(\parity_acc~55_combout ),
	.asdata(\parity_acc[1][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][25]~q ),
	.prn(vcc));
defparam \parity_acc[1][25] .is_wysiwyg = "true";
defparam \parity_acc[1][25] .power_up = "low";

dffeas \parity_acc[1][24] (
	.clk(clk_clk),
	.d(\parity_acc~54_combout ),
	.asdata(\parity_acc[1][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][24]~q ),
	.prn(vcc));
defparam \parity_acc[1][24] .is_wysiwyg = "true";
defparam \parity_acc[1][24] .power_up = "low";

dffeas \parity_acc[1][23] (
	.clk(clk_clk),
	.d(\parity_acc~53_combout ),
	.asdata(\parity_acc[1][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][23]~q ),
	.prn(vcc));
defparam \parity_acc[1][23] .is_wysiwyg = "true";
defparam \parity_acc[1][23] .power_up = "low";

dffeas \parity_acc[1][22] (
	.clk(clk_clk),
	.d(\parity_acc~52_combout ),
	.asdata(\parity_acc[1][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][22]~q ),
	.prn(vcc));
defparam \parity_acc[1][22] .is_wysiwyg = "true";
defparam \parity_acc[1][22] .power_up = "low";

dffeas \parity_acc[1][21] (
	.clk(clk_clk),
	.d(\parity_acc~51_combout ),
	.asdata(\parity_acc[1][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][21]~q ),
	.prn(vcc));
defparam \parity_acc[1][21] .is_wysiwyg = "true";
defparam \parity_acc[1][21] .power_up = "low";

dffeas \parity_acc[1][20] (
	.clk(clk_clk),
	.d(\parity_acc~50_combout ),
	.asdata(\parity_acc[1][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][20]~q ),
	.prn(vcc));
defparam \parity_acc[1][20] .is_wysiwyg = "true";
defparam \parity_acc[1][20] .power_up = "low";

dffeas \parity_acc[1][19] (
	.clk(clk_clk),
	.d(\parity_acc~49_combout ),
	.asdata(\parity_acc[1][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][19]~q ),
	.prn(vcc));
defparam \parity_acc[1][19] .is_wysiwyg = "true";
defparam \parity_acc[1][19] .power_up = "low";

dffeas \parity_acc[1][18] (
	.clk(clk_clk),
	.d(\parity_acc~48_combout ),
	.asdata(\parity_acc[1][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][18]~q ),
	.prn(vcc));
defparam \parity_acc[1][18] .is_wysiwyg = "true";
defparam \parity_acc[1][18] .power_up = "low";

dffeas \parity_acc[1][17] (
	.clk(clk_clk),
	.d(\parity_acc~47_combout ),
	.asdata(\parity_acc[1][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][17]~q ),
	.prn(vcc));
defparam \parity_acc[1][17] .is_wysiwyg = "true";
defparam \parity_acc[1][17] .power_up = "low";

dffeas \parity_acc[1][16] (
	.clk(clk_clk),
	.d(\parity_acc~46_combout ),
	.asdata(\parity_acc[1][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][16]~q ),
	.prn(vcc));
defparam \parity_acc[1][16] .is_wysiwyg = "true";
defparam \parity_acc[1][16] .power_up = "low";

dffeas \parity_acc[1][15] (
	.clk(clk_clk),
	.d(\parity_acc~45_combout ),
	.asdata(\parity_acc[1][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][15]~q ),
	.prn(vcc));
defparam \parity_acc[1][15] .is_wysiwyg = "true";
defparam \parity_acc[1][15] .power_up = "low";

dffeas \parity_acc[1][14] (
	.clk(clk_clk),
	.d(\parity_acc~44_combout ),
	.asdata(\parity_acc[1][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][14]~q ),
	.prn(vcc));
defparam \parity_acc[1][14] .is_wysiwyg = "true";
defparam \parity_acc[1][14] .power_up = "low";

dffeas \parity_acc[1][13] (
	.clk(clk_clk),
	.d(\parity_acc~43_combout ),
	.asdata(\parity_acc[1][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][13]~q ),
	.prn(vcc));
defparam \parity_acc[1][13] .is_wysiwyg = "true";
defparam \parity_acc[1][13] .power_up = "low";

dffeas \parity_acc[1][12] (
	.clk(clk_clk),
	.d(\parity_acc~42_combout ),
	.asdata(\parity_acc[1][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][12]~q ),
	.prn(vcc));
defparam \parity_acc[1][12] .is_wysiwyg = "true";
defparam \parity_acc[1][12] .power_up = "low";

dffeas \parity_acc[1][11] (
	.clk(clk_clk),
	.d(\parity_acc~41_combout ),
	.asdata(\parity_acc[1][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][11]~q ),
	.prn(vcc));
defparam \parity_acc[1][11] .is_wysiwyg = "true";
defparam \parity_acc[1][11] .power_up = "low";

dffeas \parity_acc[1][10] (
	.clk(clk_clk),
	.d(\parity_acc~40_combout ),
	.asdata(\parity_acc[1][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][10]~q ),
	.prn(vcc));
defparam \parity_acc[1][10] .is_wysiwyg = "true";
defparam \parity_acc[1][10] .power_up = "low";

dffeas \parity_acc[1][9] (
	.clk(clk_clk),
	.d(\parity_acc~39_combout ),
	.asdata(\parity_acc[1][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][9]~q ),
	.prn(vcc));
defparam \parity_acc[1][9] .is_wysiwyg = "true";
defparam \parity_acc[1][9] .power_up = "low";

dffeas \parity_acc[1][8] (
	.clk(clk_clk),
	.d(\parity_acc~38_combout ),
	.asdata(\parity_acc[1][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][8]~q ),
	.prn(vcc));
defparam \parity_acc[1][8] .is_wysiwyg = "true";
defparam \parity_acc[1][8] .power_up = "low";

dffeas \parity_acc[1][7] (
	.clk(clk_clk),
	.d(\parity_acc~37_combout ),
	.asdata(\parity_acc[1][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][7]~q ),
	.prn(vcc));
defparam \parity_acc[1][7] .is_wysiwyg = "true";
defparam \parity_acc[1][7] .power_up = "low";

dffeas \parity_acc[1][6] (
	.clk(clk_clk),
	.d(\parity_acc~36_combout ),
	.asdata(\parity_acc[1][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][6]~q ),
	.prn(vcc));
defparam \parity_acc[1][6] .is_wysiwyg = "true";
defparam \parity_acc[1][6] .power_up = "low";

dffeas \parity_acc[1][5] (
	.clk(clk_clk),
	.d(\parity_acc~35_combout ),
	.asdata(\parity_acc[1][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][5]~q ),
	.prn(vcc));
defparam \parity_acc[1][5] .is_wysiwyg = "true";
defparam \parity_acc[1][5] .power_up = "low";

dffeas \parity_acc[1][4] (
	.clk(clk_clk),
	.d(\parity_acc~34_combout ),
	.asdata(\parity_acc[1][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][4]~q ),
	.prn(vcc));
defparam \parity_acc[1][4] .is_wysiwyg = "true";
defparam \parity_acc[1][4] .power_up = "low";

dffeas \parity_acc[1][3] (
	.clk(clk_clk),
	.d(\parity_acc~33_combout ),
	.asdata(\parity_acc[1][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][3]~q ),
	.prn(vcc));
defparam \parity_acc[1][3] .is_wysiwyg = "true";
defparam \parity_acc[1][3] .power_up = "low";

dffeas \parity_acc[1][2] (
	.clk(clk_clk),
	.d(\parity_acc~32_combout ),
	.asdata(\parity_acc[1][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][2]~q ),
	.prn(vcc));
defparam \parity_acc[1][2] .is_wysiwyg = "true";
defparam \parity_acc[1][2] .power_up = "low";

dffeas \parity_acc[1][1] (
	.clk(clk_clk),
	.d(\parity_acc~31_combout ),
	.asdata(\parity_acc[1][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][1]~q ),
	.prn(vcc));
defparam \parity_acc[1][1] .is_wysiwyg = "true";
defparam \parity_acc[1][1] .power_up = "low";

dffeas \parity_acc[1][0] (
	.clk(clk_clk),
	.d(\parity_acc~30_combout ),
	.asdata(\parity_acc[1][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[1][0]~q ),
	.prn(vcc));
defparam \parity_acc[1][0] .is_wysiwyg = "true";
defparam \parity_acc[1][0] .power_up = "low";

dffeas \parity_acc[0][29] (
	.clk(clk_clk),
	.d(\parity_acc~29_combout ),
	.asdata(\parity_acc[1][0]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][29]~q ),
	.prn(vcc));
defparam \parity_acc[0][29] .is_wysiwyg = "true";
defparam \parity_acc[0][29] .power_up = "low";

dffeas \parity_acc[0][28] (
	.clk(clk_clk),
	.d(\parity_acc~28_combout ),
	.asdata(\parity_acc[0][29]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][28]~q ),
	.prn(vcc));
defparam \parity_acc[0][28] .is_wysiwyg = "true";
defparam \parity_acc[0][28] .power_up = "low";

dffeas \parity_acc[0][27] (
	.clk(clk_clk),
	.d(\parity_acc~27_combout ),
	.asdata(\parity_acc[0][28]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][27]~q ),
	.prn(vcc));
defparam \parity_acc[0][27] .is_wysiwyg = "true";
defparam \parity_acc[0][27] .power_up = "low";

dffeas \parity_acc[0][26] (
	.clk(clk_clk),
	.d(\parity_acc~26_combout ),
	.asdata(\parity_acc[0][27]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][26]~q ),
	.prn(vcc));
defparam \parity_acc[0][26] .is_wysiwyg = "true";
defparam \parity_acc[0][26] .power_up = "low";

dffeas \parity_acc[0][25] (
	.clk(clk_clk),
	.d(\parity_acc~25_combout ),
	.asdata(\parity_acc[0][26]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][25]~q ),
	.prn(vcc));
defparam \parity_acc[0][25] .is_wysiwyg = "true";
defparam \parity_acc[0][25] .power_up = "low";

dffeas \parity_acc[0][24] (
	.clk(clk_clk),
	.d(\parity_acc~24_combout ),
	.asdata(\parity_acc[0][25]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][24]~q ),
	.prn(vcc));
defparam \parity_acc[0][24] .is_wysiwyg = "true";
defparam \parity_acc[0][24] .power_up = "low";

dffeas \parity_acc[0][23] (
	.clk(clk_clk),
	.d(\parity_acc~23_combout ),
	.asdata(\parity_acc[0][24]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][23]~q ),
	.prn(vcc));
defparam \parity_acc[0][23] .is_wysiwyg = "true";
defparam \parity_acc[0][23] .power_up = "low";

dffeas \parity_acc[0][22] (
	.clk(clk_clk),
	.d(\parity_acc~22_combout ),
	.asdata(\parity_acc[0][23]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][22]~q ),
	.prn(vcc));
defparam \parity_acc[0][22] .is_wysiwyg = "true";
defparam \parity_acc[0][22] .power_up = "low";

dffeas \parity_acc[0][21] (
	.clk(clk_clk),
	.d(\parity_acc~21_combout ),
	.asdata(\parity_acc[0][22]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][21]~q ),
	.prn(vcc));
defparam \parity_acc[0][21] .is_wysiwyg = "true";
defparam \parity_acc[0][21] .power_up = "low";

dffeas \parity_acc[0][20] (
	.clk(clk_clk),
	.d(\parity_acc~20_combout ),
	.asdata(\parity_acc[0][21]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][20]~q ),
	.prn(vcc));
defparam \parity_acc[0][20] .is_wysiwyg = "true";
defparam \parity_acc[0][20] .power_up = "low";

dffeas \parity_acc[0][19] (
	.clk(clk_clk),
	.d(\parity_acc~19_combout ),
	.asdata(\parity_acc[0][20]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][19]~q ),
	.prn(vcc));
defparam \parity_acc[0][19] .is_wysiwyg = "true";
defparam \parity_acc[0][19] .power_up = "low";

dffeas \parity_acc[0][18] (
	.clk(clk_clk),
	.d(\parity_acc~18_combout ),
	.asdata(\parity_acc[0][19]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][18]~q ),
	.prn(vcc));
defparam \parity_acc[0][18] .is_wysiwyg = "true";
defparam \parity_acc[0][18] .power_up = "low";

dffeas \parity_acc[0][17] (
	.clk(clk_clk),
	.d(\parity_acc~17_combout ),
	.asdata(\parity_acc[0][18]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][17]~q ),
	.prn(vcc));
defparam \parity_acc[0][17] .is_wysiwyg = "true";
defparam \parity_acc[0][17] .power_up = "low";

dffeas \parity_acc[0][16] (
	.clk(clk_clk),
	.d(\parity_acc~16_combout ),
	.asdata(\parity_acc[0][17]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][16]~q ),
	.prn(vcc));
defparam \parity_acc[0][16] .is_wysiwyg = "true";
defparam \parity_acc[0][16] .power_up = "low";

dffeas \parity_acc[0][15] (
	.clk(clk_clk),
	.d(\parity_acc~15_combout ),
	.asdata(\parity_acc[0][16]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][15]~q ),
	.prn(vcc));
defparam \parity_acc[0][15] .is_wysiwyg = "true";
defparam \parity_acc[0][15] .power_up = "low";

dffeas \parity_acc[0][14] (
	.clk(clk_clk),
	.d(\parity_acc~14_combout ),
	.asdata(\parity_acc[0][15]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][14]~q ),
	.prn(vcc));
defparam \parity_acc[0][14] .is_wysiwyg = "true";
defparam \parity_acc[0][14] .power_up = "low";

dffeas \parity_acc[0][13] (
	.clk(clk_clk),
	.d(\parity_acc~13_combout ),
	.asdata(\parity_acc[0][14]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][13]~q ),
	.prn(vcc));
defparam \parity_acc[0][13] .is_wysiwyg = "true";
defparam \parity_acc[0][13] .power_up = "low";

dffeas \parity_acc[0][12] (
	.clk(clk_clk),
	.d(\parity_acc~12_combout ),
	.asdata(\parity_acc[0][13]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][12]~q ),
	.prn(vcc));
defparam \parity_acc[0][12] .is_wysiwyg = "true";
defparam \parity_acc[0][12] .power_up = "low";

dffeas \parity_acc[0][11] (
	.clk(clk_clk),
	.d(\parity_acc~11_combout ),
	.asdata(\parity_acc[0][12]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][11]~q ),
	.prn(vcc));
defparam \parity_acc[0][11] .is_wysiwyg = "true";
defparam \parity_acc[0][11] .power_up = "low";

dffeas \parity_acc[0][10] (
	.clk(clk_clk),
	.d(\parity_acc~10_combout ),
	.asdata(\parity_acc[0][11]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][10]~q ),
	.prn(vcc));
defparam \parity_acc[0][10] .is_wysiwyg = "true";
defparam \parity_acc[0][10] .power_up = "low";

dffeas \parity_acc[0][9] (
	.clk(clk_clk),
	.d(\parity_acc~9_combout ),
	.asdata(\parity_acc[0][10]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][9]~q ),
	.prn(vcc));
defparam \parity_acc[0][9] .is_wysiwyg = "true";
defparam \parity_acc[0][9] .power_up = "low";

dffeas \parity_acc[0][8] (
	.clk(clk_clk),
	.d(\parity_acc~8_combout ),
	.asdata(\parity_acc[0][9]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][8]~q ),
	.prn(vcc));
defparam \parity_acc[0][8] .is_wysiwyg = "true";
defparam \parity_acc[0][8] .power_up = "low";

dffeas \parity_acc[0][7] (
	.clk(clk_clk),
	.d(\parity_acc~7_combout ),
	.asdata(\parity_acc[0][8]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][7]~q ),
	.prn(vcc));
defparam \parity_acc[0][7] .is_wysiwyg = "true";
defparam \parity_acc[0][7] .power_up = "low";

dffeas \parity_acc[0][6] (
	.clk(clk_clk),
	.d(\parity_acc~6_combout ),
	.asdata(\parity_acc[0][7]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][6]~q ),
	.prn(vcc));
defparam \parity_acc[0][6] .is_wysiwyg = "true";
defparam \parity_acc[0][6] .power_up = "low";

dffeas \parity_acc[0][5] (
	.clk(clk_clk),
	.d(\parity_acc~5_combout ),
	.asdata(\parity_acc[0][6]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][5]~q ),
	.prn(vcc));
defparam \parity_acc[0][5] .is_wysiwyg = "true";
defparam \parity_acc[0][5] .power_up = "low";

dffeas \parity_acc[0][4] (
	.clk(clk_clk),
	.d(\parity_acc~4_combout ),
	.asdata(\parity_acc[0][5]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][4]~q ),
	.prn(vcc));
defparam \parity_acc[0][4] .is_wysiwyg = "true";
defparam \parity_acc[0][4] .power_up = "low";

dffeas \parity_acc[0][3] (
	.clk(clk_clk),
	.d(\parity_acc~3_combout ),
	.asdata(\parity_acc[0][4]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][3]~q ),
	.prn(vcc));
defparam \parity_acc[0][3] .is_wysiwyg = "true";
defparam \parity_acc[0][3] .power_up = "low";

dffeas \parity_acc[0][2] (
	.clk(clk_clk),
	.d(\parity_acc~2_combout ),
	.asdata(\parity_acc[0][3]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][2]~q ),
	.prn(vcc));
defparam \parity_acc[0][2] .is_wysiwyg = "true";
defparam \parity_acc[0][2] .power_up = "low";

dffeas \parity_acc[0][1] (
	.clk(clk_clk),
	.d(\parity_acc~1_combout ),
	.asdata(\parity_acc[0][2]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][1]~q ),
	.prn(vcc));
defparam \parity_acc[0][1] .is_wysiwyg = "true";
defparam \parity_acc[0][1] .power_up = "low";

dffeas \parity_acc[0][0] (
	.clk(clk_clk),
	.d(\parity_acc~0_combout ),
	.asdata(\parity_acc[0][1]~q ),
	.clrn(reset_reset_n),
	.aload(gnd),
	.sclr(gnd),
	.sload(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.ena(\pipelining_valid1|register_last[0][0]~q ),
	.q(\parity_acc[0][0]~q ),
	.prn(vcc));
defparam \parity_acc[0][0] .is_wysiwyg = "true";
defparam \parity_acc[0][0] .power_up = "low";

cyclonev_lcell_comb \pline_out_data~0 (
	.dataa(!\pipelining_state_comp_parity1|register_last[0][0]~q ),
	.datab(!\pipelining_data1|register[0][0][0]~q ),
	.datac(!\parity_acc[0][0]~q ),
	.datad(gnd),
	.datae(gnd),
	.dataf(gnd),
	.datag(gnd),
	.cin(gnd),
	.sharein(gnd),
	.combout(\pline_out_data~0_combout ),
	.sumout(),
	.cout(),
	.shareout());
defparam \pline_out_data~0 .extended_lut = "off";
defparam \pline_out_data~0 .lut_mask = 64'h2727272727272727;
defparam \pline_out_data~0 .shared_arith = "off";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0]~q ;
wire \register[1][0]~q ;
wire \register[2][0]~q ;


dffeas \register_last[0][0] (
	.clk(clk),
	.d(\register[2][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

dffeas \register[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0]~q ),
	.prn(vcc));
defparam \register[0][0] .is_wysiwyg = "true";
defparam \register[0][0] .power_up = "low";

dffeas \register[1][0] (
	.clk(clk),
	.d(\register[0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0]~q ),
	.prn(vcc));
defparam \register[1][0] .is_wysiwyg = "true";
defparam \register[1][0] .power_up = "low";

dffeas \register[2][0] (
	.clk(clk),
	.d(\register[1][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[2][0]~q ),
	.prn(vcc));
defparam \register[2][0] .is_wysiwyg = "true";
defparam \register[2][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_1 (
	in,
	register_last_0_0,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
input 	[0:0] in;
output 	register_last_0_0;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0]~q ;
wire \register[1][0]~q ;


dffeas \register_last[0][0] (
	.clk(clk),
	.d(\register[1][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

dffeas \register[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0]~q ),
	.prn(vcc));
defparam \register[0][0] .is_wysiwyg = "true";
defparam \register[0][0] .power_up = "low";

dffeas \register[1][0] (
	.clk(clk),
	.d(\register[0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0]~q ),
	.prn(vcc));
defparam \register[1][0] .is_wysiwyg = "true";
defparam \register[1][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_2 (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0]~q ;
wire \register[1][0]~q ;
wire \register[2][0]~q ;
wire \register[3][0]~q ;


dffeas \register_last[0][0] (
	.clk(clk),
	.d(\register[3][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

dffeas \register[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0]~q ),
	.prn(vcc));
defparam \register[0][0] .is_wysiwyg = "true";
defparam \register[0][0] .power_up = "low";

dffeas \register[1][0] (
	.clk(clk),
	.d(\register[0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0]~q ),
	.prn(vcc));
defparam \register[1][0] .is_wysiwyg = "true";
defparam \register[1][0] .power_up = "low";

dffeas \register[2][0] (
	.clk(clk),
	.d(\register[1][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[2][0]~q ),
	.prn(vcc));
defparam \register[2][0] .is_wysiwyg = "true";
defparam \register[2][0] .power_up = "low";

dffeas \register[3][0] (
	.clk(clk),
	.d(\register[2][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[3][0]~q ),
	.prn(vcc));
defparam \register[3][0] .is_wysiwyg = "true";
defparam \register[3][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_3 (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0]~q ;
wire \register[1][0]~q ;


dffeas \register_last[0][0] (
	.clk(clk),
	.d(\register[1][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

dffeas \register[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0]~q ),
	.prn(vcc));
defparam \register[0][0] .is_wysiwyg = "true";
defparam \register[0][0] .power_up = "low";

dffeas \register[1][0] (
	.clk(clk),
	.d(\register[0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0]~q ),
	.prn(vcc));
defparam \register[1][0] .is_wysiwyg = "true";
defparam \register[1][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_4 (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register_last[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_5 (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0]~q ;
wire \register[1][0]~q ;


dffeas \register_last[0][0] (
	.clk(clk),
	.d(\register[1][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

dffeas \register[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0]~q ),
	.prn(vcc));
defparam \register[0][0] .is_wysiwyg = "true";
defparam \register[0][0] .power_up = "low";

dffeas \register[1][0] (
	.clk(clk),
	.d(\register[0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0]~q ),
	.prn(vcc));
defparam \register[1][0] .is_wysiwyg = "true";
defparam \register[1][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_delay_and_duplicate_6 (
	register_last_0_0,
	in,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register_last_0_0;
input 	[0:0] in;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register_last[0][0] (
	.clk(clk),
	.d(in[0]),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register_last_0_0),
	.prn(vcc));
defparam \register_last[0][0] .is_wysiwyg = "true";
defparam \register_last[0][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_msa_delay (
	register000,
	in_0_0,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register000;
input 	in_0_0;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



dffeas \register[0][0][0] (
	.clk(clk),
	.d(in_0_0),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register000),
	.prn(vcc));
defparam \register[0][0][0] .is_wysiwyg = "true";
defparam \register[0][0][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_msa_delay_1 (
	register300,
	in_0_0,
	clk,
	rst)/* synthesis synthesis_greybox=1 */;
output 	register300;
input 	in_0_0;
input 	clk;
input 	rst;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;

wire \register[0][0][0]~q ;
wire \register[1][0][0]~q ;
wire \register[2][0][0]~q ;


dffeas \register[3][0][0] (
	.clk(clk),
	.d(\register[2][0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(register300),
	.prn(vcc));
defparam \register[3][0][0] .is_wysiwyg = "true";
defparam \register[3][0][0] .power_up = "low";

dffeas \register[0][0][0] (
	.clk(clk),
	.d(in_0_0),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[0][0][0]~q ),
	.prn(vcc));
defparam \register[0][0][0] .is_wysiwyg = "true";
defparam \register[0][0][0] .power_up = "low";

dffeas \register[1][0][0] (
	.clk(clk),
	.d(\register[0][0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[1][0][0]~q ),
	.prn(vcc));
defparam \register[1][0][0] .is_wysiwyg = "true";
defparam \register[1][0][0] .power_up = "low";

dffeas \register[2][0][0] (
	.clk(clk),
	.d(\register[1][0][0]~q ),
	.asdata(vcc),
	.clrn(rst),
	.aload(gnd),
	.sclr(gnd),
	.sload(gnd),
	.ena(vcc),
	.q(\register[2][0][0]~q ),
	.prn(vcc));
defparam \register[2][0][0] .is_wysiwyg = "true";
defparam \register[2][0][0] .power_up = "low";

endmodule

module LDPCencode_altera_ldpc_wimedia_enc_ROMs (
	q_a_0,
	counter_group_0,
	counter_group_1,
	counter_group_2,
	counter_group_3,
	counter_group_4,
	q_a_29,
	q_a_1,
	q_a_28,
	q_a_2,
	q_a_27,
	q_a_3,
	q_a_26,
	q_a_4,
	q_a_25,
	q_a_5,
	q_a_24,
	q_a_6,
	q_a_23,
	q_a_7,
	q_a_22,
	q_a_8,
	q_a_21,
	q_a_9,
	q_a_20,
	q_a_10,
	q_a_19,
	q_a_11,
	q_a_18,
	q_a_12,
	q_a_17,
	q_a_13,
	q_a_16,
	q_a_14,
	q_a_15,
	q_a_01,
	q_a_291,
	q_a_110,
	q_a_281,
	q_a_210,
	q_a_271,
	q_a_31,
	q_a_261,
	q_a_41,
	q_a_251,
	q_a_51,
	q_a_241,
	q_a_61,
	q_a_231,
	q_a_71,
	q_a_221,
	q_a_81,
	q_a_211,
	q_a_91,
	q_a_201,
	q_a_101,
	q_a_191,
	q_a_111,
	q_a_181,
	q_a_121,
	q_a_171,
	q_a_131,
	q_a_161,
	q_a_141,
	q_a_151,
	q_a_02,
	q_a_292,
	q_a_112,
	q_a_282,
	q_a_212,
	q_a_272,
	q_a_32,
	q_a_262,
	q_a_42,
	q_a_252,
	q_a_52,
	q_a_242,
	q_a_62,
	q_a_232,
	q_a_72,
	q_a_222,
	q_a_82,
	q_a_213,
	q_a_92,
	q_a_202,
	q_a_102,
	q_a_192,
	q_a_113,
	q_a_182,
	q_a_122,
	q_a_172,
	q_a_132,
	q_a_162,
	q_a_142,
	q_a_152,
	q_a_03,
	q_a_293,
	q_a_114,
	q_a_283,
	q_a_214,
	q_a_273,
	q_a_33,
	q_a_263,
	q_a_43,
	q_a_253,
	q_a_53,
	q_a_243,
	q_a_63,
	q_a_233,
	q_a_73,
	q_a_223,
	q_a_83,
	q_a_215,
	q_a_93,
	q_a_203,
	q_a_103,
	q_a_193,
	q_a_115,
	q_a_183,
	q_a_123,
	q_a_173,
	q_a_133,
	q_a_163,
	q_a_143,
	q_a_153,
	q_a_04,
	q_a_294,
	q_a_116,
	q_a_284,
	q_a_216,
	q_a_274,
	q_a_34,
	q_a_264,
	q_a_44,
	q_a_254,
	q_a_54,
	q_a_244,
	q_a_64,
	q_a_234,
	q_a_74,
	q_a_224,
	q_a_84,
	q_a_217,
	q_a_94,
	q_a_204,
	q_a_104,
	q_a_194,
	q_a_117,
	q_a_184,
	q_a_124,
	q_a_174,
	q_a_134,
	q_a_164,
	q_a_144,
	q_a_154,
	q_a_05,
	q_a_295,
	q_a_118,
	q_a_285,
	q_a_218,
	q_a_275,
	q_a_35,
	q_a_265,
	q_a_45,
	q_a_255,
	q_a_55,
	q_a_245,
	q_a_65,
	q_a_235,
	q_a_75,
	q_a_225,
	q_a_85,
	q_a_219,
	q_a_95,
	q_a_205,
	q_a_105,
	q_a_195,
	q_a_119,
	q_a_185,
	q_a_125,
	q_a_175,
	q_a_135,
	q_a_165,
	q_a_145,
	q_a_155,
	q_a_06,
	q_a_296,
	q_a_120,
	q_a_286,
	q_a_220,
	q_a_276,
	q_a_36,
	q_a_266,
	q_a_46,
	q_a_256,
	q_a_56,
	q_a_246,
	q_a_66,
	q_a_236,
	q_a_76,
	q_a_226,
	q_a_86,
	q_a_2110,
	q_a_96,
	q_a_206,
	q_a_106,
	q_a_196,
	q_a_1110,
	q_a_186,
	q_a_126,
	q_a_176,
	q_a_136,
	q_a_166,
	q_a_146,
	q_a_156,
	q_a_07,
	q_a_297,
	q_a_127,
	q_a_287,
	q_a_227,
	q_a_277,
	q_a_37,
	q_a_267,
	q_a_47,
	q_a_257,
	q_a_57,
	q_a_247,
	q_a_67,
	q_a_237,
	q_a_77,
	q_a_228,
	q_a_87,
	q_a_2111,
	q_a_97,
	q_a_207,
	q_a_107,
	q_a_197,
	q_a_1111,
	q_a_187,
	q_a_128,
	q_a_177,
	q_a_137,
	q_a_167,
	q_a_147,
	q_a_157,
	clk_clk)/* synthesis synthesis_greybox=1 */;
output 	q_a_0;
input 	counter_group_0;
input 	counter_group_1;
input 	counter_group_2;
input 	counter_group_3;
input 	counter_group_4;
output 	q_a_29;
output 	q_a_1;
output 	q_a_28;
output 	q_a_2;
output 	q_a_27;
output 	q_a_3;
output 	q_a_26;
output 	q_a_4;
output 	q_a_25;
output 	q_a_5;
output 	q_a_24;
output 	q_a_6;
output 	q_a_23;
output 	q_a_7;
output 	q_a_22;
output 	q_a_8;
output 	q_a_21;
output 	q_a_9;
output 	q_a_20;
output 	q_a_10;
output 	q_a_19;
output 	q_a_11;
output 	q_a_18;
output 	q_a_12;
output 	q_a_17;
output 	q_a_13;
output 	q_a_16;
output 	q_a_14;
output 	q_a_15;
output 	q_a_01;
output 	q_a_291;
output 	q_a_110;
output 	q_a_281;
output 	q_a_210;
output 	q_a_271;
output 	q_a_31;
output 	q_a_261;
output 	q_a_41;
output 	q_a_251;
output 	q_a_51;
output 	q_a_241;
output 	q_a_61;
output 	q_a_231;
output 	q_a_71;
output 	q_a_221;
output 	q_a_81;
output 	q_a_211;
output 	q_a_91;
output 	q_a_201;
output 	q_a_101;
output 	q_a_191;
output 	q_a_111;
output 	q_a_181;
output 	q_a_121;
output 	q_a_171;
output 	q_a_131;
output 	q_a_161;
output 	q_a_141;
output 	q_a_151;
output 	q_a_02;
output 	q_a_292;
output 	q_a_112;
output 	q_a_282;
output 	q_a_212;
output 	q_a_272;
output 	q_a_32;
output 	q_a_262;
output 	q_a_42;
output 	q_a_252;
output 	q_a_52;
output 	q_a_242;
output 	q_a_62;
output 	q_a_232;
output 	q_a_72;
output 	q_a_222;
output 	q_a_82;
output 	q_a_213;
output 	q_a_92;
output 	q_a_202;
output 	q_a_102;
output 	q_a_192;
output 	q_a_113;
output 	q_a_182;
output 	q_a_122;
output 	q_a_172;
output 	q_a_132;
output 	q_a_162;
output 	q_a_142;
output 	q_a_152;
output 	q_a_03;
output 	q_a_293;
output 	q_a_114;
output 	q_a_283;
output 	q_a_214;
output 	q_a_273;
output 	q_a_33;
output 	q_a_263;
output 	q_a_43;
output 	q_a_253;
output 	q_a_53;
output 	q_a_243;
output 	q_a_63;
output 	q_a_233;
output 	q_a_73;
output 	q_a_223;
output 	q_a_83;
output 	q_a_215;
output 	q_a_93;
output 	q_a_203;
output 	q_a_103;
output 	q_a_193;
output 	q_a_115;
output 	q_a_183;
output 	q_a_123;
output 	q_a_173;
output 	q_a_133;
output 	q_a_163;
output 	q_a_143;
output 	q_a_153;
output 	q_a_04;
output 	q_a_294;
output 	q_a_116;
output 	q_a_284;
output 	q_a_216;
output 	q_a_274;
output 	q_a_34;
output 	q_a_264;
output 	q_a_44;
output 	q_a_254;
output 	q_a_54;
output 	q_a_244;
output 	q_a_64;
output 	q_a_234;
output 	q_a_74;
output 	q_a_224;
output 	q_a_84;
output 	q_a_217;
output 	q_a_94;
output 	q_a_204;
output 	q_a_104;
output 	q_a_194;
output 	q_a_117;
output 	q_a_184;
output 	q_a_124;
output 	q_a_174;
output 	q_a_134;
output 	q_a_164;
output 	q_a_144;
output 	q_a_154;
output 	q_a_05;
output 	q_a_295;
output 	q_a_118;
output 	q_a_285;
output 	q_a_218;
output 	q_a_275;
output 	q_a_35;
output 	q_a_265;
output 	q_a_45;
output 	q_a_255;
output 	q_a_55;
output 	q_a_245;
output 	q_a_65;
output 	q_a_235;
output 	q_a_75;
output 	q_a_225;
output 	q_a_85;
output 	q_a_219;
output 	q_a_95;
output 	q_a_205;
output 	q_a_105;
output 	q_a_195;
output 	q_a_119;
output 	q_a_185;
output 	q_a_125;
output 	q_a_175;
output 	q_a_135;
output 	q_a_165;
output 	q_a_145;
output 	q_a_155;
output 	q_a_06;
output 	q_a_296;
output 	q_a_120;
output 	q_a_286;
output 	q_a_220;
output 	q_a_276;
output 	q_a_36;
output 	q_a_266;
output 	q_a_46;
output 	q_a_256;
output 	q_a_56;
output 	q_a_246;
output 	q_a_66;
output 	q_a_236;
output 	q_a_76;
output 	q_a_226;
output 	q_a_86;
output 	q_a_2110;
output 	q_a_96;
output 	q_a_206;
output 	q_a_106;
output 	q_a_196;
output 	q_a_1110;
output 	q_a_186;
output 	q_a_126;
output 	q_a_176;
output 	q_a_136;
output 	q_a_166;
output 	q_a_146;
output 	q_a_156;
output 	q_a_07;
output 	q_a_297;
output 	q_a_127;
output 	q_a_287;
output 	q_a_227;
output 	q_a_277;
output 	q_a_37;
output 	q_a_267;
output 	q_a_47;
output 	q_a_257;
output 	q_a_57;
output 	q_a_247;
output 	q_a_67;
output 	q_a_237;
output 	q_a_77;
output 	q_a_228;
output 	q_a_87;
output 	q_a_2111;
output 	q_a_97;
output 	q_a_207;
output 	q_a_107;
output 	q_a_197;
output 	q_a_1111;
output 	q_a_187;
output 	q_a_128;
output 	q_a_177;
output 	q_a_137;
output 	q_a_167;
output 	q_a_147;
output 	q_a_157;
input 	clk_clk;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_1 ROM_PARITY_0(
	.q_a({q_a_29,q_a_28,q_a_27,q_a_26,q_a_25,q_a_24,q_a_23,q_a_22,q_a_21,q_a_20,q_a_19,q_a_18,q_a_17,q_a_16,q_a_15,q_a_14,q_a_13,q_a_12,q_a_11,q_a_10,q_a_9,q_a_8,q_a_7,q_a_6,q_a_5,q_a_4,q_a_3,q_a_2,q_a_1,q_a_0}),
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.clock0(clk_clk));

LDPCencode_altsyncram_4 ROM_PARITY_3(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_293,q_a_283,q_a_273,q_a_263,q_a_253,q_a_243,q_a_233,q_a_223,q_a_215,q_a_203,q_a_193,q_a_183,q_a_173,q_a_163,q_a_153,q_a_143,q_a_133,q_a_123,q_a_115,q_a_103,q_a_93,q_a_83,q_a_73,q_a_63,q_a_53,q_a_43,q_a_33,q_a_214,q_a_114,q_a_03}),
	.clock0(clk_clk));

LDPCencode_altsyncram_3 ROM_PARITY_2(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_292,q_a_282,q_a_272,q_a_262,q_a_252,q_a_242,q_a_232,q_a_222,q_a_213,q_a_202,q_a_192,q_a_182,q_a_172,q_a_162,q_a_152,q_a_142,q_a_132,q_a_122,q_a_113,q_a_102,q_a_92,q_a_82,q_a_72,q_a_62,q_a_52,q_a_42,q_a_32,q_a_212,q_a_112,q_a_02}),
	.clock0(clk_clk));

LDPCencode_altsyncram_2 ROM_PARITY_1(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_291,q_a_281,q_a_271,q_a_261,q_a_251,q_a_241,q_a_231,q_a_221,q_a_211,q_a_201,q_a_191,q_a_181,q_a_171,q_a_161,q_a_151,q_a_141,q_a_131,q_a_121,q_a_111,q_a_101,q_a_91,q_a_81,q_a_71,q_a_61,q_a_51,q_a_41,q_a_31,q_a_210,q_a_110,q_a_01}),
	.clock0(clk_clk));

LDPCencode_altsyncram_8 ROM_PARITY_7(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_297,q_a_287,q_a_277,q_a_267,q_a_257,q_a_247,q_a_237,q_a_228,q_a_2111,q_a_207,q_a_197,q_a_187,q_a_177,q_a_167,q_a_157,q_a_147,q_a_137,q_a_128,q_a_1111,q_a_107,q_a_97,q_a_87,q_a_77,q_a_67,q_a_57,q_a_47,q_a_37,q_a_227,q_a_127,q_a_07}),
	.clock0(clk_clk));

LDPCencode_altsyncram_7 ROM_PARITY_6(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_296,q_a_286,q_a_276,q_a_266,q_a_256,q_a_246,q_a_236,q_a_226,q_a_2110,q_a_206,q_a_196,q_a_186,q_a_176,q_a_166,q_a_156,q_a_146,q_a_136,q_a_126,q_a_1110,q_a_106,q_a_96,q_a_86,q_a_76,q_a_66,q_a_56,q_a_46,q_a_36,q_a_220,q_a_120,q_a_06}),
	.clock0(clk_clk));

LDPCencode_altsyncram_6 ROM_PARITY_5(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_295,q_a_285,q_a_275,q_a_265,q_a_255,q_a_245,q_a_235,q_a_225,q_a_219,q_a_205,q_a_195,q_a_185,q_a_175,q_a_165,q_a_155,q_a_145,q_a_135,q_a_125,q_a_119,q_a_105,q_a_95,q_a_85,q_a_75,q_a_65,q_a_55,q_a_45,q_a_35,q_a_218,q_a_118,q_a_05}),
	.clock0(clk_clk));

LDPCencode_altsyncram_5 ROM_PARITY_4(
	.address_a({counter_group_4,counter_group_3,counter_group_2,counter_group_1,counter_group_0}),
	.q_a({q_a_294,q_a_284,q_a_274,q_a_264,q_a_254,q_a_244,q_a_234,q_a_224,q_a_217,q_a_204,q_a_194,q_a_184,q_a_174,q_a_164,q_a_154,q_a_144,q_a_134,q_a_124,q_a_117,q_a_104,q_a_94,q_a_84,q_a_74,q_a_64,q_a_54,q_a_44,q_a_34,q_a_216,q_a_116,q_a_04}),
	.clock0(clk_clk));

endmodule

module LDPCencode_altsyncram_1 (
	q_a,
	address_a,
	clock0)/* synthesis synthesis_greybox=1 */;
output 	[29:0] q_a;
input 	[4:0] address_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_jqg1 auto_generated(
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_jqg1 (
	q_a,
	address_a,
	clock0)/* synthesis synthesis_greybox=1 */;
output 	[29:0] q_a;
input 	[4:0] address_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00080002";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "19022400";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "03008400";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "00000020";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "04014020";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "B0001010";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00000000";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "40400000";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "64000000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00010801";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "00203008";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "00011118";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "40000004";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "10000800";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "10000006";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "00900500";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "03F40000";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "03200403";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "0004EB60";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "00000280";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "28004001";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "008A8000";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_0_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_0|altsyncram_jqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "00000004";

endmodule

module LDPCencode_altsyncram_2 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_kqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_kqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "00080002";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "19122400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "83008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "06014020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00000000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "00000020";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0001010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010A01";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "40400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00011918";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64000000";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10010808";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "00203008";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "50000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10000506";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "03200403";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "00300500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "00000280";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F40000";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8000";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "0804EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_1_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_1|altsyncram_kqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule

module LDPCencode_altsyncram_3 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_lqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_lqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "000A0040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "00080002";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "19122400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "83008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "07014020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00010000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "00000020";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0401010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010A81";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "20400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00011918";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64000000";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10010808";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "00203008";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "50000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00CC";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10000506";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "03200403";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "00300500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "00200280";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F4C820";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8000";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "0804EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_2_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_2|altsyncram_lqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule

module LDPCencode_altsyncram_4 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_mqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_mqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "000A0040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "00082002";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "19122400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "83008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "8C100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "07014020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000020";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00010000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "20001020";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0401010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00410A81";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "20400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00011918";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64000000";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10010808";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "00203008";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "50000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00CC";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10000506";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "03280403";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "01300500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "00200281";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F0C820";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8080";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "0804EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "00008004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_3_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_3|altsyncram_mqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004005";

endmodule

module LDPCencode_altsyncram_5 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_nqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_nqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "19080402";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80020010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "91022400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "03008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "0401C020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "04004020";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "10000030";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "F0001010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010801";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "44400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00001118";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64203008";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10001910";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "4020300C";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000804";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "40000002";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10900006";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "032004C3";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "02C40500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "03000682";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F42240";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8200";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "2004AB61";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "000A0004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_4_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_4|altsyncram_nqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule

module LDPCencode_altsyncram_6 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_oqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_oqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "18080402";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "91022400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "03008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "0401C020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00004000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "10000030";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0001010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010801";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "44400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00001118";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64201008";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10001900";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "4020300C";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000804";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "40000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10900006";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "032004C3";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "02840500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "03000682";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F42200";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8200";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "2004EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "000A0004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_5_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_5|altsyncram_oqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule

module LDPCencode_altsyncram_7 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_pqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_pqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "10080402";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "91022400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "03008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "04014020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00004000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "10000030";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0001010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010801";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "40400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00001118";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64200008";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10001900";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "40203008";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "40000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10900006";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "03200443";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "02840500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "00000682";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F40000";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8200";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "0004EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "00020004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_6_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_6|altsyncram_pqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule

module LDPCencode_altsyncram_8 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;



LDPCencode_altsyncram_qqg1 auto_generated(
	.address_a({address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.q_a({q_a[29],q_a[28],q_a[27],q_a[26],q_a[25],q_a[24],q_a[23],q_a[22],q_a[21],q_a[20],q_a[19],q_a[18],q_a[17],q_a[16],q_a[15],q_a[14],q_a[13],q_a[12],q_a[11],q_a[10],q_a[9],q_a[8],q_a[7],q_a[6],q_a[5],q_a[4],q_a[3],q_a[2],q_a[1],q_a[0]}),
	.clock0(clock0));

endmodule

module LDPCencode_altsyncram_qqg1 (
	address_a,
	q_a,
	clock0)/* synthesis synthesis_greybox=1 */;
input 	[4:0] address_a;
output 	[29:0] q_a;
input 	clock0;

wire gnd;
wire vcc;
wire unknown;

assign gnd = 1'b0;
assign vcc = 1'b1;
// unknown value (1'bx) is not needed for this tool. Default to 1'b0
assign unknown = 1'b0;


wire [143:0] ram_block1a0_PORTADATAOUT_bus;
wire [143:0] ram_block1a29_PORTADATAOUT_bus;
wire [143:0] ram_block1a1_PORTADATAOUT_bus;
wire [143:0] ram_block1a28_PORTADATAOUT_bus;
wire [143:0] ram_block1a2_PORTADATAOUT_bus;
wire [143:0] ram_block1a27_PORTADATAOUT_bus;
wire [143:0] ram_block1a3_PORTADATAOUT_bus;
wire [143:0] ram_block1a26_PORTADATAOUT_bus;
wire [143:0] ram_block1a4_PORTADATAOUT_bus;
wire [143:0] ram_block1a25_PORTADATAOUT_bus;
wire [143:0] ram_block1a5_PORTADATAOUT_bus;
wire [143:0] ram_block1a24_PORTADATAOUT_bus;
wire [143:0] ram_block1a6_PORTADATAOUT_bus;
wire [143:0] ram_block1a23_PORTADATAOUT_bus;
wire [143:0] ram_block1a7_PORTADATAOUT_bus;
wire [143:0] ram_block1a22_PORTADATAOUT_bus;
wire [143:0] ram_block1a8_PORTADATAOUT_bus;
wire [143:0] ram_block1a21_PORTADATAOUT_bus;
wire [143:0] ram_block1a9_PORTADATAOUT_bus;
wire [143:0] ram_block1a20_PORTADATAOUT_bus;
wire [143:0] ram_block1a10_PORTADATAOUT_bus;
wire [143:0] ram_block1a19_PORTADATAOUT_bus;
wire [143:0] ram_block1a11_PORTADATAOUT_bus;
wire [143:0] ram_block1a18_PORTADATAOUT_bus;
wire [143:0] ram_block1a12_PORTADATAOUT_bus;
wire [143:0] ram_block1a17_PORTADATAOUT_bus;
wire [143:0] ram_block1a13_PORTADATAOUT_bus;
wire [143:0] ram_block1a16_PORTADATAOUT_bus;
wire [143:0] ram_block1a14_PORTADATAOUT_bus;
wire [143:0] ram_block1a15_PORTADATAOUT_bus;

assign q_a[0] = ram_block1a0_PORTADATAOUT_bus[0];

assign q_a[29] = ram_block1a29_PORTADATAOUT_bus[0];

assign q_a[1] = ram_block1a1_PORTADATAOUT_bus[0];

assign q_a[28] = ram_block1a28_PORTADATAOUT_bus[0];

assign q_a[2] = ram_block1a2_PORTADATAOUT_bus[0];

assign q_a[27] = ram_block1a27_PORTADATAOUT_bus[0];

assign q_a[3] = ram_block1a3_PORTADATAOUT_bus[0];

assign q_a[26] = ram_block1a26_PORTADATAOUT_bus[0];

assign q_a[4] = ram_block1a4_PORTADATAOUT_bus[0];

assign q_a[25] = ram_block1a25_PORTADATAOUT_bus[0];

assign q_a[5] = ram_block1a5_PORTADATAOUT_bus[0];

assign q_a[24] = ram_block1a24_PORTADATAOUT_bus[0];

assign q_a[6] = ram_block1a6_PORTADATAOUT_bus[0];

assign q_a[23] = ram_block1a23_PORTADATAOUT_bus[0];

assign q_a[7] = ram_block1a7_PORTADATAOUT_bus[0];

assign q_a[22] = ram_block1a22_PORTADATAOUT_bus[0];

assign q_a[8] = ram_block1a8_PORTADATAOUT_bus[0];

assign q_a[21] = ram_block1a21_PORTADATAOUT_bus[0];

assign q_a[9] = ram_block1a9_PORTADATAOUT_bus[0];

assign q_a[20] = ram_block1a20_PORTADATAOUT_bus[0];

assign q_a[10] = ram_block1a10_PORTADATAOUT_bus[0];

assign q_a[19] = ram_block1a19_PORTADATAOUT_bus[0];

assign q_a[11] = ram_block1a11_PORTADATAOUT_bus[0];

assign q_a[18] = ram_block1a18_PORTADATAOUT_bus[0];

assign q_a[12] = ram_block1a12_PORTADATAOUT_bus[0];

assign q_a[17] = ram_block1a17_PORTADATAOUT_bus[0];

assign q_a[13] = ram_block1a13_PORTADATAOUT_bus[0];

assign q_a[16] = ram_block1a16_PORTADATAOUT_bus[0];

assign q_a[14] = ram_block1a14_PORTADATAOUT_bus[0];

assign q_a[15] = ram_block1a15_PORTADATAOUT_bus[0];

cyclonev_ram_block ram_block1a0(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a0_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a0.data_interleave_offset_in_bits = 1;
defparam ram_block1a0.data_interleave_width_in_bits = 1;
defparam ram_block1a0.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a0.init_file_layout = "port_a";
defparam ram_block1a0.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a0.operation_mode = "rom";
defparam ram_block1a0.port_a_address_clear = "none";
defparam ram_block1a0.port_a_address_width = 5;
defparam ram_block1a0.port_a_data_out_clear = "none";
defparam ram_block1a0.port_a_data_out_clock = "clock0";
defparam ram_block1a0.port_a_data_width = 1;
defparam ram_block1a0.port_a_first_address = 0;
defparam ram_block1a0.port_a_first_bit_number = 0;
defparam ram_block1a0.port_a_last_address = 31;
defparam ram_block1a0.port_a_logical_ram_depth = 32;
defparam ram_block1a0.port_a_logical_ram_width = 30;
defparam ram_block1a0.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a0.ram_block_type = "auto";
defparam ram_block1a0.mem_init0 = "00020040";

cyclonev_ram_block ram_block1a29(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a29_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a29.data_interleave_offset_in_bits = 1;
defparam ram_block1a29.data_interleave_width_in_bits = 1;
defparam ram_block1a29.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a29.init_file_layout = "port_a";
defparam ram_block1a29.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a29.operation_mode = "rom";
defparam ram_block1a29.port_a_address_clear = "none";
defparam ram_block1a29.port_a_address_width = 5;
defparam ram_block1a29.port_a_data_out_clear = "none";
defparam ram_block1a29.port_a_data_out_clock = "clock0";
defparam ram_block1a29.port_a_data_width = 1;
defparam ram_block1a29.port_a_first_address = 0;
defparam ram_block1a29.port_a_first_bit_number = 29;
defparam ram_block1a29.port_a_last_address = 31;
defparam ram_block1a29.port_a_logical_ram_depth = 32;
defparam ram_block1a29.port_a_logical_ram_width = 30;
defparam ram_block1a29.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a29.ram_block_type = "auto";
defparam ram_block1a29.mem_init0 = "00080002";

cyclonev_ram_block ram_block1a1(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a1_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a1.data_interleave_offset_in_bits = 1;
defparam ram_block1a1.data_interleave_width_in_bits = 1;
defparam ram_block1a1.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a1.init_file_layout = "port_a";
defparam ram_block1a1.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a1.operation_mode = "rom";
defparam ram_block1a1.port_a_address_clear = "none";
defparam ram_block1a1.port_a_address_width = 5;
defparam ram_block1a1.port_a_data_out_clear = "none";
defparam ram_block1a1.port_a_data_out_clock = "clock0";
defparam ram_block1a1.port_a_data_width = 1;
defparam ram_block1a1.port_a_first_address = 0;
defparam ram_block1a1.port_a_first_bit_number = 1;
defparam ram_block1a1.port_a_last_address = 31;
defparam ram_block1a1.port_a_logical_ram_depth = 32;
defparam ram_block1a1.port_a_logical_ram_width = 30;
defparam ram_block1a1.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a1.ram_block_type = "auto";
defparam ram_block1a1.mem_init0 = "80000010";

cyclonev_ram_block ram_block1a28(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a28_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a28.data_interleave_offset_in_bits = 1;
defparam ram_block1a28.data_interleave_width_in_bits = 1;
defparam ram_block1a28.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a28.init_file_layout = "port_a";
defparam ram_block1a28.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a28.operation_mode = "rom";
defparam ram_block1a28.port_a_address_clear = "none";
defparam ram_block1a28.port_a_address_width = 5;
defparam ram_block1a28.port_a_data_out_clear = "none";
defparam ram_block1a28.port_a_data_out_clock = "clock0";
defparam ram_block1a28.port_a_data_width = 1;
defparam ram_block1a28.port_a_first_address = 0;
defparam ram_block1a28.port_a_first_bit_number = 28;
defparam ram_block1a28.port_a_last_address = 31;
defparam ram_block1a28.port_a_logical_ram_depth = 32;
defparam ram_block1a28.port_a_logical_ram_width = 30;
defparam ram_block1a28.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a28.ram_block_type = "auto";
defparam ram_block1a28.mem_init0 = "19022400";

cyclonev_ram_block ram_block1a2(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a2_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a2.data_interleave_offset_in_bits = 1;
defparam ram_block1a2.data_interleave_width_in_bits = 1;
defparam ram_block1a2.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a2.init_file_layout = "port_a";
defparam ram_block1a2.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a2.operation_mode = "rom";
defparam ram_block1a2.port_a_address_clear = "none";
defparam ram_block1a2.port_a_address_width = 5;
defparam ram_block1a2.port_a_data_out_clear = "none";
defparam ram_block1a2.port_a_data_out_clock = "clock0";
defparam ram_block1a2.port_a_data_width = 1;
defparam ram_block1a2.port_a_first_address = 0;
defparam ram_block1a2.port_a_first_bit_number = 2;
defparam ram_block1a2.port_a_last_address = 31;
defparam ram_block1a2.port_a_logical_ram_depth = 32;
defparam ram_block1a2.port_a_logical_ram_width = 30;
defparam ram_block1a2.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a2.ram_block_type = "auto";
defparam ram_block1a2.mem_init0 = "03008400";

cyclonev_ram_block ram_block1a27(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a27_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a27.data_interleave_offset_in_bits = 1;
defparam ram_block1a27.data_interleave_width_in_bits = 1;
defparam ram_block1a27.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a27.init_file_layout = "port_a";
defparam ram_block1a27.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a27.operation_mode = "rom";
defparam ram_block1a27.port_a_address_clear = "none";
defparam ram_block1a27.port_a_address_width = 5;
defparam ram_block1a27.port_a_data_out_clear = "none";
defparam ram_block1a27.port_a_data_out_clock = "clock0";
defparam ram_block1a27.port_a_data_width = 1;
defparam ram_block1a27.port_a_first_address = 0;
defparam ram_block1a27.port_a_first_bit_number = 27;
defparam ram_block1a27.port_a_last_address = 31;
defparam ram_block1a27.port_a_logical_ram_depth = 32;
defparam ram_block1a27.port_a_logical_ram_width = 30;
defparam ram_block1a27.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a27.ram_block_type = "auto";
defparam ram_block1a27.mem_init0 = "88100000";

cyclonev_ram_block ram_block1a3(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a3_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a3.data_interleave_offset_in_bits = 1;
defparam ram_block1a3.data_interleave_width_in_bits = 1;
defparam ram_block1a3.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a3.init_file_layout = "port_a";
defparam ram_block1a3.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a3.operation_mode = "rom";
defparam ram_block1a3.port_a_address_clear = "none";
defparam ram_block1a3.port_a_address_width = 5;
defparam ram_block1a3.port_a_data_out_clear = "none";
defparam ram_block1a3.port_a_data_out_clock = "clock0";
defparam ram_block1a3.port_a_data_width = 1;
defparam ram_block1a3.port_a_first_address = 0;
defparam ram_block1a3.port_a_first_bit_number = 3;
defparam ram_block1a3.port_a_last_address = 31;
defparam ram_block1a3.port_a_logical_ram_depth = 32;
defparam ram_block1a3.port_a_logical_ram_width = 30;
defparam ram_block1a3.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a3.ram_block_type = "auto";
defparam ram_block1a3.mem_init0 = "04014020";

cyclonev_ram_block ram_block1a26(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a26_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a26.data_interleave_offset_in_bits = 1;
defparam ram_block1a26.data_interleave_width_in_bits = 1;
defparam ram_block1a26.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a26.init_file_layout = "port_a";
defparam ram_block1a26.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a26.operation_mode = "rom";
defparam ram_block1a26.port_a_address_clear = "none";
defparam ram_block1a26.port_a_address_width = 5;
defparam ram_block1a26.port_a_data_out_clear = "none";
defparam ram_block1a26.port_a_data_out_clock = "clock0";
defparam ram_block1a26.port_a_data_width = 1;
defparam ram_block1a26.port_a_first_address = 0;
defparam ram_block1a26.port_a_first_bit_number = 26;
defparam ram_block1a26.port_a_last_address = 31;
defparam ram_block1a26.port_a_logical_ram_depth = 32;
defparam ram_block1a26.port_a_logical_ram_width = 30;
defparam ram_block1a26.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a26.ram_block_type = "auto";
defparam ram_block1a26.mem_init0 = "04000000";

cyclonev_ram_block ram_block1a4(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a4_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a4.data_interleave_offset_in_bits = 1;
defparam ram_block1a4.data_interleave_width_in_bits = 1;
defparam ram_block1a4.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a4.init_file_layout = "port_a";
defparam ram_block1a4.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a4.operation_mode = "rom";
defparam ram_block1a4.port_a_address_clear = "none";
defparam ram_block1a4.port_a_address_width = 5;
defparam ram_block1a4.port_a_data_out_clear = "none";
defparam ram_block1a4.port_a_data_out_clock = "clock0";
defparam ram_block1a4.port_a_data_width = 1;
defparam ram_block1a4.port_a_first_address = 0;
defparam ram_block1a4.port_a_first_bit_number = 4;
defparam ram_block1a4.port_a_last_address = 31;
defparam ram_block1a4.port_a_logical_ram_depth = 32;
defparam ram_block1a4.port_a_logical_ram_width = 30;
defparam ram_block1a4.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a4.ram_block_type = "auto";
defparam ram_block1a4.mem_init0 = "00004000";

cyclonev_ram_block ram_block1a25(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a25_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a25.data_interleave_offset_in_bits = 1;
defparam ram_block1a25.data_interleave_width_in_bits = 1;
defparam ram_block1a25.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a25.init_file_layout = "port_a";
defparam ram_block1a25.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a25.operation_mode = "rom";
defparam ram_block1a25.port_a_address_clear = "none";
defparam ram_block1a25.port_a_address_width = 5;
defparam ram_block1a25.port_a_data_out_clear = "none";
defparam ram_block1a25.port_a_data_out_clock = "clock0";
defparam ram_block1a25.port_a_data_width = 1;
defparam ram_block1a25.port_a_first_address = 0;
defparam ram_block1a25.port_a_first_bit_number = 25;
defparam ram_block1a25.port_a_last_address = 31;
defparam ram_block1a25.port_a_logical_ram_depth = 32;
defparam ram_block1a25.port_a_logical_ram_width = 30;
defparam ram_block1a25.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a25.ram_block_type = "auto";
defparam ram_block1a25.mem_init0 = "10000030";

cyclonev_ram_block ram_block1a5(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a5_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a5.data_interleave_offset_in_bits = 1;
defparam ram_block1a5.data_interleave_width_in_bits = 1;
defparam ram_block1a5.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a5.init_file_layout = "port_a";
defparam ram_block1a5.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a5.operation_mode = "rom";
defparam ram_block1a5.port_a_address_clear = "none";
defparam ram_block1a5.port_a_address_width = 5;
defparam ram_block1a5.port_a_data_out_clear = "none";
defparam ram_block1a5.port_a_data_out_clock = "clock0";
defparam ram_block1a5.port_a_data_width = 1;
defparam ram_block1a5.port_a_first_address = 0;
defparam ram_block1a5.port_a_first_bit_number = 5;
defparam ram_block1a5.port_a_last_address = 31;
defparam ram_block1a5.port_a_logical_ram_depth = 32;
defparam ram_block1a5.port_a_logical_ram_width = 30;
defparam ram_block1a5.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a5.ram_block_type = "auto";
defparam ram_block1a5.mem_init0 = "00400280";

cyclonev_ram_block ram_block1a24(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a24_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a24.data_interleave_offset_in_bits = 1;
defparam ram_block1a24.data_interleave_width_in_bits = 1;
defparam ram_block1a24.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a24.init_file_layout = "port_a";
defparam ram_block1a24.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a24.operation_mode = "rom";
defparam ram_block1a24.port_a_address_clear = "none";
defparam ram_block1a24.port_a_address_width = 5;
defparam ram_block1a24.port_a_data_out_clear = "none";
defparam ram_block1a24.port_a_data_out_clock = "clock0";
defparam ram_block1a24.port_a_data_width = 1;
defparam ram_block1a24.port_a_first_address = 0;
defparam ram_block1a24.port_a_first_bit_number = 24;
defparam ram_block1a24.port_a_last_address = 31;
defparam ram_block1a24.port_a_logical_ram_depth = 32;
defparam ram_block1a24.port_a_logical_ram_width = 30;
defparam ram_block1a24.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a24.ram_block_type = "auto";
defparam ram_block1a24.mem_init0 = "B0001010";

cyclonev_ram_block ram_block1a6(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a6_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a6.data_interleave_offset_in_bits = 1;
defparam ram_block1a6.data_interleave_width_in_bits = 1;
defparam ram_block1a6.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a6.init_file_layout = "port_a";
defparam ram_block1a6.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a6.operation_mode = "rom";
defparam ram_block1a6.port_a_address_clear = "none";
defparam ram_block1a6.port_a_address_width = 5;
defparam ram_block1a6.port_a_data_out_clear = "none";
defparam ram_block1a6.port_a_data_out_clock = "clock0";
defparam ram_block1a6.port_a_data_width = 1;
defparam ram_block1a6.port_a_first_address = 0;
defparam ram_block1a6.port_a_first_bit_number = 6;
defparam ram_block1a6.port_a_last_address = 31;
defparam ram_block1a6.port_a_logical_ram_depth = 32;
defparam ram_block1a6.port_a_logical_ram_width = 30;
defparam ram_block1a6.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a6.ram_block_type = "auto";
defparam ram_block1a6.mem_init0 = "00010801";

cyclonev_ram_block ram_block1a23(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a23_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a23.data_interleave_offset_in_bits = 1;
defparam ram_block1a23.data_interleave_width_in_bits = 1;
defparam ram_block1a23.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a23.init_file_layout = "port_a";
defparam ram_block1a23.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a23.operation_mode = "rom";
defparam ram_block1a23.port_a_address_clear = "none";
defparam ram_block1a23.port_a_address_width = 5;
defparam ram_block1a23.port_a_data_out_clear = "none";
defparam ram_block1a23.port_a_data_out_clock = "clock0";
defparam ram_block1a23.port_a_data_width = 1;
defparam ram_block1a23.port_a_first_address = 0;
defparam ram_block1a23.port_a_first_bit_number = 23;
defparam ram_block1a23.port_a_last_address = 31;
defparam ram_block1a23.port_a_logical_ram_depth = 32;
defparam ram_block1a23.port_a_logical_ram_width = 30;
defparam ram_block1a23.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a23.ram_block_type = "auto";
defparam ram_block1a23.mem_init0 = "40400000";

cyclonev_ram_block ram_block1a7(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a7_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a7.data_interleave_offset_in_bits = 1;
defparam ram_block1a7.data_interleave_width_in_bits = 1;
defparam ram_block1a7.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a7.init_file_layout = "port_a";
defparam ram_block1a7.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a7.operation_mode = "rom";
defparam ram_block1a7.port_a_address_clear = "none";
defparam ram_block1a7.port_a_address_width = 5;
defparam ram_block1a7.port_a_data_out_clear = "none";
defparam ram_block1a7.port_a_data_out_clock = "clock0";
defparam ram_block1a7.port_a_data_width = 1;
defparam ram_block1a7.port_a_first_address = 0;
defparam ram_block1a7.port_a_first_bit_number = 7;
defparam ram_block1a7.port_a_last_address = 31;
defparam ram_block1a7.port_a_logical_ram_depth = 32;
defparam ram_block1a7.port_a_logical_ram_width = 30;
defparam ram_block1a7.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a7.ram_block_type = "auto";
defparam ram_block1a7.mem_init0 = "00001118";

cyclonev_ram_block ram_block1a22(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a22_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a22.data_interleave_offset_in_bits = 1;
defparam ram_block1a22.data_interleave_width_in_bits = 1;
defparam ram_block1a22.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a22.init_file_layout = "port_a";
defparam ram_block1a22.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a22.operation_mode = "rom";
defparam ram_block1a22.port_a_address_clear = "none";
defparam ram_block1a22.port_a_address_width = 5;
defparam ram_block1a22.port_a_data_out_clear = "none";
defparam ram_block1a22.port_a_data_out_clock = "clock0";
defparam ram_block1a22.port_a_data_width = 1;
defparam ram_block1a22.port_a_first_address = 0;
defparam ram_block1a22.port_a_first_bit_number = 22;
defparam ram_block1a22.port_a_last_address = 31;
defparam ram_block1a22.port_a_logical_ram_depth = 32;
defparam ram_block1a22.port_a_logical_ram_width = 30;
defparam ram_block1a22.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a22.ram_block_type = "auto";
defparam ram_block1a22.mem_init0 = "64200008";

cyclonev_ram_block ram_block1a8(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a8_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a8.data_interleave_offset_in_bits = 1;
defparam ram_block1a8.data_interleave_width_in_bits = 1;
defparam ram_block1a8.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a8.init_file_layout = "port_a";
defparam ram_block1a8.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a8.operation_mode = "rom";
defparam ram_block1a8.port_a_address_clear = "none";
defparam ram_block1a8.port_a_address_width = 5;
defparam ram_block1a8.port_a_data_out_clear = "none";
defparam ram_block1a8.port_a_data_out_clock = "clock0";
defparam ram_block1a8.port_a_data_width = 1;
defparam ram_block1a8.port_a_first_address = 0;
defparam ram_block1a8.port_a_first_bit_number = 8;
defparam ram_block1a8.port_a_last_address = 31;
defparam ram_block1a8.port_a_logical_ram_depth = 32;
defparam ram_block1a8.port_a_logical_ram_width = 30;
defparam ram_block1a8.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a8.ram_block_type = "auto";
defparam ram_block1a8.mem_init0 = "10000800";

cyclonev_ram_block ram_block1a21(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a21_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a21.data_interleave_offset_in_bits = 1;
defparam ram_block1a21.data_interleave_width_in_bits = 1;
defparam ram_block1a21.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a21.init_file_layout = "port_a";
defparam ram_block1a21.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a21.operation_mode = "rom";
defparam ram_block1a21.port_a_address_clear = "none";
defparam ram_block1a21.port_a_address_width = 5;
defparam ram_block1a21.port_a_data_out_clear = "none";
defparam ram_block1a21.port_a_data_out_clock = "clock0";
defparam ram_block1a21.port_a_data_width = 1;
defparam ram_block1a21.port_a_first_address = 0;
defparam ram_block1a21.port_a_first_bit_number = 21;
defparam ram_block1a21.port_a_last_address = 31;
defparam ram_block1a21.port_a_logical_ram_depth = 32;
defparam ram_block1a21.port_a_logical_ram_width = 30;
defparam ram_block1a21.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a21.ram_block_type = "auto";
defparam ram_block1a21.mem_init0 = "40203008";

cyclonev_ram_block ram_block1a9(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a9_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a9.data_interleave_offset_in_bits = 1;
defparam ram_block1a9.data_interleave_width_in_bits = 1;
defparam ram_block1a9.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a9.init_file_layout = "port_a";
defparam ram_block1a9.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a9.operation_mode = "rom";
defparam ram_block1a9.port_a_address_clear = "none";
defparam ram_block1a9.port_a_address_width = 5;
defparam ram_block1a9.port_a_data_out_clear = "none";
defparam ram_block1a9.port_a_data_out_clock = "clock0";
defparam ram_block1a9.port_a_data_width = 1;
defparam ram_block1a9.port_a_first_address = 0;
defparam ram_block1a9.port_a_first_bit_number = 9;
defparam ram_block1a9.port_a_last_address = 31;
defparam ram_block1a9.port_a_logical_ram_depth = 32;
defparam ram_block1a9.port_a_logical_ram_width = 30;
defparam ram_block1a9.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a9.ram_block_type = "auto";
defparam ram_block1a9.mem_init0 = "00000004";

cyclonev_ram_block ram_block1a20(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a20_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a20.data_interleave_offset_in_bits = 1;
defparam ram_block1a20.data_interleave_width_in_bits = 1;
defparam ram_block1a20.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a20.init_file_layout = "port_a";
defparam ram_block1a20.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a20.operation_mode = "rom";
defparam ram_block1a20.port_a_address_clear = "none";
defparam ram_block1a20.port_a_address_width = 5;
defparam ram_block1a20.port_a_data_out_clear = "none";
defparam ram_block1a20.port_a_data_out_clock = "clock0";
defparam ram_block1a20.port_a_data_width = 1;
defparam ram_block1a20.port_a_first_address = 0;
defparam ram_block1a20.port_a_first_bit_number = 20;
defparam ram_block1a20.port_a_last_address = 31;
defparam ram_block1a20.port_a_logical_ram_depth = 32;
defparam ram_block1a20.port_a_logical_ram_width = 30;
defparam ram_block1a20.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a20.ram_block_type = "auto";
defparam ram_block1a20.mem_init0 = "40000004";

cyclonev_ram_block ram_block1a10(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a10_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a10.data_interleave_offset_in_bits = 1;
defparam ram_block1a10.data_interleave_width_in_bits = 1;
defparam ram_block1a10.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a10.init_file_layout = "port_a";
defparam ram_block1a10.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a10.operation_mode = "rom";
defparam ram_block1a10.port_a_address_clear = "none";
defparam ram_block1a10.port_a_address_width = 5;
defparam ram_block1a10.port_a_data_out_clear = "none";
defparam ram_block1a10.port_a_data_out_clock = "clock0";
defparam ram_block1a10.port_a_data_width = 1;
defparam ram_block1a10.port_a_first_address = 0;
defparam ram_block1a10.port_a_first_bit_number = 10;
defparam ram_block1a10.port_a_last_address = 31;
defparam ram_block1a10.port_a_logical_ram_depth = 32;
defparam ram_block1a10.port_a_logical_ram_width = 30;
defparam ram_block1a10.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a10.ram_block_type = "auto";
defparam ram_block1a10.mem_init0 = "000C00C8";

cyclonev_ram_block ram_block1a19(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a19_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a19.data_interleave_offset_in_bits = 1;
defparam ram_block1a19.data_interleave_width_in_bits = 1;
defparam ram_block1a19.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a19.init_file_layout = "port_a";
defparam ram_block1a19.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a19.operation_mode = "rom";
defparam ram_block1a19.port_a_address_clear = "none";
defparam ram_block1a19.port_a_address_width = 5;
defparam ram_block1a19.port_a_data_out_clear = "none";
defparam ram_block1a19.port_a_data_out_clock = "clock0";
defparam ram_block1a19.port_a_data_width = 1;
defparam ram_block1a19.port_a_first_address = 0;
defparam ram_block1a19.port_a_first_bit_number = 19;
defparam ram_block1a19.port_a_last_address = 31;
defparam ram_block1a19.port_a_logical_ram_depth = 32;
defparam ram_block1a19.port_a_logical_ram_width = 30;
defparam ram_block1a19.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a19.ram_block_type = "auto";
defparam ram_block1a19.mem_init0 = "10900006";

cyclonev_ram_block ram_block1a11(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a11_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a11.data_interleave_offset_in_bits = 1;
defparam ram_block1a11.data_interleave_width_in_bits = 1;
defparam ram_block1a11.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a11.init_file_layout = "port_a";
defparam ram_block1a11.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a11.operation_mode = "rom";
defparam ram_block1a11.port_a_address_clear = "none";
defparam ram_block1a11.port_a_address_width = 5;
defparam ram_block1a11.port_a_data_out_clear = "none";
defparam ram_block1a11.port_a_data_out_clock = "clock0";
defparam ram_block1a11.port_a_data_width = 1;
defparam ram_block1a11.port_a_first_address = 0;
defparam ram_block1a11.port_a_first_bit_number = 11;
defparam ram_block1a11.port_a_last_address = 31;
defparam ram_block1a11.port_a_logical_ram_depth = 32;
defparam ram_block1a11.port_a_logical_ram_width = 30;
defparam ram_block1a11.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a11.ram_block_type = "auto";
defparam ram_block1a11.mem_init0 = "03200443";

cyclonev_ram_block ram_block1a18(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a18_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a18.data_interleave_offset_in_bits = 1;
defparam ram_block1a18.data_interleave_width_in_bits = 1;
defparam ram_block1a18.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a18.init_file_layout = "port_a";
defparam ram_block1a18.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a18.operation_mode = "rom";
defparam ram_block1a18.port_a_address_clear = "none";
defparam ram_block1a18.port_a_address_width = 5;
defparam ram_block1a18.port_a_data_out_clear = "none";
defparam ram_block1a18.port_a_data_out_clock = "clock0";
defparam ram_block1a18.port_a_data_width = 1;
defparam ram_block1a18.port_a_first_address = 0;
defparam ram_block1a18.port_a_first_bit_number = 18;
defparam ram_block1a18.port_a_last_address = 31;
defparam ram_block1a18.port_a_logical_ram_depth = 32;
defparam ram_block1a18.port_a_logical_ram_width = 30;
defparam ram_block1a18.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a18.ram_block_type = "auto";
defparam ram_block1a18.mem_init0 = "00900500";

cyclonev_ram_block ram_block1a12(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a12_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a12.data_interleave_offset_in_bits = 1;
defparam ram_block1a12.data_interleave_width_in_bits = 1;
defparam ram_block1a12.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a12.init_file_layout = "port_a";
defparam ram_block1a12.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a12.operation_mode = "rom";
defparam ram_block1a12.port_a_address_clear = "none";
defparam ram_block1a12.port_a_address_width = 5;
defparam ram_block1a12.port_a_data_out_clear = "none";
defparam ram_block1a12.port_a_data_out_clock = "clock0";
defparam ram_block1a12.port_a_data_width = 1;
defparam ram_block1a12.port_a_first_address = 0;
defparam ram_block1a12.port_a_first_bit_number = 12;
defparam ram_block1a12.port_a_last_address = 31;
defparam ram_block1a12.port_a_logical_ram_depth = 32;
defparam ram_block1a12.port_a_logical_ram_width = 30;
defparam ram_block1a12.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a12.ram_block_type = "auto";
defparam ram_block1a12.mem_init0 = "00000682";

cyclonev_ram_block ram_block1a17(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a17_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a17.data_interleave_offset_in_bits = 1;
defparam ram_block1a17.data_interleave_width_in_bits = 1;
defparam ram_block1a17.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a17.init_file_layout = "port_a";
defparam ram_block1a17.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a17.operation_mode = "rom";
defparam ram_block1a17.port_a_address_clear = "none";
defparam ram_block1a17.port_a_address_width = 5;
defparam ram_block1a17.port_a_data_out_clear = "none";
defparam ram_block1a17.port_a_data_out_clock = "clock0";
defparam ram_block1a17.port_a_data_width = 1;
defparam ram_block1a17.port_a_first_address = 0;
defparam ram_block1a17.port_a_first_bit_number = 17;
defparam ram_block1a17.port_a_last_address = 31;
defparam ram_block1a17.port_a_logical_ram_depth = 32;
defparam ram_block1a17.port_a_logical_ram_width = 30;
defparam ram_block1a17.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a17.ram_block_type = "auto";
defparam ram_block1a17.mem_init0 = "03F40000";

cyclonev_ram_block ram_block1a13(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a13_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a13.data_interleave_offset_in_bits = 1;
defparam ram_block1a13.data_interleave_width_in_bits = 1;
defparam ram_block1a13.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a13.init_file_layout = "port_a";
defparam ram_block1a13.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a13.operation_mode = "rom";
defparam ram_block1a13.port_a_address_clear = "none";
defparam ram_block1a13.port_a_address_width = 5;
defparam ram_block1a13.port_a_data_out_clear = "none";
defparam ram_block1a13.port_a_data_out_clock = "clock0";
defparam ram_block1a13.port_a_data_width = 1;
defparam ram_block1a13.port_a_first_address = 0;
defparam ram_block1a13.port_a_first_bit_number = 13;
defparam ram_block1a13.port_a_last_address = 31;
defparam ram_block1a13.port_a_logical_ram_depth = 32;
defparam ram_block1a13.port_a_logical_ram_width = 30;
defparam ram_block1a13.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a13.ram_block_type = "auto";
defparam ram_block1a13.mem_init0 = "008A8000";

cyclonev_ram_block ram_block1a16(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a16_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a16.data_interleave_offset_in_bits = 1;
defparam ram_block1a16.data_interleave_width_in_bits = 1;
defparam ram_block1a16.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a16.init_file_layout = "port_a";
defparam ram_block1a16.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a16.operation_mode = "rom";
defparam ram_block1a16.port_a_address_clear = "none";
defparam ram_block1a16.port_a_address_width = 5;
defparam ram_block1a16.port_a_data_out_clear = "none";
defparam ram_block1a16.port_a_data_out_clock = "clock0";
defparam ram_block1a16.port_a_data_width = 1;
defparam ram_block1a16.port_a_first_address = 0;
defparam ram_block1a16.port_a_first_bit_number = 16;
defparam ram_block1a16.port_a_last_address = 31;
defparam ram_block1a16.port_a_logical_ram_depth = 32;
defparam ram_block1a16.port_a_logical_ram_width = 30;
defparam ram_block1a16.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a16.ram_block_type = "auto";
defparam ram_block1a16.mem_init0 = "0004EB60";

cyclonev_ram_block ram_block1a14(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a14_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a14.data_interleave_offset_in_bits = 1;
defparam ram_block1a14.data_interleave_width_in_bits = 1;
defparam ram_block1a14.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a14.init_file_layout = "port_a";
defparam ram_block1a14.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a14.operation_mode = "rom";
defparam ram_block1a14.port_a_address_clear = "none";
defparam ram_block1a14.port_a_address_width = 5;
defparam ram_block1a14.port_a_data_out_clear = "none";
defparam ram_block1a14.port_a_data_out_clock = "clock0";
defparam ram_block1a14.port_a_data_width = 1;
defparam ram_block1a14.port_a_first_address = 0;
defparam ram_block1a14.port_a_first_bit_number = 14;
defparam ram_block1a14.port_a_last_address = 31;
defparam ram_block1a14.port_a_logical_ram_depth = 32;
defparam ram_block1a14.port_a_logical_ram_width = 30;
defparam ram_block1a14.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a14.ram_block_type = "auto";
defparam ram_block1a14.mem_init0 = "00020004";

cyclonev_ram_block ram_block1a15(
	.portawe(vcc),
	.portare(vcc),
	.portaaddrstall(gnd),
	.portbwe(gnd),
	.portbre(vcc),
	.portbaddrstall(gnd),
	.clk0(clock0),
	.clk1(gnd),
	.ena0(vcc),
	.ena1(vcc),
	.ena2(vcc),
	.ena3(vcc),
	.clr0(gnd),
	.clr1(gnd),
	.nerror(vcc),
	.portadatain(1'b0),
	.portaaddr({gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,gnd,address_a[4],address_a[3],address_a[2],address_a[1],address_a[0]}),
	.portabyteenamasks(1'b1),
	.portbdatain(1'b0),
	.portbaddr(1'b0),
	.portbbyteenamasks(1'b1),
	.portadataout(ram_block1a15_PORTADATAOUT_bus),
	.portbdataout(),
	.eccstatus(),
	.dftout());
defparam ram_block1a15.data_interleave_offset_in_bits = 1;
defparam ram_block1a15.data_interleave_width_in_bits = 1;
defparam ram_block1a15.init_file = "altera_ldpc_wimedia_enc_rom_7_data.hex";
defparam ram_block1a15.init_file_layout = "port_a";
defparam ram_block1a15.logical_ram_name = "LDPCencode_ldpc_0:ldpc_0|LDPCencode_ldpc_0_encoder:encoder|altera_ldpc_wimedia_enc:wimedia|altera_ldpc_wimedia_enc_ROMs:get_parity_ROM|altsyncram:ROM_PARITY_7|altsyncram_qqg1:auto_generated|ALTSYNCRAM";
defparam ram_block1a15.operation_mode = "rom";
defparam ram_block1a15.port_a_address_clear = "none";
defparam ram_block1a15.port_a_address_width = 5;
defparam ram_block1a15.port_a_data_out_clear = "none";
defparam ram_block1a15.port_a_data_out_clock = "clock0";
defparam ram_block1a15.port_a_data_width = 1;
defparam ram_block1a15.port_a_first_address = 0;
defparam ram_block1a15.port_a_first_bit_number = 15;
defparam ram_block1a15.port_a_last_address = 31;
defparam ram_block1a15.port_a_logical_ram_depth = 32;
defparam ram_block1a15.port_a_logical_ram_width = 30;
defparam ram_block1a15.port_a_read_during_write_mode = "new_data_no_nbe_read";
defparam ram_block1a15.ram_block_type = "auto";
defparam ram_block1a15.mem_init0 = "28004001";

endmodule
