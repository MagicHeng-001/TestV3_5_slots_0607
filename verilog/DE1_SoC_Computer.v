

module DE1_SoC_Computer (
	////////////////////////////////////
	// FPGA Pins
	////////////////////////////////////

	// Clock pins
	CLOCK_50,
	CLOCK2_50,
	CLOCK3_50,
	CLOCK4_50,

	// ADC
	ADC_CS_N,
	ADC_DIN,
	ADC_DOUT,
	ADC_SCLK,

	// SDRAM
	DRAM_ADDR,
	DRAM_BA,
	DRAM_CAS_N,
	DRAM_CKE,
	DRAM_CLK,
	DRAM_CS_N,
	DRAM_DQ,
	DRAM_LDQM,
	DRAM_RAS_N,
	DRAM_UDQM,
	DRAM_WE_N,

	// I2C Bus for Configuration of the Audio and Video-In Chips
	FPGA_I2C_SCLK,
	FPGA_I2C_SDAT,

	// 40-Pin Headers
	GPIO_0,
	GPIO_1,
	
	// Seven Segment Displays
	HEX0,
	HEX1,
	HEX2,
	HEX3,
	HEX4,
	HEX5,

	// Pushbuttons
	KEY,

	// LEDs
	LEDR,

	// PS2 Ports
	PS2_CLK,
	PS2_DAT,
	
	PS2_CLK2,
	PS2_DAT2,

	// Slider Switches
	SW,

	////////////////////////////////////
	// HPS Pins
	////////////////////////////////////
	
	// DDR3 SDRAM
	HPS_DDR3_ADDR,
	HPS_DDR3_BA,
	HPS_DDR3_CAS_N,
	HPS_DDR3_CKE,
	HPS_DDR3_CK_N,
	HPS_DDR3_CK_P,
	HPS_DDR3_CS_N,
	HPS_DDR3_DM,
	HPS_DDR3_DQ,
	HPS_DDR3_DQS_N,
	HPS_DDR3_DQS_P,
	HPS_DDR3_ODT,
	HPS_DDR3_RAS_N,
	HPS_DDR3_RESET_N,
	HPS_DDR3_RZQ,
	HPS_DDR3_WE_N,

	// Ethernet
	HPS_ENET_GTX_CLK,
	HPS_ENET_INT_N,
	HPS_ENET_MDC,
	HPS_ENET_MDIO,
	HPS_ENET_RX_CLK,
	HPS_ENET_RX_DATA,
	HPS_ENET_RX_DV,
	HPS_ENET_TX_DATA,
	HPS_ENET_TX_EN,

	// Flash
	HPS_FLASH_DATA,
	HPS_FLASH_DCLK,
	HPS_FLASH_NCSO,

	// Accelerometer
	HPS_GSENSOR_INT,
		
	// General Purpose I/O
	HPS_GPIO,
		
	// I2C
	HPS_I2C_CONTROL,
	HPS_I2C1_SCLK,
	HPS_I2C1_SDAT,
	HPS_I2C2_SCLK,
	HPS_I2C2_SDAT,

	// Pushbutton
	HPS_KEY,

	// LED
	HPS_LED,
		
	// SD Card
	HPS_SD_CLK,
	HPS_SD_CMD,
	HPS_SD_DATA,

	// SPI
	HPS_SPIM_CLK,
	HPS_SPIM_MISO,
	HPS_SPIM_MOSI,
	HPS_SPIM_SS,

	// UART
	HPS_UART_RX,
	HPS_UART_TX,

	// USB
	HPS_CONV_USB_N,
	HPS_USB_CLKOUT,
	HPS_USB_DATA,
	HPS_USB_DIR,
	HPS_USB_NXT,
	HPS_USB_STP
);

//=======================================================
//  PARAMETER declarations
//=======================================================

	parameter clk1x_freq = 100; //specified in 0.1KHz
	parameter count1x_threshold = 500000/ clk1x_freq;  //default 480
//=======================================================
//  PORT declarations
//=======================================================

////////////////////////////////////
// FPGA Pins
////////////////////////////////////

