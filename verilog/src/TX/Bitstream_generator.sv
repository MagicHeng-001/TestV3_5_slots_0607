module BitstreamGenerator #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)(clk, reset_n, empty_flag, fifo_rd_en, fifo_data, bitstream, bitstream_valid, ppm_ready);
    input  wire clk, reset_n, empty_flag, ppm_ready;
    input  wire [7:0] fifo_data;
    output reg bitstream, fifo_rd_en, bitstream_valid;

    /* Parameter */
    //parameter  clk1x_freq = 100; //specified in 0.1KHz
    //localparam count1x_threshold = 480000/ clk1x_freq ; //default 480
    localparam count4x_threshold = count1x_threshold >> 2 ;  //default 120
    localparam [2: 0]  HALT = 0, Preamble = 1, SFD_1 = 2, SFD_2 = 3 , SEND = 4, STOP =5;
    localparam [7: 0]  SFD1 = 8'hfc, SFD2 = 8'hf3;
 
    reg [2: 0] state;
    reg [15: 0] bit_counter;
 //   reg [7: 0] data_reg;
    reg [15: 0] clk1x_counter;
    reg read_flag, empty_flag_reg, empty_flag_reg_reg;

	 /* LDPC encoder Parameter */
	 reg in_data,in_data_valid;
	 reg readstate;
	 wire data_encode, data_encode_valid;
	 wire [1199:0]datareg;
	reg [2:0]bitcnt;
	reg [7:0]indatareg;
	reg [15:0]bit_number;
   always @(posedge clk or negedge reset_n ) begin
		if(!reset_n){fifo_rd_en, in_data_valid, indatareg, read_flag, readstate, in_data, empty_flag_reg,empty_flag_reg_reg, bitcnt,bit_number} <=0;
		else begin
			if((state === Preamble) && (bit_counter === 16'd510) && (clk1x_counter === count1x_threshold -1)) begin
				readstate <= 1; 
			end
			else begin
				if(readstate && bit_number <975) begin
					 in_data_valid <= (bit_number > 14)?1'b1:1'b0;
						case(bitcnt)
							6: begin
								 fifo_rd_en <=  1'b1 ; read_flag <= 1'b1;
								 {in_data, bitcnt} <= {indatareg[0], bitcnt + 1'b1};
								 end
							7: begin
								fifo_rd_en <= 1'b0;read_flag <= 1'b0;
								 bitcnt <= 0;
								 in_data  <=  fifo_data[7] ;
								 indatareg    <= fifo_data;
								 empty_flag_reg <=   empty_flag;
								 empty_flag_reg_reg <= empty_flag_reg;
							end
							default:{in_data, bitcnt} <= {indatareg[6-bitcnt], bitcnt + 1'b1} ;
					  endcase
					  bit_number <= bit_number + 1'b1;
				end
				else begin
					bit_number <= 16'd0; in_data_valid <= 1'b0; readstate <= 1'b0;
				end

		end
	end
end	
    always @(posedge clk or negedge reset_n ) begin
        if(~reset_n) {state, bitstream, bitstream_valid, clk1x_counter, bit_counter,empty_flag_reg,empty_flag_reg_reg} <= 0;
        else begin 
            case(state)

                HALT:   state <=  (ppm_ready) ? Preamble : HALT;

                Preamble: begin
                    if(bit_counter < 16'd510|| bit_counter%2===1 || empty_flag) begin
                        {bitstream, bitstream_valid} <= (clk1x_counter === count1x_threshold -1)? {~bitstream, 1'b1}: {bitstream, bitstream_valid};
                        bit_counter <= (clk1x_counter === count1x_threshold -1) ? bit_counter +1'b1 : bit_counter;
                    end
                    else if(~empty_flag && clk1x_counter === count1x_threshold -1)begin
                        state <=  SFD_1; // 2'b1[0] sent
                        bit_counter<= 0;
                        bitstream  <=SFD1[7];
                    end
                end

                SFD_1: begin
                    if(bit_counter !== 7) begin
                        {bitstream, bit_counter} <=(clk1x_counter === count1x_threshold -1)? 
                                                    {(bit_counter !== 7) ? {SFD1[6 - bit_counter], bit_counter + 1'b1} : {SFD1[0], bit_counter + 1'b1}} 
                                                    : {bitstream, bit_counter};
                    end
                    else if(clk1x_counter === count1x_threshold -1) begin
                        state <=  SFD_2; // 2'b1[0] sent
                        bit_counter<= 0;
                        bitstream  <=SFD2[7];
                    end
                end

                SFD_2: begin
                    if(bit_counter !== 7) begin
                        {bitstream, bit_counter} <=(clk1x_counter === count1x_threshold -1)? 
                                                    {(bit_counter !== 7) ? {SFD2[6 - bit_counter], bit_counter + 1'b1} : {SFD2[0], bit_counter + 1'b1}} 
                                                    : {bitstream, bit_counter};
                    end
                    else if(clk1x_counter === count1x_threshold -1) begin
                        state <=  SEND; // 2'b1[0] sent
                        bit_counter<= 0;
                        bitstream  <=datareg[0];
                    end
                end

                SEND: begin
							if(bit_counter < 1199)
								{bitstream, bit_counter} <=(clk1x_counter === count1x_threshold -1)?  {datareg[bit_counter+1], bit_counter + 1'b1}  : {bitstream, bit_counter};
							else begin
								if(bit_counter < 1209)
								bit_counter <= (clk1x_counter === count1x_threshold -1)?( (bit_counter === 1208)?16'd0 :  bit_counter+1):bit_counter;
								bitstream <= (clk1x_counter === count1x_threshold -1)? 1'b0 :  bitstream;
								//state <= (clk1x_counter === count1x_threshold -1)? STOP : state;
								state <= (clk1x_counter === count1x_threshold -1)? ( (bit_counter === 1208)?STOP : state):state;
								bitstream_valid <= (clk1x_counter === count1x_threshold -1)? ( (bit_counter === 1208)?0 : bitstream_valid):bitstream_valid;
							end
//                    {state, bitstream_valid} <= (empty_flag_reg_reg && bit_counter === 1) ?{STOP, 1'b0} : {SEND, 1'b1};
//                    case(bit_counter)
//                        6: begin
//                            {fifo_rd_en,read_flag} <= (~read_flag) ? 2'b11 :2'b01;
//                            {bitstream, bit_counter} <= (clk1x_counter === count1x_threshold -1)? {data_reg[0], bit_counter + 1'b1} : {bitstream, bit_counter};
//                        end
//                        7: begin
//
//                            bit_counter <= (clk1x_counter === count1x_threshold -1)? 0 :bit_counter ;
//                            bitstream  <= (clk1x_counter === count1x_threshold -1)? fifo_data[7] :bitstream ;
//                            data_reg    <= (clk1x_counter === count1x_threshold -1) ? fifo_data: data_reg;
//                            read_flag <=0;
//                            empty_flag_reg <=  (clk1x_counter === count1x_threshold -1) ? empty_flag :empty_flag_reg;
//                            empty_flag_reg_reg<=(clk1x_counter === count1x_threshold -1) ? empty_flag_reg :empty_flag_reg_reg;
//                        end
//                        default:{bitstream, bit_counter} <= (clk1x_counter === count1x_threshold -1)? {data_reg[6-bit_counter], bit_counter + 1'b1} : {bitstream, bit_counter};
//                    endcase
						
                end

                STOP: begin state <= STOP; bit_counter <= (clk1x_counter === count1x_threshold -1)? 0 :bit_counter ;
					 bitstream_valid <= (clk1x_counter === count1x_threshold -1)? 0 : bitstream_valid;
					 end
                default: {state, bitstream, bitstream_valid, clk1x_counter} <= 0;
            endcase

            clk1x_counter <= (clk1x_counter === count1x_threshold -1) ? 0: clk1x_counter + 1'b1;
        end
    end
	 
LDPCencoder encoder(
	.clk(clk),
	.rst_n(reset_n),
	.data(in_data),
	.data_valid(in_data_valid),
	.data_encode(data_encode),
	.data_encode_valid(data_encode_valid),
	.datareg(datareg)
);
endmodule