/*
    clk [input]: 48MHz CLK signal with 50% Duty Cycle
    ppm_data_recieved [input]: Recieved ppm_data from ADC(probably)
    reset_n [input]: low-active reset
    clk4x_out [output]: 4MHz CLK signal synchronized with the `ppm_data_out`
    ppm_data_out[data_out]: synchronized ppm data
    
*/ 
module CLK_Recovery_TEST #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
	)(clk,
	ppm_data_recieved,
	reset_n,
	clk4x_out,
	ppm_data_out  
	); 
    /* Parameter */
    //parameter  clk1x_freq = 100; //specified in 0.1KHz
    //localparam count1x_threshold = 480000/ clk1x_freq ; //default 48
    localparam count4x_threshold = count1x_threshold >> 2 ;  //default 12


    input  logic clk, ppm_data_recieved, reset_n;
    output logic clk4x_out, ppm_data_out;
    logic ppm_data_out_flag;

    localparam logic [1:0] undefined = 0, lag = 1 , lead = 2; // clk state parameter
    localparam logic [1:0] HALT = 0,  SEND = 1;// fsm state parameter

    reg  [13: 0] clk4x_counter; // clk counter 
    reg clk4x_neg_flag;

    logic [2: 0] clk_state, fsm_state;
    logic posedge_reg, negedge_reg; //register for determing the clk state

    always_ff@(posedge clk or negedge reset_n) begin
        if(~reset_n) {clk4x_out, clk4x_counter, fsm_state, posedge_reg, ppm_data_out_flag} <= 0;//reset
        else begin
            case(fsm_state)
                HALT:   posedge_reg  <= ppm_data_recieved;
                SEND: begin // no state transition  
                        ppm_data_out_flag <= (clk_state === lead) ? negedge_reg : posedge_reg;
                        posedge_reg  <= (clk_state === lag) ? ppm_data_recieved : 0;
                end
                default: {clk4x_out, clk4x_counter, fsm_state, posedge_reg, ppm_data_out_flag} <= 0;
            endcase
            //clk 4x generator
            clk4x_out       <= (clk4x_counter < (count4x_threshold  >> 1)  && clk4x_counter >= 0 && fsm_state === SEND);// no output when halting
            if(clk4x_neg_flag === 0) clk4x_counter   <= (clk4x_counter === count4x_threshold -1 ) ? 0 : clk4x_counter + 2'd1;
            else begin
                
                fsm_state <= SEND;
            end

        end
    end

    always_ff@(posedge clk4x_out or negedge reset_n) begin
        if(~reset_n){ppm_data_out} <=0;
        else ppm_data_out<= ppm_data_out_flag;
    end


    always_ff@(negedge clk or negedge reset_n) begin
        if(~reset_n) {negedge_reg, clk4x_neg_flag, clk_state} <= 0;
        else begin
            if(fsm_state === HALT && ppm_data_recieved) // we will always transition at the negedge and evaluate the clk state at the same time
            begin
                    //fsm_state <= SEND; //state transition
                    clk_state <= (posedge_reg) ? lag : lead; 
                    negedge_reg <= ppm_data_recieved;//register @ negedge
                    clk4x_neg_flag <= 1; // start counting when trasitioned to SEND
            end
            else begin negedge_reg <= (clk_state === lead) ? ppm_data_recieved : 0;////register @ negedge (conditional)
				  clk4x_neg_flag <= (~ clk4x_neg_flag) ?clk4x_neg_flag : 0;
            end
        end
    end

endmodule 