/*
 * nand.h
 *
 *  Created on: Jul 28, 2025
 *      Author: Ali Murabbi, Abhishek Verma
 */

#ifndef NAND_H_
#define NAND_H_

#include "NAND_FLASH_hw_platform.h"
#include <stdint.h>

/*==============================================================================
 * APB Definitions
 *============================================================================*/


#define NAND_BASE_ADDR NAND_APB_WRAPPER_0

#define CMD_REG_OFFSET              0x04
#define DATA_REG_OFFSET             0x00
#define STATUS_REG_OFFSET           0x0C

#define STATUS_BUSY_BIT (0<<1)


#define CHIP_1                      0x00
#define CHIP_2                      0x01

/*==============================================================================
 * NAND CONTROLLER COMMAND SET
 *============================================================================*/


#define CMD_CONTROLLER_RST          0x00
#define CMD_NAND_RST_SEQUENCE       0x01
#define CMD_READ_PARAM_PAGE         0x02
#define CMD_READ_JEDEC_ID           0x03
#define CMD_ERASE_BLOCK             0x04
#define CMD_GET_STATUS              0x05
#define CMD_GET_PAGE                0x06
#define CMD_PROGRAM_PAGE            0x07
#define CMD_GET_CONTROLLER_STATUS   0x08
#define CMD_CHIP1_ENABLE            0x09
#define CMD_CHIP_DISABLE            0x0A
#define CMD_ENABLE_WP               0x0B
#define CMD_DISABLE_WP              0x0C
#define CMD_RESET_INDEX             0x0D
#define CMD_GET_ID_BYTE             0x0E
#define CMD_GET_PARAM_PAGE_BYTE     0x0F
#define CMD_GET_DATA_PAGE_BYTE      0x10
#define CMD_WRITE_DATA_BYTE         0x11
#define CMD_GET_ADDR_BYTE           0x12
#define CMD_WRITE_ADDR_BYTE         0x13
#define CMD_CHIP2_ENABLE            0x18

/**
 * @brief Writes a command code to the controller's Command Register and waits for it to complete.
 * @param cmd The 8-bit command code to be sent to the controller.
 */
void nand_send_command(uint32_t cmd);

/**
 * @brief Reads the controller's 8-bit internal Status Register.
 * @return An 8-bit value representing the controller's status.
 */
uint8_t nand_get_status();

/**
 * @brief polls the controller's status register until the busy bit is cleared.
 */
void nand_wait_busy();

/**
 * @brief Reads a single byte from the controller's Data Register.
 * @return The 8-bit data byte read from the controller's data_out register.
 */
uint8_t nand_get_data_byte();

/**
 * @brief Writes a single byte to the controller's Data Register.
 * @param 8-bit data byte is written to the controller's data_in register.
 */
void nand_send_data_byte(uint32_t data_byte);

/**
 * @brief Enables the specified NAND flash chip via its chip enable signal.
 * @param chip_select The chip to enable (CHIP_1 or CHIP_2).
 */
void nand_select_chip(uint8_t chip_select);

/**
 * @brief Disables both NAND flash chip enable signals.
 */
void nand_disable_all_chips();

/**
 * @brief Initializes the NAND flash system by sending a reset sequence to both chips.
 * @note This should be the first function called before performing any other NAND-related operations.
 */
void nand_init();

/**
 * @brief Resets the controller's internal buffer index pointer to zero.
 */
void nand_reset_index();

/**
 * @brief Reads the 5-byte JEDEC ID from the specified NAND chip.
 * @param jedec_id Pointer to a 5-byte array where the ID will be stored.
 * @param chip_select The chip from which to read the ID (CHIP_1 or CHIP_2).
 */
void nand_read_jedec_id(uint8_t *jedec_id, uint8_t chip_select);

/**
 * @brief Reads the 256-byte ONFI parameter page from the specified chip.
 * @param param_page Pointer to a 256-byte buffer to store the parameter page data.
 * @param chip_select The chip from which to read (CHIP_1 or CHIP_2).
 */
void nand_read_param_page(uint8_t *param_page, uint8_t chip_select);


/**
 * @brief Assembles and writes the 5-byte address for a page-level operation.
 * @param column_address The starting column (byte) within the page.
 * @param page_address The page index within the block.
 * @param block_address The block index within the device.
 * @param plane_select The plane to target.
 * @note Column addresses 8640 (21C0h) through 16,383 (3FFFh) are invalid, out of bounds, do not exist in the device, and cannot be addressed.
 */
void nand_write_address(uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select);


/**
 * @brief Writes a buffer of data to a specific page in the NAND flash.
 * @param data Pointer to the data buffer to be written.
 * @param size The number of bytes to write from the buffer.
 * @param column_address The starting column address within the page.
 * @param page_address The target page address.
 * @param block_address The target block address.
 * @param plane_select The target plane address.
 * @param chip_select The target chip (CHIP_1 or CHIP_2).
 * @note Column addresses 8640 (21C0h) through 16,383 (3FFFh) are invalid, out of bounds, do not exist in the device, and cannot be addressed.
 */
void nand_write_page(uint8_t *data, uint32_t size, uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select, uint8_t chip_select);


/**
 * @brief Reads data from a specific page in the NAND flash into a buffer.
 * @param storage_buffer Pointer to a buffer where the read data will be stored.
 * @param size The number of bytes to read into the buffer.
 * @param column_address The starting column address within the page.
 * @param page_address The target page address.
 * @param block_address The target block address.
 * @param plane_select The target plane address.
 * @param chip_select The target chip (CHIP_1 or CHIP_2).
 * @note Column addresses 8640 (21C0h) through 16,383 (3FFFh) are invalid, out of bounds, do not exist in the device, and cannot be addressed.
 */
void nand_read_page(uint8_t *storage_buffer, uint32_t size, uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select, uint8_t chip_select);


#endif /* NAND_H_ */
