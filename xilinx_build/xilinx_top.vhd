library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.led_blinker_main_pkg.all;

entity xilinx_top is
    port (
        CLK100M : in std_logic;
        FPGA_DEBUG_LED : out std_logic
        
    );
end entity xilinx_top;

architecture rtl of xilinx_top is

    component clk_wiz_0 IS
        PORT
        (
            clk_in1 : IN STD_LOGIC  := '0';
            clk_out1 : OUT STD_LOGIC
        );
    END component;

    signal clk_120MHz : std_logic; 
    signal led_blinker_main_FPGA_out : led_blinker_main_FPGA_output_group;

begin

    u_main_pll : clk_wiz_0
    port map(CLK100M, clk_120MHz);

    u_led_blinker_main : led_blinker_main
    port map(clk_120MHz, led_blinker_main_FPGA_out);


    FPGA_DEBUG_LED <= led_blinker_main_FPGA_out.leds(0);
    
end rtl;