# Clock pin
set_property PACKAGE_PIN E3 [get_ports clk]
set_property IOSTANDARD LVCMOS33 [get_ports clk]

# Reset pin
set_property PACKAGE_PIN C2 [get_ports rst]
set_property IOSTANDARD LVCMOS33 [get_ports rst]

# Button input pin
set_property PACKAGE_PIN D3 [get_ports button_input]
set_property IOSTANDARD LVCMOS33 [get_ports button_input]

# LED output pins
set_property PACKAGE_PIN H17 [get_ports {time_display[0]}]
set_property PACKAGE_PIN K15 [get_ports {time_display[1]}]
set_property PACKAGE_PIN J13 [get_ports {time_display[2]}]
set_property PACKAGE_PIN N14 [get_ports {time_display[3]}]
set_property PACKAGE_PIN R18 [get_ports {time_display[4]}]
set_property PACKAGE_PIN V17 [get_ports {time_display[5]}]
set_property PACKAGE_PIN U17 [get_ports {time_display[6]}]
set_property PACKAGE_PIN U16 [get_ports {time_display[7]}]
set_property PACKAGE_PIN V16 [get_ports {time_display[8]}]
set_property PACKAGE_PIN T15 [get_ports {time_display[9]}]
set_property PACKAGE_PIN U14 [get_ports {time_display[10]}]
set_property PACKAGE_PIN T16 [get_ports {time_display[11]}]
set_property PACKAGE_PIN V15 [get_ports {time_display[12]}]
set_property PACKAGE_PIN V14 [get_ports {time_display[13]}]
set_property PACKAGE_PIN V12 [get_ports {time_display[14]}]
set_property PACKAGE_PIN V11 [get_ports {time_display[15]}]
set_property IOSTANDARD LVCMOS33 [get_ports {time_display[*]}]





















################################################################################
### Nexys 4 DDR Constraints File
################################################################################

### ʱ���ź�
#set_property PACKAGE_PIN E3 [get_ports clk]
#set_property IOSTANDARD LVCMOS33 [get_ports clk]
#create_clock -period 10.0 -name clk -waveform {0.0 5.0} [get_ports clk]

### ��λ�ź�
#set_property PACKAGE_PIN C10 [get_ports rst]
#set_property IOSTANDARD LVCMOS33 [get_ports rst]

### ��������
#set_property PACKAGE_PIN D9 [get_ports btn]
#set_property IOSTANDARD LVCMOS33 [get_ports btn]

### �ƹ����
#set_property PACKAGE_PIN U17 [get_ports light]
#set_property IOSTANDARD LVCMOS33 [get_ports light]

### ʱ����ʾ�źţ�8 λ���ţ�
##set_property PACKAGE_PIN T14 [get_ports {time_display[0]}]
##set_property PACKAGE_PIN T15 [get_ports {time_display[1]}]
##set_property PACKAGE_PIN T16 [get_ports {time_display[2]}]
##set_property PACKAGE_PIN U16 [get_ports {time_display[3]}]
##set_property PACKAGE_PIN V16 [get_ports {time_display[4]}]
##set_property PACKAGE_PIN W16 [get_ports {time_display[5]}]
##set_property PACKAGE_PIN W17 [get_ports {time_display[6]}]
##set_property PACKAGE_PIN W18 [get_ports {time_display[7]}]
##set_property IOSTANDARD LVCMOS33 [get_ports {time_display[*]}]

##set_property PACKAGE_PIN T14 [get_ports {time_display[0]}]
##set_property PACKAGE_PIN T15 [get_ports {time_display[1]}]
##set_property PACKAGE_PIN T16 [get_ports {time_display[2]}]
##set_property PACKAGE_PIN U16 [get_ports {time_display[3]}]
##set_property PACKAGE_PIN V16 [get_ports {time_display[4]}]
##set_property PACKAGE_PIN W15 [get_ports {time_display[5]}] # ȷ������Ч����
##set_property PACKAGE_PIN W16 [get_ports {time_display[6]}] # ȷ������Ч����
##set_property PACKAGE_PIN W17 [get_ports {time_display[7]}] # ȷ������Ч����
##set_property IOSTANDARD LVCMOS33 [get_ports {time_display[*]}]

## ���������������Ű󶨵� LD<15:0>
#set_property PACKAGE_PIN H17 [get_ports {time_display[0]}]
#set_property PACKAGE_PIN K15 [get_ports {time_display[1]}]
#set_property PACKAGE_PIN J13 [get_ports {time_display[2]}]
#set_property PACKAGE_PIN N14 [get_ports {time_display[3]}]
#set_property PACKAGE_PIN R18 [get_ports {time_display[4]}]
#set_property PACKAGE_PIN V17 [get_ports {time_display[5]}]
#set_property PACKAGE_PIN U17 [get_ports {time_display[6]}]
#set_property PACKAGE_PIN U16 [get_ports {time_display[7]}]
#set_property PACKAGE_PIN V16 [get_ports {time_display[8]}]
#set_property PACKAGE_PIN T15 [get_ports {time_display[9]}]
#set_property PACKAGE_PIN U14 [get_ports {time_display[10]}]
#set_property PACKAGE_PIN T16 [get_ports {time_display[11]}]
#set_property PACKAGE_PIN V15 [get_ports {time_display[12]}]
#set_property PACKAGE_PIN V14 [get_ports {time_display[13]}]
#set_property PACKAGE_PIN V12 [get_ports {time_display[14]}]
#set_property PACKAGE_PIN V11 [get_ports {time_display[15]}]

## ���� I/O ��׼
#set_property IOSTANDARD LVCMOS33 [get_ports {time_display[*]}]




### ���õ�ѹ����
#set_property CFGBVS VCCO [current_design]
#set_property CONFIG_VOLTAGE 3.3 [current_design]