// Clock pins
input						CLOCK_50;
input						CLOCK2_50;
input						CLOCK3_50;
input						CLOCK4_50;

// ADC
inout						ADC_CS_N;
output					ADC_DIN;
input						ADC_DOUT;
output					ADC_SCLK;


// SDRAM
output 		[12: 0]	DRAM_ADDR;
output		[ 1: 0]	DRAM_BA;
output					DRAM_CAS_N;
output					DRAM_CKE;
output					DRAM_CLK;
output					DRAM_CS_N;
inout			[15: 0]	DRAM_DQ;
output					DRAM_LDQM;
output					DRAM_RAS_N;
output					DRAM_UDQM;
output					DRAM_WE_N;

// I2C Bus for Configuration of the Audio and Video-In Chips
output					FPGA_I2C_SCLK;
inout						FPGA_I2C_SDAT;

// 40-pin headers
inout			[35: 0]	GPIO_0;
inout			[35: 0]	GPIO_1;

// Seven Segment Displays
output		[ 6: 0]	HEX0;
output		[ 6: 0]	HEX1;
output		[ 6: 0]	HEX2;
output		[ 6: 0]	HEX3;
output		[ 6: 0]	HEX4;
output		[ 6: 0]	HEX5;


// Pushbuttons
input			[ 3: 0]	KEY;

// LEDs
output		[ 9: 0]	LEDR;

// PS2 Ports
inout						PS2_CLK;
inout						PS2_DAT;

inout						PS2_CLK2;
inout						PS2_DAT2;

// Slider Switches
input			[ 9: 0]	SW;







////////////////////////////////////
// HPS Pins
////////////////////////////////////
	
// DDR3 SDRAM
output		[14: 0]	HPS_DDR3_ADDR;
output		[ 2: 0]  HPS_DDR3_BA;
output					HPS_DDR3_CAS_N;
output					HPS_DDR3_CKE;
output					HPS_DDR3_CK_N;
output					HPS_DDR3_CK_P;
output					HPS_DDR3_CS_N;
output		[ 3: 0]	HPS_DDR3_DM;
inout			[31: 0]	HPS_DDR3_DQ;
inout			[ 3: 0]	HPS_DDR3_DQS_N;
inout			[ 3: 0]	HPS_DDR3_DQS_P;
output					HPS_DDR3_ODT;
output					HPS_DDR3_RAS_N;
output					HPS_DDR3_RESET_N;
input						HPS_DDR3_RZQ;
output					HPS_DDR3_WE_N;

// Ethernet
output					HPS_ENET_GTX_CLK;
inout						HPS_ENET_INT_N;
output					HPS_ENET_MDC;
inout						HPS_ENET_MDIO;
input						HPS_ENET_RX_CLK;
input			[ 3: 0]	HPS_ENET_RX_DATA;
input						HPS_ENET_RX_DV;
output		[ 3: 0]	HPS_ENET_TX_DATA;
output					HPS_ENET_TX_EN;

// Flash
inout			[ 3: 0]	HPS_FLASH_DATA;
output					HPS_FLASH_DCLK;
output					HPS_FLASH_NCSO;

// Accelerometer
inout						HPS_GSENSOR_INT;

// General Purpose I/O
inout			[ 1: 0]	HPS_GPIO;

// I2C
inout						HPS_I2C_CONTROL;
inout						HPS_I2C1_SCLK;
inout						HPS_I2C1_SDAT;
inout						HPS_I2C2_SCLK;
inout						HPS_I2C2_SDAT;

// Pushbutton
inout						HPS_KEY;

// LED
inout						HPS_LED;

// SD Card
output					HPS_SD_CLK;
inout						HPS_SD_CMD;
inout			[ 3: 0]	HPS_SD_DATA;

// SPI
output					HPS_SPIM_CLK;
input						HPS_SPIM_MISO;
output					HPS_SPIM_MOSI;
inout						HPS_SPIM_SS;

// UART
input						HPS_UART_RX;
output					HPS_UART_TX;

// USB
inout						HPS_CONV_USB_N;
input						HPS_USB_CLKOUT;
inout			[ 7: 0]	HPS_USB_DATA;
input						HPS_USB_DIR;
input						HPS_USB_NXT;
output					HPS_USB_STP;

