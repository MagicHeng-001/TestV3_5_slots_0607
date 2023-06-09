// LDPCencode_ldpc_0_encoder.v

// This file was auto-generated from altera_ldpc_enc_hw.tcl.  If you edit it your changes
// will probably be lost.
// 
// Generated using ACDS version 18.1 625

`timescale 1 ps / 1 ps
module LDPCencode_ldpc_0_encoder #(
		parameter CHANNEL       = 1,
		parameter BITSPERSYMBOL = 1,
		parameter N             = 1200,
		parameter NBCHECKGROUP  = 12,
		parameter NBVARGROUP    = 32
	) (
		input  wire       clk_clk,           // clk.clk
		input  wire       rst_reset_n,       // rst.reset_n
		input  wire       in_startofpacket,  //  in.startofpacket
		input  wire       in_endofpacket,    //    .endofpacket
		input  wire       in_valid,          //    .valid
		output wire       in_ready,          //    .ready
		input  wire [0:0] in_in_data,        //    .in_data
		output wire       out_startofpacket, // out.startofpacket
		output wire       out_endofpacket,   //    .endofpacket
		output wire       out_valid,         //    .valid
		input  wire       out_ready,         //    .ready
		output wire [0:0] out_out_data       //    .out_data
	);

	generate
		// If any of the display statements (or deliberately broken
		// instantiations) within this generate block triggers then this module
		// has been instantiated this module with a set of parameters different
		// from those it was generated for.  This will usually result in a
		// non-functioning system.
		if (CHANNEL != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					channel_check ( .error(1'b1) );
		end
		if (BITSPERSYMBOL != 1)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					bitspersymbol_check ( .error(1'b1) );
		end
		if (N != 1200)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					n_check ( .error(1'b1) );
		end
		if (NBCHECKGROUP != 12)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					nbcheckgroup_check ( .error(1'b1) );
		end
		if (NBVARGROUP != 32)
		begin
			initial begin
				$display("Generated module instantiated with wrong parameters");
				$stop;
			end
			instantiated_with_wrong_parameters_error_see_comment_above
					nbvargroup_check ( .error(1'b1) );
		end
	endgenerate

	altera_ldpc_wimedia_enc #(
		.CHANNEL       (1),
		.BITSPERSYMBOL (1),
		.N             (1200),
		.NBCHECKGROUP  (8),
		.NBVARGROUP    (32),
		.ISVARRATE     (0)
	) wimedia (
		.clk               (clk_clk),           // clk.clk
		.rst               (~rst_reset_n),      // rst.reset
		.in_startofpacket  (in_startofpacket),  //  in.startofpacket
		.in_endofpacket    (in_endofpacket),    //    .endofpacket
		.in_valid          (in_valid),          //    .valid
		.in_ready          (in_ready),          //    .ready
		.in_data           (in_in_data),        //    .in_data
		.out_startofpacket (out_startofpacket), // out.startofpacket
		.out_endofpacket   (out_endofpacket),   //    .endofpacket
		.out_valid         (out_valid),         //    .valid
		.out_ready         (out_ready),         //    .ready
		.out_data          (out_out_data),      //    .out_data
		.in_rate           (4'b0000)            // (terminated)
	);

endmodule
