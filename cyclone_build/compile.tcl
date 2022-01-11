# Copyright (C) 2021  Intel Corporation. All rights reserved.
# Your use of Intel Corporation's design tools, logic functions 
# and other software and tools, and any partner logic 
# functions, and any output files from any of the foregoing 
# (including device programming or simulation files), and any 
# associated documentation or information are expressly subject 
# to the terms and conditions of the Intel Program License 
# Subscription Agreement, the Intel Quartus Prime License Agreement,
# the Intel FPGA IP License Agreement, or other applicable license
# agreement, including, without limitation, that your use is for
# the sole purpose of programming logic devices manufactured by
# Intel and sold by Intel or its authorized distributors.  Please
# refer to the applicable agreement for further details, at
# https://fpgasoftware.intel.com/eula.

# Quartus Prime: Generate Tcl File for Project
# File: compile.tcl
# Generated on: Mon Jan 10 16:35:58 2022

# Load Quartus Prime Tcl Project package
package require ::quartus::project
package require ::quartus::flow

variable tcl_directory [ file dirname [ file normalize [ info script ] ] ]

set need_to_close_project 0
set make_assignments 1

# Check that the right project is open
if {[is_project_open]} {
	if {[string compare $quartus(project) "led_blinker"]} {
		puts "Project led_blinker is not open"
		set make_assignments 0
	}
} else {
	# Only open if not already open
	if {[project_exists led_blinker]} {
		project_open -revision led_blinker led_blinker
	} else {
		project_new -revision led_blinker led_blinker
	}
	set need_to_close_project 1
}

# Make assignments
if {$make_assignments} {
	set_global_assignment -name FAMILY "Cyclone 10 LP"
	set_global_assignment -name DEVICE 10CL025YU256I7G
	set_global_assignment -name TOP_LEVEL_ENTITY top
	set_global_assignment -name ORIGINAL_QUARTUS_VERSION 21.1.0
	set_global_assignment -name PROJECT_CREATION_TIME_DATE "08:35:28  JANUARY 05, 2022"
	set_global_assignment -name LAST_QUARTUS_VERSION "21.1.0 Lite Edition"
	set_global_assignment -name PROJECT_OUTPUT_DIRECTORY output_files
	set_global_assignment -name MIN_CORE_JUNCTION_TEMP "-40"
	set_global_assignment -name MAX_CORE_JUNCTION_TEMP 100
	set_global_assignment -name DEVICE_FILTER_PIN_COUNT 256
	set_global_assignment -name DEVICE_FILTER_SPEED_GRADE 7
	set_global_assignment -name ERROR_CHECK_FREQUENCY_DIVISOR 1
	set_global_assignment -name CYCLONEII_OPTIMIZATION_TECHNIQUE SPEED
	set_global_assignment -name NOMINAL_CORE_SUPPLY_VOLTAGE 1.2V
	set_global_assignment -name EDA_DESIGN_ENTRY_SYNTHESIS_TOOL "Synplify Pro"
	set_global_assignment -name EDA_LMF_FILE synplcty.lmf -section_id eda_design_synthesis
	set_global_assignment -name EDA_INPUT_DATA_FORMAT VQM -section_id eda_design_synthesis
	set_global_assignment -name EDA_SIMULATION_TOOL "Questa Intel FPGA (VHDL)"
	set_global_assignment -name EDA_TIME_SCALE "1 ps" -section_id eda_simulation
	set_global_assignment -name EDA_OUTPUT_DATA_FORMAT VHDL -section_id eda_simulation
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_timing_analysis
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_formal_verification
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_timing
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_symbol
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_signal_integrity
	set_global_assignment -name EDA_GENERATE_FUNCTIONAL_NETLIST OFF -section_id eda_board_design_boundary_scan
	set_global_assignment -name PROJECT_IP_REGENERATION_POLICY ALWAYS_REGENERATE_IP
	set_global_assignment -name POWER_PRESET_COOLING_SOLUTION "23 MM HEAT SINK WITH 200 LFPM AIRFLOW"
	set_global_assignment -name POWER_BOARD_THERMAL_MODEL "NONE (CONSERVATIVE)"
	set_global_assignment -name PARTITION_NETLIST_TYPE SOURCE -section_id Top
	set_global_assignment -name PARTITION_FITTER_PRESERVATION_LEVEL PLACEMENT_AND_ROUTING -section_id Top
	set_global_assignment -name PARTITION_COLOR 16764057 -section_id Top
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_tx/uart_tx_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_tx/uart_tx.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_rx/uart_rx_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_rx/uart_rx.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_transreceiver_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_transreceiver/uart_transreceiver.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/uart/uart.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/filter/filter_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/led_blinker_main_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/led_blinker_main.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../cyclone_build/cyclone_top.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/led_blinker/led_blinker_pkg.vhd
	set_global_assignment -name VHDL_FILE $tcl_directory/../source/counter/counter_pkg.vhd
	set_global_assignment -name QIP_FILE $tcl_directory/../cyclone_build/ip/main_pll/main_pll.qip
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to leds[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to leds[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to leds[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to leds[0]
	set_location_assignment PIN_E1 -to clk50mhz
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to clk50mhz
	set_location_assignment PIN_L14 -to led_blinker_main_FPGA_out.leds[0]
	set_location_assignment PIN_J14 -to led_blinker_main_FPGA_out.leds[1]
	set_location_assignment PIN_J13 -to led_blinker_main_FPGA_out.leds[2]
	set_location_assignment PIN_K15 -to led_blinker_main_FPGA_out.leds[3]
    set_location_assignment PIN_R1 -to led_blinker_main_FPGA_in.uart_FPGA_in.uart_transreceiver_FPGA_in.uart_rx_FPGA_in.uart_rx
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.leds[3]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.leds[2]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.leds[1]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.leds[0]
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.leds
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.uart_FPGA_out.uart_transreceiver_FPGA_out.led
	set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to led_blinker_main_FPGA_out.uart_FPGA_out.uart_transreceiver_FPGA_out.uart_tx_FPGA_out.uart_tx
	set_location_assignment PIN_P1 -to led_blinker_main_FPGA_out.uart_FPGA_out.uart_transreceiver_FPGA_out.uart_tx_FPGA_out.uart_tx
	set_instance_assignment -name PARTITION_HIERARCHY root_partition -to | -section_id Top

	# Commit assignments
	export_assignments


    execute_flow -compile 

	# Close project
	if {$need_to_close_project} {
		project_close
	}
}
