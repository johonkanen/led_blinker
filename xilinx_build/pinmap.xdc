# PROJECT MIO FPGA A4896

## Physical Constraints Section

	# FPGA_DEBUG_LED
	set_property PACKAGE_PIN P5 [get_ports FPGA_DEBUG_LED]
	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DEBUG_LED]
	set_property SLEW SLOW [get_ports FPGA_DEBUG_LED]
	set_property DRIVE 12 [get_ports FPGA_DEBUG_LED]

	# CLK100M
	set_property PACKAGE_PIN N14 [get_ports CLK100M]
	set_property IOSTANDARD LVCMOS33 [get_ports CLK100M]
