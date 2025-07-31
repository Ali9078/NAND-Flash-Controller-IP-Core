`timescale 1 ns/100 ps
// Version: 


module MSS_050(
       CAN_RXBUS_MGPIO3A_H2F_A,
       CAN_RXBUS_MGPIO3A_H2F_B,
       CAN_TX_EBL_MGPIO4A_H2F_A,
       CAN_TX_EBL_MGPIO4A_H2F_B,
       CAN_TXBUS_MGPIO2A_H2F_A,
       CAN_TXBUS_MGPIO2A_H2F_B,
       CLK_CONFIG_APB,
       COMMS_INT,
       CONFIG_PRESET_N,
       EDAC_ERROR,
       F_FM0_RDATA,
       F_FM0_READYOUT,
       F_FM0_RESP,
       F_FM1_RDATA,
       F_FM1_READYOUT,
       F_FM1_RESP,
       F_HM0_ADDR,
       F_HM0_ENABLE,
       F_HM0_SEL,
       F_HM0_SIZE,
       F_HM0_TRANS1,
       F_HM0_WDATA,
       F_HM0_WRITE,
       F_HM1_ADDR,
       F_HM1_ENABLE,
       F_HM1_SEL,
       F_HM1_SIZE,
       F_HM1_TRANS1,
       F_HM1_WDATA,
       F_HM1_WRITE,
       FAB_CHRGVBUS,
       FAB_DISCHRGVBUS,
       FAB_DMPULLDOWN,
       FAB_DPPULLDOWN,
       FAB_DRVVBUS,
       FAB_IDPULLUP,
       FAB_OPMODE,
       FAB_SUSPENDM,
       FAB_TERMSEL,
       FAB_TXVALID,
       FAB_VCONTROL,
       FAB_VCONTROLLOADM,
       FAB_XCVRSEL,
       FAB_XDATAOUT,
       FACC_GLMUX_SEL,
       FIC32_0_MASTER,
       FIC32_1_MASTER,
       FPGA_RESET_N,
       GTX_CLK,
       H2F_INTERRUPT,
       H2F_NMI,
       H2FCALIB,
       I2C0_SCL_MGPIO31B_H2F_A,
       I2C0_SCL_MGPIO31B_H2F_B,
       I2C0_SDA_MGPIO30B_H2F_A,
       I2C0_SDA_MGPIO30B_H2F_B,
       I2C1_SCL_MGPIO1A_H2F_A,
       I2C1_SCL_MGPIO1A_H2F_B,
       I2C1_SDA_MGPIO0A_H2F_A,
       I2C1_SDA_MGPIO0A_H2F_B,
       MDCF,
       MDOENF,
       MDOF,
       MMUART0_CTS_MGPIO19B_H2F_A,
       MMUART0_CTS_MGPIO19B_H2F_B,
       MMUART0_DCD_MGPIO22B_H2F_A,
       MMUART0_DCD_MGPIO22B_H2F_B,
       MMUART0_DSR_MGPIO20B_H2F_A,
       MMUART0_DSR_MGPIO20B_H2F_B,
       MMUART0_DTR_MGPIO18B_H2F_A,
       MMUART0_DTR_MGPIO18B_H2F_B,
       MMUART0_RI_MGPIO21B_H2F_A,
       MMUART0_RI_MGPIO21B_H2F_B,
       MMUART0_RTS_MGPIO17B_H2F_A,
       MMUART0_RTS_MGPIO17B_H2F_B,
       MMUART0_RXD_MGPIO28B_H2F_A,
       MMUART0_RXD_MGPIO28B_H2F_B,
       MMUART0_SCK_MGPIO29B_H2F_A,
       MMUART0_SCK_MGPIO29B_H2F_B,
       MMUART0_TXD_MGPIO27B_H2F_A,
       MMUART0_TXD_MGPIO27B_H2F_B,
       MMUART1_DTR_MGPIO12B_H2F_A,
       MMUART1_RTS_MGPIO11B_H2F_A,
       MMUART1_RTS_MGPIO11B_H2F_B,
       MMUART1_RXD_MGPIO26B_H2F_A,
       MMUART1_RXD_MGPIO26B_H2F_B,
       MMUART1_SCK_MGPIO25B_H2F_A,
       MMUART1_SCK_MGPIO25B_H2F_B,
       MMUART1_TXD_MGPIO24B_H2F_A,
       MMUART1_TXD_MGPIO24B_H2F_B,
       MPLL_LOCK,
       PER2_FABRIC_PADDR,
       PER2_FABRIC_PENABLE,
       PER2_FABRIC_PSEL,
       PER2_FABRIC_PWDATA,
       PER2_FABRIC_PWRITE,
       RTC_MATCH,
       SLEEPDEEP,
       SLEEPHOLDACK,
       SLEEPING,
       SMBALERT_NO0,
       SMBALERT_NO1,
       SMBSUS_NO0,
       SMBSUS_NO1,
       SPI0_CLK_OUT,
       SPI0_SDI_MGPIO5A_H2F_A,
       SPI0_SDI_MGPIO5A_H2F_B,
       SPI0_SDO_MGPIO6A_H2F_A,
       SPI0_SDO_MGPIO6A_H2F_B,
       SPI0_SS0_MGPIO7A_H2F_A,
       SPI0_SS0_MGPIO7A_H2F_B,
       SPI0_SS1_MGPIO8A_H2F_A,
       SPI0_SS1_MGPIO8A_H2F_B,
       SPI0_SS2_MGPIO9A_H2F_A,
       SPI0_SS2_MGPIO9A_H2F_B,
       SPI0_SS3_MGPIO10A_H2F_A,
       SPI0_SS3_MGPIO10A_H2F_B,
       SPI0_SS4_MGPIO19A_H2F_A,
       SPI0_SS5_MGPIO20A_H2F_A,
       SPI0_SS6_MGPIO21A_H2F_A,
       SPI0_SS7_MGPIO22A_H2F_A,
       SPI1_CLK_OUT,
       SPI1_SDI_MGPIO11A_H2F_A,
       SPI1_SDI_MGPIO11A_H2F_B,
       SPI1_SDO_MGPIO12A_H2F_A,
       SPI1_SDO_MGPIO12A_H2F_B,
       SPI1_SS0_MGPIO13A_H2F_A,
       SPI1_SS0_MGPIO13A_H2F_B,
       SPI1_SS1_MGPIO14A_H2F_A,
       SPI1_SS1_MGPIO14A_H2F_B,
       SPI1_SS2_MGPIO15A_H2F_A,
       SPI1_SS2_MGPIO15A_H2F_B,
       SPI1_SS3_MGPIO16A_H2F_A,
       SPI1_SS3_MGPIO16A_H2F_B,
       SPI1_SS4_MGPIO17A_H2F_A,
       SPI1_SS5_MGPIO18A_H2F_A,
       SPI1_SS6_MGPIO23A_H2F_A,
       SPI1_SS7_MGPIO24A_H2F_A,
       TCGF,
       TRACECLK,
       TRACEDATA,
       TX_CLK,
       TX_ENF,
       TX_ERRF,
       TXCTL_EN_RIF,
       TXD_RIF,
       TXDF,
       TXEV,
       WDOGTIMEOUT,
       F_ARREADY_HREADYOUT1,
       F_AWREADY_HREADYOUT0,
       F_BID,
       F_BRESP_HRESP0,
       F_BVALID,
       F_RDATA_HRDATA01,
       F_RID,
       F_RLAST,
       F_RRESP_HRESP1,
       F_RVALID,
       F_WREADY,
       MDDR_FABRIC_PRDATA,
       MDDR_FABRIC_PREADY,
       MDDR_FABRIC_PSLVERR,
       REV_ARADDR,
       REV_ARBURST,
       REV_ARID,
       REV_ARLEN,
       REV_ARLOCK,
       REV_ARSIZE,
       REV_AWADDR,
       REV_AWLOCK,
       REV_AWSIZE,
       REV_RREADY,
       REV_WID,
       REV_WSTRB,
       CAN_RXBUS_F2H_SCP,
       CAN_TX_EBL_F2H_SCP,
       CAN_TXBUS_F2H_SCP,
       CLK_BASE,
       COLF,
       CRSF,
       F2_DMAREADY,
       F2H_INTERRUPT,
       F2HCALIB,
       F_DMAREADY,
       F_FM0_ADDR,
       F_FM0_ENABLE,
       F_FM0_MASTLOCK,
       F_FM0_READY,
       F_FM0_SEL,
       F_FM0_SIZE,
       F_FM0_TRANS1,
       F_FM0_WDATA,
       F_FM0_WRITE,
       F_FM1_ADDR,
       F_FM1_ENABLE,
       F_FM1_MASTLOCK,
       F_FM1_READY,
       F_FM1_SEL,
       F_FM1_SIZE,
       F_FM1_TRANS1,
       F_FM1_WDATA,
       F_FM1_WRITE,
       F_HM0_RDATA,
       F_HM0_READY,
       F_HM0_RESP,
       F_HM1_RDATA,
       F_HM1_READY,
       F_HM1_RESP,
       FAB_AVALID,
       FAB_HOSTDISCON,
       FAB_IDDIG,
       FAB_LINESTATE,
       FAB_M3_RESET_N,
       FAB_PLL_LOCK,
       FAB_RXACTIVE,
       FAB_RXERROR,
       FAB_RXVALID,
       FAB_RXVALIDH,
       FAB_SESSEND,
       FAB_TXREADY,
       FAB_VBUSVALID,
       FAB_VSTATUS,
       FAB_XDATAIN,
       GTX_CLKPF,
       I2C0_BCLK,
       I2C0_SCL_F2H_SCP,
       I2C0_SDA_F2H_SCP,
       I2C1_BCLK,
       I2C1_SCL_F2H_SCP,
       I2C1_SDA_F2H_SCP,
       MDIF,
       MGPIO0A_F2H_GPIN,
       MGPIO10A_F2H_GPIN,
       MGPIO11A_F2H_GPIN,
       MGPIO11B_F2H_GPIN,
       MGPIO12A_F2H_GPIN,
       MGPIO13A_F2H_GPIN,
       MGPIO14A_F2H_GPIN,
       MGPIO15A_F2H_GPIN,
       MGPIO16A_F2H_GPIN,
       MGPIO17B_F2H_GPIN,
       MGPIO18B_F2H_GPIN,
       MGPIO19B_F2H_GPIN,
       MGPIO1A_F2H_GPIN,
       MGPIO20B_F2H_GPIN,
       MGPIO21B_F2H_GPIN,
       MGPIO22B_F2H_GPIN,
       MGPIO24B_F2H_GPIN,
       MGPIO25B_F2H_GPIN,
       MGPIO26B_F2H_GPIN,
       MGPIO27B_F2H_GPIN,
       MGPIO28B_F2H_GPIN,
       MGPIO29B_F2H_GPIN,
       MGPIO2A_F2H_GPIN,
       MGPIO30B_F2H_GPIN,
       MGPIO31B_F2H_GPIN,
       MGPIO3A_F2H_GPIN,
       MGPIO4A_F2H_GPIN,
       MGPIO5A_F2H_GPIN,
       MGPIO6A_F2H_GPIN,
       MGPIO7A_F2H_GPIN,
       MGPIO8A_F2H_GPIN,
       MGPIO9A_F2H_GPIN,
       MMUART0_CTS_F2H_SCP,
       MMUART0_DCD_F2H_SCP,
       MMUART0_DSR_F2H_SCP,
       MMUART0_DTR_F2H_SCP,
       MMUART0_RI_F2H_SCP,
       MMUART0_RTS_F2H_SCP,
       MMUART0_RXD_F2H_SCP,
       MMUART0_SCK_F2H_SCP,
       MMUART0_TXD_F2H_SCP,
       MMUART1_CTS_F2H_SCP,
       MMUART1_DCD_F2H_SCP,
       MMUART1_DSR_F2H_SCP,
       MMUART1_RI_F2H_SCP,
       MMUART1_RTS_F2H_SCP,
       MMUART1_RXD_F2H_SCP,
       MMUART1_SCK_F2H_SCP,
       MMUART1_TXD_F2H_SCP,
       PER2_FABRIC_PRDATA,
       PER2_FABRIC_PREADY,
       PER2_FABRIC_PSLVERR,
       RCGF,
       RX_CLKPF,
       RX_DVF,
       RX_ERRF,
       RX_EV,
       RXDF,
       SLEEPHOLDREQ,
       SMBALERT_NI0,
       SMBALERT_NI1,
       SMBSUS_NI0,
       SMBSUS_NI1,
       SPI0_CLK_IN,
       SPI0_SDI_F2H_SCP,
       SPI0_SDO_F2H_SCP,
       SPI0_SS0_F2H_SCP,
       SPI0_SS1_F2H_SCP,
       SPI0_SS2_F2H_SCP,
       SPI0_SS3_F2H_SCP,
       SPI1_CLK_IN,
       SPI1_SDI_F2H_SCP,
       SPI1_SDO_F2H_SCP,
       SPI1_SS0_F2H_SCP,
       SPI1_SS1_F2H_SCP,
       SPI1_SS2_F2H_SCP,
       SPI1_SS3_F2H_SCP,
       TX_CLKPF,
       USER_MSS_GPIO_RESET_N,
       USER_MSS_RESET_N,
       XCLK_FAB,
       CLK_MDDR_APB,
       F_ARADDR_HADDR1,
       F_ARBURST_HTRANS1,
       F_ARID_HSEL1,
       F_ARLEN_HBURST1,
       F_ARLOCK_HMASTLOCK1,
       F_ARSIZE_HSIZE1,
       F_ARVALID_HWRITE1,
       F_AWADDR_HADDR0,
       F_AWBURST_HTRANS0,
       F_AWID_HSEL0,
       F_AWLEN_HBURST0,
       F_AWLOCK_HMASTLOCK0,
       F_AWSIZE_HSIZE0,
       F_AWVALID_HWRITE0,
       F_BREADY,
       F_RMW_AXI,
       F_RREADY,
       F_WDATA_HWDATA01,
       F_WID_HREADY01,
       F_WLAST,
       F_WSTRB,
       F_WVALID,
       FPGA_MDDR_ARESET_N,
       MDDR_FABRIC_PADDR,
       MDDR_FABRIC_PENABLE,
       MDDR_FABRIC_PSEL,
       MDDR_FABRIC_PWDATA,
       MDDR_FABRIC_PWRITE,
       PRESET_N,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_IN,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_IN,
       DM_IN,
       DRAM_DQ_IN,
       DRAM_DQS_IN,
       DRAM_FIFO_WE_IN,
       I2C0_SCL_USBC_DATA1_MGPIO31B_IN,
       I2C0_SDA_USBC_DATA0_MGPIO30B_IN,
       I2C1_SCL_USBA_DATA4_MGPIO1A_IN,
       I2C1_SDA_USBA_DATA3_MGPIO0A_IN,
       MGPIO0B_IN,
       MGPIO10B_IN,
       MGPIO1B_IN,
       MGPIO25A_IN,
       MGPIO26A_IN,
       MGPIO27A_IN,
       MGPIO28A_IN,
       MGPIO29A_IN,
       MGPIO2B_IN,
       MGPIO30A_IN,
       MGPIO31A_IN,
       MGPIO3B_IN,
       MGPIO4B_IN,
       MGPIO5B_IN,
       MGPIO6B_IN,
       MGPIO7B_IN,
       MGPIO8B_IN,
       MGPIO9B_IN,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_IN,
       MMUART0_DCD_MGPIO22B_IN,
       MMUART0_DSR_MGPIO20B_IN,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_IN,
       MMUART0_RI_MGPIO21B_IN,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_IN,
       MMUART0_RXD_USBC_STP_MGPIO28B_IN,
       MMUART0_SCK_USBC_NXT_MGPIO29B_IN,
       MMUART0_TXD_USBC_DIR_MGPIO27B_IN,
       MMUART1_CTS_MGPIO13B_IN,
       MMUART1_DCD_MGPIO16B_IN,
       MMUART1_DSR_MGPIO14B_IN,
       MMUART1_DTR_MGPIO12B_IN,
       MMUART1_RI_MGPIO15B_IN,
       MMUART1_RTS_MGPIO11B_IN,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_IN,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_IN,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_IN,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN,
       RGMII_MDC_RMII_MDC_IN,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN,
       RGMII_RX_CLK_IN,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN,
       RGMII_RXD3_USBB_DATA4_IN,
       RGMII_TX_CLK_IN,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_IN,
       RGMII_TXD1_RMII_TXD1_USBB_STP_IN,
       RGMII_TXD2_USBB_DATA5_IN,
       RGMII_TXD3_USBB_DATA6_IN,
       SPI0_SCK_USBA_XCLK_IN,
       SPI0_SDI_USBA_DIR_MGPIO5A_IN,
       SPI0_SDO_USBA_STP_MGPIO6A_IN,
       SPI0_SS0_USBA_NXT_MGPIO7A_IN,
       SPI0_SS1_USBA_DATA5_MGPIO8A_IN,
       SPI0_SS2_USBA_DATA6_MGPIO9A_IN,
       SPI0_SS3_USBA_DATA7_MGPIO10A_IN,
       SPI0_SS4_MGPIO19A_IN,
       SPI0_SS5_MGPIO20A_IN,
       SPI0_SS6_MGPIO21A_IN,
       SPI0_SS7_MGPIO22A_IN,
       SPI1_SCK_IN,
       SPI1_SDI_MGPIO11A_IN,
       SPI1_SDO_MGPIO12A_IN,
       SPI1_SS0_MGPIO13A_IN,
       SPI1_SS1_MGPIO14A_IN,
       SPI1_SS2_MGPIO15A_IN,
       SPI1_SS3_MGPIO16A_IN,
       SPI1_SS4_MGPIO17A_IN,
       SPI1_SS5_MGPIO18A_IN,
       SPI1_SS6_MGPIO23A_IN,
       SPI1_SS7_MGPIO24A_IN,
       USBC_XCLK_IN,
       USBD_DATA0_IN,
       USBD_DATA1_IN,
       USBD_DATA2_IN,
       USBD_DATA3_IN,
       USBD_DATA4_IN,
       USBD_DATA5_IN,
       USBD_DATA6_IN,
       USBD_DATA7_MGPIO23B_IN,
       USBD_DIR_IN,
       USBD_NXT_IN,
       USBD_STP_IN,
       USBD_XCLK_IN,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT,
       DRAM_ADDR,
       DRAM_BA,
       DRAM_CASN,
       DRAM_CKE,
       DRAM_CLK,
       DRAM_CSN,
       DRAM_DM_RDQS_OUT,
       DRAM_DQ_OUT,
       DRAM_DQS_OUT,
       DRAM_FIFO_WE_OUT,
       DRAM_ODT,
       DRAM_RASN,
       DRAM_RSTN,
       DRAM_WEN,
       I2C0_SCL_USBC_DATA1_MGPIO31B_OUT,
       I2C0_SDA_USBC_DATA0_MGPIO30B_OUT,
       I2C1_SCL_USBA_DATA4_MGPIO1A_OUT,
       I2C1_SDA_USBA_DATA3_MGPIO0A_OUT,
       MGPIO0B_OUT,
       MGPIO10B_OUT,
       MGPIO1B_OUT,
       MGPIO25A_OUT,
       MGPIO26A_OUT,
       MGPIO27A_OUT,
       MGPIO28A_OUT,
       MGPIO29A_OUT,
       MGPIO2B_OUT,
       MGPIO30A_OUT,
       MGPIO31A_OUT,
       MGPIO3B_OUT,
       MGPIO4B_OUT,
       MGPIO5B_OUT,
       MGPIO6B_OUT,
       MGPIO7B_OUT,
       MGPIO8B_OUT,
       MGPIO9B_OUT,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT,
       MMUART0_DCD_MGPIO22B_OUT,
       MMUART0_DSR_MGPIO20B_OUT,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT,
       MMUART0_RI_MGPIO21B_OUT,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT,
       MMUART0_RXD_USBC_STP_MGPIO28B_OUT,
       MMUART0_SCK_USBC_NXT_MGPIO29B_OUT,
       MMUART0_TXD_USBC_DIR_MGPIO27B_OUT,
       MMUART1_CTS_MGPIO13B_OUT,
       MMUART1_DCD_MGPIO16B_OUT,
       MMUART1_DSR_MGPIO14B_OUT,
       MMUART1_DTR_MGPIO12B_OUT,
       MMUART1_RI_MGPIO15B_OUT,
       MMUART1_RTS_MGPIO11B_OUT,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT,
       RGMII_MDC_RMII_MDC_OUT,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT,
       RGMII_RX_CLK_OUT,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT,
       RGMII_RXD3_USBB_DATA4_OUT,
       RGMII_TX_CLK_OUT,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT,
       RGMII_TXD1_RMII_TXD1_USBB_STP_OUT,
       RGMII_TXD2_USBB_DATA5_OUT,
       RGMII_TXD3_USBB_DATA6_OUT,
       SPI0_SCK_USBA_XCLK_OUT,
       SPI0_SDI_USBA_DIR_MGPIO5A_OUT,
       SPI0_SDO_USBA_STP_MGPIO6A_OUT,
       SPI0_SS0_USBA_NXT_MGPIO7A_OUT,
       SPI0_SS1_USBA_DATA5_MGPIO8A_OUT,
       SPI0_SS2_USBA_DATA6_MGPIO9A_OUT,
       SPI0_SS3_USBA_DATA7_MGPIO10A_OUT,
       SPI0_SS4_MGPIO19A_OUT,
       SPI0_SS5_MGPIO20A_OUT,
       SPI0_SS6_MGPIO21A_OUT,
       SPI0_SS7_MGPIO22A_OUT,
       SPI1_SCK_OUT,
       SPI1_SDI_MGPIO11A_OUT,
       SPI1_SDO_MGPIO12A_OUT,
       SPI1_SS0_MGPIO13A_OUT,
       SPI1_SS1_MGPIO14A_OUT,
       SPI1_SS2_MGPIO15A_OUT,
       SPI1_SS3_MGPIO16A_OUT,
       SPI1_SS4_MGPIO17A_OUT,
       SPI1_SS5_MGPIO18A_OUT,
       SPI1_SS6_MGPIO23A_OUT,
       SPI1_SS7_MGPIO24A_OUT,
       USBC_XCLK_OUT,
       USBD_DATA0_OUT,
       USBD_DATA1_OUT,
       USBD_DATA2_OUT,
       USBD_DATA3_OUT,
       USBD_DATA4_OUT,
       USBD_DATA5_OUT,
       USBD_DATA6_OUT,
       USBD_DATA7_MGPIO23B_OUT,
       USBD_DIR_OUT,
       USBD_NXT_OUT,
       USBD_STP_OUT,
       USBD_XCLK_OUT,
       CAN_RXBUS_USBA_DATA1_MGPIO3A_OE,
       CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE,
       CAN_TXBUS_USBA_DATA0_MGPIO2A_OE,
       DM_OE,
       DRAM_DQ_OE,
       DRAM_DQS_OE,
       I2C0_SCL_USBC_DATA1_MGPIO31B_OE,
       I2C0_SDA_USBC_DATA0_MGPIO30B_OE,
       I2C1_SCL_USBA_DATA4_MGPIO1A_OE,
       I2C1_SDA_USBA_DATA3_MGPIO0A_OE,
       MGPIO0B_OE,
       MGPIO10B_OE,
       MGPIO1B_OE,
       MGPIO25A_OE,
       MGPIO26A_OE,
       MGPIO27A_OE,
       MGPIO28A_OE,
       MGPIO29A_OE,
       MGPIO2B_OE,
       MGPIO30A_OE,
       MGPIO31A_OE,
       MGPIO3B_OE,
       MGPIO4B_OE,
       MGPIO5B_OE,
       MGPIO6B_OE,
       MGPIO7B_OE,
       MGPIO8B_OE,
       MGPIO9B_OE,
       MMUART0_CTS_USBC_DATA7_MGPIO19B_OE,
       MMUART0_DCD_MGPIO22B_OE,
       MMUART0_DSR_MGPIO20B_OE,
       MMUART0_DTR_USBC_DATA6_MGPIO18B_OE,
       MMUART0_RI_MGPIO21B_OE,
       MMUART0_RTS_USBC_DATA5_MGPIO17B_OE,
       MMUART0_RXD_USBC_STP_MGPIO28B_OE,
       MMUART0_SCK_USBC_NXT_MGPIO29B_OE,
       MMUART0_TXD_USBC_DIR_MGPIO27B_OE,
       MMUART1_CTS_MGPIO13B_OE,
       MMUART1_DCD_MGPIO16B_OE,
       MMUART1_DSR_MGPIO14B_OE,
       MMUART1_DTR_MGPIO12B_OE,
       MMUART1_RI_MGPIO15B_OE,
       MMUART1_RTS_MGPIO11B_OE,
       MMUART1_RXD_USBC_DATA3_MGPIO26B_OE,
       MMUART1_SCK_USBC_DATA4_MGPIO25B_OE,
       MMUART1_TXD_USBC_DATA2_MGPIO24B_OE,
       RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE,
       RGMII_MDC_RMII_MDC_OE,
       RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE,
       RGMII_RX_CLK_OE,
       RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE,
       RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE,
       RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE,
       RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE,
       RGMII_RXD3_USBB_DATA4_OE,
       RGMII_TX_CLK_OE,
       RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE,
       RGMII_TXD0_RMII_TXD0_USBB_DIR_OE,
       RGMII_TXD1_RMII_TXD1_USBB_STP_OE,
       RGMII_TXD2_USBB_DATA5_OE,
       RGMII_TXD3_USBB_DATA6_OE,
       SPI0_SCK_USBA_XCLK_OE,
       SPI0_SDI_USBA_DIR_MGPIO5A_OE,
       SPI0_SDO_USBA_STP_MGPIO6A_OE,
       SPI0_SS0_USBA_NXT_MGPIO7A_OE,
       SPI0_SS1_USBA_DATA5_MGPIO8A_OE,
       SPI0_SS2_USBA_DATA6_MGPIO9A_OE,
       SPI0_SS3_USBA_DATA7_MGPIO10A_OE,
       SPI0_SS4_MGPIO19A_OE,
       SPI0_SS5_MGPIO20A_OE,
       SPI0_SS6_MGPIO21A_OE,
       SPI0_SS7_MGPIO22A_OE,
       SPI1_SCK_OE,
       SPI1_SDI_MGPIO11A_OE,
       SPI1_SDO_MGPIO12A_OE,
       SPI1_SS0_MGPIO13A_OE,
       SPI1_SS1_MGPIO14A_OE,
       SPI1_SS2_MGPIO15A_OE,
       SPI1_SS3_MGPIO16A_OE,
       SPI1_SS4_MGPIO17A_OE,
       SPI1_SS5_MGPIO18A_OE,
       SPI1_SS6_MGPIO23A_OE,
       SPI1_SS7_MGPIO24A_OE,
       USBC_XCLK_OE,
       USBD_DATA0_OE,
       USBD_DATA1_OE,
       USBD_DATA2_OE,
       USBD_DATA3_OE,
       USBD_DATA4_OE,
       USBD_DATA5_OE,
       USBD_DATA6_OE,
       USBD_DATA7_MGPIO23B_OE,
       USBD_DIR_OE,
       USBD_NXT_OE,
       USBD_STP_OE,
       USBD_XCLK_OE
    )
/* synthesis black_box

pragma attribute MSS_050 ment_tsu0 CAN_RXBUS_F2H_SCP->CLK_BASE+1.397
pragma attribute MSS_050 ment_tsu1 F2HCALIB->CLK_BASE+1.855
pragma attribute MSS_050 ment_tsu2 F2H_INTERRUPT[0]->CLK_BASE+1.500
pragma attribute MSS_050 ment_tsu3 F2H_INTERRUPT[10]->CLK_BASE+1.544
pragma attribute MSS_050 ment_tsu4 F2H_INTERRUPT[11]->CLK_BASE+1.411
pragma attribute MSS_050 ment_tsu5 F2H_INTERRUPT[12]->CLK_BASE+1.420
pragma attribute MSS_050 ment_tsu6 F2H_INTERRUPT[13]->CLK_BASE+1.271
pragma attribute MSS_050 ment_tsu7 F2H_INTERRUPT[14]->CLK_BASE+1.712
pragma attribute MSS_050 ment_tsu8 F2H_INTERRUPT[15]->CLK_BASE+1.854
pragma attribute MSS_050 ment_tsu9 F2H_INTERRUPT[1]->CLK_BASE+1.551
pragma attribute MSS_050 ment_tsu10 F2H_INTERRUPT[2]->CLK_BASE+1.642
pragma attribute MSS_050 ment_tsu11 F2H_INTERRUPT[3]->CLK_BASE+1.580
pragma attribute MSS_050 ment_tsu12 F2H_INTERRUPT[4]->CLK_BASE+1.535
pragma attribute MSS_050 ment_tsu13 F2H_INTERRUPT[5]->CLK_BASE+1.614
pragma attribute MSS_050 ment_tsu14 F2H_INTERRUPT[6]->CLK_BASE+1.750
pragma attribute MSS_050 ment_tsu15 F2H_INTERRUPT[7]->CLK_BASE+1.705
pragma attribute MSS_050 ment_tsu16 F2H_INTERRUPT[8]->CLK_BASE+1.560
pragma attribute MSS_050 ment_tsu17 F2H_INTERRUPT[9]->CLK_BASE+1.430
pragma attribute MSS_050 ment_tsu18 F_FM0_ADDR[0]->CLK_BASE+0.591
pragma attribute MSS_050 ment_tsu19 F_FM0_ADDR[10]->CLK_BASE+0.891
pragma attribute MSS_050 ment_tsu20 F_FM0_ADDR[11]->CLK_BASE+1.017
pragma attribute MSS_050 ment_tsu21 F_FM0_ADDR[12]->CLK_BASE+0.655
pragma attribute MSS_050 ment_tsu22 F_FM0_ADDR[13]->CLK_BASE+0.900
pragma attribute MSS_050 ment_tsu23 F_FM0_ADDR[14]->CLK_BASE+0.942
pragma attribute MSS_050 ment_tsu24 F_FM0_ADDR[15]->CLK_BASE+0.788
pragma attribute MSS_050 ment_tsu25 F_FM0_ADDR[16]->CLK_BASE+0.987
pragma attribute MSS_050 ment_tsu26 F_FM0_ADDR[17]->CLK_BASE+0.417
pragma attribute MSS_050 ment_tsu27 F_FM0_ADDR[18]->CLK_BASE+0.846
pragma attribute MSS_050 ment_tsu28 F_FM0_ADDR[19]->CLK_BASE+1.710
pragma attribute MSS_050 ment_tsu29 F_FM0_ADDR[1]->CLK_BASE+1.406
pragma attribute MSS_050 ment_tsu30 F_FM0_ADDR[20]->CLK_BASE+1.445
pragma attribute MSS_050 ment_tsu31 F_FM0_ADDR[21]->CLK_BASE+0.829
pragma attribute MSS_050 ment_tsu32 F_FM0_ADDR[22]->CLK_BASE+0.922
pragma attribute MSS_050 ment_tsu33 F_FM0_ADDR[23]->CLK_BASE+0.584
pragma attribute MSS_050 ment_tsu34 F_FM0_ADDR[24]->CLK_BASE+1.155
pragma attribute MSS_050 ment_tsu35 F_FM0_ADDR[25]->CLK_BASE+0.998
pragma attribute MSS_050 ment_tsu36 F_FM0_ADDR[26]->CLK_BASE+1.100
pragma attribute MSS_050 ment_tsu37 F_FM0_ADDR[27]->CLK_BASE+0.740
pragma attribute MSS_050 ment_tsu38 F_FM0_ADDR[28]->CLK_BASE+0.966
pragma attribute MSS_050 ment_tsu39 F_FM0_ADDR[29]->CLK_BASE+0.823
pragma attribute MSS_050 ment_tsu40 F_FM0_ADDR[2]->CLK_BASE+0.545
pragma attribute MSS_050 ment_tsu41 F_FM0_ADDR[30]->CLK_BASE+0.781
pragma attribute MSS_050 ment_tsu42 F_FM0_ADDR[31]->CLK_BASE+0.752
pragma attribute MSS_050 ment_tsu43 F_FM0_ADDR[3]->CLK_BASE+0.646
pragma attribute MSS_050 ment_tsu44 F_FM0_ADDR[4]->CLK_BASE+0.682
pragma attribute MSS_050 ment_tsu45 F_FM0_ADDR[5]->CLK_BASE+1.067
pragma attribute MSS_050 ment_tsu46 F_FM0_ADDR[6]->CLK_BASE+0.604
pragma attribute MSS_050 ment_tsu47 F_FM0_ADDR[7]->CLK_BASE+1.024
pragma attribute MSS_050 ment_tsu48 F_FM0_ADDR[8]->CLK_BASE+0.670
pragma attribute MSS_050 ment_tsu49 F_FM0_ADDR[9]->CLK_BASE+0.676
pragma attribute MSS_050 ment_tsu50 F_FM0_ENABLE->CLK_BASE+1.569
pragma attribute MSS_050 ment_tsu51 F_FM0_SEL->CLK_BASE+0.977
pragma attribute MSS_050 ment_tsu52 F_FM0_WDATA[0]->CLK_BASE+0.381
pragma attribute MSS_050 ment_tsu53 F_FM0_WDATA[10]->CLK_BASE+0.704
pragma attribute MSS_050 ment_tsu54 F_FM0_WDATA[11]->CLK_BASE+0.441
pragma attribute MSS_050 ment_tsu55 F_FM0_WDATA[12]->CLK_BASE+0.464
pragma attribute MSS_050 ment_tsu56 F_FM0_WDATA[13]->CLK_BASE+0.647
pragma attribute MSS_050 ment_tsu57 F_FM0_WDATA[14]->CLK_BASE+0.424
pragma attribute MSS_050 ment_tsu58 F_FM0_WDATA[15]->CLK_BASE+0.703
pragma attribute MSS_050 ment_tsu59 F_FM0_WDATA[16]->CLK_BASE+0.286
pragma attribute MSS_050 ment_tsu60 F_FM0_WDATA[17]->CLK_BASE+0.591
pragma attribute MSS_050 ment_tsu61 F_FM0_WDATA[18]->CLK_BASE+0.308
pragma attribute MSS_050 ment_tsu62 F_FM0_WDATA[19]->CLK_BASE+0.356
pragma attribute MSS_050 ment_tsu63 F_FM0_WDATA[1]->CLK_BASE+0.775
pragma attribute MSS_050 ment_tsu64 F_FM0_WDATA[20]->CLK_BASE+0.284
pragma attribute MSS_050 ment_tsu65 F_FM0_WDATA[21]->CLK_BASE+0.245
pragma attribute MSS_050 ment_tsu66 F_FM0_WDATA[22]->CLK_BASE+0.242
pragma attribute MSS_050 ment_tsu67 F_FM0_WDATA[23]->CLK_BASE+0.235
pragma attribute MSS_050 ment_tsu68 F_FM0_WDATA[24]->CLK_BASE+0.209
pragma attribute MSS_050 ment_tsu69 F_FM0_WDATA[25]->CLK_BASE+0.253
pragma attribute MSS_050 ment_tsu70 F_FM0_WDATA[26]->CLK_BASE+0.301
pragma attribute MSS_050 ment_tsu71 F_FM0_WDATA[27]->CLK_BASE+0.200
pragma attribute MSS_050 ment_tsu72 F_FM0_WDATA[28]->CLK_BASE+0.220
pragma attribute MSS_050 ment_tsu73 F_FM0_WDATA[29]->CLK_BASE+0.269
pragma attribute MSS_050 ment_tsu74 F_FM0_WDATA[2]->CLK_BASE+0.501
pragma attribute MSS_050 ment_tsu75 F_FM0_WDATA[30]->CLK_BASE+0.414
pragma attribute MSS_050 ment_tsu76 F_FM0_WDATA[31]->CLK_BASE+0.227
pragma attribute MSS_050 ment_tsu77 F_FM0_WDATA[3]->CLK_BASE+0.354
pragma attribute MSS_050 ment_tsu78 F_FM0_WDATA[4]->CLK_BASE+0.417
pragma attribute MSS_050 ment_tsu79 F_FM0_WDATA[5]->CLK_BASE+0.341
pragma attribute MSS_050 ment_tsu80 F_FM0_WDATA[6]->CLK_BASE+0.348
pragma attribute MSS_050 ment_tsu81 F_FM0_WDATA[7]->CLK_BASE+0.504
pragma attribute MSS_050 ment_tsu82 F_FM0_WDATA[8]->CLK_BASE+0.357
pragma attribute MSS_050 ment_tsu83 F_FM0_WDATA[9]->CLK_BASE+0.406
pragma attribute MSS_050 ment_tsu84 F_FM0_WRITE->CLK_BASE+0.310
pragma attribute MSS_050 ment_tsu85 F_FM1_ADDR[0]->CLK_BASE+0.803
pragma attribute MSS_050 ment_tsu86 F_FM1_ADDR[10]->CLK_BASE+1.065
pragma attribute MSS_050 ment_tsu87 F_FM1_ADDR[11]->CLK_BASE+0.829
pragma attribute MSS_050 ment_tsu88 F_FM1_ADDR[12]->CLK_BASE+0.828
pragma attribute MSS_050 ment_tsu89 F_FM1_ADDR[13]->CLK_BASE+0.851
pragma attribute MSS_050 ment_tsu90 F_FM1_ADDR[14]->CLK_BASE+0.736
pragma attribute MSS_050 ment_tsu91 F_FM1_ADDR[15]->CLK_BASE+0.866
pragma attribute MSS_050 ment_tsu92 F_FM1_ADDR[16]->CLK_BASE+0.701
pragma attribute MSS_050 ment_tsu93 F_FM1_ADDR[17]->CLK_BASE+0.826
pragma attribute MSS_050 ment_tsu94 F_FM1_ADDR[18]->CLK_BASE+0.665
pragma attribute MSS_050 ment_tsu95 F_FM1_ADDR[19]->CLK_BASE+1.120
pragma attribute MSS_050 ment_tsu96 F_FM1_ADDR[1]->CLK_BASE+0.841
pragma attribute MSS_050 ment_tsu97 F_FM1_ADDR[20]->CLK_BASE+0.780
pragma attribute MSS_050 ment_tsu98 F_FM1_ADDR[21]->CLK_BASE+0.925
pragma attribute MSS_050 ment_tsu99 F_FM1_ADDR[22]->CLK_BASE+0.703
pragma attribute MSS_050 ment_tsu100 F_FM1_ADDR[23]->CLK_BASE+0.757
pragma attribute MSS_050 ment_tsu101 F_FM1_ADDR[24]->CLK_BASE+1.102
pragma attribute MSS_050 ment_tsu102 F_FM1_ADDR[25]->CLK_BASE+0.943
pragma attribute MSS_050 ment_tsu103 F_FM1_ADDR[26]->CLK_BASE+1.307
pragma attribute MSS_050 ment_tsu104 F_FM1_ADDR[27]->CLK_BASE+0.792
pragma attribute MSS_050 ment_tsu105 F_FM1_ADDR[28]->CLK_BASE+1.115
pragma attribute MSS_050 ment_tsu106 F_FM1_ADDR[29]->CLK_BASE+0.762
pragma attribute MSS_050 ment_tsu107 F_FM1_ADDR[2]->CLK_BASE+0.639
pragma attribute MSS_050 ment_tsu108 F_FM1_ADDR[30]->CLK_BASE+0.884
pragma attribute MSS_050 ment_tsu109 F_FM1_ADDR[31]->CLK_BASE+1.206
pragma attribute MSS_050 ment_tsu110 F_FM1_ADDR[3]->CLK_BASE+1.286
pragma attribute MSS_050 ment_tsu111 F_FM1_ADDR[4]->CLK_BASE+1.146
pragma attribute MSS_050 ment_tsu112 F_FM1_ADDR[5]->CLK_BASE+0.752
pragma attribute MSS_050 ment_tsu113 F_FM1_ADDR[6]->CLK_BASE+0.802
pragma attribute MSS_050 ment_tsu114 F_FM1_ADDR[7]->CLK_BASE+1.119
pragma attribute MSS_050 ment_tsu115 F_FM1_ADDR[8]->CLK_BASE+0.815
pragma attribute MSS_050 ment_tsu116 F_FM1_ADDR[9]->CLK_BASE+0.836
pragma attribute MSS_050 ment_tsu117 F_FM1_ENABLE->CLK_BASE+0.537
pragma attribute MSS_050 ment_tsu118 F_FM1_SEL->CLK_BASE+0.770
pragma attribute MSS_050 ment_tsu119 F_FM1_WDATA[0]->CLK_BASE+0.316
pragma attribute MSS_050 ment_tsu120 F_FM1_WDATA[10]->CLK_BASE+0.237
pragma attribute MSS_050 ment_tsu121 F_FM1_WDATA[11]->CLK_BASE+0.404
pragma attribute MSS_050 ment_tsu122 F_FM1_WDATA[12]->CLK_BASE+0.286
pragma attribute MSS_050 ment_tsu123 F_FM1_WDATA[13]->CLK_BASE+0.235
pragma attribute MSS_050 ment_tsu124 F_FM1_WDATA[14]->CLK_BASE+0.190
pragma attribute MSS_050 ment_tsu125 F_FM1_WDATA[15]->CLK_BASE+0.290
pragma attribute MSS_050 ment_tsu126 F_FM1_WDATA[16]->CLK_BASE+0.223
pragma attribute MSS_050 ment_tsu127 F_FM1_WDATA[17]->CLK_BASE+0.318
pragma attribute MSS_050 ment_tsu128 F_FM1_WDATA[18]->CLK_BASE+0.288
pragma attribute MSS_050 ment_tsu129 F_FM1_WDATA[19]->CLK_BASE+0.526
pragma attribute MSS_050 ment_tsu130 F_FM1_WDATA[1]->CLK_BASE+0.322
pragma attribute MSS_050 ment_tsu131 F_FM1_WDATA[20]->CLK_BASE+0.230
pragma attribute MSS_050 ment_tsu132 F_FM1_WDATA[21]->CLK_BASE+0.296
pragma attribute MSS_050 ment_tsu133 F_FM1_WDATA[22]->CLK_BASE+0.178
pragma attribute MSS_050 ment_tsu134 F_FM1_WDATA[23]->CLK_BASE+0.333
pragma attribute MSS_050 ment_tsu135 F_FM1_WDATA[24]->CLK_BASE+0.407
pragma attribute MSS_050 ment_tsu136 F_FM1_WDATA[25]->CLK_BASE+0.300
pragma attribute MSS_050 ment_tsu137 F_FM1_WDATA[26]->CLK_BASE+0.348
pragma attribute MSS_050 ment_tsu138 F_FM1_WDATA[27]->CLK_BASE+0.330
pragma attribute MSS_050 ment_tsu139 F_FM1_WDATA[28]->CLK_BASE+0.331
pragma attribute MSS_050 ment_tsu140 F_FM1_WDATA[29]->CLK_BASE+0.262
pragma attribute MSS_050 ment_tsu141 F_FM1_WDATA[2]->CLK_BASE+0.470
pragma attribute MSS_050 ment_tsu142 F_FM1_WDATA[30]->CLK_BASE+0.390
pragma attribute MSS_050 ment_tsu143 F_FM1_WDATA[31]->CLK_BASE+0.436
pragma attribute MSS_050 ment_tsu144 F_FM1_WDATA[3]->CLK_BASE+0.308
pragma attribute MSS_050 ment_tsu145 F_FM1_WDATA[4]->CLK_BASE+0.572
pragma attribute MSS_050 ment_tsu146 F_FM1_WDATA[5]->CLK_BASE+0.450
pragma attribute MSS_050 ment_tsu147 F_FM1_WDATA[6]->CLK_BASE+0.346
pragma attribute MSS_050 ment_tsu148 F_FM1_WDATA[7]->CLK_BASE+0.291
pragma attribute MSS_050 ment_tsu149 F_FM1_WDATA[8]->CLK_BASE+0.765
pragma attribute MSS_050 ment_tsu150 F_FM1_WDATA[9]->CLK_BASE+0.792
pragma attribute MSS_050 ment_tsu151 F_FM1_WRITE->CLK_BASE+0.416
pragma attribute MSS_050 ment_tsu152 F_HM0_RDATA[0]->CLK_BASE+0.365
pragma attribute MSS_050 ment_tsu153 F_HM0_RDATA[10]->CLK_BASE+0.701
pragma attribute MSS_050 ment_tsu154 F_HM0_RDATA[11]->CLK_BASE+0.426
pragma attribute MSS_050 ment_tsu155 F_HM0_RDATA[12]->CLK_BASE+0.900
pragma attribute MSS_050 ment_tsu156 F_HM0_RDATA[13]->CLK_BASE+0.324
pragma attribute MSS_050 ment_tsu157 F_HM0_RDATA[14]->CLK_BASE+0.404
pragma attribute MSS_050 ment_tsu158 F_HM0_RDATA[15]->CLK_BASE+0.990
pragma attribute MSS_050 ment_tsu159 F_HM0_RDATA[16]->CLK_BASE+1.085
pragma attribute MSS_050 ment_tsu160 F_HM0_RDATA[17]->CLK_BASE+1.041
pragma attribute MSS_050 ment_tsu161 F_HM0_RDATA[18]->CLK_BASE+0.914
pragma attribute MSS_050 ment_tsu162 F_HM0_RDATA[19]->CLK_BASE+0.954
pragma attribute MSS_050 ment_tsu163 F_HM0_RDATA[1]->CLK_BASE+0.363
pragma attribute MSS_050 ment_tsu164 F_HM0_RDATA[20]->CLK_BASE+0.637
pragma attribute MSS_050 ment_tsu165 F_HM0_RDATA[21]->CLK_BASE+1.060
pragma attribute MSS_050 ment_tsu166 F_HM0_RDATA[22]->CLK_BASE+1.006
pragma attribute MSS_050 ment_tsu167 F_HM0_RDATA[23]->CLK_BASE+0.349
pragma attribute MSS_050 ment_tsu168 F_HM0_RDATA[24]->CLK_BASE+1.101
pragma attribute MSS_050 ment_tsu169 F_HM0_RDATA[25]->CLK_BASE+0.378
pragma attribute MSS_050 ment_tsu170 F_HM0_RDATA[26]->CLK_BASE+1.065
pragma attribute MSS_050 ment_tsu171 F_HM0_RDATA[27]->CLK_BASE+0.676
pragma attribute MSS_050 ment_tsu172 F_HM0_RDATA[28]->CLK_BASE+1.024
pragma attribute MSS_050 ment_tsu173 F_HM0_RDATA[29]->CLK_BASE+0.413
pragma attribute MSS_050 ment_tsu174 F_HM0_RDATA[2]->CLK_BASE+0.359
pragma attribute MSS_050 ment_tsu175 F_HM0_RDATA[30]->CLK_BASE+1.066
pragma attribute MSS_050 ment_tsu176 F_HM0_RDATA[31]->CLK_BASE+1.158
pragma attribute MSS_050 ment_tsu177 F_HM0_RDATA[3]->CLK_BASE+0.662
pragma attribute MSS_050 ment_tsu178 F_HM0_RDATA[4]->CLK_BASE+0.726
pragma attribute MSS_050 ment_tsu179 F_HM0_RDATA[5]->CLK_BASE+0.708
pragma attribute MSS_050 ment_tsu180 F_HM0_RDATA[6]->CLK_BASE+0.607
pragma attribute MSS_050 ment_tsu181 F_HM0_RDATA[7]->CLK_BASE+1.095
pragma attribute MSS_050 ment_tsu182 F_HM0_RDATA[8]->CLK_BASE+0.340
pragma attribute MSS_050 ment_tsu183 F_HM0_RDATA[9]->CLK_BASE+0.399
pragma attribute MSS_050 ment_tsu184 F_HM0_READY->CLK_BASE+1.164
pragma attribute MSS_050 ment_tsu185 F_HM0_RESP->CLK_BASE+0.415
pragma attribute MSS_050 ment_tsu186 F_HM1_RDATA[0]->CLK_BASE+0.925
pragma attribute MSS_050 ment_tsu187 F_HM1_RDATA[10]->CLK_BASE+0.857
pragma attribute MSS_050 ment_tsu188 F_HM1_RDATA[11]->CLK_BASE+0.938
pragma attribute MSS_050 ment_tsu189 F_HM1_RDATA[12]->CLK_BASE+0.967
pragma attribute MSS_050 ment_tsu190 F_HM1_RDATA[13]->CLK_BASE+0.995
pragma attribute MSS_050 ment_tsu191 F_HM1_RDATA[14]->CLK_BASE+1.028
pragma attribute MSS_050 ment_tsu192 F_HM1_RDATA[15]->CLK_BASE+0.940
pragma attribute MSS_050 ment_tsu193 F_HM1_RDATA[16]->CLK_BASE+0.961
pragma attribute MSS_050 ment_tsu194 F_HM1_RDATA[17]->CLK_BASE+0.252
pragma attribute MSS_050 ment_tsu195 F_HM1_RDATA[18]->CLK_BASE+0.932
pragma attribute MSS_050 ment_tsu196 F_HM1_RDATA[19]->CLK_BASE+0.202
pragma attribute MSS_050 ment_tsu197 F_HM1_RDATA[1]->CLK_BASE+1.048
pragma attribute MSS_050 ment_tsu198 F_HM1_RDATA[20]->CLK_BASE+1.114
pragma attribute MSS_050 ment_tsu199 F_HM1_RDATA[21]->CLK_BASE+1.001
pragma attribute MSS_050 ment_tsu200 F_HM1_RDATA[22]->CLK_BASE+1.100
pragma attribute MSS_050 ment_tsu201 F_HM1_RDATA[23]->CLK_BASE+1.115
pragma attribute MSS_050 ment_tsu202 F_HM1_RDATA[24]->CLK_BASE+1.032
pragma attribute MSS_050 ment_tsu203 F_HM1_RDATA[25]->CLK_BASE+1.010
pragma attribute MSS_050 ment_tsu204 F_HM1_RDATA[26]->CLK_BASE+0.932
pragma attribute MSS_050 ment_tsu205 F_HM1_RDATA[27]->CLK_BASE+1.243
pragma attribute MSS_050 ment_tsu206 F_HM1_RDATA[28]->CLK_BASE+0.245
pragma attribute MSS_050 ment_tsu207 F_HM1_RDATA[29]->CLK_BASE+0.930
pragma attribute MSS_050 ment_tsu208 F_HM1_RDATA[2]->CLK_BASE+1.005
pragma attribute MSS_050 ment_tsu209 F_HM1_RDATA[30]->CLK_BASE+1.092
pragma attribute MSS_050 ment_tsu210 F_HM1_RDATA[31]->CLK_BASE+0.268
pragma attribute MSS_050 ment_tsu211 F_HM1_RDATA[3]->CLK_BASE+1.018
pragma attribute MSS_050 ment_tsu212 F_HM1_RDATA[4]->CLK_BASE+1.039
pragma attribute MSS_050 ment_tsu213 F_HM1_RDATA[5]->CLK_BASE+0.973
pragma attribute MSS_050 ment_tsu214 F_HM1_RDATA[6]->CLK_BASE+1.106
pragma attribute MSS_050 ment_tsu215 F_HM1_RDATA[7]->CLK_BASE+1.017
pragma attribute MSS_050 ment_tsu216 F_HM1_RDATA[8]->CLK_BASE+0.951
pragma attribute MSS_050 ment_tsu217 F_HM1_RDATA[9]->CLK_BASE+0.302
pragma attribute MSS_050 ment_tsu218 F_HM1_READY->CLK_BASE+1.473
pragma attribute MSS_050 ment_tsu219 F_HM1_RESP->CLK_BASE+1.242
pragma attribute MSS_050 ment_tsu220 I2C0_SDA_F2H_SCP->I2C0_SCL_F2H_SCP+0.314
pragma attribute MSS_050 ment_tsu221 I2C1_SDA_F2H_SCP->I2C1_SCL_F2H_SCP+0.428
pragma attribute MSS_050 ment_tsu222 MGPIO0A_F2H_GPIN->CLK_BASE+1.039
pragma attribute MSS_050 ment_tsu223 MGPIO10A_F2H_GPIN->CLK_BASE+0.826
pragma attribute MSS_050 ment_tsu224 MGPIO11A_F2H_GPIN->CLK_BASE+1.005
pragma attribute MSS_050 ment_tsu225 MGPIO11B_F2H_GPIN->CLK_BASE+1.097
pragma attribute MSS_050 ment_tsu226 MGPIO12A_F2H_GPIN->CLK_BASE+1.319
pragma attribute MSS_050 ment_tsu227 MGPIO13A_F2H_GPIN->CLK_BASE+1.377
pragma attribute MSS_050 ment_tsu228 MGPIO14A_F2H_GPIN->CLK_BASE+1.355
pragma attribute MSS_050 ment_tsu229 MGPIO15A_F2H_GPIN->CLK_BASE+1.032
pragma attribute MSS_050 ment_tsu230 MGPIO16A_F2H_GPIN->CLK_BASE+1.096
pragma attribute MSS_050 ment_tsu231 MGPIO17B_F2H_GPIN->CLK_BASE+1.330
pragma attribute MSS_050 ment_tsu232 MGPIO18B_F2H_GPIN->CLK_BASE+1.387
pragma attribute MSS_050 ment_tsu233 MGPIO19B_F2H_GPIN->CLK_BASE+0.961
pragma attribute MSS_050 ment_tsu234 MGPIO1A_F2H_GPIN->CLK_BASE+1.233
pragma attribute MSS_050 ment_tsu235 MGPIO20B_F2H_GPIN->CLK_BASE+1.469
pragma attribute MSS_050 ment_tsu236 MGPIO21B_F2H_GPIN->CLK_BASE+1.540
pragma attribute MSS_050 ment_tsu237 MGPIO22B_F2H_GPIN->CLK_BASE+1.120
pragma attribute MSS_050 ment_tsu238 MGPIO24B_F2H_GPIN->CLK_BASE+1.327
pragma attribute MSS_050 ment_tsu239 MGPIO25B_F2H_GPIN->CLK_BASE+0.962
pragma attribute MSS_050 ment_tsu240 MGPIO26B_F2H_GPIN->CLK_BASE+1.361
pragma attribute MSS_050 ment_tsu241 MGPIO27B_F2H_GPIN->CLK_BASE+1.455
pragma attribute MSS_050 ment_tsu242 MGPIO28B_F2H_GPIN->CLK_BASE+1.176
pragma attribute MSS_050 ment_tsu243 MGPIO29B_F2H_GPIN->CLK_BASE+1.220
pragma attribute MSS_050 ment_tsu244 MGPIO2A_F2H_GPIN->CLK_BASE+0.853
pragma attribute MSS_050 ment_tsu245 MGPIO30B_F2H_GPIN->CLK_BASE+0.909
pragma attribute MSS_050 ment_tsu246 MGPIO31B_F2H_GPIN->CLK_BASE+1.403
pragma attribute MSS_050 ment_tsu247 MGPIO3A_F2H_GPIN->CLK_BASE+1.142
pragma attribute MSS_050 ment_tsu248 MGPIO4A_F2H_GPIN->CLK_BASE+0.959
pragma attribute MSS_050 ment_tsu249 MGPIO5A_F2H_GPIN->CLK_BASE+1.175
pragma attribute MSS_050 ment_tsu250 MGPIO6A_F2H_GPIN->CLK_BASE+1.068
pragma attribute MSS_050 ment_tsu251 MGPIO7A_F2H_GPIN->CLK_BASE+0.683
pragma attribute MSS_050 ment_tsu252 MGPIO8A_F2H_GPIN->CLK_BASE+0.852
pragma attribute MSS_050 ment_tsu253 MGPIO9A_F2H_GPIN->CLK_BASE+0.926
pragma attribute MSS_050 ment_tsu254 MMUART0_CTS_F2H_SCP->CLK_BASE+1.018
pragma attribute MSS_050 ment_tsu255 MMUART0_DCD_F2H_SCP->CLK_BASE+1.200
pragma attribute MSS_050 ment_tsu256 MMUART0_DSR_F2H_SCP->CLK_BASE+1.380
pragma attribute MSS_050 ment_tsu257 MMUART0_RI_F2H_SCP->CLK_BASE+1.140
pragma attribute MSS_050 ment_tsu258 MMUART0_SCK_F2H_SCP->CLK_BASE+1.163
pragma attribute MSS_050 ment_tsu259 MMUART0_TXD_F2H_SCP->CLK_BASE+0.812
pragma attribute MSS_050 ment_tsu260 MMUART1_CTS_F2H_SCP->CLK_BASE+1.898
pragma attribute MSS_050 ment_tsu261 MMUART1_DCD_F2H_SCP->CLK_BASE+1.855
pragma attribute MSS_050 ment_tsu262 MMUART1_DSR_F2H_SCP->CLK_BASE+2.048
pragma attribute MSS_050 ment_tsu263 MMUART1_RI_F2H_SCP->CLK_BASE+1.816
pragma attribute MSS_050 ment_tsu264 MMUART1_RXD_F2H_SCP->CLK_BASE+1.493
pragma attribute MSS_050 ment_tsu265 MMUART1_SCK_F2H_SCP->CLK_BASE+2.072
pragma attribute MSS_050 ment_tsu266 MMUART1_TXD_F2H_SCP->CLK_BASE+1.589
pragma attribute MSS_050 ment_tsu267 SMBALERT_NI0->I2C0_SCL_F2H_SCP+-0.012
pragma attribute MSS_050 ment_tsu268 SMBALERT_NI1->I2C1_SCL_F2H_SCP+0.423
pragma attribute MSS_050 ment_tsu269 SMBSUS_NI0->I2C0_SCL_F2H_SCP+0.191
pragma attribute MSS_050 ment_tsu270 SMBSUS_NI1->I2C1_SCL_F2H_SCP+0.443
pragma attribute MSS_050 ment_tsu271 SPI0_SDI_F2H_SCP->SPI0_CLK_IN+1.376
pragma attribute MSS_050 ment_tsu272 SPI1_SDI_F2H_SCP->SPI1_CLK_IN+1.238
pragma attribute MSS_050 ment_tco0 CLK_BASE->CAN_RXBUS_MGPIO3A_H2F_A+3.942
pragma attribute MSS_050 ment_tco1 CLK_BASE->CAN_RXBUS_MGPIO3A_H2F_B+3.555
pragma attribute MSS_050 ment_tco2 CLK_BASE->CAN_TXBUS_MGPIO2A_H2F_A+4.124
pragma attribute MSS_050 ment_tco3 CLK_BASE->CAN_TXBUS_MGPIO2A_H2F_B+3.624
pragma attribute MSS_050 ment_tco4 CLK_BASE->CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT+4.813
pragma attribute MSS_050 ment_tco5 CLK_BASE->CAN_TX_EBL_MGPIO4A_H2F_A+3.475
pragma attribute MSS_050 ment_tco6 CLK_BASE->CAN_TX_EBL_MGPIO4A_H2F_B+3.495
pragma attribute MSS_050 ment_tco7 CLK_BASE->CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT+4.631
pragma attribute MSS_050 ment_tco8 CLK_BASE->F_FM0_RDATA[0]+3.961
pragma attribute MSS_050 ment_tco9 CLK_BASE->F_FM0_RDATA[10]+4.010
pragma attribute MSS_050 ment_tco10 CLK_BASE->F_FM0_RDATA[11]+3.986
pragma attribute MSS_050 ment_tco11 CLK_BASE->F_FM0_RDATA[12]+3.979
pragma attribute MSS_050 ment_tco12 CLK_BASE->F_FM0_RDATA[13]+3.981
pragma attribute MSS_050 ment_tco13 CLK_BASE->F_FM0_RDATA[14]+3.998
pragma attribute MSS_050 ment_tco14 CLK_BASE->F_FM0_RDATA[15]+4.004
pragma attribute MSS_050 ment_tco15 CLK_BASE->F_FM0_RDATA[16]+3.979
pragma attribute MSS_050 ment_tco16 CLK_BASE->F_FM0_RDATA[17]+3.894
pragma attribute MSS_050 ment_tco17 CLK_BASE->F_FM0_RDATA[18]+3.971
pragma attribute MSS_050 ment_tco18 CLK_BASE->F_FM0_RDATA[19]+4.008
pragma attribute MSS_050 ment_tco19 CLK_BASE->F_FM0_RDATA[1]+4.037
pragma attribute MSS_050 ment_tco20 CLK_BASE->F_FM0_RDATA[20]+3.985
pragma attribute MSS_050 ment_tco21 CLK_BASE->F_FM0_RDATA[21]+4.087
pragma attribute MSS_050 ment_tco22 CLK_BASE->F_FM0_RDATA[22]+3.966
pragma attribute MSS_050 ment_tco23 CLK_BASE->F_FM0_RDATA[23]+4.035
pragma attribute MSS_050 ment_tco24 CLK_BASE->F_FM0_RDATA[24]+4.015
pragma attribute MSS_050 ment_tco25 CLK_BASE->F_FM0_RDATA[25]+4.010
pragma attribute MSS_050 ment_tco26 CLK_BASE->F_FM0_RDATA[26]+4.002
pragma attribute MSS_050 ment_tco27 CLK_BASE->F_FM0_RDATA[27]+4.016
pragma attribute MSS_050 ment_tco28 CLK_BASE->F_FM0_RDATA[28]+4.016
pragma attribute MSS_050 ment_tco29 CLK_BASE->F_FM0_RDATA[29]+4.000
pragma attribute MSS_050 ment_tco30 CLK_BASE->F_FM0_RDATA[2]+3.969
pragma attribute MSS_050 ment_tco31 CLK_BASE->F_FM0_RDATA[30]+4.013
pragma attribute MSS_050 ment_tco32 CLK_BASE->F_FM0_RDATA[31]+3.979
pragma attribute MSS_050 ment_tco33 CLK_BASE->F_FM0_RDATA[3]+3.968
pragma attribute MSS_050 ment_tco34 CLK_BASE->F_FM0_RDATA[4]+3.963
pragma attribute MSS_050 ment_tco35 CLK_BASE->F_FM0_RDATA[5]+3.960
pragma attribute MSS_050 ment_tco36 CLK_BASE->F_FM0_RDATA[6]+3.946
pragma attribute MSS_050 ment_tco37 CLK_BASE->F_FM0_RDATA[7]+3.995
pragma attribute MSS_050 ment_tco38 CLK_BASE->F_FM0_RDATA[8]+3.940
pragma attribute MSS_050 ment_tco39 CLK_BASE->F_FM0_RDATA[9]+3.990
pragma attribute MSS_050 ment_tco40 CLK_BASE->F_FM0_READYOUT+3.643
pragma attribute MSS_050 ment_tco41 CLK_BASE->F_FM0_RESP+3.659
pragma attribute MSS_050 ment_tco42 CLK_BASE->F_FM1_RDATA[0]+4.181
pragma attribute MSS_050 ment_tco43 CLK_BASE->F_FM1_RDATA[10]+4.208
pragma attribute MSS_050 ment_tco44 CLK_BASE->F_FM1_RDATA[11]+4.194
pragma attribute MSS_050 ment_tco45 CLK_BASE->F_FM1_RDATA[12]+4.281
pragma attribute MSS_050 ment_tco46 CLK_BASE->F_FM1_RDATA[13]+4.207
pragma attribute MSS_050 ment_tco47 CLK_BASE->F_FM1_RDATA[14]+4.144
pragma attribute MSS_050 ment_tco48 CLK_BASE->F_FM1_RDATA[15]+4.248
pragma attribute MSS_050 ment_tco49 CLK_BASE->F_FM1_RDATA[16]+4.034
pragma attribute MSS_050 ment_tco50 CLK_BASE->F_FM1_RDATA[17]+4.014
pragma attribute MSS_050 ment_tco51 CLK_BASE->F_FM1_RDATA[18]+4.036
pragma attribute MSS_050 ment_tco52 CLK_BASE->F_FM1_RDATA[19]+4.008
pragma attribute MSS_050 ment_tco53 CLK_BASE->F_FM1_RDATA[1]+4.223
pragma attribute MSS_050 ment_tco54 CLK_BASE->F_FM1_RDATA[20]+3.995
pragma attribute MSS_050 ment_tco55 CLK_BASE->F_FM1_RDATA[21]+3.990
pragma attribute MSS_050 ment_tco56 CLK_BASE->F_FM1_RDATA[22]+3.989
pragma attribute MSS_050 ment_tco57 CLK_BASE->F_FM1_RDATA[23]+3.967
pragma attribute MSS_050 ment_tco58 CLK_BASE->F_FM1_RDATA[24]+4.024
pragma attribute MSS_050 ment_tco59 CLK_BASE->F_FM1_RDATA[25]+3.991
pragma attribute MSS_050 ment_tco60 CLK_BASE->F_FM1_RDATA[26]+4.012
pragma attribute MSS_050 ment_tco61 CLK_BASE->F_FM1_RDATA[27]+4.004
pragma attribute MSS_050 ment_tco62 CLK_BASE->F_FM1_RDATA[28]+4.010
pragma attribute MSS_050 ment_tco63 CLK_BASE->F_FM1_RDATA[29]+4.013
pragma attribute MSS_050 ment_tco64 CLK_BASE->F_FM1_RDATA[2]+4.216
pragma attribute MSS_050 ment_tco65 CLK_BASE->F_FM1_RDATA[30]+3.940
pragma attribute MSS_050 ment_tco66 CLK_BASE->F_FM1_RDATA[31]+4.021
pragma attribute MSS_050 ment_tco67 CLK_BASE->F_FM1_RDATA[3]+4.179
pragma attribute MSS_050 ment_tco68 CLK_BASE->F_FM1_RDATA[4]+4.154
pragma attribute MSS_050 ment_tco69 CLK_BASE->F_FM1_RDATA[5]+4.143
pragma attribute MSS_050 ment_tco70 CLK_BASE->F_FM1_RDATA[6]+4.207
pragma attribute MSS_050 ment_tco71 CLK_BASE->F_FM1_RDATA[7]+4.200
pragma attribute MSS_050 ment_tco72 CLK_BASE->F_FM1_RDATA[8]+4.252
pragma attribute MSS_050 ment_tco73 CLK_BASE->F_FM1_RDATA[9]+4.098
pragma attribute MSS_050 ment_tco74 CLK_BASE->F_FM1_READYOUT+3.607
pragma attribute MSS_050 ment_tco75 CLK_BASE->F_FM1_RESP+3.634
pragma attribute MSS_050 ment_tco76 CLK_BASE->F_HM0_ADDR[0]+3.340
pragma attribute MSS_050 ment_tco77 CLK_BASE->F_HM0_ADDR[10]+3.247
pragma attribute MSS_050 ment_tco78 CLK_BASE->F_HM0_ADDR[11]+3.185
pragma attribute MSS_050 ment_tco79 CLK_BASE->F_HM0_ADDR[12]+3.138
pragma attribute MSS_050 ment_tco80 CLK_BASE->F_HM0_ADDR[13]+3.141
pragma attribute MSS_050 ment_tco81 CLK_BASE->F_HM0_ADDR[14]+3.145
pragma attribute MSS_050 ment_tco82 CLK_BASE->F_HM0_ADDR[15]+3.200
pragma attribute MSS_050 ment_tco83 CLK_BASE->F_HM0_ADDR[16]+3.155
pragma attribute MSS_050 ment_tco84 CLK_BASE->F_HM0_ADDR[17]+3.155
pragma attribute MSS_050 ment_tco85 CLK_BASE->F_HM0_ADDR[18]+3.150
pragma attribute MSS_050 ment_tco86 CLK_BASE->F_HM0_ADDR[19]+3.173
pragma attribute MSS_050 ment_tco87 CLK_BASE->F_HM0_ADDR[1]+3.222
pragma attribute MSS_050 ment_tco88 CLK_BASE->F_HM0_ADDR[20]+3.184
pragma attribute MSS_050 ment_tco89 CLK_BASE->F_HM0_ADDR[21]+3.327
pragma attribute MSS_050 ment_tco90 CLK_BASE->F_HM0_ADDR[22]+3.140
pragma attribute MSS_050 ment_tco91 CLK_BASE->F_HM0_ADDR[23]+3.190
pragma attribute MSS_050 ment_tco92 CLK_BASE->F_HM0_ADDR[24]+3.348
pragma attribute MSS_050 ment_tco93 CLK_BASE->F_HM0_ADDR[25]+3.170
pragma attribute MSS_050 ment_tco94 CLK_BASE->F_HM0_ADDR[26]+3.155
pragma attribute MSS_050 ment_tco95 CLK_BASE->F_HM0_ADDR[27]+3.396
pragma attribute MSS_050 ment_tco96 CLK_BASE->F_HM0_ADDR[28]+3.146
pragma attribute MSS_050 ment_tco97 CLK_BASE->F_HM0_ADDR[29]+3.194
pragma attribute MSS_050 ment_tco98 CLK_BASE->F_HM0_ADDR[2]+3.186
pragma attribute MSS_050 ment_tco99 CLK_BASE->F_HM0_ADDR[30]+3.169
pragma attribute MSS_050 ment_tco100 CLK_BASE->F_HM0_ADDR[31]+3.226
pragma attribute MSS_050 ment_tco101 CLK_BASE->F_HM0_ADDR[3]+3.192
pragma attribute MSS_050 ment_tco102 CLK_BASE->F_HM0_ADDR[4]+3.268
pragma attribute MSS_050 ment_tco103 CLK_BASE->F_HM0_ADDR[5]+3.147
pragma attribute MSS_050 ment_tco104 CLK_BASE->F_HM0_ADDR[6]+3.292
pragma attribute MSS_050 ment_tco105 CLK_BASE->F_HM0_ADDR[7]+3.262
pragma attribute MSS_050 ment_tco106 CLK_BASE->F_HM0_ADDR[8]+3.166
pragma attribute MSS_050 ment_tco107 CLK_BASE->F_HM0_ADDR[9]+3.135
pragma attribute MSS_050 ment_tco108 CLK_BASE->F_HM0_ENABLE+3.603
pragma attribute MSS_050 ment_tco109 CLK_BASE->F_HM0_SEL+3.299
pragma attribute MSS_050 ment_tco110 CLK_BASE->F_HM0_WDATA[0]+3.439
pragma attribute MSS_050 ment_tco111 CLK_BASE->F_HM0_WDATA[10]+3.492
pragma attribute MSS_050 ment_tco112 CLK_BASE->F_HM0_WDATA[11]+3.157
pragma attribute MSS_050 ment_tco113 CLK_BASE->F_HM0_WDATA[12]+3.200
pragma attribute MSS_050 ment_tco114 CLK_BASE->F_HM0_WDATA[13]+3.449
pragma attribute MSS_050 ment_tco115 CLK_BASE->F_HM0_WDATA[14]+3.420
pragma attribute MSS_050 ment_tco116 CLK_BASE->F_HM0_WDATA[15]+3.431
pragma attribute MSS_050 ment_tco117 CLK_BASE->F_HM0_WDATA[16]+3.583
pragma attribute MSS_050 ment_tco118 CLK_BASE->F_HM0_WDATA[17]+3.170
pragma attribute MSS_050 ment_tco119 CLK_BASE->F_HM0_WDATA[18]+3.473
pragma attribute MSS_050 ment_tco120 CLK_BASE->F_HM0_WDATA[19]+3.468
pragma attribute MSS_050 ment_tco121 CLK_BASE->F_HM0_WDATA[1]+3.449
pragma attribute MSS_050 ment_tco122 CLK_BASE->F_HM0_WDATA[20]+3.517
pragma attribute MSS_050 ment_tco123 CLK_BASE->F_HM0_WDATA[21]+3.454
pragma attribute MSS_050 ment_tco124 CLK_BASE->F_HM0_WDATA[22]+3.517
pragma attribute MSS_050 ment_tco125 CLK_BASE->F_HM0_WDATA[23]+3.518
pragma attribute MSS_050 ment_tco126 CLK_BASE->F_HM0_WDATA[24]+3.152
pragma attribute MSS_050 ment_tco127 CLK_BASE->F_HM0_WDATA[25]+3.177
pragma attribute MSS_050 ment_tco128 CLK_BASE->F_HM0_WDATA[26]+3.486
pragma attribute MSS_050 ment_tco129 CLK_BASE->F_HM0_WDATA[27]+3.187
pragma attribute MSS_050 ment_tco130 CLK_BASE->F_HM0_WDATA[28]+3.170
pragma attribute MSS_050 ment_tco131 CLK_BASE->F_HM0_WDATA[29]+3.509
pragma attribute MSS_050 ment_tco132 CLK_BASE->F_HM0_WDATA[2]+3.445
pragma attribute MSS_050 ment_tco133 CLK_BASE->F_HM0_WDATA[30]+3.465
pragma attribute MSS_050 ment_tco134 CLK_BASE->F_HM0_WDATA[31]+3.439
pragma attribute MSS_050 ment_tco135 CLK_BASE->F_HM0_WDATA[3]+3.459
pragma attribute MSS_050 ment_tco136 CLK_BASE->F_HM0_WDATA[4]+3.451
pragma attribute MSS_050 ment_tco137 CLK_BASE->F_HM0_WDATA[5]+3.431
pragma attribute MSS_050 ment_tco138 CLK_BASE->F_HM0_WDATA[6]+3.440
pragma attribute MSS_050 ment_tco139 CLK_BASE->F_HM0_WDATA[7]+3.345
pragma attribute MSS_050 ment_tco140 CLK_BASE->F_HM0_WDATA[8]+3.514
pragma attribute MSS_050 ment_tco141 CLK_BASE->F_HM0_WDATA[9]+3.453
pragma attribute MSS_050 ment_tco142 CLK_BASE->F_HM0_WRITE+3.489
pragma attribute MSS_050 ment_tco143 CLK_BASE->F_HM1_ADDR[0]+3.396
pragma attribute MSS_050 ment_tco144 CLK_BASE->F_HM1_ADDR[10]+3.378
pragma attribute MSS_050 ment_tco145 CLK_BASE->F_HM1_ADDR[11]+3.489
pragma attribute MSS_050 ment_tco146 CLK_BASE->F_HM1_ADDR[12]+3.371
pragma attribute MSS_050 ment_tco147 CLK_BASE->F_HM1_ADDR[13]+3.348
pragma attribute MSS_050 ment_tco148 CLK_BASE->F_HM1_ADDR[14]+3.208
pragma attribute MSS_050 ment_tco149 CLK_BASE->F_HM1_ADDR[15]+3.429
pragma attribute MSS_050 ment_tco150 CLK_BASE->F_HM1_ADDR[16]+3.194
pragma attribute MSS_050 ment_tco151 CLK_BASE->F_HM1_ADDR[17]+3.187
pragma attribute MSS_050 ment_tco152 CLK_BASE->F_HM1_ADDR[18]+3.258
pragma attribute MSS_050 ment_tco153 CLK_BASE->F_HM1_ADDR[19]+3.344
pragma attribute MSS_050 ment_tco154 CLK_BASE->F_HM1_ADDR[1]+3.508
pragma attribute MSS_050 ment_tco155 CLK_BASE->F_HM1_ADDR[20]+3.389
pragma attribute MSS_050 ment_tco156 CLK_BASE->F_HM1_ADDR[21]+3.246
pragma attribute MSS_050 ment_tco157 CLK_BASE->F_HM1_ADDR[22]+3.330
pragma attribute MSS_050 ment_tco158 CLK_BASE->F_HM1_ADDR[23]+3.278
pragma attribute MSS_050 ment_tco159 CLK_BASE->F_HM1_ADDR[24]+3.192
pragma attribute MSS_050 ment_tco160 CLK_BASE->F_HM1_ADDR[25]+3.244
pragma attribute MSS_050 ment_tco161 CLK_BASE->F_HM1_ADDR[26]+3.277
pragma attribute MSS_050 ment_tco162 CLK_BASE->F_HM1_ADDR[27]+3.365
pragma attribute MSS_050 ment_tco163 CLK_BASE->F_HM1_ADDR[28]+3.503
pragma attribute MSS_050 ment_tco164 CLK_BASE->F_HM1_ADDR[29]+3.622
pragma attribute MSS_050 ment_tco165 CLK_BASE->F_HM1_ADDR[2]+3.494
pragma attribute MSS_050 ment_tco166 CLK_BASE->F_HM1_ADDR[30]+3.479
pragma attribute MSS_050 ment_tco167 CLK_BASE->F_HM1_ADDR[31]+3.381
pragma attribute MSS_050 ment_tco168 CLK_BASE->F_HM1_ADDR[3]+3.498
pragma attribute MSS_050 ment_tco169 CLK_BASE->F_HM1_ADDR[4]+3.524
pragma attribute MSS_050 ment_tco170 CLK_BASE->F_HM1_ADDR[5]+3.348
pragma attribute MSS_050 ment_tco171 CLK_BASE->F_HM1_ADDR[6]+3.345
pragma attribute MSS_050 ment_tco172 CLK_BASE->F_HM1_ADDR[7]+3.484
pragma attribute MSS_050 ment_tco173 CLK_BASE->F_HM1_ADDR[8]+3.399
pragma attribute MSS_050 ment_tco174 CLK_BASE->F_HM1_ADDR[9]+3.364
pragma attribute MSS_050 ment_tco175 CLK_BASE->F_HM1_ENABLE+3.776
pragma attribute MSS_050 ment_tco176 CLK_BASE->F_HM1_SEL+3.452
pragma attribute MSS_050 ment_tco177 CLK_BASE->F_HM1_WDATA[0]+3.310
pragma attribute MSS_050 ment_tco178 CLK_BASE->F_HM1_WDATA[10]+3.555
pragma attribute MSS_050 ment_tco179 CLK_BASE->F_HM1_WDATA[11]+3.269
pragma attribute MSS_050 ment_tco180 CLK_BASE->F_HM1_WDATA[12]+3.385
pragma attribute MSS_050 ment_tco181 CLK_BASE->F_HM1_WDATA[13]+3.381
pragma attribute MSS_050 ment_tco182 CLK_BASE->F_HM1_WDATA[14]+3.323
pragma attribute MSS_050 ment_tco183 CLK_BASE->F_HM1_WDATA[15]+3.386
pragma attribute MSS_050 ment_tco184 CLK_BASE->F_HM1_WDATA[16]+3.318
pragma attribute MSS_050 ment_tco185 CLK_BASE->F_HM1_WDATA[17]+3.493
pragma attribute MSS_050 ment_tco186 CLK_BASE->F_HM1_WDATA[18]+3.213
pragma attribute MSS_050 ment_tco187 CLK_BASE->F_HM1_WDATA[19]+3.429
pragma attribute MSS_050 ment_tco188 CLK_BASE->F_HM1_WDATA[1]+3.286
pragma attribute MSS_050 ment_tco189 CLK_BASE->F_HM1_WDATA[20]+3.346
pragma attribute MSS_050 ment_tco190 CLK_BASE->F_HM1_WDATA[21]+3.321
pragma attribute MSS_050 ment_tco191 CLK_BASE->F_HM1_WDATA[22]+3.174
pragma attribute MSS_050 ment_tco192 CLK_BASE->F_HM1_WDATA[23]+3.409
pragma attribute MSS_050 ment_tco193 CLK_BASE->F_HM1_WDATA[24]+3.188
pragma attribute MSS_050 ment_tco194 CLK_BASE->F_HM1_WDATA[25]+3.313
pragma attribute MSS_050 ment_tco195 CLK_BASE->F_HM1_WDATA[26]+3.334
pragma attribute MSS_050 ment_tco196 CLK_BASE->F_HM1_WDATA[27]+3.168
pragma attribute MSS_050 ment_tco197 CLK_BASE->F_HM1_WDATA[28]+3.157
pragma attribute MSS_050 ment_tco198 CLK_BASE->F_HM1_WDATA[29]+3.357
pragma attribute MSS_050 ment_tco199 CLK_BASE->F_HM1_WDATA[2]+3.475
pragma attribute MSS_050 ment_tco200 CLK_BASE->F_HM1_WDATA[30]+3.227
pragma attribute MSS_050 ment_tco201 CLK_BASE->F_HM1_WDATA[31]+3.341
pragma attribute MSS_050 ment_tco202 CLK_BASE->F_HM1_WDATA[3]+3.503
pragma attribute MSS_050 ment_tco203 CLK_BASE->F_HM1_WDATA[4]+3.316
pragma attribute MSS_050 ment_tco204 CLK_BASE->F_HM1_WDATA[5]+3.464
pragma attribute MSS_050 ment_tco205 CLK_BASE->F_HM1_WDATA[6]+3.324
pragma attribute MSS_050 ment_tco206 CLK_BASE->F_HM1_WDATA[7]+3.256
pragma attribute MSS_050 ment_tco207 CLK_BASE->F_HM1_WDATA[8]+3.273
pragma attribute MSS_050 ment_tco208 CLK_BASE->F_HM1_WDATA[9]+3.533
pragma attribute MSS_050 ment_tco209 CLK_BASE->F_HM1_WRITE+3.440
pragma attribute MSS_050 ment_tco210 CLK_BASE->H2FCALIB+3.536
pragma attribute MSS_050 ment_tco211 CLK_BASE->I2C0_SCL_MGPIO31B_H2F_B+3.594
pragma attribute MSS_050 ment_tco212 CLK_BASE->I2C0_SCL_USBC_DATA1_MGPIO31B_OE+3.877
pragma attribute MSS_050 ment_tco213 CLK_BASE->I2C0_SDA_MGPIO30B_H2F_A+3.430
pragma attribute MSS_050 ment_tco214 CLK_BASE->I2C0_SDA_MGPIO30B_H2F_B+3.640
pragma attribute MSS_050 ment_tco215 CLK_BASE->I2C0_SDA_USBC_DATA0_MGPIO30B_OE+3.094
pragma attribute MSS_050 ment_tco216 CLK_BASE->I2C1_SCL_MGPIO1A_H2F_B+3.653
pragma attribute MSS_050 ment_tco217 CLK_BASE->I2C1_SCL_USBA_DATA4_MGPIO1A_OE+3.597
pragma attribute MSS_050 ment_tco218 CLK_BASE->I2C1_SDA_MGPIO0A_H2F_A+3.932
pragma attribute MSS_050 ment_tco219 CLK_BASE->I2C1_SDA_MGPIO0A_H2F_B+3.641
pragma attribute MSS_050 ment_tco220 CLK_BASE->I2C1_SDA_USBA_DATA3_MGPIO0A_OE+3.521
pragma attribute MSS_050 ment_tco221 CLK_BASE->MGPIO0B_OE+2.822
pragma attribute MSS_050 ment_tco222 CLK_BASE->MGPIO0B_OUT+2.928
pragma attribute MSS_050 ment_tco223 CLK_BASE->MGPIO10B_OE+2.448
pragma attribute MSS_050 ment_tco224 CLK_BASE->MGPIO10B_OUT+2.598
pragma attribute MSS_050 ment_tco225 CLK_BASE->MGPIO1B_OE+2.755
pragma attribute MSS_050 ment_tco226 CLK_BASE->MGPIO1B_OUT+3.249
pragma attribute MSS_050 ment_tco227 CLK_BASE->MGPIO25A_OE+3.371
pragma attribute MSS_050 ment_tco228 CLK_BASE->MGPIO25A_OUT+3.701
pragma attribute MSS_050 ment_tco229 CLK_BASE->MGPIO26A_OE+3.088
pragma attribute MSS_050 ment_tco230 CLK_BASE->MGPIO26A_OUT+3.677
pragma attribute MSS_050 ment_tco231 CLK_BASE->MGPIO27A_OE+3.160
pragma attribute MSS_050 ment_tco232 CLK_BASE->MGPIO27A_OUT+3.347
pragma attribute MSS_050 ment_tco233 CLK_BASE->MGPIO28A_OE+3.565
pragma attribute MSS_050 ment_tco234 CLK_BASE->MGPIO28A_OUT+3.543
pragma attribute MSS_050 ment_tco235 CLK_BASE->MGPIO29A_OE+2.870
pragma attribute MSS_050 ment_tco236 CLK_BASE->MGPIO29A_OUT+3.104
pragma attribute MSS_050 ment_tco237 CLK_BASE->MGPIO2B_OE+3.020
pragma attribute MSS_050 ment_tco238 CLK_BASE->MGPIO2B_OUT+2.706
pragma attribute MSS_050 ment_tco239 CLK_BASE->MGPIO30A_OE+3.061
pragma attribute MSS_050 ment_tco240 CLK_BASE->MGPIO30A_OUT+2.944
pragma attribute MSS_050 ment_tco241 CLK_BASE->MGPIO31A_OE+2.778
pragma attribute MSS_050 ment_tco242 CLK_BASE->MGPIO31A_OUT+2.927
pragma attribute MSS_050 ment_tco243 CLK_BASE->MGPIO3B_OE+2.804
pragma attribute MSS_050 ment_tco244 CLK_BASE->MGPIO3B_OUT+2.651
pragma attribute MSS_050 ment_tco245 CLK_BASE->MGPIO4B_OE+3.185
pragma attribute MSS_050 ment_tco246 CLK_BASE->MGPIO4B_OUT+2.781
pragma attribute MSS_050 ment_tco247 CLK_BASE->MGPIO5B_OE+2.604
pragma attribute MSS_050 ment_tco248 CLK_BASE->MGPIO5B_OUT+2.693
pragma attribute MSS_050 ment_tco249 CLK_BASE->MGPIO6B_OE+2.512
pragma attribute MSS_050 ment_tco250 CLK_BASE->MGPIO6B_OUT+2.690
pragma attribute MSS_050 ment_tco251 CLK_BASE->MGPIO7B_OE+2.593
pragma attribute MSS_050 ment_tco252 CLK_BASE->MGPIO7B_OUT+2.575
pragma attribute MSS_050 ment_tco253 CLK_BASE->MGPIO8B_OE+2.587
pragma attribute MSS_050 ment_tco254 CLK_BASE->MGPIO8B_OUT+2.482
pragma attribute MSS_050 ment_tco255 CLK_BASE->MGPIO9B_OE+2.528
pragma attribute MSS_050 ment_tco256 CLK_BASE->MGPIO9B_OUT+2.582
pragma attribute MSS_050 ment_tco257 CLK_BASE->MMUART0_CTS_MGPIO19B_H2F_A+3.678
pragma attribute MSS_050 ment_tco258 CLK_BASE->MMUART0_CTS_MGPIO19B_H2F_B+3.360
pragma attribute MSS_050 ment_tco259 CLK_BASE->MMUART0_DCD_MGPIO22B_H2F_A+3.456
pragma attribute MSS_050 ment_tco260 CLK_BASE->MMUART0_DCD_MGPIO22B_H2F_B+3.328
pragma attribute MSS_050 ment_tco261 CLK_BASE->MMUART0_DSR_MGPIO20B_H2F_A+3.474
pragma attribute MSS_050 ment_tco262 CLK_BASE->MMUART0_DSR_MGPIO20B_H2F_B+3.603
pragma attribute MSS_050 ment_tco263 CLK_BASE->MMUART0_DTR_MGPIO18B_H2F_A+3.643
pragma attribute MSS_050 ment_tco264 CLK_BASE->MMUART0_DTR_MGPIO18B_H2F_B+3.731
pragma attribute MSS_050 ment_tco265 CLK_BASE->MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT+3.080
pragma attribute MSS_050 ment_tco266 CLK_BASE->MMUART0_RI_MGPIO21B_H2F_A+3.449
pragma attribute MSS_050 ment_tco267 CLK_BASE->MMUART0_RI_MGPIO21B_H2F_B+3.519
pragma attribute MSS_050 ment_tco268 CLK_BASE->MMUART0_RTS_MGPIO17B_H2F_A+3.604
pragma attribute MSS_050 ment_tco269 CLK_BASE->MMUART0_RTS_MGPIO17B_H2F_B+3.805
pragma attribute MSS_050 ment_tco270 CLK_BASE->MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT+2.878
pragma attribute MSS_050 ment_tco271 CLK_BASE->MMUART0_RXD_MGPIO28B_H2F_A+3.502
pragma attribute MSS_050 ment_tco272 CLK_BASE->MMUART0_RXD_MGPIO28B_H2F_B+3.608
pragma attribute MSS_050 ment_tco273 CLK_BASE->MMUART0_SCK_MGPIO29B_H2F_A+3.453
pragma attribute MSS_050 ment_tco274 CLK_BASE->MMUART0_SCK_MGPIO29B_H2F_B+3.386
pragma attribute MSS_050 ment_tco275 CLK_BASE->MMUART0_SCK_USBC_NXT_MGPIO29B_OE+3.434
pragma attribute MSS_050 ment_tco276 CLK_BASE->MMUART0_SCK_USBC_NXT_MGPIO29B_OUT+3.245
pragma attribute MSS_050 ment_tco277 CLK_BASE->MMUART0_TXD_MGPIO27B_H2F_A+3.752
pragma attribute MSS_050 ment_tco278 CLK_BASE->MMUART0_TXD_MGPIO27B_H2F_B+3.572
pragma attribute MSS_050 ment_tco279 CLK_BASE->MMUART0_TXD_USBC_DIR_MGPIO27B_OUT+3.369
pragma attribute MSS_050 ment_tco280 CLK_BASE->MMUART1_DTR_MGPIO12B_H2F_A+3.770
pragma attribute MSS_050 ment_tco281 CLK_BASE->MMUART1_DTR_MGPIO12B_OUT+2.984
pragma attribute MSS_050 ment_tco282 CLK_BASE->MMUART1_RTS_MGPIO11B_H2F_A+3.703
pragma attribute MSS_050 ment_tco283 CLK_BASE->MMUART1_RTS_MGPIO11B_H2F_B+3.666
pragma attribute MSS_050 ment_tco284 CLK_BASE->MMUART1_RTS_MGPIO11B_OUT+2.798
pragma attribute MSS_050 ment_tco285 CLK_BASE->MMUART1_RXD_MGPIO26B_H2F_A+3.671
pragma attribute MSS_050 ment_tco286 CLK_BASE->MMUART1_RXD_MGPIO26B_H2F_B+3.834
pragma attribute MSS_050 ment_tco287 CLK_BASE->MMUART1_SCK_MGPIO25B_H2F_A+3.746
pragma attribute MSS_050 ment_tco288 CLK_BASE->MMUART1_SCK_MGPIO25B_H2F_B+3.750
pragma attribute MSS_050 ment_tco289 CLK_BASE->MMUART1_SCK_USBC_DATA4_MGPIO25B_OE+3.692
pragma attribute MSS_050 ment_tco290 CLK_BASE->MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT+2.781
pragma attribute MSS_050 ment_tco291 CLK_BASE->MMUART1_TXD_MGPIO24B_H2F_A+3.722
pragma attribute MSS_050 ment_tco292 CLK_BASE->MMUART1_TXD_MGPIO24B_H2F_B+3.667
pragma attribute MSS_050 ment_tco293 CLK_BASE->MMUART1_TXD_USBC_DATA2_MGPIO24B_OE+3.378
pragma attribute MSS_050 ment_tco294 CLK_BASE->MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT+3.559
pragma attribute MSS_050 ment_tco295 CLK_BASE->REV_ARADDR[10]+5.015
pragma attribute MSS_050 ment_tco296 CLK_BASE->REV_ARADDR[11]+5.094
pragma attribute MSS_050 ment_tco297 CLK_BASE->REV_ARADDR[12]+5.000
pragma attribute MSS_050 ment_tco298 CLK_BASE->REV_ARADDR[13]+4.956
pragma attribute MSS_050 ment_tco299 CLK_BASE->REV_ARADDR[14]+4.453
pragma attribute MSS_050 ment_tco300 CLK_BASE->REV_ARADDR[15]+4.472
pragma attribute MSS_050 ment_tco301 CLK_BASE->REV_ARADDR[16]+4.547
pragma attribute MSS_050 ment_tco302 CLK_BASE->REV_ARADDR[17]+4.541
pragma attribute MSS_050 ment_tco303 CLK_BASE->REV_ARADDR[18]+4.586
pragma attribute MSS_050 ment_tco304 CLK_BASE->REV_ARADDR[19]+4.517
pragma attribute MSS_050 ment_tco305 CLK_BASE->REV_ARADDR[20]+4.466
pragma attribute MSS_050 ment_tco306 CLK_BASE->REV_ARADDR[21]+4.604
pragma attribute MSS_050 ment_tco307 CLK_BASE->REV_ARADDR[22]+4.585
pragma attribute MSS_050 ment_tco308 CLK_BASE->REV_ARADDR[23]+4.466
pragma attribute MSS_050 ment_tco309 CLK_BASE->REV_ARADDR[24]+4.554
pragma attribute MSS_050 ment_tco310 CLK_BASE->REV_ARADDR[25]+4.480
pragma attribute MSS_050 ment_tco311 CLK_BASE->REV_ARADDR[26]+4.509
pragma attribute MSS_050 ment_tco312 CLK_BASE->REV_ARADDR[27]+4.456
pragma attribute MSS_050 ment_tco313 CLK_BASE->REV_ARADDR[28]+4.391
pragma attribute MSS_050 ment_tco314 CLK_BASE->REV_ARADDR[29]+4.898
pragma attribute MSS_050 ment_tco315 CLK_BASE->REV_ARADDR[30]+4.765
pragma attribute MSS_050 ment_tco316 CLK_BASE->REV_ARADDR[31]+4.867
pragma attribute MSS_050 ment_tco317 CLK_BASE->REV_ARADDR[3]+5.060
pragma attribute MSS_050 ment_tco318 CLK_BASE->REV_ARADDR[4]+5.036
pragma attribute MSS_050 ment_tco319 CLK_BASE->REV_ARADDR[5]+5.011
pragma attribute MSS_050 ment_tco320 CLK_BASE->REV_ARADDR[6]+5.134
pragma attribute MSS_050 ment_tco321 CLK_BASE->REV_ARADDR[7]+4.808
pragma attribute MSS_050 ment_tco322 CLK_BASE->REV_ARADDR[8]+5.218
pragma attribute MSS_050 ment_tco323 CLK_BASE->REV_ARADDR[9]+5.042
pragma attribute MSS_050 ment_tco324 CLK_BASE->REV_ARBURST[0]+4.610
pragma attribute MSS_050 ment_tco325 CLK_BASE->REV_ARBURST[1]+4.442
pragma attribute MSS_050 ment_tco326 CLK_BASE->REV_ARID[0]+4.410
pragma attribute MSS_050 ment_tco327 CLK_BASE->REV_ARID[1]+4.470
pragma attribute MSS_050 ment_tco328 CLK_BASE->REV_ARLEN[0]+4.446
pragma attribute MSS_050 ment_tco329 CLK_BASE->REV_ARLEN[1]+4.465
pragma attribute MSS_050 ment_tco330 CLK_BASE->REV_ARLOCK[1]+5.114
pragma attribute MSS_050 ment_tco331 CLK_BASE->REV_AWADDR[10]+5.104
pragma attribute MSS_050 ment_tco332 CLK_BASE->REV_AWADDR[11]+5.012
pragma attribute MSS_050 ment_tco333 CLK_BASE->REV_AWADDR[12]+4.972
pragma attribute MSS_050 ment_tco334 CLK_BASE->REV_AWADDR[13]+5.078
pragma attribute MSS_050 ment_tco335 CLK_BASE->REV_AWADDR[14]+4.989
pragma attribute MSS_050 ment_tco336 CLK_BASE->REV_AWADDR[15]+5.020
pragma attribute MSS_050 ment_tco337 CLK_BASE->REV_AWADDR[16]+5.043
pragma attribute MSS_050 ment_tco338 CLK_BASE->REV_AWADDR[17]+5.113
pragma attribute MSS_050 ment_tco339 CLK_BASE->REV_AWADDR[18]+4.857
pragma attribute MSS_050 ment_tco340 CLK_BASE->REV_AWADDR[19]+5.126
pragma attribute MSS_050 ment_tco341 CLK_BASE->REV_AWADDR[20]+5.126
pragma attribute MSS_050 ment_tco342 CLK_BASE->REV_AWADDR[21]+5.005
pragma attribute MSS_050 ment_tco343 CLK_BASE->REV_AWADDR[22]+5.103
pragma attribute MSS_050 ment_tco344 CLK_BASE->REV_AWADDR[23]+4.978
pragma attribute MSS_050 ment_tco345 CLK_BASE->REV_AWADDR[24]+5.010
pragma attribute MSS_050 ment_tco346 CLK_BASE->REV_AWADDR[25]+5.141
pragma attribute MSS_050 ment_tco347 CLK_BASE->REV_AWADDR[26]+4.904
pragma attribute MSS_050 ment_tco348 CLK_BASE->REV_AWADDR[27]+4.993
pragma attribute MSS_050 ment_tco349 CLK_BASE->REV_AWADDR[28]+4.784
pragma attribute MSS_050 ment_tco350 CLK_BASE->REV_AWADDR[29]+5.299
pragma attribute MSS_050 ment_tco351 CLK_BASE->REV_AWADDR[30]+5.538
pragma attribute MSS_050 ment_tco352 CLK_BASE->REV_AWADDR[31]+5.214
pragma attribute MSS_050 ment_tco353 CLK_BASE->REV_AWADDR[3]+4.892
pragma attribute MSS_050 ment_tco354 CLK_BASE->REV_AWADDR[4]+4.825
pragma attribute MSS_050 ment_tco355 CLK_BASE->REV_AWADDR[5]+5.145
pragma attribute MSS_050 ment_tco356 CLK_BASE->REV_AWADDR[6]+4.813
pragma attribute MSS_050 ment_tco357 CLK_BASE->REV_AWADDR[7]+5.427
pragma attribute MSS_050 ment_tco358 CLK_BASE->REV_AWADDR[8]+4.992
pragma attribute MSS_050 ment_tco359 CLK_BASE->REV_AWADDR[9]+5.039
pragma attribute MSS_050 ment_tco360 CLK_BASE->REV_AWLOCK[1]+4.876
pragma attribute MSS_050 ment_tco361 CLK_BASE->REV_WID[0]+4.311
pragma attribute MSS_050 ment_tco362 CLK_BASE->REV_WID[1]+4.404
pragma attribute MSS_050 ment_tco363 CLK_BASE->REV_WSTRB[0]+4.438
pragma attribute MSS_050 ment_tco364 CLK_BASE->REV_WSTRB[1]+4.125
pragma attribute MSS_050 ment_tco365 CLK_BASE->REV_WSTRB[2]+4.542
pragma attribute MSS_050 ment_tco366 CLK_BASE->REV_WSTRB[3]+4.756
pragma attribute MSS_050 ment_tco367 CLK_BASE->REV_WSTRB[4]+4.267
pragma attribute MSS_050 ment_tco368 CLK_BASE->REV_WSTRB[5]+4.201
pragma attribute MSS_050 ment_tco369 CLK_BASE->REV_WSTRB[6]+4.320
pragma attribute MSS_050 ment_tco370 CLK_BASE->REV_WSTRB[7]+4.021
pragma attribute MSS_050 ment_tco371 CLK_BASE->RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE+4.963
pragma attribute MSS_050 ment_tco372 CLK_BASE->RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT+5.398
pragma attribute MSS_050 ment_tco373 CLK_BASE->SPI0_SDI_MGPIO5A_H2F_A+3.621
pragma attribute MSS_050 ment_tco374 CLK_BASE->SPI0_SDI_MGPIO5A_H2F_B+3.628
pragma attribute MSS_050 ment_tco375 CLK_BASE->SPI0_SDO_MGPIO6A_H2F_A+3.866
pragma attribute MSS_050 ment_tco376 CLK_BASE->SPI0_SDO_MGPIO6A_H2F_B+3.803
pragma attribute MSS_050 ment_tco377 CLK_BASE->SPI0_SDO_USBA_STP_MGPIO6A_OE+5.521
pragma attribute MSS_050 ment_tco378 CLK_BASE->SPI0_SDO_USBA_STP_MGPIO6A_OUT+6.303
pragma attribute MSS_050 ment_tco379 CLK_BASE->SPI0_SS0_MGPIO7A_H2F_A+3.778
pragma attribute MSS_050 ment_tco380 CLK_BASE->SPI0_SS0_MGPIO7A_H2F_B+3.771
pragma attribute MSS_050 ment_tco381 CLK_BASE->SPI0_SS1_MGPIO8A_H2F_A+3.868
pragma attribute MSS_050 ment_tco382 CLK_BASE->SPI0_SS1_MGPIO8A_H2F_B+3.809
pragma attribute MSS_050 ment_tco383 CLK_BASE->SPI0_SS2_MGPIO9A_H2F_A+3.758
pragma attribute MSS_050 ment_tco384 CLK_BASE->SPI0_SS2_MGPIO9A_H2F_B+3.750
pragma attribute MSS_050 ment_tco385 CLK_BASE->SPI0_SS3_MGPIO10A_H2F_A+3.714
pragma attribute MSS_050 ment_tco386 CLK_BASE->SPI0_SS3_MGPIO10A_H2F_B+3.586
pragma attribute MSS_050 ment_tco387 CLK_BASE->SPI0_SS4_MGPIO19A_H2F_A+3.485
pragma attribute MSS_050 ment_tco388 CLK_BASE->SPI0_SS5_MGPIO20A_H2F_A+3.605
pragma attribute MSS_050 ment_tco389 CLK_BASE->SPI0_SS6_MGPIO21A_H2F_A+3.569
pragma attribute MSS_050 ment_tco390 CLK_BASE->SPI0_SS7_MGPIO22A_H2F_A+3.698
pragma attribute MSS_050 ment_tco391 CLK_BASE->SPI1_SDI_MGPIO11A_H2F_A+3.734
pragma attribute MSS_050 ment_tco392 CLK_BASE->SPI1_SDI_MGPIO11A_H2F_B+3.732
pragma attribute MSS_050 ment_tco393 CLK_BASE->SPI1_SDO_MGPIO12A_H2F_A+3.684
pragma attribute MSS_050 ment_tco394 CLK_BASE->SPI1_SDO_MGPIO12A_H2F_B+3.721
pragma attribute MSS_050 ment_tco395 CLK_BASE->SPI1_SDO_MGPIO12A_OE+5.342
pragma attribute MSS_050 ment_tco396 CLK_BASE->SPI1_SDO_MGPIO12A_OUT+5.328
pragma attribute MSS_050 ment_tco397 CLK_BASE->SPI1_SS0_MGPIO13A_H2F_A+3.612
pragma attribute MSS_050 ment_tco398 CLK_BASE->SPI1_SS0_MGPIO13A_H2F_B+3.585
pragma attribute MSS_050 ment_tco399 CLK_BASE->SPI1_SS1_MGPIO14A_H2F_A+3.360
pragma attribute MSS_050 ment_tco400 CLK_BASE->SPI1_SS1_MGPIO14A_H2F_B+3.630
pragma attribute MSS_050 ment_tco401 CLK_BASE->SPI1_SS2_MGPIO15A_H2F_A+3.733
pragma attribute MSS_050 ment_tco402 CLK_BASE->SPI1_SS2_MGPIO15A_H2F_B+3.694
pragma attribute MSS_050 ment_tco403 CLK_BASE->SPI1_SS3_MGPIO16A_H2F_A+3.788
pragma attribute MSS_050 ment_tco404 CLK_BASE->SPI1_SS3_MGPIO16A_H2F_B+3.602
pragma attribute MSS_050 ment_tco405 CLK_BASE->SPI1_SS4_MGPIO17A_H2F_A+3.538
pragma attribute MSS_050 ment_tco406 CLK_BASE->SPI1_SS5_MGPIO18A_H2F_A+3.601
pragma attribute MSS_050 ment_tco407 CLK_BASE->SPI1_SS6_MGPIO23A_H2F_A+3.680
pragma attribute MSS_050 ment_tco408 CLK_BASE->SPI1_SS7_MGPIO24A_H2F_A+3.730
pragma attribute MSS_050 ment_tco409 XCLK_FAB->FAB_CHRGVBUS+3.160
pragma attribute MSS_050 ment_tco410 XCLK_FAB->FAB_DISCHRGVBUS+3.181
pragma attribute MSS_050 ment_tco411 XCLK_FAB->FAB_DMPULLDOWN+3.359
pragma attribute MSS_050 ment_tco412 XCLK_FAB->FAB_DPPULLDOWN+3.158
pragma attribute MSS_050 ment_tco413 XCLK_FAB->FAB_DRVVBUS+3.108
pragma attribute MSS_050 ment_tco414 XCLK_FAB->FAB_IDPULLUP+3.187
pragma attribute MSS_050 ment_tco415 XCLK_FAB->FAB_OPMODE[0]+3.071
pragma attribute MSS_050 ment_tco416 XCLK_FAB->FAB_OPMODE[1]+3.189
pragma attribute MSS_050 ment_tco417 XCLK_FAB->FAB_SUSPENDM+3.653
pragma attribute MSS_050 ment_tco418 XCLK_FAB->FAB_TERMSEL+3.308
pragma attribute MSS_050 ment_tco419 XCLK_FAB->FAB_TXVALID+3.351
pragma attribute MSS_050 ment_tco420 XCLK_FAB->FAB_VCONTROLLOADM+3.358
pragma attribute MSS_050 ment_tco421 XCLK_FAB->FAB_VCONTROL[0]+3.378
pragma attribute MSS_050 ment_tco422 XCLK_FAB->FAB_VCONTROL[1]+3.270
pragma attribute MSS_050 ment_tco423 XCLK_FAB->FAB_VCONTROL[2]+3.422
pragma attribute MSS_050 ment_tco424 XCLK_FAB->FAB_VCONTROL[3]+3.258
pragma attribute MSS_050 ment_tco425 XCLK_FAB->FAB_XCVRSEL[0]+3.506
pragma attribute MSS_050 ment_tco426 XCLK_FAB->FAB_XCVRSEL[1]+3.467
pragma attribute MSS_050 ment_tco427 XCLK_FAB->FAB_XDATAOUT[0]+3.275
pragma attribute MSS_050 ment_tco428 XCLK_FAB->FAB_XDATAOUT[1]+3.140
pragma attribute MSS_050 ment_tco429 XCLK_FAB->FAB_XDATAOUT[2]+3.177
pragma attribute MSS_050 ment_tco430 XCLK_FAB->FAB_XDATAOUT[3]+3.259
pragma attribute MSS_050 ment_tco431 XCLK_FAB->FAB_XDATAOUT[4]+3.191
pragma attribute MSS_050 ment_tco432 XCLK_FAB->FAB_XDATAOUT[5]+3.346
pragma attribute MSS_050 ment_tco433 XCLK_FAB->FAB_XDATAOUT[6]+3.286
pragma attribute MSS_050 ment_tco434 XCLK_FAB->FAB_XDATAOUT[7]+3.164
*/
/* synthesis black_box black_box_pad ="" */
 ;
output CAN_RXBUS_MGPIO3A_H2F_A;
output CAN_RXBUS_MGPIO3A_H2F_B;
output CAN_TX_EBL_MGPIO4A_H2F_A;
output CAN_TX_EBL_MGPIO4A_H2F_B;
output CAN_TXBUS_MGPIO2A_H2F_A;
output CAN_TXBUS_MGPIO2A_H2F_B;
output CLK_CONFIG_APB;
output COMMS_INT;
output CONFIG_PRESET_N;
output [7:0] EDAC_ERROR;
output [31:0] F_FM0_RDATA;
output F_FM0_READYOUT;
output F_FM0_RESP;
output [31:0] F_FM1_RDATA;
output F_FM1_READYOUT;
output F_FM1_RESP;
output [31:0] F_HM0_ADDR;
output F_HM0_ENABLE;
output F_HM0_SEL;
output [1:0] F_HM0_SIZE;
output F_HM0_TRANS1;
output [31:0] F_HM0_WDATA;
output F_HM0_WRITE;
output [31:0] F_HM1_ADDR;
output F_HM1_ENABLE;
output F_HM1_SEL;
output [1:0] F_HM1_SIZE;
output F_HM1_TRANS1;
output [31:0] F_HM1_WDATA;
output F_HM1_WRITE;
output FAB_CHRGVBUS;
output FAB_DISCHRGVBUS;
output FAB_DMPULLDOWN;
output FAB_DPPULLDOWN;
output FAB_DRVVBUS;
output FAB_IDPULLUP;
output [1:0] FAB_OPMODE;
output FAB_SUSPENDM;
output FAB_TERMSEL;
output FAB_TXVALID;
output [3:0] FAB_VCONTROL;
output FAB_VCONTROLLOADM;
output [1:0] FAB_XCVRSEL;
output [7:0] FAB_XDATAOUT;
output FACC_GLMUX_SEL;
output [1:0] FIC32_0_MASTER;
output [1:0] FIC32_1_MASTER;
output FPGA_RESET_N;
output GTX_CLK;
output [15:0] H2F_INTERRUPT;
output H2F_NMI;
output H2FCALIB;
output I2C0_SCL_MGPIO31B_H2F_A;
output I2C0_SCL_MGPIO31B_H2F_B;
output I2C0_SDA_MGPIO30B_H2F_A;
output I2C0_SDA_MGPIO30B_H2F_B;
output I2C1_SCL_MGPIO1A_H2F_A;
output I2C1_SCL_MGPIO1A_H2F_B;
output I2C1_SDA_MGPIO0A_H2F_A;
output I2C1_SDA_MGPIO0A_H2F_B;
output MDCF;
output MDOENF;
output MDOF;
output MMUART0_CTS_MGPIO19B_H2F_A;
output MMUART0_CTS_MGPIO19B_H2F_B;
output MMUART0_DCD_MGPIO22B_H2F_A;
output MMUART0_DCD_MGPIO22B_H2F_B;
output MMUART0_DSR_MGPIO20B_H2F_A;
output MMUART0_DSR_MGPIO20B_H2F_B;
output MMUART0_DTR_MGPIO18B_H2F_A;
output MMUART0_DTR_MGPIO18B_H2F_B;
output MMUART0_RI_MGPIO21B_H2F_A;
output MMUART0_RI_MGPIO21B_H2F_B;
output MMUART0_RTS_MGPIO17B_H2F_A;
output MMUART0_RTS_MGPIO17B_H2F_B;
output MMUART0_RXD_MGPIO28B_H2F_A;
output MMUART0_RXD_MGPIO28B_H2F_B;
output MMUART0_SCK_MGPIO29B_H2F_A;
output MMUART0_SCK_MGPIO29B_H2F_B;
output MMUART0_TXD_MGPIO27B_H2F_A;
output MMUART0_TXD_MGPIO27B_H2F_B;
output MMUART1_DTR_MGPIO12B_H2F_A;
output MMUART1_RTS_MGPIO11B_H2F_A;
output MMUART1_RTS_MGPIO11B_H2F_B;
output MMUART1_RXD_MGPIO26B_H2F_A;
output MMUART1_RXD_MGPIO26B_H2F_B;
output MMUART1_SCK_MGPIO25B_H2F_A;
output MMUART1_SCK_MGPIO25B_H2F_B;
output MMUART1_TXD_MGPIO24B_H2F_A;
output MMUART1_TXD_MGPIO24B_H2F_B;
output MPLL_LOCK;
output [15:2] PER2_FABRIC_PADDR;
output PER2_FABRIC_PENABLE;
output PER2_FABRIC_PSEL;
output [31:0] PER2_FABRIC_PWDATA;
output PER2_FABRIC_PWRITE;
output RTC_MATCH;
output SLEEPDEEP;
output SLEEPHOLDACK;
output SLEEPING;
output SMBALERT_NO0;
output SMBALERT_NO1;
output SMBSUS_NO0;
output SMBSUS_NO1;
output SPI0_CLK_OUT;
output SPI0_SDI_MGPIO5A_H2F_A;
output SPI0_SDI_MGPIO5A_H2F_B;
output SPI0_SDO_MGPIO6A_H2F_A;
output SPI0_SDO_MGPIO6A_H2F_B;
output SPI0_SS0_MGPIO7A_H2F_A;
output SPI0_SS0_MGPIO7A_H2F_B;
output SPI0_SS1_MGPIO8A_H2F_A;
output SPI0_SS1_MGPIO8A_H2F_B;
output SPI0_SS2_MGPIO9A_H2F_A;
output SPI0_SS2_MGPIO9A_H2F_B;
output SPI0_SS3_MGPIO10A_H2F_A;
output SPI0_SS3_MGPIO10A_H2F_B;
output SPI0_SS4_MGPIO19A_H2F_A;
output SPI0_SS5_MGPIO20A_H2F_A;
output SPI0_SS6_MGPIO21A_H2F_A;
output SPI0_SS7_MGPIO22A_H2F_A;
output SPI1_CLK_OUT;
output SPI1_SDI_MGPIO11A_H2F_A;
output SPI1_SDI_MGPIO11A_H2F_B;
output SPI1_SDO_MGPIO12A_H2F_A;
output SPI1_SDO_MGPIO12A_H2F_B;
output SPI1_SS0_MGPIO13A_H2F_A;
output SPI1_SS0_MGPIO13A_H2F_B;
output SPI1_SS1_MGPIO14A_H2F_A;
output SPI1_SS1_MGPIO14A_H2F_B;
output SPI1_SS2_MGPIO15A_H2F_A;
output SPI1_SS2_MGPIO15A_H2F_B;
output SPI1_SS3_MGPIO16A_H2F_A;
output SPI1_SS3_MGPIO16A_H2F_B;
output SPI1_SS4_MGPIO17A_H2F_A;
output SPI1_SS5_MGPIO18A_H2F_A;
output SPI1_SS6_MGPIO23A_H2F_A;
output SPI1_SS7_MGPIO24A_H2F_A;
output [9:0] TCGF;
output TRACECLK;
output [3:0] TRACEDATA;
output TX_CLK;
output TX_ENF;
output TX_ERRF;
output TXCTL_EN_RIF;
output [3:0] TXD_RIF;
output [7:0] TXDF;
output TXEV;
output WDOGTIMEOUT;
output F_ARREADY_HREADYOUT1;
output F_AWREADY_HREADYOUT0;
output [3:0] F_BID;
output [1:0] F_BRESP_HRESP0;
output F_BVALID;
output [63:0] F_RDATA_HRDATA01;
output [3:0] F_RID;
output F_RLAST;
output [1:0] F_RRESP_HRESP1;
output F_RVALID;
output F_WREADY;
output [15:0] MDDR_FABRIC_PRDATA;
output MDDR_FABRIC_PREADY;
output MDDR_FABRIC_PSLVERR;
output [31:0] REV_ARADDR;
output [1:0] REV_ARBURST;
output [3:0] REV_ARID;
output [3:0] REV_ARLEN;
output [1:0] REV_ARLOCK;
output [1:0] REV_ARSIZE;
output [31:0] REV_AWADDR;
output [1:0] REV_AWLOCK;
output [1:0] REV_AWSIZE;
output REV_RREADY;
output [3:0] REV_WID;
output [7:0] REV_WSTRB;
input  CAN_RXBUS_F2H_SCP;
input  CAN_TX_EBL_F2H_SCP;
input  CAN_TXBUS_F2H_SCP;
input  CLK_BASE;
input  COLF;
input  CRSF;
input  [1:0] F2_DMAREADY;
input  [15:0] F2H_INTERRUPT;
input  F2HCALIB;
input  [1:0] F_DMAREADY;
input  [31:0] F_FM0_ADDR;
input  F_FM0_ENABLE;
input  F_FM0_MASTLOCK;
input  F_FM0_READY;
input  F_FM0_SEL;
input  [1:0] F_FM0_SIZE;
input  F_FM0_TRANS1;
input  [31:0] F_FM0_WDATA;
input  F_FM0_WRITE;
input  [31:0] F_FM1_ADDR;
input  F_FM1_ENABLE;
input  F_FM1_MASTLOCK;
input  F_FM1_READY;
input  F_FM1_SEL;
input  [1:0] F_FM1_SIZE;
input  F_FM1_TRANS1;
input  [31:0] F_FM1_WDATA;
input  F_FM1_WRITE;
input  [31:0] F_HM0_RDATA;
input  F_HM0_READY;
input  F_HM0_RESP;
input  [31:0] F_HM1_RDATA;
input  F_HM1_READY;
input  F_HM1_RESP;
input  FAB_AVALID;
input  FAB_HOSTDISCON;
input  FAB_IDDIG;
input  [1:0] FAB_LINESTATE;
input  FAB_M3_RESET_N;
input  FAB_PLL_LOCK;
input  FAB_RXACTIVE;
input  FAB_RXERROR;
input  FAB_RXVALID;
input  FAB_RXVALIDH;
input  FAB_SESSEND;
input  FAB_TXREADY;
input  FAB_VBUSVALID;
input  [7:0] FAB_VSTATUS;
input  [7:0] FAB_XDATAIN;
input  GTX_CLKPF;
input  I2C0_BCLK;
input  I2C0_SCL_F2H_SCP;
input  I2C0_SDA_F2H_SCP;
input  I2C1_BCLK;
input  I2C1_SCL_F2H_SCP;
input  I2C1_SDA_F2H_SCP;
input  MDIF;
input  MGPIO0A_F2H_GPIN;
input  MGPIO10A_F2H_GPIN;
input  MGPIO11A_F2H_GPIN;
input  MGPIO11B_F2H_GPIN;
input  MGPIO12A_F2H_GPIN;
input  MGPIO13A_F2H_GPIN;
input  MGPIO14A_F2H_GPIN;
input  MGPIO15A_F2H_GPIN;
input  MGPIO16A_F2H_GPIN;
input  MGPIO17B_F2H_GPIN;
input  MGPIO18B_F2H_GPIN;
input  MGPIO19B_F2H_GPIN;
input  MGPIO1A_F2H_GPIN;
input  MGPIO20B_F2H_GPIN;
input  MGPIO21B_F2H_GPIN;
input  MGPIO22B_F2H_GPIN;
input  MGPIO24B_F2H_GPIN;
input  MGPIO25B_F2H_GPIN;
input  MGPIO26B_F2H_GPIN;
input  MGPIO27B_F2H_GPIN;
input  MGPIO28B_F2H_GPIN;
input  MGPIO29B_F2H_GPIN;
input  MGPIO2A_F2H_GPIN;
input  MGPIO30B_F2H_GPIN;
input  MGPIO31B_F2H_GPIN;
input  MGPIO3A_F2H_GPIN;
input  MGPIO4A_F2H_GPIN;
input  MGPIO5A_F2H_GPIN;
input  MGPIO6A_F2H_GPIN;
input  MGPIO7A_F2H_GPIN;
input  MGPIO8A_F2H_GPIN;
input  MGPIO9A_F2H_GPIN;
input  MMUART0_CTS_F2H_SCP;
input  MMUART0_DCD_F2H_SCP;
input  MMUART0_DSR_F2H_SCP;
input  MMUART0_DTR_F2H_SCP;
input  MMUART0_RI_F2H_SCP;
input  MMUART0_RTS_F2H_SCP;
input  MMUART0_RXD_F2H_SCP;
input  MMUART0_SCK_F2H_SCP;
input  MMUART0_TXD_F2H_SCP;
input  MMUART1_CTS_F2H_SCP;
input  MMUART1_DCD_F2H_SCP;
input  MMUART1_DSR_F2H_SCP;
input  MMUART1_RI_F2H_SCP;
input  MMUART1_RTS_F2H_SCP;
input  MMUART1_RXD_F2H_SCP;
input  MMUART1_SCK_F2H_SCP;
input  MMUART1_TXD_F2H_SCP;
input  [31:0] PER2_FABRIC_PRDATA;
input  PER2_FABRIC_PREADY;
input  PER2_FABRIC_PSLVERR;
input  [9:0] RCGF;
input  RX_CLKPF;
input  RX_DVF;
input  RX_ERRF;
input  RX_EV;
input  [7:0] RXDF;
input  SLEEPHOLDREQ;
input  SMBALERT_NI0;
input  SMBALERT_NI1;
input  SMBSUS_NI0;
input  SMBSUS_NI1;
input  SPI0_CLK_IN;
input  SPI0_SDI_F2H_SCP;
input  SPI0_SDO_F2H_SCP;
input  SPI0_SS0_F2H_SCP;
input  SPI0_SS1_F2H_SCP;
input  SPI0_SS2_F2H_SCP;
input  SPI0_SS3_F2H_SCP;
input  SPI1_CLK_IN;
input  SPI1_SDI_F2H_SCP;
input  SPI1_SDO_F2H_SCP;
input  SPI1_SS0_F2H_SCP;
input  SPI1_SS1_F2H_SCP;
input  SPI1_SS2_F2H_SCP;
input  SPI1_SS3_F2H_SCP;
input  TX_CLKPF;
input  USER_MSS_GPIO_RESET_N;
input  USER_MSS_RESET_N;
input  XCLK_FAB;
input  CLK_MDDR_APB;
input  [31:0] F_ARADDR_HADDR1;
input  [1:0] F_ARBURST_HTRANS1;
input  [3:0] F_ARID_HSEL1;
input  [3:0] F_ARLEN_HBURST1;
input  [1:0] F_ARLOCK_HMASTLOCK1;
input  [1:0] F_ARSIZE_HSIZE1;
input  F_ARVALID_HWRITE1;
input  [31:0] F_AWADDR_HADDR0;
input  [1:0] F_AWBURST_HTRANS0;
input  [3:0] F_AWID_HSEL0;
input  [3:0] F_AWLEN_HBURST0;
input  [1:0] F_AWLOCK_HMASTLOCK0;
input  [1:0] F_AWSIZE_HSIZE0;
input  F_AWVALID_HWRITE0;
input  F_BREADY;
input  F_RMW_AXI;
input  F_RREADY;
input  [63:0] F_WDATA_HWDATA01;
input  [3:0] F_WID_HREADY01;
input  F_WLAST;
input  [7:0] F_WSTRB;
input  F_WVALID;
input  FPGA_MDDR_ARESET_N;
input  [10:2] MDDR_FABRIC_PADDR;
input  MDDR_FABRIC_PENABLE;
input  MDDR_FABRIC_PSEL;
input  [15:0] MDDR_FABRIC_PWDATA;
input  MDDR_FABRIC_PWRITE;
input  PRESET_N;
input  CAN_RXBUS_USBA_DATA1_MGPIO3A_IN;
input  CAN_TX_EBL_USBA_DATA2_MGPIO4A_IN;
input  CAN_TXBUS_USBA_DATA0_MGPIO2A_IN;
input  [4:0] DM_IN;
input  [35:0] DRAM_DQ_IN;
input  [4:0] DRAM_DQS_IN;
input  [2:0] DRAM_FIFO_WE_IN;
input  I2C0_SCL_USBC_DATA1_MGPIO31B_IN;
input  I2C0_SDA_USBC_DATA0_MGPIO30B_IN;
input  I2C1_SCL_USBA_DATA4_MGPIO1A_IN;
input  I2C1_SDA_USBA_DATA3_MGPIO0A_IN;
input  MGPIO0B_IN;
input  MGPIO10B_IN;
input  MGPIO1B_IN;
input  MGPIO25A_IN;
input  MGPIO26A_IN;
input  MGPIO27A_IN;
input  MGPIO28A_IN;
input  MGPIO29A_IN;
input  MGPIO2B_IN;
input  MGPIO30A_IN;
input  MGPIO31A_IN;
input  MGPIO3B_IN;
input  MGPIO4B_IN;
input  MGPIO5B_IN;
input  MGPIO6B_IN;
input  MGPIO7B_IN;
input  MGPIO8B_IN;
input  MGPIO9B_IN;
input  MMUART0_CTS_USBC_DATA7_MGPIO19B_IN;
input  MMUART0_DCD_MGPIO22B_IN;
input  MMUART0_DSR_MGPIO20B_IN;
input  MMUART0_DTR_USBC_DATA6_MGPIO18B_IN;
input  MMUART0_RI_MGPIO21B_IN;
input  MMUART0_RTS_USBC_DATA5_MGPIO17B_IN;
input  MMUART0_RXD_USBC_STP_MGPIO28B_IN;
input  MMUART0_SCK_USBC_NXT_MGPIO29B_IN;
input  MMUART0_TXD_USBC_DIR_MGPIO27B_IN;
input  MMUART1_CTS_MGPIO13B_IN;
input  MMUART1_DCD_MGPIO16B_IN;
input  MMUART1_DSR_MGPIO14B_IN;
input  MMUART1_DTR_MGPIO12B_IN;
input  MMUART1_RI_MGPIO15B_IN;
input  MMUART1_RTS_MGPIO11B_IN;
input  MMUART1_RXD_USBC_DATA3_MGPIO26B_IN;
input  MMUART1_SCK_USBC_DATA4_MGPIO25B_IN;
input  MMUART1_TXD_USBC_DATA2_MGPIO24B_IN;
input  RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_IN;
input  RGMII_MDC_RMII_MDC_IN;
input  RGMII_MDIO_RMII_MDIO_USBB_DATA7_IN;
input  RGMII_RX_CLK_IN;
input  RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_IN;
input  RGMII_RXD0_RMII_RXD0_USBB_DATA0_IN;
input  RGMII_RXD1_RMII_RXD1_USBB_DATA1_IN;
input  RGMII_RXD2_RMII_RX_ER_USBB_DATA3_IN;
input  RGMII_RXD3_USBB_DATA4_IN;
input  RGMII_TX_CLK_IN;
input  RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_IN;
input  RGMII_TXD0_RMII_TXD0_USBB_DIR_IN;
input  RGMII_TXD1_RMII_TXD1_USBB_STP_IN;
input  RGMII_TXD2_USBB_DATA5_IN;
input  RGMII_TXD3_USBB_DATA6_IN;
input  SPI0_SCK_USBA_XCLK_IN;
input  SPI0_SDI_USBA_DIR_MGPIO5A_IN;
input  SPI0_SDO_USBA_STP_MGPIO6A_IN;
input  SPI0_SS0_USBA_NXT_MGPIO7A_IN;
input  SPI0_SS1_USBA_DATA5_MGPIO8A_IN;
input  SPI0_SS2_USBA_DATA6_MGPIO9A_IN;
input  SPI0_SS3_USBA_DATA7_MGPIO10A_IN;
input  SPI0_SS4_MGPIO19A_IN;
input  SPI0_SS5_MGPIO20A_IN;
input  SPI0_SS6_MGPIO21A_IN;
input  SPI0_SS7_MGPIO22A_IN;
input  SPI1_SCK_IN;
input  SPI1_SDI_MGPIO11A_IN;
input  SPI1_SDO_MGPIO12A_IN;
input  SPI1_SS0_MGPIO13A_IN;
input  SPI1_SS1_MGPIO14A_IN;
input  SPI1_SS2_MGPIO15A_IN;
input  SPI1_SS3_MGPIO16A_IN;
input  SPI1_SS4_MGPIO17A_IN;
input  SPI1_SS5_MGPIO18A_IN;
input  SPI1_SS6_MGPIO23A_IN;
input  SPI1_SS7_MGPIO24A_IN;
input  USBC_XCLK_IN;
input  USBD_DATA0_IN;
input  USBD_DATA1_IN;
input  USBD_DATA2_IN;
input  USBD_DATA3_IN;
input  USBD_DATA4_IN;
input  USBD_DATA5_IN;
input  USBD_DATA6_IN;
input  USBD_DATA7_MGPIO23B_IN;
input  USBD_DIR_IN;
input  USBD_NXT_IN;
input  USBD_STP_IN;
input  USBD_XCLK_IN;
output CAN_RXBUS_USBA_DATA1_MGPIO3A_OUT;
output CAN_TX_EBL_USBA_DATA2_MGPIO4A_OUT;
output CAN_TXBUS_USBA_DATA0_MGPIO2A_OUT;
output [15:0] DRAM_ADDR;
output [2:0] DRAM_BA;
output DRAM_CASN;
output DRAM_CKE;
output DRAM_CLK;
output DRAM_CSN;
output [4:0] DRAM_DM_RDQS_OUT;
output [35:0] DRAM_DQ_OUT;
output [4:0] DRAM_DQS_OUT;
output [2:0] DRAM_FIFO_WE_OUT;
output DRAM_ODT;
output DRAM_RASN;
output DRAM_RSTN;
output DRAM_WEN;
output I2C0_SCL_USBC_DATA1_MGPIO31B_OUT;
output I2C0_SDA_USBC_DATA0_MGPIO30B_OUT;
output I2C1_SCL_USBA_DATA4_MGPIO1A_OUT;
output I2C1_SDA_USBA_DATA3_MGPIO0A_OUT;
output MGPIO0B_OUT;
output MGPIO10B_OUT;
output MGPIO1B_OUT;
output MGPIO25A_OUT;
output MGPIO26A_OUT;
output MGPIO27A_OUT;
output MGPIO28A_OUT;
output MGPIO29A_OUT;
output MGPIO2B_OUT;
output MGPIO30A_OUT;
output MGPIO31A_OUT;
output MGPIO3B_OUT;
output MGPIO4B_OUT;
output MGPIO5B_OUT;
output MGPIO6B_OUT;
output MGPIO7B_OUT;
output MGPIO8B_OUT;
output MGPIO9B_OUT;
output MMUART0_CTS_USBC_DATA7_MGPIO19B_OUT;
output MMUART0_DCD_MGPIO22B_OUT;
output MMUART0_DSR_MGPIO20B_OUT;
output MMUART0_DTR_USBC_DATA6_MGPIO18B_OUT;
output MMUART0_RI_MGPIO21B_OUT;
output MMUART0_RTS_USBC_DATA5_MGPIO17B_OUT;
output MMUART0_RXD_USBC_STP_MGPIO28B_OUT;
output MMUART0_SCK_USBC_NXT_MGPIO29B_OUT;
output MMUART0_TXD_USBC_DIR_MGPIO27B_OUT;
output MMUART1_CTS_MGPIO13B_OUT;
output MMUART1_DCD_MGPIO16B_OUT;
output MMUART1_DSR_MGPIO14B_OUT;
output MMUART1_DTR_MGPIO12B_OUT;
output MMUART1_RI_MGPIO15B_OUT;
output MMUART1_RTS_MGPIO11B_OUT;
output MMUART1_RXD_USBC_DATA3_MGPIO26B_OUT;
output MMUART1_SCK_USBC_DATA4_MGPIO25B_OUT;
output MMUART1_TXD_USBC_DATA2_MGPIO24B_OUT;
output RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OUT;
output RGMII_MDC_RMII_MDC_OUT;
output RGMII_MDIO_RMII_MDIO_USBB_DATA7_OUT;
output RGMII_RX_CLK_OUT;
output RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OUT;
output RGMII_RXD0_RMII_RXD0_USBB_DATA0_OUT;
output RGMII_RXD1_RMII_RXD1_USBB_DATA1_OUT;
output RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OUT;
output RGMII_RXD3_USBB_DATA4_OUT;
output RGMII_TX_CLK_OUT;
output RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OUT;
output RGMII_TXD0_RMII_TXD0_USBB_DIR_OUT;
output RGMII_TXD1_RMII_TXD1_USBB_STP_OUT;
output RGMII_TXD2_USBB_DATA5_OUT;
output RGMII_TXD3_USBB_DATA6_OUT;
output SPI0_SCK_USBA_XCLK_OUT;
output SPI0_SDI_USBA_DIR_MGPIO5A_OUT;
output SPI0_SDO_USBA_STP_MGPIO6A_OUT;
output SPI0_SS0_USBA_NXT_MGPIO7A_OUT;
output SPI0_SS1_USBA_DATA5_MGPIO8A_OUT;
output SPI0_SS2_USBA_DATA6_MGPIO9A_OUT;
output SPI0_SS3_USBA_DATA7_MGPIO10A_OUT;
output SPI0_SS4_MGPIO19A_OUT;
output SPI0_SS5_MGPIO20A_OUT;
output SPI0_SS6_MGPIO21A_OUT;
output SPI0_SS7_MGPIO22A_OUT;
output SPI1_SCK_OUT;
output SPI1_SDI_MGPIO11A_OUT;
output SPI1_SDO_MGPIO12A_OUT;
output SPI1_SS0_MGPIO13A_OUT;
output SPI1_SS1_MGPIO14A_OUT;
output SPI1_SS2_MGPIO15A_OUT;
output SPI1_SS3_MGPIO16A_OUT;
output SPI1_SS4_MGPIO17A_OUT;
output SPI1_SS5_MGPIO18A_OUT;
output SPI1_SS6_MGPIO23A_OUT;
output SPI1_SS7_MGPIO24A_OUT;
output USBC_XCLK_OUT;
output USBD_DATA0_OUT;
output USBD_DATA1_OUT;
output USBD_DATA2_OUT;
output USBD_DATA3_OUT;
output USBD_DATA4_OUT;
output USBD_DATA5_OUT;
output USBD_DATA6_OUT;
output USBD_DATA7_MGPIO23B_OUT;
output USBD_DIR_OUT;
output USBD_NXT_OUT;
output USBD_STP_OUT;
output USBD_XCLK_OUT;
output CAN_RXBUS_USBA_DATA1_MGPIO3A_OE;
output CAN_TX_EBL_USBA_DATA2_MGPIO4A_OE;
output CAN_TXBUS_USBA_DATA0_MGPIO2A_OE;
output [4:0] DM_OE;
output [35:0] DRAM_DQ_OE;
output [4:0] DRAM_DQS_OE;
output I2C0_SCL_USBC_DATA1_MGPIO31B_OE;
output I2C0_SDA_USBC_DATA0_MGPIO30B_OE;
output I2C1_SCL_USBA_DATA4_MGPIO1A_OE;
output I2C1_SDA_USBA_DATA3_MGPIO0A_OE;
output MGPIO0B_OE;
output MGPIO10B_OE;
output MGPIO1B_OE;
output MGPIO25A_OE;
output MGPIO26A_OE;
output MGPIO27A_OE;
output MGPIO28A_OE;
output MGPIO29A_OE;
output MGPIO2B_OE;
output MGPIO30A_OE;
output MGPIO31A_OE;
output MGPIO3B_OE;
output MGPIO4B_OE;
output MGPIO5B_OE;
output MGPIO6B_OE;
output MGPIO7B_OE;
output MGPIO8B_OE;
output MGPIO9B_OE;
output MMUART0_CTS_USBC_DATA7_MGPIO19B_OE;
output MMUART0_DCD_MGPIO22B_OE;
output MMUART0_DSR_MGPIO20B_OE;
output MMUART0_DTR_USBC_DATA6_MGPIO18B_OE;
output MMUART0_RI_MGPIO21B_OE;
output MMUART0_RTS_USBC_DATA5_MGPIO17B_OE;
output MMUART0_RXD_USBC_STP_MGPIO28B_OE;
output MMUART0_SCK_USBC_NXT_MGPIO29B_OE;
output MMUART0_TXD_USBC_DIR_MGPIO27B_OE;
output MMUART1_CTS_MGPIO13B_OE;
output MMUART1_DCD_MGPIO16B_OE;
output MMUART1_DSR_MGPIO14B_OE;
output MMUART1_DTR_MGPIO12B_OE;
output MMUART1_RI_MGPIO15B_OE;
output MMUART1_RTS_MGPIO11B_OE;
output MMUART1_RXD_USBC_DATA3_MGPIO26B_OE;
output MMUART1_SCK_USBC_DATA4_MGPIO25B_OE;
output MMUART1_TXD_USBC_DATA2_MGPIO24B_OE;
output RGMII_GTX_CLK_RMII_CLK_USBB_XCLK_OE;
output RGMII_MDC_RMII_MDC_OE;
output RGMII_MDIO_RMII_MDIO_USBB_DATA7_OE;
output RGMII_RX_CLK_OE;
output RGMII_RX_CTL_RMII_CRS_DV_USBB_DATA2_OE;
output RGMII_RXD0_RMII_RXD0_USBB_DATA0_OE;
output RGMII_RXD1_RMII_RXD1_USBB_DATA1_OE;
output RGMII_RXD2_RMII_RX_ER_USBB_DATA3_OE;
output RGMII_RXD3_USBB_DATA4_OE;
output RGMII_TX_CLK_OE;
output RGMII_TX_CTL_RMII_TX_EN_USBB_NXT_OE;
output RGMII_TXD0_RMII_TXD0_USBB_DIR_OE;
output RGMII_TXD1_RMII_TXD1_USBB_STP_OE;
output RGMII_TXD2_USBB_DATA5_OE;
output RGMII_TXD3_USBB_DATA6_OE;
output SPI0_SCK_USBA_XCLK_OE;
output SPI0_SDI_USBA_DIR_MGPIO5A_OE;
output SPI0_SDO_USBA_STP_MGPIO6A_OE;
output SPI0_SS0_USBA_NXT_MGPIO7A_OE;
output SPI0_SS1_USBA_DATA5_MGPIO8A_OE;
output SPI0_SS2_USBA_DATA6_MGPIO9A_OE;
output SPI0_SS3_USBA_DATA7_MGPIO10A_OE;
output SPI0_SS4_MGPIO19A_OE;
output SPI0_SS5_MGPIO20A_OE;
output SPI0_SS6_MGPIO21A_OE;
output SPI0_SS7_MGPIO22A_OE;
output SPI1_SCK_OE;
output SPI1_SDI_MGPIO11A_OE;
output SPI1_SDO_MGPIO12A_OE;
output SPI1_SS0_MGPIO13A_OE;
output SPI1_SS1_MGPIO14A_OE;
output SPI1_SS2_MGPIO15A_OE;
output SPI1_SS3_MGPIO16A_OE;
output SPI1_SS4_MGPIO17A_OE;
output SPI1_SS5_MGPIO18A_OE;
output SPI1_SS6_MGPIO23A_OE;
output SPI1_SS7_MGPIO24A_OE;
output USBC_XCLK_OE;
output USBD_DATA0_OE;
output USBD_DATA1_OE;
output USBD_DATA2_OE;
output USBD_DATA3_OE;
output USBD_DATA4_OE;
output USBD_DATA5_OE;
output USBD_DATA6_OE;
output USBD_DATA7_MGPIO23B_OE;
output USBD_DIR_OE;
output USBD_NXT_OE;
output USBD_STP_OE;
output USBD_XCLK_OE;
parameter INIT = 'h0;
parameter ACT_UBITS = 'h0;
parameter MEMORYFILE = "";
parameter RTC_MAIN_XTL_FREQ = 0.0;
parameter RTC_MAIN_XTL_MODE = "";
parameter DDR_CLK_FREQ = 0.0;

endmodule
