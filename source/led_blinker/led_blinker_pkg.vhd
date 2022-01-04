library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.counter_pkg.all;

package led_blinker_pkg is
    type led_blinker_record is record
        fast_counter : counter_object_record;
        slow_counter : counter_object_record;
        led_state    : std_logic;
    end record;
    
    constant init_led_blinker : led_blinker_record := (init_counter, init_counter, '0');

    procedure create_led_blinker (
        signal led_blinker_object : inout led_blinker_record;
        signal led_out : out std_logic;
        slow_counter_value : in natural range 1000 to 15e3);

end package led_blinker_pkg;


package body led_blinker_pkg is

    procedure create_led_blinker
    (
        signal led_blinker_object : inout led_blinker_record;
        signal led_out : out std_logic;
        slow_counter_value : in natural range 1000 to 15e3
    ) is
        alias counter is led_blinker_object.fast_counter;
        alias counter2 is led_blinker_object.slow_counter;
        alias led_state    is led_blinker_object.led_state   ;

    begin
            led_out <= led_state;
            create_timebase_from(counter, 10e3);
            if counter_is_ready(counter) then
                create_timebase_from(counter2, slow_counter_value);
            end if;

            if counter_is_ready(counter) and counter_is_ready(counter2) then
                led_state <= not led_state;
            end if;
        
    end create_led_blinker;

end package body led_blinker_pkg;

