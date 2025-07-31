set_component NAND_FLASH_sb_MSS
# Microsemi Corp.
# Date: 2025-Jul-31 15:18:37
#

create_clock -period 40 [ get_pins { MSS_ADLIB_INST/CLK_CONFIG_APB } ]
set_false_path -ignore_errors -through [ get_pins { MSS_ADLIB_INST/CONFIG_PRESET_N } ]