//=======================================================
//  REG/WIRE declarations
//=======================================================

wire			[31: 0]	hex3_hex0;
wire			[15: 0]	hex5_hex4;

wire sdram_clk_clk;

assign HEX0 = ~hex3_hex0[ 6: 0];
assign HEX1 = ~hex3_hex0[14: 8];
assign HEX2 = ~hex3_hex0[22:16];
assign HEX3 = ~hex3_hex0[30:24];
assign HEX4 = ~hex5_hex4[ 6: 0];
assign HEX5 = ~hex5_hex4[14: 8];

//=======================================================
// HPS_to_FPGA FIFO state machine
//=======================================================
// --Check for data
//
// --Read data 
// --add one
// --write to SRAM
// --signal HPS data_ready
//=======================================================
// Controls for Qsys sram slave exported in system module
//=======================================================
wire [31:0] sram_readdata ;
reg [31:0] sram_writedata ;
reg [7:0] sram_address; 
reg sram_write ;
wire sram_clken = 1'b1;
wire sram_chipselect = 1'b1;
reg [7:0] state ;

//=======================================================
// Controls for HPS_to_FPGA FIFO
//=======================================================

reg [31:0] hps_to_fpga_readdata ; 
reg hps_to_fpga_read ; // read command
// status addresses
// base => fill level
// base+1 => status bits; 
//           bit0==1 if full
//           bit1==1 if empty
wire [31:0] hps_to_fpga_out_csr_address = 32'd1 ; // fill_level
reg[31:0] hps_to_fpga_out_csr_readdata ;
reg hps_to_fpga_out_csr_read ; // status regs read cmd
reg [7:0] HPS_to_FPGA_state ;
reg [31:0] data_buffer ;
reg data_buffer_valid ;
wire [31:0] buffer ;
wire buffer_valid ;
//=======================================================
// Controls for FPGA_to_HPS FIFO
//=======================================================

reg [31:0] fpga_to_hps_in_writedata ; 
reg fpga_to_hps_in_write ; // write command
// status addresses
// base => fill level
// base+1 => status bits; 
//           bit0==1 if full
//           bit1==1 if empty
wire [31:0] fpga_to_hps_in_csr_address = 32'd1 ; // fill_level
reg[31:0] fpga_to_hps_in_csr_readdata ;
reg fpga_to_hps_in_csr_read ; // status regs read cmd
reg [7:0] FPGA_to_HPS_state ;

