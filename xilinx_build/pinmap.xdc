# PROJECT MIO FPGA A4896

## Physical Constraints Section

## DC fail status and activation signals
	
#	# DCFAIL
#	set_property PACKAGE_PIN L4 [get_ports DCFAIL]
#	set_property IOSTANDARD LVCMOS33 [get_ports DCFAIL]

#	# FPGA_DCFAIL_OUT
#	set_property PACKAGE_PIN M4 [get_ports FPGA_DCFAIL_OUT]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DCFAIL_OUT]
#	set_property SLEW SLOW [get_ports FPGA_DCFAIL_OUT]
#	set_property DRIVE 12 [get_ports FPGA_DCFAIL_OUT]


### Safety relay control and status

#	# S_RELAY_FB
#	set_property PACKAGE_PIN P3 [get_ports S_RELAY_FB]
#	set_property IOSTANDARD LVCMOS33 [get_ports S_RELAY_FB]

#	# S_RELAY_DRIVER_FB
#	 set_property PACKAGE_PIN P4 [get_ports S_RELAY_DRIVER_FB]
#	 set_property IOSTANDARD LVCMOS33 [get_ports S_RELAY_DRIVER_FB]

#	# S_RELAY_ON_FPGA
#	set_property PACKAGE_PIN P1 [get_ports S_RELAY_ON_FPGA]
#	set_property IOSTANDARD LVCMOS33 [get_ports S_RELAY_ON_FPGA]
#	set_property SLEW SLOW [get_ports S_RELAY_ON_FPGA]
#	set_property DRIVE 12 [get_ports S_RELAY_ON_FPGA]

### SPI between CPU and FPGA

#	# FPGA_SPI_MOSI
#	set_property PACKAGE_PIN T3 [get_ports FPGA_SPI_MOSI]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_SPI_MOSI]

#	# FPGA_SPI_CS_N
#	set_property PACKAGE_PIN T4 [get_ports FPGA_SPI_CS_N]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_SPI_CS_N]

#	# FPGA_SPI_MISO
#	set_property PACKAGE_PIN R1 [get_ports FPGA_SPI_MISO]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_SPI_MISO]
#	set_property SLEW SLOW [get_ports FPGA_SPI_MISO]
#	set_property DRIVE 12 [get_ports FPGA_SPI_MISO]

#	# FPGA_SPI_SCK
#	set_property PACKAGE_PIN R2 [get_ports FPGA_SPI_SCK]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_SPI_SCK]


## FPGA status led and heartbeat

	# FPGA_DEBUG_LED
	set_property PACKAGE_PIN P5 [get_ports FPGA_DEBUG_LED]
	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_DEBUG_LED]
	set_property SLEW SLOW [get_ports FPGA_DEBUG_LED]
	set_property DRIVE 12 [get_ports FPGA_DEBUG_LED]

#	# FPGA_HEARTBEAT
#	set_property PACKAGE_PIN N4 [get_ports FPGA_HEARTBEAT]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_HEARTBEAT]
#	set_property SLEW SLOW [get_ports FPGA_HEARTBEAT]
#	set_property DRIVE 12 [get_ports FPGA_HEARTBEAT]


### FPGA IRQ - interrupt line between CPU and FPGA

#	# FPGA_IRQ[0]
#	set_property PACKAGE_PIN R13 [get_ports {FPGA_IRQ[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[0]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[0]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[0]}]

#	# FPGA_IRQ[1]
#	set_property PACKAGE_PIN R10 [get_ports {FPGA_IRQ[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[1]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[1]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[1]}]

#	# FPGA_IRQ[2]
#	set_property PACKAGE_PIN P10 [get_ports {FPGA_IRQ[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[2]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[2]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[2]}]

#	# FPGA_IRQ[3]
#	set_property PACKAGE_PIN T10 [get_ports {FPGA_IRQ[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[3]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[3]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[3]}]

#	# FPGA_IRQ[4]
#	set_property PACKAGE_PIN T2 [get_ports {FPGA_IRQ[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[4]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[4]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[4]}]

#	# FPGA_IRQ[5]
#	set_property PACKAGE_PIN R3 [get_ports {FPGA_IRQ[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[5]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[5]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[5]}]

#	# FPGA_IRQ[6]
#	set_property PACKAGE_PIN R5 [get_ports {FPGA_IRQ[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[6]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[6]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[6]}]

