LIBRARY ieee  ; 
    USE ieee.NUMERIC_STD.all  ; 
    USE ieee.std_logic_1164.all  ; 
    use ieee.math_real.all;

library work;
    use work.filter_pkg.all;

library vunit_lib;
    use vunit_lib.run_pkg.all;

entity tb_filter is
  generic (runner_cfg : string);
end;

architecture vunit_simulation of tb_filter is

    signal simulation_running : boolean;
    signal simulator_clock : std_logic;
    constant clock_per : time := 1 ns;
    constant clock_half_per : time := 0.5 ns;
    constant simtime_in_clocks : integer := 1350;

    signal simulation_counter : natural := 0;
    -----------------------------------
    -- simulation specific signals ----


    signal filter_multiplier : multiplier_record := init_multiplier;
    signal filter : filter_record := init_filter; 
    signal filter2 : filter_record := init_filter; 
    signal output_from_filter : integer := 0;

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

            create_multiplier(filter_multiplier);
            create_filter(filter, filter_multiplier);
            create_filter(filter2, filter_multiplier);



            -- if simulation_counter = 5 then
            --     set_filter_constant(filter, 20e3);
            -- end if;

            if simulation_counter = 0 then
                request_filter(filter, 44252);
            end if;

            if filter_is_ready(filter) then
                request_filter(filter2, get_filter_output(filter));
            end if;

            if filter_is_ready(filter2) then
                output_from_filter <= get_filter_output(filter2);
                request_filter(filter, 44252);
            end if;


        end if; -- rising_edge
    end process stimulus;	
------------------------------------------------------------------------
end vunit_simulation;
