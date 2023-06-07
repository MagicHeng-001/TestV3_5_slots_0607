set_global_assignment -entity "LDPCdecoder" -library "lib_LDPCdecoder" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "LDPCdecoder" -library "lib_LDPCdecoder" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "LDPCdecoder" -library "lib_LDPCdecoder" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_LDPCdecoder" -name SPD_FILE [file join $::quartus(sip_path) "../LDPCdecoder.spd"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "../../LDPCdecoder.qsys"]

set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "LDPCdecoder.v"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/LDPCdecoder_ldpc_0.v"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/LDPCdecoder_ldpc_0_decoder.v"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_ldpc_wimedia_mat.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_ldpc_wimedia_mat.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_mat.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_ldpc_wimedia_msa.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_ldpc_wimedia_msa.sv"]
set_global_assignment -library "lib_LDPCdecoder" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_msa.sv"]
