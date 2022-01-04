LIBRARY ieee  ; 
    USE ieee.NUMERIC_STD.all  ; 
    USE ieee.std_logic_1164.all  ; 
    use ieee.math_real.all;

library work;
    use work.led_blinker_pkg.all;

library vunit_lib;
    use vunit_lib.run_pkg.all;

entity tb_led_blinker is
  generic (runner_cfg : string);
end;

architecture vunit_simulation of tb_led_blinker is

    signal simulation_running : boolean;
    signal simulator_clock : std_logic;
    constant clock_per : time := 1 ns;
    constant clock_half_per : time := 0.5 ns;
    constant simtime_in_clocks : integer := 50;

    signal simulation_counter : natural := 0;
    -----------------------------------
    -- simulation specific signals ----

    signal leds : std_logic_vector(3 downto 0); 

    type led_array is array (integer range leds'range) of led_blinker_record;
    signal led_blinker_array : led_array := (init_led_blinker, init_led_blinker, init_led_blinker, init_led_blinker);

    type int_array is array (integer range <>) of integer;
    constant counter_values : int_array(leds'range) := (4000, 6000, 8000, 2000);

begin

------------------------------------------------------------------------
    simtime : process
    begin
        test_runner_setup(runner, runner_cfg);
        simulation_running <= true;
        wait for simtime_in_clocks*clock_per;
        simulation_running <= false;
        test_runner_cleanup(runner); -- Simulation ends here
        wait;
    end process simtime;	

------------------------------------------------------------------------
    sim_clock_gen : process
    begin
        simulator_clock <= '0';
        wait for clock_half_per;
        while simulation_running loop
            wait for clock_half_per;
                simulator_clock <= not simulator_clock;
            end loop;
        wait;
    end process;
------------------------------------------------------------------------

    stimulus : process(simulator_clock)

    begin
        if rising_edge(simulator_clock) then
            simulation_counter <= simulation_counter + 1;

            create_led_blinker(led_blinker_array(0), leds(0), counter_values(0));
            create_led_blinker(led_blinker_array(1), leds(1), counter_values(1));
            create_led_blinker(led_blinker_array(2), leds(2), counter_values(2));
            create_led_blinker(led_blinker_array(3), leds(3), counter_values(3));

        end if; -- rising_edge
    end process stimulus;	
------------------------------------------------------------------------
end vunit_simulation;
