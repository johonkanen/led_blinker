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

    signal counter : counter_object_record := init_counter; 
    signal counter2 : counter_object_record := init_counter; 
    signal led_state : std_logic := '0'; 

begin


    led_blinker : process(clk_120MHz)
        
    begin
        if rising_edge(clk_120MHz) then
            leds <= (led_state, led_state, led_state, led_state);
            create_timebase_from(counter, 10e3);
            if counter_is_ready(counter) then
                create_timebase_from(counter2, 10e3);
            end if;

            if counter_is_ready(counter) and counter_is_ready(counter2) then
                led_state <= not led_state;
            end if;
        end if; --rising_edge
    end process led_blinker;	


end rtl;
