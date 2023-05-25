set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

set_clock_groups -asynchronous -group {CLK100M}

#set_input_delay -clock [get_clocks {CLK100M}] -min -add_delay 2.0 [get_ports {DCFAIL}]
#set_input_delay -clock [get_clocks {CLK100M}] -max -add_delay 8.0 [get_ports {DCFAIL}]

set_output_delay -clock [get_clocks {CLK100M}] -min -add_delay 2.0 [get_ports {FPGA_DEBUG_LED}]
set_output_delay -clock [get_clocks {CLK100M}] -max -add_delay 8.0 [get_ports {FPGA_DEBUG_LED}]