#	# FPGA_IRQ[7]
#	set_property PACKAGE_PIN T5 [get_ports {FPGA_IRQ[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_IRQ[7]}]
#	set_property SLEW SLOW [get_ports {FPGA_IRQ[7]}]
#	set_property DRIVE 12 [get_ports {FPGA_IRQ[7]}]


### MEMBUS data - 8-bit Memory data bus for CPU - FPGA communication

#	# MEM_D[0]
#	set_property PACKAGE_PIN N9 [get_ports {MEM_D[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[0]}]
#	set_property SLEW SLOW [get_ports {MEM_D[0]}]
#	set_property DRIVE 12 [get_ports {MEM_D[0]}]

#	# MEM_D[1]
#	set_property PACKAGE_PIN P8 [get_ports {MEM_D[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[1]}]
#	set_property SLEW SLOW [get_ports {MEM_D[1]}]
#	set_property DRIVE 12 [get_ports {MEM_D[1]}]

#	# MEM_D[2]
#	set_property PACKAGE_PIN T9 [get_ports {MEM_D[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[2]}]
#	set_property SLEW SLOW [get_ports {MEM_D[2]}]
#	set_property DRIVE 12 [get_ports {MEM_D[2]}]

#	# MEM_D[3]
#	set_property PACKAGE_PIN R8 [get_ports {MEM_D[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[3]}]
#	set_property SLEW SLOW [get_ports {MEM_D[3]}]
#	set_property DRIVE 12 [get_ports {MEM_D[3]}]

#	# MEM_D[4]
#	set_property PACKAGE_PIN P9 [get_ports {MEM_D[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[4]}]
#	set_property SLEW SLOW [get_ports {MEM_D[4]}]
#	set_property DRIVE 12 [get_ports {MEM_D[4]}]

#	# MEM_D[5]
#	set_property PACKAGE_PIN T8 [get_ports {MEM_D[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[5]}]
#	set_property SLEW SLOW [get_ports {MEM_D[5]}]
#	set_property DRIVE 12 [get_ports {MEM_D[5]}]

#	# MEM_D[6]
#	set_property PACKAGE_PIN T7 [get_ports {MEM_D[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[6]}]
#	set_property SLEW SLOW [get_ports {MEM_D[6]}]
#	set_property DRIVE 12 [get_ports {MEM_D[6]}]

#	# MEM_D[7]
#	set_property PACKAGE_PIN R7 [get_ports {MEM_D[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {MEM_D[7]}]
#	set_property SLEW SLOW [get_ports {MEM_D[7]}]
#	set_property DRIVE 12 [get_ports {MEM_D[7]}]


### MEMBUS address - 17-bit Memory data bus for CPU - FPGA communication

#	# FPGA_A[0]
#	set_property PACKAGE_PIN M12 [get_ports {FPGA_A[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[0]}]

#	# FPGA_A[1]
#	set_property PACKAGE_PIN L14 [get_ports {FPGA_A[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[1]}]

#	# FPGA_A[2]
#	set_property PACKAGE_PIN T14 [get_ports {FPGA_A[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[2]}]

#	# FPGA_A[3]
#	set_property PACKAGE_PIN M16 [get_ports {FPGA_A[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[3]}]

#	# FPGA_A[4]
#	set_property PACKAGE_PIN M14 [get_ports {FPGA_A[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[4]}]

#	# FPGA_A[5]
#	set_property PACKAGE_PIN N16 [get_ports {FPGA_A[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[5]}]

#	# FPGA_A[6]
#	set_property PACKAGE_PIN P16 [get_ports {FPGA_A[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[6]}]

#	# FPGA_A[7]
#	set_property PACKAGE_PIN T15 [get_ports {FPGA_A[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[7]}]

#	# FPGA_A[8]
#	set_property PACKAGE_PIN P13 [get_ports {FPGA_A[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[8]}]

#	# FPGA_A[9]
#	set_property PACKAGE_PIN T13 [get_ports {FPGA_A[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[9]}]

#	# FPGA_A[10]
#	set_property PACKAGE_PIN N13 [get_ports {FPGA_A[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[10]}]

#	# FPGA_A[11]
#	set_property PACKAGE_PIN R15 [get_ports {FPGA_A[11]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[11]}]

