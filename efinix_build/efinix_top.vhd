library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.led_blinker_main_pkg.all;

entity top is
    port (
        clk_120Mhz : in std_logic;
        uart_rx    : in std_logic;
        uart_tx    : out std_logic;
        leds       : out std_logic_vector(3 downto 0)
    );
end entity top;

architecture rtl of top is

    signal led_blinker_main_FPGA_in : led_blinker_main_FPGA_input_group;
    signal led_blinker_main_FPGA_out : led_blinker_main_FPGA_output_group;

begin

    leds <= led_blinker_main_FPGA_out.leds;
    led_blinker_main_FPGA_in <=(uart_FPGA_in=>(uart_transreceiver_FPGA_in =>(uart_rx_FPGA_in =>(uart_rx => uart_rx))));
    uart_tx <= led_blinker_main_FPGA_out.uart_FPGA_out.uart_transreceiver_FPGA_out.uart_tx_FPGA_out.uart_tx;

    u_led_blinker_main : led_blinker_main
    port map( clk_120MHz, led_blinker_main_FPGA_in, led_blinker_main_FPGA_out);

end rtl;
