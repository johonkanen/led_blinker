
# Efinity Interface Designer SDC
# Version: 2021.2.323
# Date: 2022-01-04 19:01

# Copyright (C) 2017 - 2021 Efinix Inc. All rights reserved.

# Device: T120F324
# Project: led_blinker
# Timing Model: C4 (final)

# PLL Constraints
#################
create_clock -period 8.33 clk_120Mhz

# GPIO Constraints
####################
# set_input_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {extclk_30mhz}]
# set_input_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {extclk_30mhz}]

# LVDS RX GPIO Constraints
############################
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {leds[0]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {leds[0]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {leds[1]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {leds[1]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {leds[2]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {leds[2]}]
# set_output_delay -clock <CLOCK> -max <MAX CALCULATION> [get_ports {leds[3]}]
# set_output_delay -clock <CLOCK> -min <MIN CALCULATION> [get_ports {leds[3]}]

# LVDS Rx Constraints
####################
