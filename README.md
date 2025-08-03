# NAND Flash Controller IP Core

## Overview

This repository contains a synthesizable **NAND Flash Controller IP Core** written in Verilog. The core provides an APB (Advanced Peripheral Bus) slave interface for easy integration into SoC designs and is designed to communicate with standard raw NAND flash memory devices.

This project is a Verilog conversion of the VHDL-based NAND flash controller originally developed by **Alexey Lyashko** and made available on [OpenCores](https://opencores.org/projects/nand_controller). It aims to provide a Verilog alternative for developers while maintaining the core logic and functionality of the original design. Furthermore, the original VHDL code has been modified to support NAND flash devices with two separate chip enable signals (`CE#` and `CE2#`), allowing it to address two distinct chips.

The IP has been successfully tested on a **Microsemi M2S050 FG484I** development board with a **Micron MT29F128G08AJAAAWP** NAND flash IC. Basic C drivers are also included to facilitate firmware development and interaction with the controller from a CPU.

## Current Status & Known Issues

The core is functional and capable of performing read and write operations to a connected NAND flash device.

However, several significant issues remain:

- **Read Data Offset Bug (295 Bytes Shift):**  
  It was found that the reason for the 295-byte shift in read data is insufficient delay between reading a page from the NAND flash and then accessing the internal buffer of the IP core to read the data. There must be a delay of a few milliseconds after the internal buffer is filled before data can be reliably read. Currently, a 25 ms delay has been added in the C drivers to address this timing requirement, mitigating the issue.

- **Major Read/Write Data Issues:**  
  - Not all pages are being read correctly after they have been programmed. This occasionally results in corrupted or incomplete data retrieval.  
  - Overwriting data on previously written pages leads to unpredictable behavior and data integrity problems. The controller does not reliably handle multiple programs on the same page, causing data corruption or loss.

- **Debugging Insights:**  
  Verification with an oscilloscope confirms the NAND flash chip is correctly sending the entire data stream from the first byte. This indicates the problem is not with the flash device or physical signal integrity but with how the Verilog core captures or stores the incoming data in its internal buffer.

**These issues are critical and must be addressed in future development and testing efforts.**


## Features

* **ONFI 2.2 Compliant:** Based on the Open NAND Flash Interface specification.
* **Dual-Chip Support:** Modified to control two separate NAND flash chips.
* **APB Slave Interface:** For simple integration into an SoC bus fabric.
* **Core Operations:** Page Read, Page Program, Block Erase, Read ID, Read Status, and more.
* **Verilog Source:** Provides a Verilog-based solution for NAND control.
* **C Drivers:** Basic C functions for initializing and operating the controller.
* **Hardware Tested:** Validated on a Microsemi M2S050 FPGA with a Micron MT29F128G08AJAAAWP flash IC.


## Hardware Connections - Microsemi M2S050 SOM

The following table details the pin connections between the NAND Flash device and the M2S050 FPGA package pins used for testing.

| Signal | FPGA Package Pin | Direction |
| :--- | :--- | :--- |
| `DQ0` | `F20` | INOUT |
| `DQ1` | `F21` | INOUT |
| `DQ2` | `K20` | INOUT |
| `DQ3` | `K21` | INOUT |
| `DQ4` | `E22` | INOUT |
| `DQ5` | `E21` | INOUT |
| `DQ6` | `B22` | INOUT |
| `DQ7` | `U19` | INOUT |
| `CLE` | `F18` | OUTPUT |
| `ALE` | `K17` | OUTPUT |
| `CE#` | `L18` | OUTPUT |
| `CE2#` | `F19` | OUTPUT |
| `RE#` | `L19` | OUTPUT |
| `WE#` | `P18` | OUTPUT |
| `WP#` | `N16` | OUTPUT |
| `RB1` | `G19` | INPUT |
| `RB2` | `H20` | INPUT |

## APB Register Map

The controller is configured and operated via three memory-mapped registers accessible over the APB interface.

| Address Offset | Register Name | R/W | Description |
| :--- | :--- | :--- | :--- |
| `0x00` | `DATA_REG` | R/W | For writing data to the internal buffers (Address/Page) or reading data from them (ID/Status/Page). |
| `0x04` | `CMD_REG` | W | Write-only register to issue commands to the controller. See the Instruction Set below. |
| `0x0C` | `STATUS_REG` | R | Read-only register to get the internal status of the controller (e.g., Busy, Error, etc.). |

## Instruction Set

Commands are issued by writing the corresponding 8-bit instruction code to the `CMD_REG` (`0x04`).

| Instruction | `Data_in` Required | `Data_out` Provided | Function |
| :--- | :--- | :--- | :--- |
| `0x00` | No | No | **Controller Reset:** Resets all internal signals to their defaults. |
| `0x01` | No | No | **NAND Reset:** Performs the NAND flash hardware reset sequence (FFh command). |
| `0x02` | No | No | **Read ONFI Parameter Page:** Reads the 256-byte parameter page into the internal buffer. |
| `0x03` | No | No | **Read JEDEC ID:** Reads the 5-byte JEDEC ID into the internal buffer. |
| `0x04` | No | No | **Block Erase:** Erases a block. The block address must be set first using commands `0x13` and `0x0d`. |
| `0x05` | No | NAND Status | **Read NAND Status:** Reads the status register of the flash chip and provides the result on `DATA_REG`. |
| `0x06` | No | No | **Read Page:** Reads a full page into the internal data buffer. The address must be set first. |
| `0x07` | No | No | **Program Page:** Programs a page with the content of the internal data buffer. The address must be set. |
| `0x08` | No | Controller Status | **Get Controller Status:** Returns the content of the controller's internal 8-bit status register. |
| `0x09` | No | No | **Enable Chip 1:** Activates Chip 1 (`CE#`) and deactivates Chip 2 (`CE2#`). |
| `0x0a` | No | No | **Disable Both Chips:** Deactivates both Chip 1 (`CE#`) and Chip 2 (`CE2#`). |
| `0x0b` | No | No | **Enable Write Protect:** Sets the WP# pin to LOW. |
| `0x0c` | No | No | **Disable Write Protect:** Sets the WP# pin to HIGH. |
| `0x0d` | No | No | **Reset Buffer Index:** Resets the internal buffer index pointer to 0. |
| `0x0e` | No | JEDEC ID Byte | **Read JEDEC ID Buffer:** Returns one byte from the ID buffer and increments the index. |
| `0x0f` | No | Parameter Page Byte | **Read Parameter Page Buffer:** Returns one byte from the parameter page buffer and increments the index. |
| `0x10` | No | Data Page Byte | **Read Data Page Buffer:** Returns one byte from the data page buffer and increments the index. |
| `0x11` | Yes (Byte) | No | **Write Data Page Buffer:** Writes one byte to the data page buffer at the current index. |
| `0x12` | No | Address Byte | **Read Address Buffer:** Returns one byte from the address buffer and increments the index. |
| `0x13` | Yes (Byte) | No | **Write Address Buffer:** Writes one byte to the address buffer at the current index. |
| `0x18` | No | No | **Enable Chip 2:** Activates Chip 2 (`CE2#`) and deactivates Chip 1 (`CE#`). |

## Simulation

This project does not use Makefiles for simulation. To test the IP, use a dedicated simulation environment like **Microsemi Libero**.

The `stimulus/` directory contains example files that can be used to drive the APB wrapper and the NAND master core to verify functionality.
