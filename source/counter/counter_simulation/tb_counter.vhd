LIBRARY ieee  ; 
    USE ieee.NUMERIC_STD.all  ; 
    USE ieee.std_logic_1164.all  ; 
    use ieee.math_real.all;

library vunit_lib;
    use vunit_lib.run_pkg.all;

entity tb_counter is
  generic (runner_cfg : string);
end;

architecture vunit_simulation of tb_counter is

    signal simulation_running : boolean;
    signal simulator_clock : std_logic;
    constant clock_per : time := 1 ns;
    constant clock_half_per : time := 0.5 ns;
    constant simtime_in_clocks : integer := 50;

    signal simulation_counter : natural := 0;
    -----------------------------------
    -- simulation specific signals ----
    type counter_object_record is record
        counter : natural range 0 to 2**16-1;
        counting_has_completed : boolean;
    end record;
    
    constant init_counter : counter_object_record :=(
        counter => 0, 
        counting_has_completed => false);

    procedure create_counter 
        (
            signal counter_object : inout counter_object_record
        )
        is 
            alias counter is counter_object.counter;
            alias counting_has_completed is counter_object.counting_has_completed;
        begin
            if counter > 0 then
                counter <= counter - 1;
            end if;
            
            if counter = 1 then
                counting_has_completed <= true;
            else
                counting_has_completed <= false;
            end if;
    end create_counter;

    function counter_is_not_running
    (
        counter_object : counter_object_record
    )
    return boolean
    is
    begin
        return counter_object.counter = 0;
    end counter_is_not_running;

    procedure request_counter
    (
        signal counter_object : out counter_object_record ;
        count_down_from : in natural range 1 to 2**16-1
    ) is
    begin
        counter_object.counter <= count_down_from;
    end request_counter;

    signal counter : counter_object_record := init_counter;

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
            create_counter(counter);

            if counter_is_not_running(counter) then
                request_counter(counter, 10);
            end if;


        end if; -- rising_edge
    end process stimulus;	
------------------------------------------------------------------------
end vunit_simulation;
