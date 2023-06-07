set_global_assignment -entity "clk10m_200m" -library "lib_clk10m_200m" -name IP_TOOL_NAME "altera_pll"
set_global_assignment -entity "clk10m_200m" -library "lib_clk10m_200m" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "clk10m_200m" -library "lib_clk10m_200m" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_clk10m_200m" -name SPD_FILE [file join $::quartus(sip_path) "clk10m_200m.spd"]

set_global_assignment -library "lib_clk10m_200m" -name MISC_FILE [file join $::quartus(sip_path) "clk10m_200m_sim/clk10m_200m.vo"]
