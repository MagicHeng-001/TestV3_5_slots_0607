	component LDPCencode is
		port (
			clk_clk           : in  std_logic                    := 'X';             -- clk
			reset_reset_n     : in  std_logic                    := 'X';             -- reset_n
			in_startofpacket  : in  std_logic                    := 'X';             -- startofpacket
			in_endofpacket    : in  std_logic                    := 'X';             -- endofpacket
			in_valid          : in  std_logic                    := 'X';             -- valid
			in_ready          : out std_logic;                                       -- ready
			in_in_data        : in  std_logic_vector(0 downto 0) := (others => 'X'); -- in_data
			out_startofpacket : out std_logic;                                       -- startofpacket
			out_endofpacket   : out std_logic;                                       -- endofpacket
			out_valid         : out std_logic;                                       -- valid
			out_ready         : in  std_logic                    := 'X';             -- ready
			out_out_data      : out std_logic_vector(0 downto 0)                     -- out_data
		);
	end component LDPCencode;

	u0 : component LDPCencode
		port map (
			clk_clk           => CONNECTED_TO_clk_clk,           --   clk.clk
			reset_reset_n     => CONNECTED_TO_reset_reset_n,     -- reset.reset_n
			in_startofpacket  => CONNECTED_TO_in_startofpacket,  --    in.startofpacket
			in_endofpacket    => CONNECTED_TO_in_endofpacket,    --      .endofpacket
			in_valid          => CONNECTED_TO_in_valid,          --      .valid
			in_ready          => CONNECTED_TO_in_ready,          --      .ready
			in_in_data        => CONNECTED_TO_in_in_data,        --      .in_data
			out_startofpacket => CONNECTED_TO_out_startofpacket, --   out.startofpacket
			out_endofpacket   => CONNECTED_TO_out_endofpacket,   --      .endofpacket
			out_valid         => CONNECTED_TO_out_valid,         --      .valid
			out_ready         => CONNECTED_TO_out_ready,         --      .ready
			out_out_data      => CONNECTED_TO_out_out_data       --      .out_data
		);