#	# FPGA_A[12]
#	set_property PACKAGE_PIN R11 [get_ports {FPGA_A[12]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[12]}]

#	# FPGA_A[13]
#	set_property PACKAGE_PIN P15 [get_ports {FPGA_A[13]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[13]}]

#	# FPGA_A[14]
#	set_property PACKAGE_PIN P11 [get_ports {FPGA_A[14]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[14]}]

#	# FPGA_A[15]
#	set_property PACKAGE_PIN R16 [get_ports {FPGA_A[15]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[15]}]

#	# FPGA_A[16]
#	set_property PACKAGE_PIN R12 [get_ports {FPGA_A[16]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_A[16]}]

### MEMBUS - control signals

#	# FPGA_CS_N
#	set_property PACKAGE_PIN P6 [get_ports FPGA_CS_N]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_CS_N]

#	# MEM_WE_N
#	set_property PACKAGE_PIN R6 [get_ports MEM_WE_N]
#	set_property IOSTANDARD LVCMOS33 [get_ports MEM_WE_N]

#	# MEM_OE_N
#	set_property PACKAGE_PIN N6 [get_ports MEM_OE_N]
#	set_property IOSTANDARD LVCMOS33 [get_ports MEM_OE_N]


## FPGA input clocks

#	# MEMBUS_SYNC_CLK
#	set_property PACKAGE_PIN N11 [get_ports MEMBUS_SYNC_CLK]
#	set_property IOSTANDARD LVCMOS33 [get_ports MEMBUS_SYNC_CLK]

	# CLK100M
	set_property PACKAGE_PIN N14 [get_ports CLK100M]
	set_property IOSTANDARD LVCMOS33 [get_ports CLK100M]


## CAN - CAN lines from CPU

	# CAN1_TX
	# set_property PACKAGE_PIN K13 [get_ports CAN1_TX]
	# set_property IOSTANDARD LVCMOS33 [get_ports CAN1_TX]

	# CAN1_RX
	# set_property PACKAGE_PIN L13 [get_ports CAN1_RX]
	# set_property IOSTANDARD LVCMOS33 [get_ports CAN1_RX]
	# set_property SLEW SLOW [get_ports CAN1_RX]
	# set_property DRIVE 12 [get_ports CAN1_RX]


## MODULE_IO - Module interface bus 

	

#	# Slot 1

#	# SPI_MISO[1]
#	set_property PACKAGE_PIN K2 [get_ports {SPI_MISO[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[1]}]

#	# SPI_MOSI[1]
#	set_property PACKAGE_PIN G1 [get_ports {SPI_MOSI[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[1]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[1]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[1]}]

#	# SPI_SCK[1]
#	set_property PACKAGE_PIN F2 [get_ports {SPI_SCK[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[1]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[1]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[1]}]

#	# SPI_CS_N[1]
#	set_property PACKAGE_PIN H2 [get_ports {SPI_CS_N[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[1]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[1]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[1]}]

#	# SPI_CS_EEPROM_N[1]
#	set_property PACKAGE_PIN G2 [get_ports {SPI_CS_EEPROM_N[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[1]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[1]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[1]}]

#	# GPIO1[1]
#	set_property PACKAGE_PIN K1 [get_ports {GPIO1[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[1]}]
#	set_property PULLUP true [get_ports {GPIO1[1]}]
#	set_property SLEW SLOW [get_ports {GPIO1[1]}]
#	set_property DRIVE 12 [get_ports {GPIO1[1]}]

#	# GPIO2[1]
#	set_property PACKAGE_PIN J1 [get_ports {GPIO2[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[1]}]
#	set_property SLEW SLOW [get_ports {GPIO2[1]}]
#	set_property DRIVE 12 [get_ports {GPIO2[1]}]

#	# GPIO3[1]
#	set_property PACKAGE_PIN H1 [get_ports {GPIO3[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[1]}]
#	set_property SLEW SLOW [get_ports {GPIO3[1]}]
#	set_property DRIVE 12 [get_ports {GPIO3[1]}]




#	# Slot 2

#	# SPI_MISO[2]
#	set_property PACKAGE_PIN D4 [get_ports {SPI_MISO[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[2]}]

