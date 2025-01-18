## Clock signal
set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];


## mp3
set_property -dict { PACKAGE_PIN F6    IOSTANDARD LVCMOS33 } [get_ports { XRESET }]; # Bank 35
set_property -dict { PACKAGE_PIN K1    IOSTANDARD LVCMOS33 } [get_ports { XDCS }];  # Bank 35
set_property -dict { PACKAGE_PIN E7    IOSTANDARD LVCMOS33 } [get_ports { XCS }];   # Bank 35
set_property -dict { PACKAGE_PIN J4    IOSTANDARD LVCMOS33 } [get_ports { SI }];    # Bank 35
set_property -dict { PACKAGE_PIN M2    IOSTANDARD LVCMOS33 } [get_ports { SCK }];   # Bank 35


###mp3
#set_property PACKAGE_PIN F6 [get_ports XRESET]
#set_property PACKAGE_PIN K1 [get_ports XDCS]
#set_property PACKAGE_PIN E7 [get_ports XCS]
#set_property PACKAGE_PIN J4 [get_ports SI]
#set_property PACKAGE_PIN M2 [get_ports SCK]        
##set_property PACKAGE_PIN J3 [get_ports SCK]



## LEDs
set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

##7 segment display
set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { SEG[6] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { SEG[5] }]; #IO_25_14 Sch=cb
set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { SEG[4] }]; #IO_25_15 Sch=cc
set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { SEG[3] }]; #IO_L17P_T2_A26_15 Sch=cd
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { SEG[2] }]; #IO_L13P_T2_MRCC_14 Sch=ce
set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { SEG[1] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { SEG[0] }]; #IO_L4P_T0_D04_14 Sch=cg
##set_property -dict { PACKAGE_PIN H15   IOSTANDARD LVCMOS33 } [get_ports { DP }]; #IO_L19N_T3_A21_VREF_15 Sch=dp
set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]

set_property -dict { PACKAGE_PIN R16   IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
##set_property PACKAGE_PIN R16 [get_ports { AN[6] }]; # Changed to a new Bank (Bank 34)
##set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
## 7 segment display

set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]

##Temperature Sensor
set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { TMP_SCL }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { TMP_SDA }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda
#set_property -dict { PACKAGE_PIN D13   IOSTANDARD LVCMOS33 } [get_ports { TMP_INT }]; #IO_L6N_T0_VREF_15 Sch=tmp_int
#set_property -dict { PACKAGE_PIN B14   IOSTANDARD LVCMOS33 } [get_ports { TMP_CT }]; #IO_L2N_T0_AD8N_15 Sch=tmp_ct


#### Clock signal
##set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { CLK100MHZ }]; #IO_L12P_T1_MRCC_35 Sch=clk100mhz
##create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];

#### LEDs
##set_property -dict { PACKAGE_PIN H17   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]; #IO_L18P_T2_A24_15 Sch=led[0]
##set_property -dict { PACKAGE_PIN K15   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]; #IO_L24P_T3_RS1_15 Sch=led[1]
##set_property -dict { PACKAGE_PIN J13   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]; #IO_L17N_T2_A25_15 Sch=led[2]
##set_property -dict { PACKAGE_PIN N14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]; #IO_L8P_T1_D11_14 Sch=led[3]
##set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { LED[4] }]; #IO_L7P_T1_D09_14 Sch=led[4]
##set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { LED[5] }]; #IO_L18N_T2_A11_D27_14 Sch=led[5]
##set_property -dict { PACKAGE_PIN U17   IOSTANDARD LVCMOS33 } [get_ports { LED[6] }]; #IO_L17P_T2_A14_D30_14 Sch=led[6]
##set_property -dict { PACKAGE_PIN U16   IOSTANDARD LVCMOS33 } [get_ports { LED[7] }]; #IO_L18P_T2_A12_D28_14 Sch=led[7]
##set_property -dict { PACKAGE_PIN V16   IOSTANDARD LVCMOS33 } [get_ports { LED[8] }]; #IO_L16N_T2_A15_D31_14 Sch=led[8]
##set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { LED[9] }]; #IO_L14N_T2_SRCC_14 Sch=led[9]
##set_property -dict { PACKAGE_PIN U14   IOSTANDARD LVCMOS33 } [get_ports { LED[10] }]; #IO_L22P_T3_A05_D21_14 Sch=led[10]
##set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { LED[11] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=led[11]
##set_property -dict { PACKAGE_PIN V15   IOSTANDARD LVCMOS33 } [get_ports { LED[12] }]; #IO_L16P_T2_CSI_B_14 Sch=led[12]
##set_property -dict { PACKAGE_PIN V14   IOSTANDARD LVCMOS33 } [get_ports { LED[13] }]; #IO_L22N_T3_A04_D20_14 Sch=led[13]
##set_property -dict { PACKAGE_PIN V12   IOSTANDARD LVCMOS33 } [get_ports { LED[14] }]; #IO_L20N_T3_A07_D23_14 Sch=led[14]
##set_property -dict { PACKAGE_PIN V11   IOSTANDARD LVCMOS33 } [get_ports { LED[15] }]; #IO_L21N_T3_DQS_A06_D22_14 Sch=led[15]

