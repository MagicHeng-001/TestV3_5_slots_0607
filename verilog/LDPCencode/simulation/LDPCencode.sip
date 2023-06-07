set_global_assignment -entity "LDPCencode" -library "lib_LDPCencode" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "LDPCencode" -library "lib_LDPCencode" -name IP_TOOL_VERSION "18.1"
set_global_assignment -entity "LDPCencode" -library "lib_LDPCencode" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_LDPCencode" -name SPD_FILE [file join $::quartus(sip_path) "../LDPCencode.spd"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "../../LDPCencode.qsys"]

set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "LDPCencode.v"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/LDPCencode_ldpc_0.v"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/LDPCencode_ldpc_0_encoder.v"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_auto_wimedia_enc_ROM.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_0_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_1_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_2_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_3_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_4_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_5_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_6_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc_rom_7_data.hex"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_pkg.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/mentor/altera_ldpc_wimedia_enc.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/aldec/altera_ldpc_wimedia_enc.sv"]
set_global_assignment -library "lib_LDPCencode" -name MISC_FILE [file join $::quartus(sip_path) "submodules/altera_ldpc_wimedia_enc.sv"]