#	# SPI_MOSI[2]
#	set_property PACKAGE_PIN C4 [get_ports {SPI_MOSI[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[2]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[2]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[2]}]

#	# SPI_SCK[2]
#	set_property PACKAGE_PIN E3 [get_ports {SPI_SCK[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[2]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[2]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[2]}]

#	# SPI_CS_N[2]
#	set_property PACKAGE_PIN D3 [get_ports {SPI_CS_N[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[2]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[2]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[2]}]

#	# SPI_CS_EEPROM_N[2]
#	set_property PACKAGE_PIN C3 [get_ports {SPI_CS_EEPROM_N[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[2]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[2]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[2]}]

#	# GPIO1[2]
#	set_property PACKAGE_PIN A3 [get_ports {GPIO1[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[2]}]
#	set_property PULLUP true [get_ports {GPIO1[2]}]
#	set_property SLEW SLOW [get_ports {GPIO1[2]}]
#	set_property DRIVE 12 [get_ports {GPIO1[2]}]

#	# GPIO2[2]
#	set_property PACKAGE_PIN A4 [get_ports {GPIO2[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[2]}]
#	set_property SLEW SLOW [get_ports {GPIO2[2]}]
#	set_property DRIVE 12 [get_ports {GPIO2[2]}]

#	# GPIO3[2]
#	set_property PACKAGE_PIN B4 [get_ports {GPIO3[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[2]}]
#	set_property SLEW SLOW [get_ports {GPIO3[2]}]
#	set_property DRIVE 12 [get_ports {GPIO3[2]}]

#	# Slot 3

#	# SPI_MISO[3]
#	set_property PACKAGE_PIN A9 [get_ports {SPI_MISO[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[3]}]

#	# SPI_MOSI[3]
#	set_property PACKAGE_PIN A12 [get_ports {SPI_MOSI[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[3]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[3]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[3]}]

#	# SPI_SCK[3]
#	set_property PACKAGE_PIN B12 [get_ports {SPI_SCK[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[3]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[3]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[3]}]

#	# SPI_CS_N[3]
#	set_property PACKAGE_PIN B10 [get_ports {SPI_CS_N[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[3]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[3]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[3]}]

#	# SPI_CS_EEPROM_N[3]
#	set_property PACKAGE_PIN B11 [get_ports {SPI_CS_EEPROM_N[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[3]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[3]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[3]}]

#	# GPIO1[3]
#	set_property PACKAGE_PIN A8 [get_ports {GPIO1[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[3]}]
#	set_property PULLUP true [get_ports {GPIO1[3]}]
#	set_property SLEW SLOW [get_ports {GPIO1[3]}]
#	set_property DRIVE 12 [get_ports {GPIO1[3]}]

#	# GPIO2[3]
#	set_property PACKAGE_PIN A10 [get_ports {GPIO2[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[3]}]
#	set_property SLEW SLOW [get_ports {GPIO2[3]}]
#	set_property DRIVE 12 [get_ports {GPIO2[3]}]

#	# GPIO3[3]
#	set_property PACKAGE_PIN B9 [get_ports {GPIO3[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[3]}]
#	set_property SLEW SLOW [get_ports {GPIO3[3]}]
#	set_property DRIVE 12 [get_ports {GPIO3[3]}]



#	# Slot 4

#	# SPI_MISO[4]
#	set_property PACKAGE_PIN C13 [get_ports {SPI_MISO[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[4]}]

#	# SPI_MOSI[4]
#	set_property PACKAGE_PIN C14 [get_ports {SPI_MOSI[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[4]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[4]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[4]}]

#	# SPI_SCK[4]
#	set_property PACKAGE_PIN E13 [get_ports {SPI_SCK[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[4]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[4]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[4]}]

#	# SPI_CS_N[4]
#	set_property PACKAGE_PIN D13 [get_ports {SPI_CS_N[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[4]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[4]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[4]}]

#	# SPI_CS_EEPROM_N[4]
#	set_property PACKAGE_PIN D14 [get_ports {SPI_CS_EEPROM_N[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[4]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[4]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[4]}]

#	# GPIO1[4]
#	set_property PACKAGE_PIN A13 [get_ports {GPIO1[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[4]}]
#	set_property PULLUP true [get_ports {GPIO1[4]}]
#	set_property SLEW SLOW [get_ports {GPIO1[4]}]
#	set_property DRIVE 12 [get_ports {GPIO1[4]}]