//=======================================================
// do the work outlined above
always @(posedge CLOCK_50) begin // CLOCK_50

   // reset state machine and read/write controls
	if (~KEY[0]) begin
		HPS_to_FPGA_state <= 8'd0 ;
		sram_write <= 1'b0 ;
	end
	
	// =================================
	// HPS_to_FPGA state machine
	//==================================
	// Is there data in HPS_to_FPGA FIFO
	// and the last transfer is complete
	if (HPS_to_FPGA_state == 8'd0 && !(hps_to_fpga_out_csr_readdata[1]) && !data_buffer_valid)  begin
		hps_to_fpga_read <= 1'b1 ;
		HPS_to_FPGA_state <= 8'd1 ; //
	end
	
	// delay
	if (HPS_to_FPGA_state == 8'd1) begin
		// zero the read request BEFORE the data appears 
		// in the next state!
		hps_to_fpga_read <= 1'b0 ;
		HPS_to_FPGA_state <= 8'd2 ;
	end
	
	// read the word from the FIFO
	if (HPS_to_FPGA_state == 8'd2) begin
		data_buffer <= hps_to_fpga_readdata ; // send back data
		data_buffer_valid <= 1'b0 ; // set the data ready flag
		hps_to_fpga_read <= 1'b0 ;
		HPS_to_FPGA_state <= 8'd3 ; //6
	end
	if (HPS_to_FPGA_state == 8'd3) begin
		data_buffer_valid <= 1'b1 ; // set the data ready flag
		HPS_to_FPGA_state <= 8'd4 ; //6
	end
	if (HPS_to_FPGA_state == 8'd4) begin
		data_buffer_valid <= 1'b0 ; // set the data ready flag
		HPS_to_FPGA_state <= 8'd0 ; //6
	end
	// =================================
	// FPGA_to_HPS state machine
	//================================== 
	// is there space in the 
	// FPGA_to_HPS FIFO
	// and data is available
	if (FPGA_to_HPS_state==0 && !(fpga_to_hps_in_csr_readdata[0]) && buffer_valid) begin
		fpga_to_hps_in_writedata <= buffer ;	
		fpga_to_hps_in_write <= 1'b1 ;
		FPGA_to_HPS_state <= 8'd4 ;
	end
	
	// finish the write to FPGA_to_HPS FIFO
	//if (HPS_to_FPGA_state == 8'd8) begin
	if (FPGA_to_HPS_state==4) begin
		fpga_to_hps_in_write <= 1'b0 ;
//		data_buffer_valid <= 1'b0 ; // used the data, so clear flag
		FPGA_to_HPS_state <= 8'd0 ;
	end
	
	//==================================
end
   wire fifo_reset_n;
   wire reset_n_tx;
	wire auto_ram_reset;
	
    Transmitter_top 	 	
	 #(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold)) 
	TX
    ( 
		  .data_buffer_valid(data_buffer_valid),
		  .data_buffer (data_buffer),
		  .CLOCK_50			(CLOCK_50),
		  .ppm_out        (GPIO_0[0])
    );
	 
    Receiver_top 
	 #(.clk1x_freq(clk1x_freq),
	.count1x_threshold(count1x_threshold))
	RX
    (
        .CLOCK_50       (CLOCK_50),
//        .clk1m          (clk1m), 
        .reset_n        (KEY[0]),
		  .rx_data        (GPIO_1[33]),
		  .buffer(buffer),
		  .buffer_valid(buffer_valid),
//        .tx_pin         (GPIO_0[1]),
		  .offset 			(SW[9:6]),
		  .auto_ram_reset (auto_ram_reset)
    );
	 
//=======================================================
//  Structural coding
//=======================================================
    Computer_System u0 (
	 
			// 50 MHz clock bridge
			.clock_bridge_0_in_clk_clk            (CLOCK_50), //(CLOCK_50), 
		  
			// FPGA to HPS FIFO
			.fifo_fpga_to_hps_in_writedata      (fpga_to_hps_in_writedata),      // fifo_fpga_to_hps_in.writedata
			.fifo_fpga_to_hps_in_write          (fpga_to_hps_in_write),          //                     .write
			.fifo_fpga_to_hps_in_csr_address    (32'd1), //(fpga_to_hps_in_csr_address),    //  fifo_fpga_to_hps_in_csr.address
			.fifo_fpga_to_hps_in_csr_read       (1'b1), //(fpga_to_hps_in_csr_read),       //                         .read
			.fifo_fpga_to_hps_in_csr_writedata  (),  //                         .writedata
			.fifo_fpga_to_hps_in_csr_write      (1'b0),      //                         .write
			.fifo_fpga_to_hps_in_csr_readdata   (fpga_to_hps_in_csr_readdata),    //                         .readdata
		  
			// HPS to FPGA FIFO
			.fifo_hps_to_fpga_out_readdata      (hps_to_fpga_readdata),      //  fifo_hps_to_fpga_out.readdata
			.fifo_hps_to_fpga_out_read          (hps_to_fpga_read),          //   out.read
		//	.fifo_hps_to_fpga_out_waitrequest   (),                            //   out.waitrequest
			.fifo_hps_to_fpga_out_csr_address   (32'd1), //(hps_to_fpga_out_csr_address),   // fifo_hps_to_fpga_out_csr.address
			.fifo_hps_to_fpga_out_csr_read      (1'b1), //(hps_to_fpga_out_csr_read),      //   csr.read
			.fifo_hps_to_fpga_out_csr_writedata (),                              //   csr.writedata
			.fifo_hps_to_fpga_out_csr_write     (1'b0),                           //   csr.write
			.fifo_hps_to_fpga_out_csr_readdata  (hps_to_fpga_out_csr_readdata),		//   csr.readdata		  

		  
        .hex3_hex0_export                   (hex3_hex0),                   //                hex3_hex0.export
        .hex5_hex4_export                   (hex5_hex4),                   //                hex5_hex4.export
		  
			// Ethernet
			.hps_io_hps_io_gpio_inst_GPIO35	(HPS_ENET_INT_N),		  
			.hps_io_hps_io_emac1_inst_TX_CLK	(HPS_ENET_GTX_CLK),
			.hps_io_hps_io_emac1_inst_TXD0	(HPS_ENET_TX_DATA[0]),
			.hps_io_hps_io_emac1_inst_TXD1	(HPS_ENET_TX_DATA[1]),
			.hps_io_hps_io_emac1_inst_TXD2	(HPS_ENET_TX_DATA[2]),
			.hps_io_hps_io_emac1_inst_TXD3	(HPS_ENET_TX_DATA[3]),
			.hps_io_hps_io_emac1_inst_RXD0	(HPS_ENET_RX_DATA[0]),
			.hps_io_hps_io_emac1_inst_MDIO	(HPS_ENET_MDIO),
			.hps_io_hps_io_emac1_inst_MDC		(HPS_ENET_MDC),
			.hps_io_hps_io_emac1_inst_RX_CTL	(HPS_ENET_RX_DV),
			.hps_io_hps_io_emac1_inst_TX_CTL	(HPS_ENET_TX_EN),
			.hps_io_hps_io_emac1_inst_RX_CLK	(HPS_ENET_RX_CLK),
			.hps_io_hps_io_emac1_inst_RXD1	(HPS_ENET_RX_DATA[1]),
			.hps_io_hps_io_emac1_inst_RXD2	(HPS_ENET_RX_DATA[2]),
			.hps_io_hps_io_emac1_inst_RXD3	(HPS_ENET_RX_DATA[3]),
		  
			// Flash
			.hps_io_hps_io_qspi_inst_IO0	(HPS_FLASH_DATA[0]),
			.hps_io_hps_io_qspi_inst_IO1	(HPS_FLASH_DATA[1]),
			.hps_io_hps_io_qspi_inst_IO2	(HPS_FLASH_DATA[2]),
			.hps_io_hps_io_qspi_inst_IO3	(HPS_FLASH_DATA[3]),
			.hps_io_hps_io_qspi_inst_SS0	(HPS_FLASH_NCSO),
			.hps_io_hps_io_qspi_inst_CLK	(HPS_FLASH_DCLK),
		  
			// SD Card
			.hps_io_hps_io_sdio_inst_CMD	(HPS_SD_CMD),
			.hps_io_hps_io_sdio_inst_D0	(HPS_SD_DATA[0]),
			.hps_io_hps_io_sdio_inst_D1	(HPS_SD_DATA[1]),
			.hps_io_hps_io_sdio_inst_CLK	(HPS_SD_CLK),
			.hps_io_hps_io_sdio_inst_D2	(HPS_SD_DATA[2]),
			.hps_io_hps_io_sdio_inst_D3	(HPS_SD_DATA[3]),
		  
			// USB
			.hps_io_hps_io_gpio_inst_GPIO09	(HPS_CONV_USB_N),
			.hps_io_hps_io_usb1_inst_D0		(HPS_USB_DATA[0]),
			.hps_io_hps_io_usb1_inst_D1		(HPS_USB_DATA[1]),
			.hps_io_hps_io_usb1_inst_D2		(HPS_USB_DATA[2]),
			.hps_io_hps_io_usb1_inst_D3		(HPS_USB_DATA[3]),
			.hps_io_hps_io_usb1_inst_D4		(HPS_USB_DATA[4]),
			.hps_io_hps_io_usb1_inst_D5		(HPS_USB_DATA[5]),
			.hps_io_hps_io_usb1_inst_D6		(HPS_USB_DATA[6]),
			.hps_io_hps_io_usb1_inst_D7		(HPS_USB_DATA[7]),
			.hps_io_hps_io_usb1_inst_CLK		(HPS_USB_CLKOUT),
			.hps_io_hps_io_usb1_inst_STP		(HPS_USB_STP),
			.hps_io_hps_io_usb1_inst_DIR		(HPS_USB_DIR),
			.hps_io_hps_io_usb1_inst_NXT		(HPS_USB_NXT),
		  
			// SPI
			.hps_io_hps_io_spim1_inst_CLK		(HPS_SPIM_CLK),
			.hps_io_hps_io_spim1_inst_MOSI	(HPS_SPIM_MOSI),
			.hps_io_hps_io_spim1_inst_MISO	(HPS_SPIM_MISO),
			.hps_io_hps_io_spim1_inst_SS0		(HPS_SPIM_SS),
				  
			// UART
			.hps_io_hps_io_uart0_inst_RX	(HPS_UART_RX),
			.hps_io_hps_io_uart0_inst_TX	(HPS_UART_TX),
			
			// I2C
			.hps_io_hps_io_gpio_inst_GPIO48	(HPS_I2C_CONTROL),
			.hps_io_hps_io_i2c0_inst_SDA		(HPS_I2C1_SDAT),
			.hps_io_hps_io_i2c0_inst_SCL		(HPS_I2C1_SCLK),
			.hps_io_hps_io_i2c1_inst_SDA		(HPS_I2C2_SDAT),
			.hps_io_hps_io_i2c1_inst_SCL		(HPS_I2C2_SCLK),
      
				// General Purpose I/O
			.hps_io_hps_io_gpio_inst_GPIO40	(HPS_GPIO[0]),
			.hps_io_hps_io_gpio_inst_GPIO41	(HPS_GPIO[1]),
        
			// Pushbutton
			.hps_io_hps_io_gpio_inst_GPIO54	(HPS_KEY),

			// LED
			.hps_io_hps_io_gpio_inst_GPIO53	(HPS_LED),
			
			// Accelerometer
			.hps_io_hps_io_gpio_inst_GPIO61	(HPS_GSENSOR_INT),
			
			// LEDs
			.leds_export								(LEDR),
		  
			////////////////////////////////////
			// HPS Side
			////////////////////////////////////
			// DDR3 SDRAM
			.memory_mem_a			(HPS_DDR3_ADDR),
			.memory_mem_ba			(HPS_DDR3_BA),
			.memory_mem_ck			(HPS_DDR3_CK_P),
			.memory_mem_ck_n		(HPS_DDR3_CK_N),
			.memory_mem_cke		(HPS_DDR3_CKE),
			.memory_mem_cs_n		(HPS_DDR3_CS_N),
			.memory_mem_ras_n		(HPS_DDR3_RAS_N),
			.memory_mem_cas_n		(HPS_DDR3_CAS_N),
			.memory_mem_we_n		(HPS_DDR3_WE_N),
			.memory_mem_reset_n	(HPS_DDR3_RESET_N),
			.memory_mem_dq			(HPS_DDR3_DQ),
			.memory_mem_dqs		(HPS_DDR3_DQS_P),
			.memory_mem_dqs_n		(HPS_DDR3_DQS_N),
			.memory_mem_odt		(HPS_DDR3_ODT),
			.memory_mem_dm			(HPS_DDR3_DM),
			.memory_oct_rzqin		(HPS_DDR3_RZQ),
		  
			// SRAM shared block with HPS
			.onchip_sram_s1_address               (sram_address),               
			.onchip_sram_s1_clken                 (sram_clken),                 
			.onchip_sram_s1_chipselect            (sram_chipselect),            
			.onchip_sram_s1_write                 (sram_write),                 
			.onchip_sram_s1_readdata              (sram_readdata),              
			.onchip_sram_s1_writedata             (sram_writedata),             
			.onchip_sram_s1_byteenable            (4'b1111), 

			// Pushbuttons
			.pushbuttons_export						(~KEY[3:0]),
        .rx_irq_export                      (~auto_ram_reset),                      //                   rx_irq.export        
		  .sdram_clk_clk                      (sdram_clk_clk),                      //                sdram_clk.clk
		  
			// Slider Switches
			.slider_switches_export					(SW),
		  
			// Global signals
			.system_pll_ref_clk_clk					(CLOCK_50),
			.system_pll_ref_reset_reset			(1'b0),
    );

endmodule 