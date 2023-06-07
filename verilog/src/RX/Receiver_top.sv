module Receiver_top  #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)(
    input   logic           CLOCK_50,
//    input   logic           clk48m,
//    input   logic           clk1m, 
    input   logic           reset_n,
//    output  logic [6 : 0]   HEX0, 
//    output  logic [6 : 0]   HEX1, 
//    output  logic [6 : 0]   HEX2, 
 //   input   logic [11: 0]   ADC_IN,
//    input   logic           UART_Unload,
//    output  logic           ADC_CLK,
//    output  logic           tx_pin,
	 input   logic           rx_data,
//    input   logic           cal_sw,
//    input   logic           sub_reset_n,
	 input   logic [3:0]     offset,
	output logic [31:0]buffer,
	output logic buffer_valid,
	output logic auto_ram_reset
);

//		assign HEX0 = 7'b0_01_0010; 
//		assign HEX1 = 7'b1_00_0000; 
//		assign HEX2 = 7'b0_00_0110; 
//    assign HEX2 = (cal_sw) ? 7'b0_01_0010: 7'b100_0110 ;//r
//    assign HEX1 = (cal_sw) ? 7'b1_00_0000: 7'b0_001_000;//e
//    assign HEX0 = (cal_sw) ? 7'b0_00_0110: 7'b1_00_0111 ;//c
	// parameter  clk1x_freq = 100; //specified in 0.1KHz
    //parameter count1x_threshold = 480000/ clk1x_freq ; //default 48
    /*----- Internal Signal -----*/
    logic ppm_in; 
    logic ppm_sync_data;
	 logic ppm;
	 logic ppm_clk;
    logic clk4x_out;
    logic [7: 0] data, ram2_data;
    logic output_valid_flag;
	 
	 
    /*---- GLOBAL PLL CLK ----*/
    logic clk48m_out, clk1m_out; 
    logic clk48m_in,  clk1m_in; 
	 logic clk200m;
    assign {clk48m_in,  clk1m_in} = {clk48m_out, clk1m_out} & locked;
    PLL GlobalCLK
    (
		.refclk     (CLOCK_50),   //  refclk.clk
		.rst        (~reset_n),      //   reset.reset
		.outclk_0   (clk48m), // outclk0.clk
		.outclk_1   (clk1m), // outclk1.clk
		.locked     (locked)    //  locked.export
    );
	 ////////200m&10m clk
	clk10m_200m_0002 clk10m_200m_inst (
		.refclk   (CLOCK_50),   //  refclk.clk
		.rst      (~reset_n),      //   reset.reset
		.outclk_0 (outclk_200m), // outclk0.clk
		.outclk_1 (outclk_10m), // outclk1.clk
		.locked   (locked)    //  locked.export
	);
	 
	 ////////
	 
    /*----- Module Instantiations -----*/

    

    Syncronization SYNC
    (   
        .reset_n(reset_n && auto_ram_reset), 
        .clk4m(ppm_clk), 
        .ppm_data(ppm), 
        .data_out(data), 
        .output_valid_flag(output_valid_flag)
    );  

	
/*	
	logic auto_reset_n;
	auto_reset
		#(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold))
	autoReset
	(
		.reset_n(reset_n),
		.clk1m(CLOCK_50),
		.ppm(ppm_in),
		.auto_reset_n(auto_reset_n)
	);

*/
    logic [9: 0] ram_addr;
    logic ram_wr_en, wr_flag;

    RAM RAM
    (
	    .address(ram_addr),
	    .clock(CLOCK_50),
	    .data(data),
	    .wren(ram_wr_en)
    );