#	# GPIO2[4]
#	set_property PACKAGE_PIN A14 [get_ports {GPIO2[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[4]}]
#	set_property SLEW SLOW [get_ports {GPIO2[4]}]
#	set_property DRIVE 12 [get_ports {GPIO2[4]}]

#	# GPIO3[4]
#	set_property PACKAGE_PIN B14 [get_ports {GPIO3[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[4]}]
#	set_property SLEW SLOW [get_ports {GPIO3[4]}]
#	set_property DRIVE 12 [get_ports {GPIO3[4]}]



#	# Slot 5

#	# SPI_MISO[5]
#	set_property PACKAGE_PIN H16 [get_ports {SPI_MISO[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[5]}]

#	# SPI_MOSI[5]
#	set_property PACKAGE_PIN J15 [get_ports {SPI_MOSI[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[5]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[5]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[5]}]

#	# SPI_SCK[5]
#	set_property PACKAGE_PIN H12 [get_ports {SPI_SCK[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[5]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[5]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[5]}]

#	# SPI_CS_N[5]
#	set_property PACKAGE_PIN H11 [get_ports {SPI_CS_N[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[5]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[5]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[5]}]

#	# SPI_CS_EEPROM_N[5]
#	set_property PACKAGE_PIN H13 [get_ports {SPI_CS_EEPROM_N[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[5]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[5]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[5]}]

#	# GPIO1[5]
#	set_property PACKAGE_PIN G11 [get_ports {GPIO1[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[5]}]
#	set_property PULLUP true [get_ports {GPIO1[5]}]
#	set_property SLEW SLOW [get_ports {GPIO1[5]}]
#	set_property DRIVE 12 [get_ports {GPIO1[5]}]

#	# GPIO2[5]
#	set_property PACKAGE_PIN H14 [get_ports {GPIO2[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[5]}]
#	set_property SLEW SLOW [get_ports {GPIO2[5]}]
#	set_property DRIVE 12 [get_ports {GPIO2[5]}]

#	# GPIO3[5]
#	set_property PACKAGE_PIN J16 [get_ports {GPIO3[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[5]}]
#	set_property SLEW SLOW [get_ports {GPIO3[5]}]
#	set_property DRIVE 12 [get_ports {GPIO3[5]}]



#	# Slot 6

#	# SPI_MISO[6]
#	set_property PACKAGE_PIN E1 [get_ports {SPI_MISO[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[6]}]

#	# SPI_MOSI[6]
#	set_property PACKAGE_PIN B1 [get_ports {SPI_MOSI[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[6]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[6]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[6]}]

#	# SPI_SCK[6]
#	set_property PACKAGE_PIN A2 [get_ports {SPI_SCK[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[6]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[6]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[6]}]

#	# SPI_CS_N[6]
#	set_property PACKAGE_PIN C1 [get_ports {SPI_CS_N[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[6]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[6]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[6]}]

#	# SPI_CS_EEPROM_N[6]
#	set_property PACKAGE_PIN B2 [get_ports {SPI_CS_EEPROM_N[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[6]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[6]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[6]}]

#	# GPIO1[6]
#	set_property PACKAGE_PIN D1 [get_ports {GPIO1[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[6]}]
#	set_property PULLUP true [get_ports {GPIO1[6]}]
#	set_property SLEW SLOW [get_ports {GPIO1[6]}]
#	set_property DRIVE 12 [get_ports {GPIO1[6]}]

#	# GPIO2[6]
#	set_property PACKAGE_PIN E2 [get_ports {GPIO2[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[6]}]
#	set_property SLEW SLOW [get_ports {GPIO2[6]}]
#	set_property DRIVE 12 [get_ports {GPIO2[6]}]

#	# GPIO3[6]
#	set_property PACKAGE_PIN C2 [get_ports {GPIO3[6]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[6]}]
#	set_property SLEW SLOW [get_ports {GPIO3[6]}]
#	set_property DRIVE 12 [get_ports {GPIO3[6]}]


#	# Slot 7

#	# SPI_MISO[7]
#	set_property PACKAGE_PIN H3 [get_ports {SPI_MISO[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[7]}]

#	# SPI_MOSI[7]
#	set_property PACKAGE_PIN J4 [get_ports {SPI_MOSI[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[7]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[7]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[7]}]

