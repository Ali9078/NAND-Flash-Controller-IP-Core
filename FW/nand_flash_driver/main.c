/*
 * nand.c
 *
 *  Created on: Jul 28, 2025
 *      Author: Ali Murabbi, Abhishek Verma
 */

#include "hal.h"
#include "nand.h"


int main(){


    uint8_t param_page[255];
    uint8_t jedec_id[5];

    nand_init();

    nand_read_jedec_id(jedec_id, CHIP_1);

    nand_read_jedec_id(jedec_id, CHIP_2);

    nand_read_param_page(param_page, CHIP_1);

    nand_read_param_page(param_page, CHIP_2);


//    uint16_t block = 4;
//    uint16_t page = 10;
//    uint8_t plane_select = 0;
//    uint16_t column_address = 0;
//
//    uint8_t data[2048];
//    for(int i = 0; i<2048;i++){
//
//        data[i] = 255 - i%255;
//    }
//
//    uint8_t data_write[32] = {"This is NAND FLASH"};
//    //nand_write_page(data, 2048, column_address,page, block, plane_select, CHIP_1);
//    nand_write_page(data_write, 32, column_address, page, block, plane_select, CHIP_1);
//    nand_read_page(data,2048, column_address,page, block,plane_select, CHIP_1);
//

    while(1){}
}
