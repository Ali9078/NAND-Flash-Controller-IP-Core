/*
 * nand.c
 *
 *  Created on: Jul 28, 2025
 *      Author: Ali Murabbi, Abhishek Verma
 */


#include "nand.h"
#include "hal.h"

void nand_send_command(uint32_t cmd){
    HAL_set_32bit_reg(NAND_BASE_ADDR,CMD,cmd);
    nand_wait_busy();
}

uint8_t nand_get_status(){

    uint32_t status = HAL_get_32bit_reg(NAND_BASE_ADDR,STATUS);

    return (status & 0xff);
}


void nand_wait_busy(){
    while(nand_get_status() & STATUS_BUSY_BIT){}
}

uint8_t nand_get_data_byte(){

    uint32_t data_byte = HAL_get_32bit_reg(NAND_BASE_ADDR,DATA);
    nand_wait_busy();
    return (data_byte & 0xff);
}


void nand_send_data_byte(uint32_t data_byte){
    HAL_set_32bit_reg(NAND_BASE_ADDR,DATA,data_byte);
    nand_wait_busy();
}


void nand_select_chip(uint8_t chip_select){
    if (chip_select == CHIP_1){
        nand_send_command(CMD_CHIP1_ENABLE);
    }

    else if (chip_select == CHIP_2){
        nand_send_command(CMD_CHIP2_ENABLE);
    }
}


void nand_disable_all_chips(){
    nand_send_command(CMD_CHIP_DISABLE);
}

void nand_init(){

    nand_select_chip(CHIP_1);
    nand_send_command(CMD_NAND_RST_SEQUENCE);

    nand_select_chip(CHIP_2);
    nand_send_command(CMD_NAND_RST_SEQUENCE);

}

void nand_reset_index(){
    nand_send_command(CMD_RESET_INDEX);
}

void nand_read_jedec_id(uint8_t * jedec_id, uint8_t chip_select){

    nand_select_chip(chip_select);
    nand_reset_index();
    nand_send_command(CMD_READ_JEDEC_ID);

    nand_reset_index();
    for(int i = 0; i<5;i++){
        nand_send_command(CMD_GET_ID_BYTE);
        jedec_id[i] = nand_get_data_byte();
    }

    nand_disable_all_chips();
}

void nand_read_param_page(uint8_t* param_page, uint8_t chip_select){

    nand_select_chip(chip_select);
    nand_reset_index();
    nand_send_command(CMD_READ_PARAM_PAGE);
    nand_reset_index();

    for(int i = 0; i<256;i++){
        nand_send_command(CMD_GET_PARAM_PAGE_BYTE);

        param_page[i] = nand_get_data_byte();

   }

    nand_disable_all_chips();

}


void nand_write_address(uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select){

    uint8_t addr[5];

    addr[0] = column_address & 0xff;
    addr[1] = (column_address & 0x3FFF) >> 8 & 0x3F;
    addr[2] = (plane_select & 0x01) << 7 | (page_address & 0x7F);
    addr[3] = (block_address & 0xFF);
    addr[4] = (block_address >> 8) & 0x07;

    nand_reset_index();
    for(int i=0; i<5; i++){
        nand_send_data_byte(addr[i]);
        nand_send_command(CMD_WRITE_ADDR_BYTE);
    }

    nand_reset_index();

}

void nand_write_page(uint8_t *data, uint32_t size, uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select, uint8_t chip_select){

    nand_select_chip(chip_select);

    nand_reset_index();

    nand_send_command(CMD_DISABLE_WP);

    for(int i=0; i<size; i++){
        uint8_t myval = data[i];
        nand_send_data_byte(myval);
        nand_send_command(CMD_WRITE_DATA_BYTE);
    }

    nand_write_address(column_address, page_address, block_address, plane_select);

    nand_send_command(CMD_PROGRAM_PAGE);

    nand_send_command(CMD_ENABLE_WP);
    nand_disable_all_chips();
}

void nand_read_page(uint8_t *storage_buffer, uint32_t size, uint16_t column_address, uint16_t page_address, uint16_t block_address, uint8_t plane_select, uint8_t chip_select){

    nand_select_chip(chip_select);

    nand_write_address(column_address, page_address, block_address, plane_select);

    nand_send_command(CMD_GET_PAGE);

    nand_reset_index();

    for(int i=0; i<size; i++){
        nand_send_command(CMD_GET_DATA_PAGE_BYTE);
        storage_buffer[i] = nand_get_data_byte();
    }

    nand_disable_all_chips();
}



