#!/usr/bin/env python3

from pathlib import Path
from vunit import VUnit

# ROOT
ROOT = Path(__file__).resolve().parent
VU = VUnit.from_argv()
VU = VUnit.from_argv(vhdl_standard="93")

lib = VU.add_library("lib");
lib.add_source_files(ROOT / "source/counter" / "*.vhd")
lib.add_source_files(ROOT / "source/counter/counter_simulation" / "*.vhd") 

lib.add_source_files(ROOT / "source/led_blinker" / "*.vhd")
lib.add_source_files(ROOT / "source/led_blinker/led_blinker_simulation" / "*.vhd") 

lib.add_source_files(ROOT / "source/filter/filter_simulation" / "*.vhd")

VU.main()
