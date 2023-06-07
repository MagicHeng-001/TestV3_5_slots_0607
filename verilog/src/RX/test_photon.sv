module test_photon(
input logic clk10m,
input logic CLOCK_200M,
input logic reset_n,
output logic ppm,
input logic rxdata,
output logic  ppm_clk
);
reg [15:0] max_val;//记录每个symbol中的计数最大值
reg [15:0] min_val;//记录每个symbol中的计数最小值
reg [20:0] max_sum;//记录前8个symbol最大值的和
reg [20:0] min_sum;//记录前8个symbol最小值的和
reg [18:0] count; //计数器，10M的时钟一个symbol计数2000
reg [10:0] max_pos;//记录最大值出现的平均位置
reg [3:0] record_index;
reg [1:0] state;//0:接受数据并储存8个最大值与最小值的和
//reg [9:0] max_values [0:9];
//reg [9:0] min_values [0:9];
reg [32:0] interval[0:7];//记录每个周期内的峰值的间隔时间
localparam photon_threshold=100;
reg [3:0]count_threshold;
reg[10:0] ppm_threshold;
//reg [16:0]average_symbol;
reg [9:0]average_max;
reg [9:0]average_min;
reg [15:0]clk_counter;
logic ppm_local;
logic ppm_clk_local;
reg [1:0] flag;   //检测一个symbol中有没有收到一次信号，若连续两次没有，则重新进入同步阶段。



assign ppm=ppm_local;
assign ppm_clk=ppm_clk_local;

 testcounting
		#(.bits_length(249)) 
	 photoncounting(
		.CLOCK_200m(CLOCK_200m),
		.clk10m(clk10m),
		.rst_n(reset_n),
		.inputIO(rxdata),
		.num(num),
		.num_sum(num_sum)//每一个脉冲长度的光子数
	);


 
always_ff @(posedge clk10m or negedge reset_n) begin
    if(~reset_n) begin
		  max_pos<=0;
        count<=0;
        state<=0;
        record_index<=0;
        count_threshold<=0;
        max_val<=16'b0000000000000000;
		  min_val<=16'b1111111111111111;
        ppm_clk_local<=0;
		  ppm_local<=0;
		  max_sum<=0;
		  min_sum<=0;
        clk_counter<=0;
		  average_max<=0;
		  average_min<=0;
		  
    end
    else begin
        case(state)
         0: begin   //等待，当光子计数连续两次超过阈值时，认为是有信号进入。
				flag<=0;
            if (num_sum>photon_threshold)begin
                count_threshold<=count_threshold+1;
            end
            else begin
                count_threshold<=0;
            end

            if (count_threshold>2)begin
                state<=1;//
					 count_threshold<=0;
            end
        end


        1: begin //记录每个周期内的最大值与最小值，并且记录每个最大值出现的时间。
            if (count==1999&&record_index!=8)begin//10M的采样速率，一个symbol采样2000次
                max_sum<=max_sum+max_val;
                min_sum<=min_sum+min_val;
                //max_values[record_index]<=max_val;
                //min_values[record_index]<=min_val;
                max_val<=16'b0000000000000000;
					 min_val<=16'b1111111111111111;
                count<=0;
                record_index <= record_index + 1;
            end
            if(count!=1999&&record_index!=8) begin
                 if (num_sum > max_val)begin
                     max_val <= num_sum;
                     interval[record_index]<=count;//记录每个symbol中最大值出现的时间点
							end
                 if (num_sum < min_val)begin
                     min_val <= num_sum;
							end
                count <= count + 1;
            end
            if(record_index==8)begin//收到8个symbol中的最大值与最小值 并且计算出最大值与最小值的平均值，也计算出了每个symbol的平均长度
                max_pos<=((interval[0]+interval[1]+interval[2]+interval[3]+interval[4]+interval[5]+interval[6]+interval[7])>>3);//最大值出现的平均位置
                average_max<=(max_sum>>3);
                average_min<=(min_sum>>3);
                count<=0;
                state<=2;
                record_index<=0;
            end
        end
        2: begin //每个count周期从symbol第一位开始
           count<=count+1;
                if (count==(max_pos+1000))begin
                        state<=3;
                        count<=0;
                        ppm_threshold<=(average_max-average_min)/3+(average_max+average_min)/2;//暂时定义threshold
                end
        end
        3: begin
            if(count==0)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==250)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==500)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==750)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==1000)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==1250)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==1500)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
            if(count==1750)begin
                if(num_sum>ppm_threshold)begin
                    ppm_local<=1;
						  flag<=1;
                end
                else ppm_local<=0;
            end
				
				
				
            if (count==1999)begin
                count<=0;
					if(flag==0)begin
							state<=0;
					end
				end
					 
					 
					 
					 
					 
            if(clk_counter==124)begin
                clk_counter <= 0;
                 ppm_clk_local <= ~ppm_clk_local; // 反转时钟信号
            end 
                else begin
                clk_counter <= clk_counter + 1;
				end

            count<=count+1;
          end
			 default: state <= 0;
			 endcase
	end
				



end

endmodule