new_project \
         -name {NAND_FLASH} \
         -location {C:\Users\alimu\Music\Ali\NAND_FLASH_CORE\designer\NAND_FLASH\NAND_FLASH_fp} \
         -mode {chain} \
         -connect_programmers {FALSE}
add_actel_device \
         -device {M2S050} \
         -name {M2S050}
enable_device \
         -name {M2S050} \
         -enable {TRUE}
save_project
close_project
