library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package led_blinker_main_pkg is

    type led_blinker_main_FPGA_output_group is record
        leds : std_logic_vector(3 downto 0);
    end record;
    
    component led_blinker_main is
        port (
            clk_120MHz : in std_logic;
            led_blinker_main_FPGA_out : out led_blinker_main_FPGA_output_group 
        );
    end component led_blinker_main;
    
    -- signal led_blinker_main_FPGA_out : led_blinker_main_FPGA_output_group;
    
    -- u_led_blinker_main : led_blinker_main
    -- port map( led_blinker_main_clocks,
    --	  led_blinker_main_FPGA_out);
    

end package led_blinker_main_pkg;

