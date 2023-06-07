
module LDPCdecoder (
	clk_clk,
	reset_reset_n,
	in_startofpacket,
	in_endofpacket,
	in_valid,
	in_ready,
	in_cw_in_data,
	out_startofpacket,
	out_endofpacket,
	out_valid,
	out_ready,
	out_data);	

	input		clk_clk;
	input		reset_reset_n;
	input		in_startofpacket;
	input		in_endofpacket;
	input		in_valid;
	output		in_ready;
	input	[5:0]	in_cw_in_data;
	output		out_startofpacket;
	output		out_endofpacket;
	output		out_valid;
	input		out_ready;
	output	[1:0]	out_data;
endmodule
