set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

#create_clock -period 7.576 ns -waveform {0.000 3.788} [get_ports MEMBUS_SYNC_CLK]
#create_clock -period 10 ns [get_ports CLK100M]
  
set_clock_groups -asynchronous -group {CLK100M}

# This will generate ugly as hell clock route, but it will pass the routing

#set_property CLOCK_DEDICATED_ROUTE BACKBONE [get_nets sys_core_1/Clocks_1/clk_wiz_1_1/inst/clk_in1_clk_wiz_1]

#set_input_delay -clock [get_clocks {CLK100M}] -min -add_delay 2.0 [get_ports {DCFAIL}]
#set_input_delay -clock [get_clocks {CLK100M}] -max -add_delay 8.0 [get_ports {DCFAIL}]

set_output_delay -clock [get_clocks {CLK100M}] -min -add_delay 2.0 [get_ports {FPGA_DEBUG_LED}]
set_output_delay -clock [get_clocks {CLK100M}] -max -add_delay 8.0 [get_ports {FPGA_DEBUG_LED}]
