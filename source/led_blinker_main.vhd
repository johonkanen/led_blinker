library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;
    use ieee.math_real.all;

library work;
    use work.led_blinker_pkg.all;
    use work.led_blinker_main_pkg.all;
    use work.uart_pkg.all;
    use work.counter_pkg.all;
    use work.filter_pkg.all;

entity led_blinker_main is
    port (
        clk_120MHz : in std_logic;
        led_blinker_main_FPGA_out : out led_blinker_main_FPGA_output_group;
        led_blinker_main_FPGA_in : in led_blinker_main_FPGA_input_group 
    );
end entity led_blinker_main;

architecture rtl of led_blinker_main is


    signal leds : std_logic_vector(led_blinker_main_FPGA_out.leds'range) := (others => '0');
    signal led_blinker_array : led_array(leds'range) := (init_led_blinker, init_led_blinker, init_led_blinker, init_led_blinker);
    constant counter_values : int_array(leds'range) := (2000, 4000, 6000, 8000);

    signal uart_clocks   : uart_clock_group;
    signal uart_FPGA_out : uart_FPGA_output_group;
    signal uart_data_in  : uart_data_input_group;
    signal uart_data_out : uart_data_output_group;

    signal counter : counter_object_record := init_counter;
    signal stimulus_counter : natural range 0 to 2**8-1 := 0;

    signal data_from_uart : integer range 0 to 2**16-1 := 0;

    signal filter : filter_record := init_filter; 
    signal filter2 : filter_record := init_filter; 

begin

------------------------------------------------------------------------
    led_blinker_main_FPGA_out <= (leds         => leds,
                                 uart_FPGA_out => uart_FPGA_out);

------------------------------------------------------------------------
    led_blinker : process(clk_120MHz)
    begin
        if rising_edge(clk_120MHz) then

            -- object creation region
            create_led_blinker(led_blinker_array(0), leds(0), counter_values(0));
            create_led_blinker(led_blinker_array(1), leds(1), counter_values(1));
            create_led_blinker(led_blinker_array(2), leds(2), counter_values(2));
            create_led_blinker(led_blinker_array(3), leds(3), counter_values(3));

            create_filter(filter);
            create_filter(filter2);

            init_uart(uart_data_in);
            -- application region
            receive_data_from_uart(uart_data_out, data_from_uart);

            -- run at 100kHz
            create_timebase_from(counter, 1200);
            if counter_is_ready(counter) then
                stimulus_counter <= stimulus_counter + 1;

                if stimulus_counter > 2**7 then
                    request_filter(filter, 44252);
                else
                    request_filter(filter, 0);
                end if;

                set_filter_constant(filter, data_from_uart);
                set_filter_constant(filter2, data_from_uart);
            end if;

            if filter_is_ready(filter) then
                request_filter(filter2, get_filter_output(filter));
            end if;

            if filter_is_ready(filter2) then
                transmit_16_bit_word_with_uart(uart_data_in, get_filter_output(filter2));
            end if;


        end if; --rising_edge
    end process led_blinker;	

------------------------------------------------------------------------
    uart_clocks <= (clock => clk_120MHz);
    u_uart : uart
    port map( uart_clocks,
    	  led_blinker_main_FPGA_in.uart_FPGA_in,
    	  uart_FPGA_out,
    	  uart_data_in,
    	  uart_data_out);
------------------------------------------------------------------------
end rtl;