#### 7-segment display
##set_property -dict { PACKAGE_PIN T10   IOSTANDARD LVCMOS33 } [get_ports { SEG[6] }]; #IO_L24N_T3_A00_D16_14 Sch=ca
##set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { SEG[5] }]; #IO_25_14 Sch=cb
##set_property -dict { PACKAGE_PIN K16   IOSTANDARD LVCMOS33 } [get_ports { SEG[4] }]; #IO_25_15 Sch=cc
##set_property -dict { PACKAGE_PIN K13   IOSTANDARD LVCMOS33 } [get_ports { SEG[3] }]; #IO_L17P_T2_A26_15 Sch=cd
##set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { SEG[2] }]; #IO_L13P_T2_MRCC_14 Sch=ce
##set_property -dict { PACKAGE_PIN T11   IOSTANDARD LVCMOS33 } [get_ports { SEG[1] }]; #IO_L19P_T3_A10_D26_14 Sch=cf
##set_property -dict { PACKAGE_PIN L18   IOSTANDARD LVCMOS33 } [get_ports { SEG[0] }]; #IO_L4P_T0_D04_14 Sch=cg
##set_property -dict { PACKAGE_PIN J17   IOSTANDARD LVCMOS33 } [get_ports { AN[0] }]; #IO_L23P_T3_FOE_B_15 Sch=an[0]
##set_property -dict { PACKAGE_PIN J18   IOSTANDARD LVCMOS33 } [get_ports { AN[1] }]; #IO_L23N_T3_FWE_B_15 Sch=an[1]
##set_property -dict { PACKAGE_PIN T9    IOSTANDARD LVCMOS33 } [get_ports { AN[2] }]; #IO_L24P_T3_A01_D17_14 Sch=an[2]
##set_property -dict { PACKAGE_PIN J14   IOSTANDARD LVCMOS33 } [get_ports { AN[3] }]; #IO_L19P_T3_A22_15 Sch=an[3]
##set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { AN[4] }]; #IO_L8N_T1_D12_14 Sch=an[4]
##set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { AN[5] }]; #IO_L14P_T2_SRCC_14 Sch=an[5]
##set_property -dict { PACKAGE_PIN K2    IOSTANDARD LVCMOS33 } [get_ports { AN[6] }]; #IO_L23P_T3_35 Sch=an[6]
##set_property -dict { PACKAGE_PIN U13   IOSTANDARD LVCMOS33 } [get_ports { AN[7] }]; #IO_L23N_T3_A02_D18_14 Sch=an[7]

#### Temperature Sensor
##set_property -dict { PACKAGE_PIN C14   IOSTANDARD LVCMOS33 } [get_ports { TMP_SCL }]; #IO_L1N_T0_AD0N_15 Sch=tmp_scl
##set_property -dict { PACKAGE_PIN C15   IOSTANDARD LVCMOS33 } [get_ports { TMP_SDA }]; #IO_L12N_T1_MRCC_15 Sch=tmp_sda

#### VGA Signals
### 红色信号
##set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; # 红色信号位 0
##set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; # 红色信号位 1
##set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; # 红色信号位 2

### 绿色信号
##set_property -dict { PACKAGE_PIN G10   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; # 绿色信号位 0
##set_property -dict { PACKAGE_PIN G11   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; # 绿色信号位 1
##set_property -dict { PACKAGE_PIN G12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; # 绿色信号位 2

### 蓝色信号
##set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; # 蓝色信号位 0
##set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; # 蓝色信号位 1
##set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; # 蓝色信号位 2

### VGA 同步信号
##set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }];  # 水平同步
##set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }];  # 垂直同步



### VGA Signals
## 红色信号
#set_property -dict { PACKAGE_PIN R10   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[0] }]; # 红色信号位 0
#set_property -dict { PACKAGE_PIN R11   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[1] }]; # 红色信号位 1
#set_property -dict { PACKAGE_PIN R12   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[2] }]; # 红色信号位 2
#set_property -dict { PACKAGE_PIN R13   IOSTANDARD LVCMOS33 } [get_ports { VGA_R[3] }]; # 红色信号位 3

## 绿色信号
#set_property -dict { PACKAGE_PIN G10   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[0] }]; # 绿色信号位 0
#set_property -dict { PACKAGE_PIN G11   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[1] }]; # 绿色信号位 1
#set_property -dict { PACKAGE_PIN G12   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[2] }]; # 绿色信号位 2
#set_property -dict { PACKAGE_PIN G13   IOSTANDARD LVCMOS33 } [get_ports { VGA_G[3] }]; # 绿色信号位 3

## 蓝色信号
#set_property -dict { PACKAGE_PIN B10   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[0] }]; # 蓝色信号位 0
#set_property -dict { PACKAGE_PIN B11   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[1] }]; # 蓝色信号位 1
#set_property -dict { PACKAGE_PIN B12   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[2] }]; # 蓝色信号位 2
#set_property -dict { PACKAGE_PIN B13   IOSTANDARD LVCMOS33 } [get_ports { VGA_B[3] }]; # 蓝色信号位 3

