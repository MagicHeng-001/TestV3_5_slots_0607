module Syncronization(reset_n, clk4m, ppm_data, data_out, output_valid_flag);
    
    localparam [2: 0] Halt = 0, syncPreamble = 1 , syncSFD = 2, syncCMD = 3, syncCRC = 4, syncLoad = 5, syncFrameEnd = 6;
    localparam [2: 0] FindPreamble = 7;
    localparam [7: 0] SFDA = 8'hfc, PreambleB = 8'hf3;

    input reset_n, clk4m, ppm_data;
    output reg [7: 0] data_out;
    output reg output_valid_flag;

    reg [2: 0] state, ppm_counter, output_bit_counter;
    reg [9: 0] output_byte_counter;
    reg [9: 0] UART_reg;
    reg [7: 0] output_reg;
    reg [3: 0] preamble_counter;
	 reg [15:0] barker_reg;
	 reg flag;

    always@(negedge clk4m or negedge reset_n) begin
        if(~reset_n) begin
            {data_out, state, ppm_counter, output_valid_flag, output_reg, output_bit_counter, output_byte_counter, preamble_counter,flag} <= 0;
				barker_reg<=16'd0;
				end
        else    case(state)
                    /*/*=============================================================================================================
                        Halt STATE: 
                        As soon as there is a logic high in the ppm_data input, we assume it is the preamble 
                        of the TDD frame. Therefore, the ppm_counter is locked to 5 ( next cycle bit pos locked). 
                        Recall that if ppm_data === 2'b10, then the pos_counter === 4
                        We will also write 2'd2 into the output_reg and update the counter 
                    /*=============================================================================================================*/
                    Halt: {flag,barker_reg,state, ppm_counter, output_reg[7:6], output_bit_counter, output_valid_flag} <= ppm_data ? {1'b0,16'd0,FindPreamble, 3'd4, 2'd2, 3'd5,1'b0 } : 0; 
                    

                    FindPreamble: begin
                        ppm_counter <=  ppm_counter + 1'b1;                    
                        if(ppm_data) begin
                            if(ppm_counter - 2'b1 == 2'b10) begin
                                    if(preamble_counter === 4'b1111) begin
                                            state <=syncPreamble;
                                            output_reg[7:6] <= 2'b10;
                                    end
                                    else preamble_counter<= preamble_counter + 1'b1;
                            end
                            else {preamble_counter, ppm_counter} <= {2'd0, 3'd4};
                        end
                    end 

                     /*=============================================================================================================
                        syncPreamble STATE: 
                        Every time when there is a incoming ppm_data, we decode it and see if it is the SFD section.
                        If it is we will immediatley goto the "syncSFD" state, reset the output_bit_counter to 1 and write the result into
                        output_reg; otherwise, increment the counter by 2 and write 2'b10 into the correct place
                    /*=============================================================================================================*/
                    syncPreamble: begin
                        //check incoming data and change state and output_bit_counter  accordingly
                        {state, output_bit_counter} <= (ppm_data && ppm_counter - 2'd1 === SFDA[7:6]) ? 
                                                        {syncSFD,  3'd5} : (ppm_data === 1) ? 
                                                        {syncPreamble , output_bit_counter  - 2'd2} :{syncPreamble , output_bit_counter};
                        // check incoming data and write the output reg
                        if( ppm_counter - 2'd1 === SFDA[7:6] && ppm_data) output_reg  <= {ppm_counter - 2'd1, 6'b0};
                        else output_reg [(output_bit_counter) -: 2]  <= ( ppm_data) ? ppm_counter- 2'd1 :  output_reg [(output_bit_counter) -: 2];
                        // if we finished filling one-byte of space, then we send it to output and set the flag accordingly
                        //{data_out, output_valid_flag} <= (output_bit_counter === 7 && ~output_valid_flag && ppm_data) ? {output_reg, 1'b1} :{data_out, 1'b0} ;
                        //pos_counter
								
								
								barker_reg<=(ppm_data)?{barker_reg[13:0],ppm_counter[1:0]-2'b1}:barker_reg;
                        ppm_counter <=  ppm_counter + 1'b1;
                        {data_out, output_valid_flag} <= (output_bit_counter === 7 && ~output_valid_flag && ppm_data) ? {output_reg, 1'b0} :{data_out, 1'b0} ;
                    end

                    /*=============================================================================================================
                        syncSFD STATE: 
                        Similar procedure as the syncPreamble state, but we transfer the state as soon as we get both bytes of the SFD.
                    /*=============================================================================================================*/
                    syncSFD : begin
                            {state, output_bit_counter,barker_reg} <= ( ppm_data && output_byte_counter === 2 && output_bit_counter===7&&barker_reg==16'hfcf3) ? {syncLoad, 3'd5,16'd0} :  (ppm_data && output_byte_counter === 2 && output_bit_counter===7) ? {Halt,output_bit_counter,barker_reg}:(ppm_data)?
                                {syncSFD , output_bit_counter  - 2'd2,barker_reg} :{syncSFD , output_bit_counter,barker_reg};
                            output_reg [(output_bit_counter) -: 2]  <= ( ppm_data) ? ppm_counter- 2'd1 : output_reg [(output_bit_counter) -: 2] ;
								if(ppm_data)begin
									if(output_byte_counter==0) begin
									barker_reg<={barker_reg[13:0],ppm_counter[1:0]-2'b1};
									end
									if(output_byte_counter==1&&output_bit_counter!=7) begin
									barker_reg<={barker_reg[13:0],ppm_counter[1:0]-2'b1};
									end
								end
								if(output_byte_counter==3) begin
									state<=Halt;
									
								end
									if(ppm_data && output_byte_counter === 2 && output_bit_counter===7) begin
                                //{data_out, output_valid_flag, output_byte_counter} <={output_reg, 1'b1, 10'b0} ;
                                {data_out, output_valid_flag, output_byte_counter} <={output_reg, 1'b1, 10'b0} ;
                            end
                            else {data_out, output_valid_flag, output_byte_counter} <= (output_bit_counter === 3'd7 && ~output_valid_flag && ppm_data) ? {output_reg, 1'b0, output_byte_counter+ 1'b1} :  {data_out,1'b0 ,output_byte_counter};
                            //{data_out, output_valid_flag, output_byte_counter} <= (output_bit_counter === 3'd7 && ~output_valid_flag && ppm_data) ? {output_reg, 1'b1, output_byte_counter+ 1'b1} :  {data_out,1'b0 ,output_byte_counter};
                            ppm_counter <=  ppm_counter + 1'b1;
                    end  
                    
                    syncLoad: begin
								barker_reg<=16'd0;
                        if(ppm_data) begin            
                            output_byte_counter     <= (output_bit_counter === 7) ? output_byte_counter + 1'b1 :output_byte_counter;
                            output_bit_counter      <= output_bit_counter - 2'd2;
                            output_reg [(output_bit_counter) -: 2]  <=  ppm_counter- 2'd1;
                            {data_out, output_valid_flag} <= (output_bit_counter === 7 && ~output_valid_flag) ? {output_reg, 1'b1} : {data_out, 1'b0};                     
                        end
                        else begin
                            if(output_byte_counter === 10'd148 && output_bit_counter === 7) {state, output_valid_flag,data_out} <={Halt, 1'b1, output_reg};
                            else output_valid_flag = (output_valid_flag) ? 0 : output_valid_flag;
                        end
                        ppm_counter <=  ppm_counter + 1'b1;
                    end
                
                    default:{barker_reg,data_out, state, ppm_counter, output_valid_flag, output_reg, output_bit_counter, output_byte_counter,flag} <= 0;
        endcase
    end
    
endmodule 