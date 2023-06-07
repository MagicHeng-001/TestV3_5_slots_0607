module auto_reset #(parameter clk1x_freq = 100, //specified in 0.1KHz
parameter count1x_threshold = 500000/ clk1x_freq  //default 480
)(
    input   logic reset_n,
    input   logic clk1m,
    input   logic clk4x,
    input   logic ppm,
    output  logic auto_reset_n
);
    //parameter  clk1x_freq = 100; //specified in 0.1KHz
    //localparam count1x_threshold = 480000/ clk1x_freq ; //default 48
    localparam count4x_threshold = count1x_threshold >> 2 ;  //default 12

    logic [20: 0] count4x_counter;
    
    logic [4: 0] counter;
    logic start_flag;

    always_ff@(posedge clk1m or negedge reset_n) begin
        if(~reset_n) begin
            {counter, count4x_counter} <= 0;
            auto_reset_n <= 1;
            start_flag <= 0;
        end
        else begin
            if(ppm) begin
                {counter, count4x_counter} <= 0;
                auto_reset_n <= 1;
                start_flag <= 1;
            end
            else begin
                if(start_flag) begin
                    count4x_counter   <= (count4x_counter === count4x_threshold -1 ) ? 0 : count4x_counter + 1'd1;
                    if(count4x_counter === count4x_threshold -1) counter <= counter + 1;
                    else if(counter === 4'd15) begin
                        {counter, count4x_counter} <= 0;
                        auto_reset_n <= 0;
                        start_flag <= 0;
                    end
                end
                else begin
                        {counter, count4x_counter} <= 0;
                        auto_reset_n <= 1;
                end
            end
        end
    end
endmodule 