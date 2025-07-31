################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_UPPER_SRCS += \
../firmware/hal/CortexM3/GNU/hal.S \
../firmware/hal/CortexM3/GNU/hw_reg_access.S 

OBJS += \
./firmware/hal/CortexM3/GNU/hal.o \
./firmware/hal/CortexM3/GNU/hw_reg_access.o 

S_UPPER_DEPS += \
./firmware/hal/CortexM3/GNU/hal.d \
./firmware/hal/CortexM3/GNU/hw_reg_access.d 


# Each subdirectory must supply rules for building sources it contributes
firmware/hal/CortexM3/GNU/%.o: ../firmware/hal/CortexM3/GNU/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: GNU ARM Cross Assembler'
	arm-none-eabi-gcc -mcpu=cortex-m3 -mthumb -O0 -fmessage-length=0 -fsigned-char -ffunction-sections -fdata-sections  -g3 -x assembler-with-cpp -I"C:\Microchip\SoftConsole-v2021.1\CMSIS\V4.5\Include" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\CMSIS" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\CMSIS\startup_gcc" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers\mss_hpdma" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers\mss_nvm" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers\mss_sys_services" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers\mss_timer" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers\mss_uart" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers_config" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\drivers_config\sys_config" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\filelist" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\hal" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\hal\CortexM3" -I"C:\Users\alimu\Music\Ali\Working_Projects\NAND_FLASH_CORE\FW\nand_flash_driver\firmware\hal\CortexM3\GNU" -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


