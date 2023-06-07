module LDPCencoder (

	input wire clk,
	input wire rst_n,
	input wire data,
	input wire data_valid,
	output wire data_encode,
	output wire data_encode_valid,
	output reg [1199:0]datareg
);

wire in_start;
wire in_end;
wire in_valid;
wire in_ready;
wire in_data;
wire out_start;
wire out_end;
wire out_valid;
wire out_ready;
wire out_data;

reg in_start_reg, in_data_reg, in_valid_reg, in_end_reg;
reg [15:0]count,count1;



assign in_valid = in_valid_reg;
assign in_data = in_data_reg;
assign in_start = in_start_reg;
assign in_end = in_end_reg;
assign data_encode = out_data;
assign data_encode_valid = out_valid;
assign out_ready = 1'b1;

wire data_decode;
wire data_decode_valid;


always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in_start_reg <= 0;
		in_data_reg <= 0;
		in_valid_reg <= 0;
		in_end_reg <= 0;
		count <= 16'd0;
	end
	else begin
		in_data_reg <= data;
		in_valid_reg <= data_valid;
		in_start_reg <=({data_valid, in_valid_reg} === 2'b10)? 1'b1:1'b0;
//		in_end_reg <=({data_valid, in_valid_reg} === 2'b01)? 1'b1:1'b0;
		if(in_valid)begin
			if(count === 16'd958)begin
			 in_end_reg <= 1'b1;
			 count <= 16'd0;
			end
			else 
				count <= count + 16'd1;
			end
		else begin
			count <= 16'd0;
			in_end_reg <= 1'b0;
		end
	end
end




	LDPCencode u0 (
		.clk_clk           (clk),           //   clk.clk
		.reset_reset_n     (rst_n),     // reset.reset_n
		.in_startofpacket  (in_start),  //    in.startofpacket
		.in_endofpacket    (in_end),    //      .endofpacket
		.in_valid          (in_valid),          //      .valid
		.in_ready          (in_ready),          //      .ready
		.in_in_data        (in_data),        //      .in_data
		.out_startofpacket (out_start), //   out.startofpacket
		.out_endofpacket   (out_end),   //      .endofpacket
		.out_valid         (out_valid),         //      .valid
		.out_ready         (out_ready),         //      .ready
		.out_out_data      (out_data)       //      .out_data
	);

//reg [1199:0]datareg;
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		count1 <= 16'd0;
		datareg <= 1200'd0;
	end
	else begin
		if(out_valid)begin
			datareg[count1] <= out_data;
			count1 <= count1 + 1'd1;
		end
		else begin
			count1 <= 16'd0;
		end
	end
end
/*	

ldpc_decode u1(

	.clk(clk),
	.rst_n(rst_n),
	.data(out_data),
	.data_ready(data_ready),
	.data_valid(out_valid),
	.data_decode(data_decode),
	.data_decode_valid(data_decode_valid)
);
*/
endmodule