/*
    TEST_ADC_AN9328_TOP ADC
    (
        .clk1m(clk1m),
        .clk48m(clk48m),
        .reset_n(reset_n),
        .ADC_CH_B_CLK(ADC_CLK),
        .ADC_IN(ADC_IN),
        .ppm(ppm_in),
		  .cal_sw(cal_sw),
		  .offset(offset)
		  
    );
	 */
	  test_photon
    (
        .clk10m(outclk_10m),
		  .CLOCK_200M(outclk_200m),
//        .clk48m(clk48m),
        .reset_n(reset_n && auto_ram_reset),
		  .rxdata(rx_data),
        .ppm(ppm),
//		  .cal_sw(cal_sw),
		  .ppm_clk(ppm_clk)
		  
    );

    always_ff@ (posedge CLOCK_50 or negedge  (reset_n && auto_ram_reset)) begin
        if(~ (reset_n && auto_ram_reset)) {ram_addr, ram_wr_en, wr_flag} <= {10'd1023, 2'b0};
        else begin
            if(output_valid_flag && ~wr_flag) begin
                ram_addr    <= ram_addr + 1;
                ram_wr_en   <= 1;
                wr_flag <= 1;
            end
            else  begin 
                if (~output_valid_flag) wr_flag<= 0;
                ram_wr_en<= 0;
            end
        end
    end
    
    logic decode_valid_flag;
    logic [7:0]decode_dataout;
	
/*
    LDPCdecodeV1 decode
    (
	    .clk(clk48m),
	    .rst_n(reset_n && cal_sw && sub_reset_n ),
	    .valid_flag(output_valid_flag),
	    .data(data),
	    .decode_valid_flag(decode_valid_flag),
	    .dataout(decode_dataout),
        .auto_ram_reset(auto_ram_reset)
	);
	*/
    LDPCdecodeV1 
	 	 	#(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold))
		decode	
    (
	    .clk(CLOCK_50),
	    .rst_n(reset_n && auto_ram_reset),
	    .valid_flag(output_valid_flag),
	    .data(data),
	    .decode_valid_flag(decode_valid_flag),
		 .buffer(buffer),
		 .buffer_valid(buffer_valid),
	    .dataout(decode_dataout),
        .auto_ram_reset(auto_ram_reset)
	);
    logic [9: 0] ram2_addr, ram2_read_addr, ram2_write_addr;
    logic ram_wr_en2, wr_flag2;		

	RAM2 RAMdecode
    (
	    .address(ram2_addr),
	    .clock(CLOCK_50),
	    .data(decode_dataout),
	    .wren(ram_wr_en2 && ram2_mode),
        .q(ram2_data)
    );
	
    assign {ram2_addr, ram2_mode} = {ram2_write_addr, 1'b1};

    always_ff@ (posedge CLOCK_50 or negedge (reset_n && auto_ram_reset)) begin
        if(~(reset_n && auto_ram_reset)) {ram2_write_addr, ram_wr_en2, wr_flag2} <= {10'd1023, 2'b0};
        else begin
            if(decode_valid_flag && ~wr_flag2) begin
                ram2_write_addr    <= ram2_write_addr + 1;
                ram_wr_en2   <= 1;
                wr_flag2 <= 1;
            end
            else  begin 
                if (~decode_valid_flag) wr_flag2<= 0;
                ram_wr_en2<= 0;
            end
        end
    end 
/*
    logic ram2_mode;
    logic tx_data_ready;
    logic tx_data_valid;

    logic [7 : 0] tx_data;
    logic [3 : 0] wait_counter;


    always_ff@ (posedge CLOCK_50 or negedge (reset_n&&sub_reset_n  )) begin
        if(~(reset_n&&sub_reset_n)) {ram2_read_addr, tx_data_valid, tx_data} <= 0;
        else begin
            if(tx_data_ready && ram2_read_addr < 10'd121 && UART_Unload && wait_counter < 10) begin
                wait_counter <= wait_counter + 1'b1;
					tx_data_valid <= 0;

            end
            if(tx_data_ready && ram2_read_addr < 10'd121 && UART_Unload && wait_counter === 10) begin
                tx_data_valid <= 1;
                ram2_read_addr <= ram2_read_addr +1'b1;
                wait_counter <=0;
                tx_data <= ram2_data;
            end
            else  begin
                tx_data_valid <= 0;
            end
        end
    end
/*
    UART_TX TX
    (
	    .clk            (CLOCK_50),              //clock input
	    .rst_n          (reset_n && cal_sw && sub_reset_n),            //asynchronous reset input, low active 
	    .tx_data        (tx_data),          //data to send
	    .tx_data_valid  (tx_data_valid),    //data to be sent is valid
	    .tx_data_ready  (tx_data_ready),    //send ready
	    .tx_pin         (tx_pin)         //serial data output
    );
*/
endmodule