#	# SPI_SCK[7]
#	set_property PACKAGE_PIN K3 [get_ports {SPI_SCK[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[7]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[7]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[7]}]

#	# SPI_CS_N[7]
#	set_property PACKAGE_PIN J3 [get_ports {SPI_CS_N[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[7]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[7]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[7]}]

#	# SPI_CS_EEPROM_N[7]
#	set_property PACKAGE_PIN H4 [get_ports {SPI_CS_EEPROM_N[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[7]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[7]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[7]}]

#	# GPIO1[7]
#	set_property PACKAGE_PIN F3 [get_ports {GPIO1[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[7]}]
#	set_property PULLUP true [get_ports {GPIO1[7]}]
#	set_property SLEW SLOW [get_ports {GPIO1[7]}]
#	set_property DRIVE 12 [get_ports {GPIO1[7]}]

#	# GPIO2[7]
#	set_property PACKAGE_PIN F4 [get_ports {GPIO2[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[7]}]
#	set_property SLEW SLOW [get_ports {GPIO2[7]}]
#	set_property DRIVE 12 [get_ports {GPIO2[7]}]

#	# GPIO3[7]
#	set_property PACKAGE_PIN G4 [get_ports {GPIO3[7]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[7]}]
#	set_property SLEW SLOW [get_ports {GPIO3[7]}]
#	set_property DRIVE 12 [get_ports {GPIO3[7]}]

	
#	# Slot 8

#	# SPI_MISO[8]
#	set_property PACKAGE_PIN C8 [get_ports {SPI_MISO[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[8]}]

#	# SPI_MOSI[8]
#	set_property PACKAGE_PIN C11 [get_ports {SPI_MOSI[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[8]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[8]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[8]}]

#	# SPI_SCK[8]
#	set_property PACKAGE_PIN C12 [get_ports {SPI_SCK[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[8]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[8]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[8]}]

#	# SPI_CS_N[8]
#	set_property PACKAGE_PIN D10 [get_ports {SPI_CS_N[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[8]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[8]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[8]}]

#	# SPI_CS_EEPROM_N[8]
#	set_property PACKAGE_PIN D11 [get_ports {SPI_CS_EEPROM_N[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[8]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[8]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[8]}]

#	# GPIO1[8]
#	set_property PACKAGE_PIN C9 [get_ports {GPIO1[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[8]}]
#	set_property PULLUP true [get_ports {GPIO1[8]}]
#	set_property SLEW SLOW [get_ports {GPIO1[8]}]
#	set_property DRIVE 12 [get_ports {GPIO1[8]}]

#	# GPIO2[8]
#	set_property PACKAGE_PIN D8 [get_ports {GPIO2[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[8]}]
#	set_property SLEW SLOW [get_ports {GPIO2[8]}]
#	set_property DRIVE 12 [get_ports {GPIO2[8]}]

#	# GPIO3[8]
#	set_property PACKAGE_PIN D9 [get_ports {GPIO3[8]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[8]}]
#	set_property SLEW SLOW [get_ports {GPIO3[8]}]
#	set_property DRIVE 12 [get_ports {GPIO3[8]}]



#	# Slot 9

#	# SPI_MISO[9]
#	set_property PACKAGE_PIN C16 [get_ports {SPI_MISO[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[9]}]

#	# SPI_MOSI[9]
#	set_property PACKAGE_PIN E15 [get_ports {SPI_MOSI[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[9]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[9]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[9]}]

#	# SPI_SCK[9]
#	set_property PACKAGE_PIN E16 [get_ports {SPI_SCK[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[9]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[9]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[9]}]

#	# SPI_CS_N[9]
#	set_property PACKAGE_PIN B15 [get_ports {SPI_CS_N[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[9]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[9]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[9]}]

#	# SPI_CS_EEPROM_N[9]
#	set_property PACKAGE_PIN D15 [get_ports {SPI_CS_EEPROM_N[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[9]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[9]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[9]}]

#	# GPIO1[9]
#	set_property PACKAGE_PIN A15 [get_ports {GPIO1[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[9]}]
#	set_property PULLUP true [get_ports {GPIO1[9]}]
#	set_property SLEW SLOW [get_ports {GPIO1[9]}]
#	set_property DRIVE 12 [get_ports {GPIO1[9]}]