## VGA 同步信号
#set_property -dict { PACKAGE_PIN H13   IOSTANDARD LVCMOS33 } [get_ports { VGA_HS }];  # 水平同步
#set_property -dict { PACKAGE_PIN H14   IOSTANDARD LVCMOS33 } [get_ports { VGA_VS }];  # 垂直同步


### 时钟信号
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#set_property PACKAGE_PIN E3 [get_ports clk] # 主时钟

### VGA 信号
## 红色信号
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]
#set_property PACKAGE_PIN A3 [get_ports {VGA_R[0]}]
#set_property PACKAGE_PIN B4 [get_ports {VGA_R[1]}]
#set_property PACKAGE_PIN C5 [get_ports {VGA_R[2]}]
#set_property PACKAGE_PIN A4 [get_ports {VGA_R[3]}]

## 绿色信号
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]
#set_property PACKAGE_PIN C6 [get_ports {VGA_G[0]}]
#set_property PACKAGE_PIN A5 [get_ports {VGA_G[1]}]
#set_property PACKAGE_PIN B6 [get_ports {VGA_G[2]}]
#set_property PACKAGE_PIN A6 [get_ports {VGA_G[3]}]

## 蓝色信号
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]
#set_property PACKAGE_PIN B7 [get_ports {VGA_B[0]}]
#set_property PACKAGE_PIN C7 [get_ports {VGA_B[1]}]
#set_property PACKAGE_PIN D7 [get_ports {VGA_B[2]}]
#set_property PACKAGE_PIN D8 [get_ports {VGA_B[3]}]

## VGA 同步信号
#set_property IOSTANDARD LVCMOS33 [get_ports VGA_HS]
#set_property IOSTANDARD LVCMOS33 [get_ports VGA_VS]
#set_property PACKAGE_PIN B11 [get_ports VGA_HS] # 水平同步信号
#set_property PACKAGE_PIN B12 [get_ports VGA_VS] # 垂直同步信号

### LED 信号
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[15:0]}]
#set_property PACKAGE_PIN H17 [get_ports {LED[0]}]
#set_property PACKAGE_PIN K15 [get_ports {LED[1]}]
#set_property PACKAGE_PIN J13 [get_ports {LED[2]}]
#set_property PACKAGE_PIN N14 [get_ports {LED[3]}]
#set_property PACKAGE_PIN R18 [get_ports {LED[4]}]
#set_property PACKAGE_PIN V17 [get_ports {LED[5]}]
#set_property PACKAGE_PIN U17 [get_ports {LED[6]}]
#set_property PACKAGE_PIN U16 [get_ports {LED[7]}]
#set_property PACKAGE_PIN V16 [get_ports {LED[8]}]
#set_property PACKAGE_PIN T15 [get_ports {LED[9]}]
#set_property PACKAGE_PIN U14 [get_ports {LED[10]}]
#set_property PACKAGE_PIN T16 [get_ports {LED[11]}]
#set_property PACKAGE_PIN V15 [get_ports {LED[12]}]
#set_property PACKAGE_PIN V14 [get_ports {LED[13]}]
#set_property PACKAGE_PIN V12 [get_ports {LED[14]}]
#set_property PACKAGE_PIN V11 [get_ports {LED[15]}]

### 7段数码管
#set_property IOSTANDARD LVCMOS33 [get_ports {SEG[6:0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {AN[7:0]}]
#set_property PACKAGE_PIN T10 [get_ports {SEG[6]}]
#set_property PACKAGE_PIN R10 [get_ports {SEG[5]}]
#set_property PACKAGE_PIN K16 [get_ports {SEG[4]}]
#set_property PACKAGE_PIN K13 [get_ports {SEG[3]}]
#set_property PACKAGE_PIN P15 [get_ports {SEG[2]}]
#set_property PACKAGE_PIN T11 [get_ports {SEG[1]}]
#set_property PACKAGE_PIN L18 [get_ports {SEG[0]}]
#set_property PACKAGE_PIN J17 [get_ports {AN[0]}]
#set_property PACKAGE_PIN J18 [get_ports {AN[1]}]
#set_property PACKAGE_PIN T9 [get_ports {AN[2]}]
#set_property PACKAGE_PIN J14 [get_ports {AN[3]}]
#set_property PACKAGE_PIN P14 [get_ports {AN[4]}]
#set_property PACKAGE_PIN T14 [get_ports {AN[5]}]
#set_property PACKAGE_PIN K2 [get_ports {AN[6]}]
#set_property PACKAGE_PIN U13 [get_ports {AN[7]}]

### 温度传感器
#set_property IOSTANDARD LVCMOS33 [get_ports TMP_SCL]
#set_property IOSTANDARD LVCMOS33 [get_ports TMP_SDA]
#set_property PACKAGE_PIN C14 [get_ports TMP_SCL]
#set_property PACKAGE_PIN C15 [get_ports TMP_SDA]
