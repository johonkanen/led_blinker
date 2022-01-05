library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.led_blinker_main_pkg.all;

entity top is
    port (
        clk50mhz : in std_logic;
        leds : out std_logic_vector(3 downto 0)
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

    signal led_blinker_main_FPGA_out : led_blinker_main_FPGA_output_group;

begin

    u_main_pll : main_pll
    port map(clk50mhz, clk_120MHz);

    leds <= led_blinker_main_FPGA_out.leds;

    u_led_blinker_main : led_blinker_main
    port map( clk_120MHz, led_blinker_main_FPGA_out);


end rtl;
