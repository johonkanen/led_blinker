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

    signal filter1 : filter_record  := init_filter;
    signal filter2 : filter_record := init_filter;
    signal filter3 : filter_record := init_filter;
    signal filter4 : filter_record := init_filter;
    signal filter5 : filter_record := init_filter;
    signal filter6 : filter_record := init_filter;
    signal filter7 : filter_record := init_filter;
    signal filter8 : filter_record := init_filter;
    signal filter9 : filter_record := init_filter;
    signal filter10 : filter_record := init_filter;
    signal filter11 : filter_record := init_filter;
    signal filter12 : filter_record := init_filter;
    signal filter13 : filter_record := init_filter;
    signal filter14 : filter_record := init_filter;
    signal filter15 : filter_record := init_filter;
    signal filter16 : filter_record := init_filter;
    signal filter17 : filter_record := init_filter;
    signal filter18 : filter_record := init_filter;
    signal filter19 : filter_record := init_filter;
    signal filter20 : filter_record := init_filter;
    signal filter21 : filter_record := init_filter;
    signal filter22 : filter_record := init_filter;
    signal filter23 : filter_record := init_filter;
    signal filter24 : filter_record := init_filter;
    signal filter25 : filter_record := init_filter;
    signal filter26 : filter_record := init_filter;
    signal filter27 : filter_record := init_filter;
    signal filter28 : filter_record := init_filter;
    signal filter29 : filter_record := init_filter;
    signal filter30 : filter_record := init_filter;

    signal multiplier : multiplier_record := init_multiplier;
    signal multiplier2 : multiplier_record := init_multiplier;

    procedure cascade_filters
    (
        signal filter_n : inout filter_record;
        signal filter_n1 : inout filter_record
    ) is
    begin

        if filter_is_ready(filter_n) then
            request_filter(filter_n1, get_filter_output(filter_n));
        end if;
        
    end cascade_filters;

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

            create_multiplier(multiplier);
            create_multiplier(multiplier2);
            create_filter(filter1  , multiplier);
            create_filter(filter2 , multiplier);
            create_filter(filter3 , multiplier);
            create_filter(filter4 , multiplier);
            create_filter(filter5 , multiplier);
            create_filter(filter6 , multiplier);
            create_filter(filter7 , multiplier);
            create_filter(filter8 , multiplier);
            create_filter(filter9 , multiplier);
            create_filter(filter10 , multiplier);
            create_filter(filter11 , multiplier);
            create_filter(filter12 , multiplier);
            create_filter(filter13 , multiplier);
            create_filter(filter14 , multiplier);
            create_filter(filter15 , multiplier);
            create_filter(filter16 , multiplier);
            create_filter(filter17 , multiplier);
            create_filter(filter18 , multiplier);
            create_filter(filter19 , multiplier);
            create_filter(filter20 , multiplier);
            create_filter(filter21 , multiplier);
            create_filter(filter22 , multiplier);
            create_filter(filter23 , multiplier);
            create_filter(filter24 , multiplier);
            create_filter(filter25 , multiplier2);
            create_filter(filter26 , multiplier2);
            create_filter(filter27 , multiplier2);
            create_filter(filter28 , multiplier2);
            create_filter(filter29 , multiplier2);
            create_filter(filter30 , multiplier2);

            init_uart(uart_data_in);
            -- application region
            receive_data_from_uart(uart_data_out, data_from_uart);

            -- run at 100kHz
            create_timebase_from(counter, 1200);
            if counter_is_ready(counter) then
                stimulus_counter <= stimulus_counter + 1;

                if stimulus_counter > 2**7 then
                    request_filter(filter1, 44252);
                else
                    request_filter(filter1, 0);
                end if;

                set_filter_constant(filter1, data_from_uart);
                set_filter_constant(filter2, data_from_uart);
                set_filter_constant(filter3, data_from_uart);
                set_filter_constant(filter4, data_from_uart);
                set_filter_constant(filter5, data_from_uart);
                set_filter_constant(filter6, data_from_uart);
                set_filter_constant(filter7, data_from_uart);
                set_filter_constant(filter8, data_from_uart);
                set_filter_constant(filter9, data_from_uart);
                set_filter_constant(filter10, data_from_uart);
                set_filter_constant(filter11, data_from_uart);
                set_filter_constant(filter12, data_from_uart);
                set_filter_constant(filter13, data_from_uart);
                set_filter_constant(filter14, data_from_uart);
                set_filter_constant(filter15, data_from_uart);
                set_filter_constant(filter16, data_from_uart);
                set_filter_constant(filter17, data_from_uart);
                set_filter_constant(filter18, data_from_uart);
                set_filter_constant(filter19, data_from_uart);
                set_filter_constant(filter20, data_from_uart);
                set_filter_constant(filter21, data_from_uart);
                set_filter_constant(filter22, data_from_uart);
                set_filter_constant(filter23, data_from_uart);
                set_filter_constant(filter24, data_from_uart);
                set_filter_constant(filter25, data_from_uart);
                set_filter_constant(filter26, data_from_uart);
                set_filter_constant(filter27, data_from_uart);
                set_filter_constant(filter28, data_from_uart);
                set_filter_constant(filter29, data_from_uart);
                set_filter_constant(filter30, data_from_uart);
            end if;

            cascade_filters(filter1, filter2);
            cascade_filters(filter2, filter3);
            cascade_filters(filter3, filter4);
            cascade_filters(filter4, filter5);
            cascade_filters(filter5, filter6);
            cascade_filters(filter6, filter7);
            cascade_filters(filter7, filter8);
            cascade_filters(filter8, filter9);
            cascade_filters(filter9, filter10);
            cascade_filters(filter10, filter11);
            cascade_filters(filter11, filter12);
            cascade_filters(filter12, filter13);
            cascade_filters(filter13, filter14);
            cascade_filters(filter14, filter15);
            cascade_filters(filter15, filter16);
            cascade_filters(filter16, filter17);
            cascade_filters(filter17, filter18);
            cascade_filters(filter18, filter19);
            cascade_filters(filter19, filter20);
            cascade_filters(filter20, filter21);
            cascade_filters(filter21, filter22);
            cascade_filters(filter22, filter23);
            cascade_filters(filter23, filter24);
            cascade_filters(filter24, filter25);
            cascade_filters(filter25, filter26);
            cascade_filters(filter26, filter27);
            cascade_filters(filter27, filter28);
            cascade_filters(filter28, filter29);
            cascade_filters(filter29, filter30);

            if filter_is_ready(filter30) then
                transmit_16_bit_word_with_uart(uart_data_in, get_filter_output(filter30));
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
