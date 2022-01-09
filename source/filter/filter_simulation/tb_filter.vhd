LIBRARY ieee  ; 
    USE ieee.NUMERIC_STD.all  ; 
    USE ieee.std_logic_1164.all  ; 
    use ieee.math_real.all;

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
    constant simtime_in_clocks : integer := 50;

    signal simulation_counter : natural := 0;
    -----------------------------------
    -- simulation specific signals ----
    signal real_filter_out : real := 0.0;
    signal real_filter_mem : real := 0.0;
    signal real_filter_in : real := 0.0;

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

    signal result : integer := 0; 
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
            CASE simulation_counter is
                WHEN 5 =>
                    real_filter_in <= 10.0e3;
                    filter_in <= 10e3;
                WHEN others => --do nothing
            end CASE;

            real_filter_out <= real_filter_in * real_b0 + real_filter_mem;
            real_filter_mem <= real_filter_in * real_b1 + real_filter_out * real_a1;

            filter_out <= filter_in * b0 + filter_mem;
            filter_mem <= filter_in * b1 + filter_out * a1;
            result <= 10*98304;

        end if; -- rising_edge
    end process stimulus;	
------------------------------------------------------------------------
end vunit_simulation;
