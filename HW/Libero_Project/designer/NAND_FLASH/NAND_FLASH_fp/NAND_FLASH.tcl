open_project -project {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\designer\NAND_FLASH\NAND_FLASH_fp\NAND_FLASH.pro}
enable_device -name {M2S050} -enable 1
set_programming_file -name {M2S050} -file {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\designer\NAND_FLASH\NAND_FLASH.ppd}
set_programming_action -action {PROGRAM} -name {M2S050} 
run_selected_actions
save_project
close_project
