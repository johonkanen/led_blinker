library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.led_blinker_main_pkg.all;

entity top is
    port (
        clk50mhz : in std_logic;
        led_blinker_main_FPGA_in : in led_blinker_main_FPGA_input_group;
        led_blinker_main_FPGA_out : out led_blinker_main_FPGA_output_group
    );
end entity top;

architecture rtl of top is

    component main_pll IS
        PORT
        (
            inclk0 : IN STD_LOGIC  := '0';
            c0     : OUT STD_LOGIC
        );
    END component;

    signal clk_120MHz : std_logic; 

begin

    u_main_pll : main_pll
    port map(clk50mhz, clk_120MHz);

    u_led_blinker_main : led_blinker_main
    port map( clk_120MHz, led_blinker_main_FPGA_in, led_blinker_main_FPGA_out);

end rtl;
