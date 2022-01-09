library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;

library work;
    use work.led_blinker_pkg.all;
    use work.led_blinker_main_pkg.all;
    use work.uart_pkg.all;
    use work.counter_pkg.all;

entity led_blinker_main is
    port (
        clk_120MHz : in std_logic;
        led_blinker_main_FPGA_out : out led_blinker_main_FPGA_output_group 
    );
end entity led_blinker_main;

architecture rtl of led_blinker_main is


    signal leds : std_logic_vector(led_blinker_main_FPGA_out.leds'range) := (others => '0');
    signal led_blinker_array : led_array(leds'range) := (init_led_blinker, init_led_blinker, init_led_blinker, init_led_blinker);
    constant counter_values : int_array(leds'range) := (4000, 6000, 8000, 2000);

    signal uart_clocks   : uart_clock_group;
    signal uart_FPGA_in  : uart_FPGA_input_group;
    signal uart_FPGA_out : uart_FPGA_output_group;
    signal uart_data_in  : uart_data_input_group;
    signal uart_data_out : uart_data_output_group;

    signal counter : counter_object_record := init_counter;
    signal stimulus_counter : natural range 0 to 2**6-1 := 0;
    subtype int18 is integer range -2**17 to 2**17-1;
    signal filter_input : int18 := 0;

    constant filter_gain : real := 0.7333;
    constant real_b0 : real := filter_gain/2.0;
    constant real_b1 : real := filter_gain/2.0;
    constant real_a1 : real := 1.0-filter_gain;

    signal filter_out : integer := 0;
    signal filter_mem : integer := 0;
    signal filter_in  : integer := 0;

    constant b0 : integer := integer(2.0**16* real_b0);
    constant b1 : integer := integer(2.0**16* real_b1);
    constant a1 : integer := integer(2.0**16* real_a1);

------------------------------------------------------------------------
    function "*"
    (
        right, left : integer
    )
    return integer
    is
        variable signed_result : signed(35 downto 0);
    begin
        
        signed_result := to_signed(left, 18) * to_signed(right, 18);
        return to_integer(signed_result(17+16 downto 0+16));
        
    end "*";
------------------------------------------------------------------------
    

begin

    led_blinker_main_FPGA_out <= (leds         => leds,
                                 uart_FPGA_out => uart_FPGA_out);

    led_blinker : process(clk_120MHz)
    begin
        if rising_edge(clk_120MHz) then

            create_led_blinker(led_blinker_array(0), leds(0), counter_values(0));
            create_led_blinker(led_blinker_array(1), leds(1), counter_values(1));
            create_led_blinker(led_blinker_array(2), leds(2), counter_values(2));
            create_led_blinker(led_blinker_array(3), leds(3), counter_values(3));

            init_uart(uart_data_in);
            create_timebase_from(counter, 1200);

            if counter_is_ready(counter) then
                transmit_16_bit_word_with_uart(uart_data_in, filter_out);
                stimulus_counter <= stimulus_counter + 1;
                CASE stimulus_counter is
                    WHEN 0 => filter_in <= 10e3;
                    WHEN 31 => filter_in <= 0;
                    WHEN others => -- do nothing
                end CASE;

                filter_out <= filter_in * b0 + filter_mem;
                filter_mem <= filter_in * b1 + filter_out * a1;
                    
            end if;


        end if; --rising_edge
    end process led_blinker;	

    uart_clocks <= (clock => clk_120MHz);
    u_uart : uart
    port map( uart_clocks,
    	  uart_FPGA_in,
    	  uart_FPGA_out,
    	  uart_data_in,
    	  uart_data_out);
end rtl;
