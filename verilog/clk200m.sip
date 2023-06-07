set_global_assignment -entity "clk200m" -library "lib_clk200m" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clk200m" -library "lib_clk200m" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "clk200m" -library "lib_clk200m" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clk200m" -name SPD_FILE [file join $::quartus(sip_path) "clk200m.spd"]

set_global_assignment -library "lib_clk200m" -name MISC_FILE [file join $::quartus(sip_path) "clk200m_sim/clk200m.vo"]
