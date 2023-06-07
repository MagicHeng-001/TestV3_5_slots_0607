/*
    I/O Definitions:
        [input]  reset_n: Low Active Reset
        [input]  bit_stream: Single bit input data
        [input]  data_valid: bit_stream valid flag signal       
        [output] ppm_out: pulse-position modulated signal
        [output] ppm_read: active high => module is ready to take in bit_stream
    
    Reset => Initialize (The ppm_ready signal will assert logic high after initialization) 
    => Halt => the caller assert data_Valid and the correct bit_stream at the same time
    => ppm_out [During Halt, ppm_out is ALWAYS logic low]
*/
`timescale 1ns/1ps
module PPM_top #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)(reset_n, clk, bit_stream, data_valid, ppm_out, ppm_ready);

    /* Parameter */
    //parameter  clk1x_freq = 100; //specified in 0.1KHz
    //localparam count1x_threshold = 480000/ clk1x_freq ; //default 480
    localparam count4x_threshold = count1x_threshold >> 2 ;  //default 120
    /*---- I/O Ports----*/
    input  reset_n, clk, bit_stream; 
    input  data_valid;
    output ppm_ready;
    output reg  ppm_out;
    
    /*---- Wires and Regs ---*/
    reg  Bit_counter, mask, output_ready_flag;
    reg  [1: 0]  tx_reg, output_reg, state;
    reg  [2: 0] Pos_counter;
    reg  [13: 0] clk4x_counter;
    reg  [15: 0] clk1x_counter;
    reg  clk1x, clk4x;

    wire ppm_ready = mask;
    localparam [1: 0] HALT = 0, SEND = 1;

     /*---- Function: PPM Encoder ----*/
    always @(posedge clk or negedge reset_n) begin
        if(~reset_n) begin // Ignore the PLL glitch
            {ppm_out, clk1x_counter, Pos_counter, tx_reg, output_reg,output_ready_flag, state, clk4x_counter, clk1x } <= 0;
			
					mask <=  1;
					clk4x <= 0;
					Bit_counter <= 1;
				
        end 
        else begin
            if(clk4x_counter === 0) begin        
                state  <= (data_valid === 1'b0 || data_valid === 1'bx ) ? 0: SEND ;
                //FSM
                case(state)
                    HALT: ppm_out <= 0; // During Halt, ppm_out is ALWAYS logic low             
                    SEND: begin
                        Pos_counter <= Pos_counter + 1'b1; // position counter of the ppm
                        output_ready_flag <= (Pos_counter ===7) ? 1 :output_ready_flag; // we gotta wait at least one ppm cycle before doing anything 
                        ppm_out <= ( output_ready_flag && (Pos_counter) >= 1 && (Pos_counter) < 5 && output_reg === Pos_counter - 1'b1) ? 1 : 0; // output logic
                        {output_reg} <= (Bit_counter) ? {tx_reg} : {output_reg}; // 2-reg arrangment to filter out glitches
                    end          
                    default: {ppm_out, clk1x_counter, Pos_counter, Bit_counter, tx_reg, mask, output_reg,output_ready_flag } <=0;
                endcase
            end
            if(clk1x_counter === 1) begin
                {tx_reg[Bit_counter], Bit_counter} <= state ===SEND ? {bit_stream, ~Bit_counter} : {tx_reg[Bit_counter], Bit_counter};
            end

            clk4x_counter <= (clk4x_counter === count4x_threshold -1) ? 0: clk4x_counter + 1'b1;
            clk1x_counter <= (clk1x_counter === count1x_threshold -1) ? 0: clk1x_counter + 1'b1;
            clk4x <= (clk4x_counter === 0) ? 1 : 0;
            clk1x <= (clk1x_counter === 0) ? 1 : 0;
            
        end
    end 



endmodule