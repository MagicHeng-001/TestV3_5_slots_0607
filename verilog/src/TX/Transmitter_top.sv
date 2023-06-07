`timescale 1ns/1ps
module Transmitter_top
#(parameter clk1x_freq = 1000, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)
(CLOCK_50, ppm_out,data_buffer_valid,data_buffer);

    /*----- I/O PORTS -----*/
    input  logic CLOCK_50;
    input   logic [31:0]data_buffer; 
	 input   logic data_buffer_valid;	 

	 output logic ppm_out;


    logic reset_n;
	 
//parameter clk1x_freq = 1000; //specified in 0.1KHz
//parameter count1x_threshold = 500000/ clk1x_freq;  //default 480
    
//	 assign HEX0 = 7'b0_001_000;//a
//	 assign HEX1 = 7'b100_1110;//r
//    assign HEX2 = 7'b000_0111;//t
    /*----- Internal Signals -----*/

    // logic [31:0] rx_data;    // Decoded UART DATA/FIFO INPUT DATA
    // logic rx_data_valid;    // Decoded UART DATA VALID FLAG/ FIFO WRITE ENABLE FLAG
 
    // logic fifo_wr_en;
    logic fifo_rd_en;           // FIFO TEAD ENABLE FLAG
    logic [7:0] fifo_data_out;  // FIFO OUTPUT DATA
    logic fifo_empty;           // FIFO EMPTY FLAG

    logic bitstream;            // BITSTREAM/ PPM INPUT
    logic bitstream_valid;      // DATA VALID FLAG
	 

	 	// Outputs
 
    /*----- Module Instantiations -----*/
	 /*
    UART_RX RX
    (
	    .clk            (CLOCK_50),             
	    .rst_n          (fifo_reset_n),      
	    .rx_data        (rx_data),          
	    .rx_data_valid  (fifo_wr_en),
	    .rx_data_ready  (1'b1),         //data receiver module ready
	    .rx_pin         (rx_pin)     //serial data input
    );
	*/


    FIFO_TX FIFO
     (
	    .aclr(~fifo_reset_n),
	    .data(data_buffer),
	    .rdclk(CLOCK_50),
	    .rdreq(fifo_rd_en),
	    .wrclk(CLOCK_50),
	    .wrreq(data_buffer_valid),
	    .q(fifo_data_out),
	    .rdempty(fifo_empty),
	    .wrfull()                   // Should never be full when sending 960 bytes of data via UART
    );

	    BitstreamGenerator
		 #(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold))
		 BitstreamGenerator
    (   
        .clk(CLOCK_50), 
        .reset_n(reset_n), 
        .empty_flag(fifo_empty), 
        .fifo_rd_en(fifo_rd_en), 
        .fifo_data(fifo_data_out), 
        .bitstream(bitstream), 
        .bitstream_valid(bitstream_valid), 
        .ppm_ready(ppm_ready)
    ); 
	 
    PPM_top 
	 #(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold))
	PPM
    (   
        .reset_n(reset_n), 
        .clk(CLOCK_50), 
        .bit_stream(bitstream), 
        .data_valid(bitstream_valid), 
        .ppm_out(ppm_out), 
        .ppm_ready(ppm_ready)
    );
logic fifo_reset_n;
logic [1:0] state;	 
logic [15:0] cnt;
logic [15: 0] clk1x_counter;
always@(posedge CLOCK_50)
begin
    clk1x_counter <= (clk1x_counter === count1x_threshold -1) ? 0: clk1x_counter + 1'b1;
	case(state)
		0:begin
			fifo_reset_n <= 1; reset_n <= 0;
            if(data_buffer_valid) state <= 1;
		end
		1:begin
            if(cnt < 160) cnt <= cnt + 1;
            else begin
                cnt <= 0; reset_n <= 1; state <= 2;
            end
		end
		2:begin
            if(clk1x_counter === count1x_threshold -1)begin
                if(cnt < 1740)// 510+16+1208 = 1734
                    cnt <= cnt + 1;
                else begin
                    cnt <= 0; reset_n <= 0; fifo_reset_n <= 0; state <= 3;
                end
            end
		end
        3:begin
            state <= 0;
        end
	endcase
end
endmodule
