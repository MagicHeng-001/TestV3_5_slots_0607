module LDPCdecodeV1 #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)(
	input clk,
	input rst_n,
	input valid_flag,
	input [7:0]data,
	output decode_valid_flag,
	output [31:0]buffer,
	output buffer_valid,
	output [7:0]dataout,
	output wire auto_ram_reset
);
    /* Parameter */
//    parameter  clk1x_freq = 100; //specified in 0.1KHz
//    localparam count1x_threshold = 480000/ clk1x_freq ; //default 480


reg valid_flag_reg;
wire valid_rise;
reg [1199:0]indatareg;
reg [10:0]addr;

reg [15: 0] clk1x_counter;
reg clk1x;

reg [7:0]dataout1;
reg [3:0]decode_valid_flag8;
reg decode_valid_flag1;

assign decode_valid_flag = decode_valid_flag8[3];
assign dataout = dataout1;

assign valid_rise = valid_flag & (~valid_flag_reg);

always@(posedge clk or negedge rst_n)begin
	if(~rst_n) {valid_flag_reg} <= {1'b0,1'b0};
		else {valid_flag_reg} <= {valid_flag};
end
always@(posedge clk or negedge rst_n)begin
	if(~rst_n) {clk1x_counter} <= {16'b0};
		else begin
		clk1x_counter <= (clk1x_counter === count1x_threshold -1) ? 0: clk1x_counter + 1'b1;
		end
end
/*
always@ (posedge clk or negedge rst_n) begin
  if(~rst_n) {addr, indatareg} <= {11'd0, 1200'd0};
  else begin
	  if(valid_rise && (addr <1200)) begin
				 //indatareg[addr:addr+7] <= data[7:0];
				 indatareg[addr] <= data[7];
				 indatareg[addr+1] <= data[6];
				 indatareg[addr+2] <= data[5];
				 indatareg[addr+3] <= data[4];
				 indatareg[addr+4] <= data[3];
				 indatareg[addr+5] <= data[2];
				 indatareg[addr+6] <= data[1];
				 indatareg[addr+7] <= data[0];
				 addr    <= addr + 8;
	  end
	  else  begin 
			addr <= (addr <1200)?addr:11'd0;
	  end
	  //indatareg <= (in_valid_down)?1200'd0:indatareg;
	end
end
*/
reg data_valid;
reg flag;
reg [15:0]cnt;
reg [1:0]state;
always@ (posedge clk or negedge rst_n) begin
  if(~rst_n) {data_valid, cnt, state, flag, addr, indatareg} <= 0;
  else begin
		case(state)
			0: begin
				if(valid_rise) begin
					state <= 1;
					 indatareg[0] <= data[7];
					 indatareg[1] <= data[6];
					 indatareg[2] <= data[5];
					 indatareg[3] <= data[4];
					 indatareg[4] <= data[3];
					 indatareg[5] <= data[2];
					 indatareg[6] <= data[1];
					 indatareg[7] <= data[0];
					 addr <= 8;
				end
			end
			1:begin
				if(cnt < 1230)
					cnt <= (clk1x_counter === count1x_threshold -1)? cnt + 1: cnt;
				else begin
					cnt <= 0;
					state <= 2;
				end
			   if(valid_rise && (addr <1200)) begin
				 //indatareg[addr:addr+7] <= data[7:0];
					 indatareg[addr] <= data[7];
					 indatareg[addr+1] <= data[6];
					 indatareg[addr+2] <= data[5];
					 indatareg[addr+3] <= data[4];
					 indatareg[addr+4] <= data[3];
					 indatareg[addr+5] <= data[2];
					 indatareg[addr+6] <= data[1];
					 indatareg[addr+7] <= data[0];
					 addr    <= addr + 8;
				end
			end
			2: begin
				addr <= 0;
				data_valid <= 1;
				if(cnt < 600)
				 cnt <= cnt +1;
				else begin
					//cnt <= 0;
					data_valid <= 0;
				end
			end
		endcase
	end
end


wire in_start;
wire in_end;
wire in_valid;
wire in_ready;
wire [1:0]in_data;
wire out_start;
wire out_end;
wire out_valid;
wire out_ready;
wire [1:0]out_data;

reg in_start_reg, in_valid_reg, in_end_reg;
reg [1:0] in_data_reg;
reg [15:0]count;

reg in_valid_reg2, in_start_reg2, in_end_reg2;
reg [15:0] out_end_reg;

assign in_valid = in_valid_reg2;
assign in_data = in_data_reg;
assign in_start = in_start_reg2;
assign in_end = in_end_reg2;

assign out_ready = 1'b1;
assign auto_ram_reset = ~out_end_reg[15];	 
always @(posedge clk or negedge rst_n) begin
	if(!rst_n) begin
		in_start_reg <= 0;
		in_data_reg <= 0;
		in_valid_reg <= 0;
		in_end_reg <= 0;
		count <= 16'd0;
	end
	else begin
		in_valid_reg <= data_valid;
		in_start_reg <=({data_valid, in_valid_reg} === 2'b10)? 1'b1:1'b0;
		in_data_reg <= (in_valid_reg)? {indatareg[(count<<1) + 1],indatareg[count<<1]}:{indatareg[1],indatareg[0]};
		
		in_valid_reg2 <= in_valid_reg; in_start_reg2 <= in_start_reg;
		in_end_reg2 <= in_end_reg;
//		in_end_reg <=({data_valid, in_valid_reg} === 2'b01)? 1'b1:1'b0;
		if(in_valid_reg)begin
			if(count === 16'd598)begin
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

	LDPCdecoder u1 (
		.clk_clk           (clk),           //   clk.clk
		.reset_reset_n     (rst_n && auto_ram_reset),     // reset.reset_n
		.in_startofpacket  (in_start),  //    in.startofpacket
		.in_endofpacket    (in_end),    //      .endofpacket
		.in_valid          (in_valid),          //      .valid
		.in_ready          (in_ready),          //      .ready
		.in_cw_in_data     ({in_data[1],2'b11,in_data[0],2'b11}),     //      .cw_in_data
		.out_startofpacket (out_start), //   out.startofpacket
		.out_endofpacket   (out_end),   //      .endofpacket
		.out_valid         (out_valid),         //      .valid
		.out_ready         (out_ready),         //      .ready
		.out_data          (out_data)           //      .data
	);

reg data_decode_reg;
reg [1:0]bitnum;
reg [7:0]data_reg;
always @(posedge clk or negedge rst_n) begin
	if(~rst_n){bitnum,decode_valid_flag1,data_reg,dataout1} <= 0;
	else begin

		if(out_valid)begin
			case(bitnum)
				0: begin
					dataout1 <= data_reg; decode_valid_flag1 <= 1;
					{data_reg[7:6], bitnum} <= {out_data[0], out_data[1],bitnum + 1'b1};	
				end
				1: begin
					decode_valid_flag1 <= 0;
					{data_reg[5:4], bitnum} <= {out_data[0], out_data[1], bitnum + 1'b1};
				end
				2: {data_reg[3:2], bitnum} <= {out_data[0], out_data[1], bitnum + 1'b1};
				3: {data_reg[1:0], bitnum} <= {out_data[0], out_data[1], bitnum + 1'b1};
				//default: {data_reg[7-bitnum], bitnum} <= {out_data, bitnum + 1'b1} ;
			endcase
		end
	end
end

reg [3:0]bit32num;
reg [31:0]buffer_reg,buffer1;
reg buffer_reg_valid;
reg [15:0]buffer_reg_valid16;

assign buffer_valid = buffer_reg_valid16[15];
assign buffer = buffer1;
always @(posedge clk or negedge rst_n) begin
	if(~rst_n){bit32num,buffer_reg_valid,buffer_reg,buffer1} <= 0;
	else begin

		if(out_valid)begin
			case(bit32num)
				0: begin
					buffer1 <= buffer_reg; buffer_reg_valid <= 1;
					{buffer_reg[7:6], bit32num} <= {out_data[0], out_data[1],bit32num + 1'b1};	
				end
				1: begin
					buffer_reg_valid <= 0;
					{buffer_reg[5:4], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				end
				2: {buffer_reg[3:2], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				3: {buffer_reg[1:0], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				
				4: {buffer_reg[15:14], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				5: {buffer_reg[13:12], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				6: {buffer_reg[11:10], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				7: {buffer_reg[9:8], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				
				8: {buffer_reg[23:22], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				9: {buffer_reg[21:20], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				10: {buffer_reg[19:18], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				11: {buffer_reg[17:16], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				
				12: {buffer_reg[31:30], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				13: {buffer_reg[29:28], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				14: {buffer_reg[27:26], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				15: {buffer_reg[25:24], bit32num} <= {out_data[0], out_data[1], bit32num + 1'b1};
				//default: {data_reg[7-bitnum], bitnum} <= {out_data, bitnum + 1'b1} ;
			endcase
		end
		else buffer1 <= buffer_reg; 
	end
end
//decode_valid_flag delay 8 clk

always @(posedge clk or negedge rst_n)begin
	if(~rst_n) begin 
		decode_valid_flag8 <= 4'd0; out_end_reg <= 0; buffer_reg_valid16 <= 0;
	end
	else begin
		decode_valid_flag8 <= {decode_valid_flag8[2],decode_valid_flag8[1],
			decode_valid_flag8[0],decode_valid_flag1};
		out_end_reg <= {out_end_reg[14:0], out_end};
		buffer_reg_valid16 <= {buffer_reg_valid16[14:0], buffer_reg_valid};
	end
end
endmodule