#	# GPIO2[9]
#	set_property PACKAGE_PIN B16 [get_ports {GPIO2[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[9]}]
#	set_property SLEW SLOW [get_ports {GPIO2[9]}]
#	set_property DRIVE 12 [get_ports {GPIO2[9]}]

#	# GPIO3[9]
#	set_property PACKAGE_PIN D16 [get_ports {GPIO3[9]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[9]}]
#	set_property SLEW SLOW [get_ports {GPIO3[9]}]
#	set_property DRIVE 12 [get_ports {GPIO3[9]}]



#	# Slot 10

#	# SPI_MISO[10]
#	set_property PACKAGE_PIN F12 [get_ports {SPI_MISO[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MISO[10]}]

#	# SPI_MOSI[10]
#	set_property PACKAGE_PIN G15 [get_ports {SPI_MOSI[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_MOSI[10]}]
#	set_property SLEW SLOW [get_ports {SPI_MOSI[10]}]
#	set_property DRIVE 12 [get_ports {SPI_MOSI[10]}]

#	# SPI_SCK[10]
#	set_property PACKAGE_PIN G16 [get_ports {SPI_SCK[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_SCK[10]}]
#	set_property SLEW SLOW [get_ports {SPI_SCK[10]}]
#	set_property DRIVE 12 [get_ports {SPI_SCK[10]}]

#	# SPI_CS_N[10]
#	set_property PACKAGE_PIN F14 [get_ports {SPI_CS_N[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_N[10]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_N[10]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_N[10]}]

#	# SPI_CS_EEPROM_N[10]
#	set_property PACKAGE_PIN F15 [get_ports {SPI_CS_EEPROM_N[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {SPI_CS_EEPROM_N[10]}]
#	set_property SLEW SLOW [get_ports {SPI_CS_EEPROM_N[10]}]
#	set_property DRIVE 12 [get_ports {SPI_CS_EEPROM_N[10]}]

#	# GPIO1[10]
#	set_property PACKAGE_PIN G12 [get_ports {GPIO1[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO1[10]}]
#	set_property PULLUP true [get_ports {GPIO1[10]}]
#	set_property SLEW SLOW [get_ports {GPIO1[10]}]
#	set_property DRIVE 12 [get_ports {GPIO1[10]}]

#	# GPIO2[10]
#	set_property PACKAGE_PIN G14 [get_ports {GPIO2[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO2[10]}]
#	set_property SLEW SLOW [get_ports {GPIO2[10]}]
#	set_property DRIVE 12 [get_ports {GPIO2[10]}]

#	# GPIO3[10]
#	set_property PACKAGE_PIN F13 [get_ports {GPIO3[10]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {GPIO3[10]}]
#	set_property SLEW SLOW [get_ports {GPIO3[10]}]
#	set_property DRIVE 12 [get_ports {GPIO3[10]}]



## FPGA debug line

#	# FPGA_DEBUG[0]
#	set_property PACKAGE_PIN E6 [get_ports {FPGA_DEBUG[0]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[0]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[0]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[0]}]

#	# FPGA_DEBUG[1]
#	set_property PACKAGE_PIN B7 [get_ports {FPGA_DEBUG[1]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[1]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[1]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[1]}]

#	# FPGA_DEBUG[2]
#	set_property PACKAGE_PIN A7 [get_ports {FPGA_DEBUG[2]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[2]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[2]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[2]}]

#	# FPGA_DEBUG[3]
#	set_property PACKAGE_PIN B6 [get_ports {FPGA_DEBUG[3]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[3]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[3]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[3]}]

#	# FPGA_DEBUG[4]
#	set_property PACKAGE_PIN B5 [get_ports {FPGA_DEBUG[4]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[4]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[4]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[4]}]

#	# FPGA_DEBUG[5]
#	set_property PACKAGE_PIN A5 [get_ports {FPGA_DEBUG[5]}]
#	set_property IOSTANDARD LVCMOS33 [get_ports {FPGA_DEBUG[5]}]
#	set_property SLEW SLOW [get_ports {FPGA_DEBUG[5]}]
#	set_property DRIVE 12 [get_ports {FPGA_DEBUG[5]}]


# FPGA configuration flash 

