echo off
echo %project_root%
FOR /F "tokens=* USEBACKQ" %%F IN (`git rev-parse --show-toplevel`) DO (
SET project_root=%%F
)
SET source=%project_root%/source

            ghdl -a --ieee=synopsys %source%/uart/uart_transreceiver/uart_tx/uart_tx_pkg.vhd
            ghdl -a --ieee=synopsys %source%/uart/uart_transreceiver/uart_rx/uart_rx_pkg.vhd
        ghdl -a --ieee=synopsys %source%/uart/uart_transreceiver/uart_transreceiver_pkg.vhd
    ghdl -a --ieee=synopsys %source%/uart/uart_pkg.vhd

    ghdl -a --ieee=synopsys %source%/filter/filter_pkg.vhd

    ghdl -a --ieee=synopsys %source%/counter/counter_pkg.vhd
    ghdl -a --ieee=synopsys %source%/led_blinker/led_blinker_pkg.vhd

    ghdl -a --ieee=synopsys %source%/led_blinker_main_pkg.vhd
