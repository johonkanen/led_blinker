## Generated SDC file "C:/Users/Jari/mycodeprojects/led_blinker/cyclone_build/led_blinker.out.sdc"

## Copyright (C) 2021  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and any partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details, at
## https://fpgasoftware.intel.com/eula.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 21.1.0 Build 842 10/21/2021 SJ Lite Edition"

## DATE    "Wed Jan  5 09:07:22 2022"

##
## DEVICE  "10CL025YU256I7G"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk50mhz} -period 20.000 -waveform { 0.000 10.000 } [get_ports {clk50mhz}]


#**************************************************************
# Create Generated Clock
#**************************************************************

create_generated_clock -name {u_main_pll|altpll_component|auto_generated|pll1|clk[0]} -source [get_pins {u_main_pll|altpll_component|auto_generated|pll1|inclk[0]}] -duty_cycle 50/1 -multiply_by 12 -divide_by 5 -master_clock {clk50mhz} [get_pins {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}] 


#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************

set_clock_uncertainty -rise_from [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -rise_from [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}] -rise_to [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  
set_clock_uncertainty -fall_from [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}] -fall_to [get_clocks {u_main_pll|altpll_component|auto_generated|pll1|clk[0]}]  0.020  


#**************************************************************
# Set Input Delay
#**************************************************************



#**************************************************************
# Set Output Delay
#**************************************************************



#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

