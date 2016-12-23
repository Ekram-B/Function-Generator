## This file is a general .xdc for the ZYBO Rev B board
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used signals according to the project


##Because I am using BTN as CLOCK for some always blocks
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets btn_IBUF[0]]


##Because I am using BTN as CLOCK for some always blocks
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets btn_IBUF[3]]

##Because I am using BTN as CLOCK for some always blocks
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets btn_IBUF[2]]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets btn_IBUF[1]]


#Clock signal
set_property -dict { PACKAGE_PIN L16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L11P_T1_SRCC_35 Sch=sysclk
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];

##external buttons

set_property PACKAGE_PIN N15 [get_ports {btn[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[0]}]

set_property PACKAGE_PIN L14 [get_ports {btn[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[1]}]

set_property PACKAGE_PIN K16 [get_ports {btn[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[2]}]

set_property PACKAGE_PIN K14 [get_ports {btn[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {btn[3]}]

##DAC
set_property PACKAGE_PIN V12 [get_ports {not_SYNC}]
set_property IOSTANDARD LVCMOS33 [get_ports {not_SYNC}]

set_property PACKAGE_PIN W16 [get_ports {DINA}]
set_property IOSTANDARD LVCMOS33 [get_ports {DINA}]

set_property PACKAGE_PIN H15 [get_ports {SCLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {SCLK}]

##Switches
set_property -dict { PACKAGE_PIN G15   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; #IO_L19N_T3_VREF_35 Sch=SW0
set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }];  #IO_L24P_T3_34 Sch=SW1
set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property -dict { PACKAGE_PIN W13   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; #IO_L4N_T0_34 Sch=SW2
set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; #IO_L9P_T1_DQS_34 Sch=SW3
set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]


##IO_L20P_T3_AD6P_35
set_property PACKAGE_PIN U20 [get_ports {data_line[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[1]}]

##IO_L15P_T2_DQS_34
set_property PACKAGE_PIN T20 [get_ports {data_line[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[0]}]

##IO_L16N_T2_34
set_property PACKAGE_PIN W20 [get_ports {data_line[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[3]}]

##IO_L16P_T2_34
set_property PACKAGE_PIN V20 [get_ports {data_line[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[2]}]

##IO_L17N_T2_34
set_property PACKAGE_PIN Y19 [get_ports {data_line[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[5]}]

##IO_L17P_T2_34
set_property PACKAGE_PIN Y18 [get_ports {data_line[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[4]}]

##IO_L22N_T3_34
set_property PACKAGE_PIN W19 [get_ports {data_line[7]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[7]}]

##IO_L22P_T3_34
set_property PACKAGE_PIN W18 [get_ports {data_line[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[6]}]


##IO_L8N_T1_34
set_property PACKAGE_PIN Y14 [get_ports {data_line[8]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[8]}]

##IO_L8P_T1_34
set_property PACKAGE_PIN W14 [get_ports {data_line[9]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[9]}]


##IO_L2P_T0_34
set_property PACKAGE_PIN T12 [get_ports {data_line[10]}]
set_property IOSTANDARD LVCMOS33 [get_ports {data_line[10]}]


#LEDs
set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { led[0] }]; #IO_L23P_T3_35 Sch=LED0
set_property -dict { PACKAGE_PIN M15   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; #IO_L23N_T3_35 Sch=LED1
set_property -dict { PACKAGE_PIN G14   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; #IO_0_35=Sch=LED2
set_property -dict { PACKAGE_PIN D18   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; #IO_L3N_T0_DQS_AD1N_35 Sch=LED3

