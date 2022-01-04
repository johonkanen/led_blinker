library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

library work;
    use work.counter_pkg.all;

entity top is
    port (
        clk_120Mhz : in std_logic;
        leds : out std_logic_vector(3 downto 0)
    );
end entity top;


architecture rtl of top is

    type led_blinker_record is record
        fast_counter : counter_object_record;
        slow_counter : counter_object_record;
        led_state    : std_logic;
    end record;
    
    constant init_led_blinker : led_blinker_record := (init_counter, init_counter, '0');

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

    signal led_blinker0 : led_blinker_record := init_led_blinker;
    signal led_blinker1 : led_blinker_record := init_led_blinker;
    signal led_blinker2 : led_blinker_record := init_led_blinker;
    signal led_blinker3 : led_blinker_record := init_led_blinker;

begin


    led_blinker : process(clk_120MHz)
        
    begin
        if rising_edge(clk_120MHz) then
            create_led_blinker(led_blinker0, leds(0), 2000);
            create_led_blinker(led_blinker1, leds(1), 4000);
            create_led_blinker(led_blinker2, leds(2), 6000);
            create_led_blinker(led_blinker3, leds(3), 8000);
        end if; --rising_edge
    end process led_blinker;	

end rtl;
