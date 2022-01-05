library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.led_blinker_pkg.all;
    use work.led_blinker_main_pkg.all;

entity led_blinker_main is
    port (
        clk_120MHz : in std_logic;
        led_blinker_main_FPGA_out : out led_blinker_main_FPGA_output_group 
    );
end entity led_blinker_main;

architecture rtl of led_blinker_main is

    alias leds is led_blinker_main_FPGA_out.leds;

    signal led_blinker_array : led_array(leds'range) := (init_led_blinker, init_led_blinker, init_led_blinker, init_led_blinker);
    constant counter_values : int_array(leds'range) := (4000, 6000, 8000, 2000);

begin

    led_blinker : process(clk_120MHz)
    begin
        if rising_edge(clk_120MHz) then

            create_led_blinker(led_blinker_array(0), leds(0), counter_values(0));
            create_led_blinker(led_blinker_array(1), leds(1), counter_values(1));
            create_led_blinker(led_blinker_array(2), leds(2), counter_values(2));
            create_led_blinker(led_blinker_array(3), leds(3), counter_values(3));

        end if; --rising_edge
    end process led_blinker;	

end rtl;