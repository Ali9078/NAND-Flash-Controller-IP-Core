set_device -family {SmartFusion2} -die {M2S050} -speed {STD}
read_verilog -mode system_verilog -lib COREAPB3_LIB {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_muxptob3.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3_iaddr_reg.v}
read_verilog -mode system_verilog -lib COREAPB3_LIB {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\Actel\DirectCore\CoreAPB3\4.2.100\rtl\vlog\core\coreapb3.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\CoreAPB3_C0\CoreAPB3_C0.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp_pcie_hotreset.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\Actel\DirectCore\CoreResetP\7.1.100\rtl\vlog\core\coreresetp.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\NAND_FLASH_sb\CCC_0\NAND_FLASH_sb_CCC_0_FCCC.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\NAND_FLASH_sb\FABOSC_0\NAND_FLASH_sb_FABOSC_0_OSC.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\NAND_FLASH_sb_MSS\NAND_FLASH_sb_MSS.v}
 add_include_path  {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl\io_unit.v}
 add_include_path  {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl\latch_unit.v}
 add_include_path  {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl\nand_master.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\hdl\nand_apb_wrapper.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\NAND_FLASH_sb\NAND_FLASH_sb.v}
read_verilog -mode system_verilog {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\component\work\NAND_FLASH\NAND_FLASH.v}
set_top_level {NAND_FLASH}
map_netlist
check_constraints {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\designer\NAND_FLASH\synthesis.fdc}
