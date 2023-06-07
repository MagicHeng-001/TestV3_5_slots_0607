module testcounting
#(parameter bits_length = 249)
(
	input logic CLOCK_200m,
	input logic clk10m,
	input logic rst_n,
	input logic inputIO,
	output [6:0] num,
	output [12:0] num_sum
);

	logic IOreg;
	logic [5:0] cnt, cnt1/*synthesis noprune*/;
	logic [5:0] down_reg, rise_reg;
	logic [6:0] numreg;
	logic flag;
	logic [6: 0] num_reg[bits_length:0];
	logic [12:0] num_sum_reg;
	
	assign num = numreg;
	assign num_sum = num_sum_reg;
	
	integer i,j;
	always_ff@(posedge CLOCK_200m or negedge rst_n)begin
		if(~rst_n) begin
			IOreg <= 0; cnt <= 0; cnt1 <= 0;
		end
		else begin
			IOreg <= inputIO;
			cnt <= (flag)? ((IOreg)?cnt + 1: cnt): 0;
			cnt1 <= (~flag)? ((IOreg)? cnt1 + 1: cnt1):0;
		end
	end
  always_comb begin 
		  num_sum_reg = 0;
		  for (j = 0; j <= bits_length; j = j + 1) begin   
				num_sum_reg = num_sum_reg + num_reg[j];
		  end
  end
	always_ff@(posedge clk10m or negedge rst_n)begin
		if(~rst_n) begin
			flag <= 0; numreg <= 0; //num_reg_1 <= 0; num_reg_2 <= 0;
			for(i=0; i <= bits_length; i=i+1)
			begin
			num_reg[i] <= 0;
			end
		end
		else begin
			flag <= ~flag;
			numreg <= (flag)?cnt:cnt1;
//			num_reg_1 <= numreg;
//			num_reg_2 <= num_reg_1;
//			num_sum_reg <= numreg + num_reg_1 + num_reg_2;
			num_reg[0] <= numreg;
			for(i=0; i < bits_length; i=i+1)
				begin
				num_reg[i+1] <= num_reg[i];
				end	
		end
	end

endmodule