#	# FPGA_FLASH_CS_N
#	set_property PACKAGE_PIN L12 [get_ports FPGA_FLASH_CS_N]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_FLASH_CS_N]
#	set_property PULLUP true [get_ports FPGA_FLASH_CS_N]
#	set_property SLEW SLOW [get_ports FPGA_FLASH_CS_N]

#	# FPGA_FLASH_MOSI
#	set_property PACKAGE_PIN J13 [get_ports FPGA_FLASH_MOSI]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_FLASH_MOSI]
#	set_property SLEW SLOW [get_ports FPGA_FLASH_MOSI]

#	# FPGA_FLASH_MISO
#	set_property PACKAGE_PIN J14 [get_ports FPGA_FLASH_MISO]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_FLASH_MISO]

#	# FPGA_FLASH_SCK
#	set_property PACKAGE_PIN K15 [get_ports FPGA_FLASH_SCK]
#	set_property IOSTANDARD LVCMOS33 [get_ports FPGA_FLASH_SCK]
#	set_property SLEW SLOW [get_ports FPGA_FLASH_SCK]


# Not connected pins

	# NC_E12
	# set_property PACKAGE_PIN E12 [get_ports {NC_E12}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_E12}]

	# NC_E11
	# set_property PACKAGE_PIN E11 [get_ports {NC_E11}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_E11}]

	# NC_E5
	# set_property PACKAGE_PIN E5 [get_ports {NC_E5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_E5}]

	# NC_F5
	# set_property PACKAGE_PIN F5 [get_ports {NC_F5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_F5}]

	# NC_J5
	# set_property PACKAGE_PIN J5 [get_ports {NC_J5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_J5}]

	# NC_H5
	# set_property PACKAGE_PIN H5 [get_ports {NC_H5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_H5}]

	# NC_G5
	# set_property PACKAGE_PIN G5 [get_ports {NC_G5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_G5}]

	# NC_L5
	# set_property PACKAGE_PIN L5 [get_ports {NC_L5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_L5}]

	# NC_N1
	# set_property PACKAGE_PIN N1 [get_ports NC_N1]
	# set_property IOSTANDARD LVCMOS33 [get_ports NC_N1]

	# NC_N2
	# set_property PACKAGE_PIN N2 [get_ports NC_N2]
	# set_property IOSTANDARD LVCMOS33 [get_ports NC_N2]

	# NC_N3
	# set_property PACKAGE_PIN N3 [get_ports NC_N3]
	# set_property IOSTANDARD LVCMOS33 [get_ports NC_N3]

	# NC_M1
	# set_property PACKAGE_PIN M1 [get_ports NC_M1]
	# set_property IOSTANDARD LVCMOS33 [get_ports NC_M1]

	# NC_M2
	# set_property PACKAGE_PIN M2 [get_ports NC_M2]
	# set_property IOSTANDARD LVCMOS33 [get_ports NC_M2]

	# NC_M5
	# set_property PACKAGE_PIN M5 [get_ports {NC_M5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_M5}]

	# NC_M6
	# set_property PACKAGE_PIN M6 [get_ports {NC_M6}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_M6}]

	# NC_K12
	# set_property PACKAGE_PIN K12 [get_ports {NC_K12}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_K12}]

	# NC_N12
	# set_property PACKAGE_PIN N12 [get_ports {NC_N12}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_N12}]

	# NC_P14
	# set_property PACKAGE_PIN P14 [get_ports {NC_P14}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_P14}]

	# NC_D5
	# set_property PACKAGE_PIN D5 [get_ports {NC_D5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_D5}]

	# NC_D6
	# set_property PACKAGE_PIN D6 [get_ports {NC_D6}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_D6}]

	# NC_C6
	# set_property PACKAGE_PIN C6 [get_ports {NC_C6}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_C6}]

	# NC_C7
	# set_property PACKAGE_PIN C7 [get_ports {NC_C7}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_C7}]

	# NC_K5
	# set_property PACKAGE_PIN K5 [get_ports {NC_K5}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_K5}]

	# NC_L2
	# set_property PACKAGE_PIN L2 [get_ports {NC_L2}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_L2}]

	# NC_L3
	# set_property PACKAGE_PIN L3 [get_ports {NC_L3}]
	# set_property IOSTANDARD LVCMOS33 [get_ports {NC_L3}]