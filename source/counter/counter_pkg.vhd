library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package counter_pkg is
------------------------------------------------------------------------
    type counter_object_record is record
        counter : natural range 0 to 2**16-1;
        counting_has_completed : boolean;
    end record;
    
    constant init_counter : counter_object_record :=(
        counter => 0, 
        counting_has_completed => false);

    procedure create_counter (
            signal counter_object : inout counter_object_record);

    function counter_is_not_running ( counter_object : counter_object_record)
        return boolean;

    procedure request_counter (
        signal counter_object : out counter_object_record ;
        count_down_from : in natural range 1 to 2**16-1);

    procedure create_timebase_from (
        signal counter_object : inout counter_object_record;
        count_to_zero_from : natural range 1 to 2**16-1);

------------------------------------------------------------------------
end package counter_pkg;

package body counter_pkg is

------------------------------------------------------------------------
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

------------------------------------------------------------------------
    function counter_is_not_running
    (
        counter_object : counter_object_record
    )
    return boolean
    is
    begin
        return counter_object.counter = 0;
    end counter_is_not_running;

------------------------------------------------------------------------
    procedure request_counter
    (
        signal counter_object : out counter_object_record ;
        count_down_from : in natural range 1 to 2**16-1
    ) is
    begin
        counter_object.counter <= count_down_from;
    end request_counter;

------------------------------------------------------------------------
    procedure create_timebase_from 
    (
        signal counter_object : inout counter_object_record;
        count_to_zero_from : natural range 1 to 2**16-1
    )
    is 
    begin
        create_counter(counter_object);
            
        if counter_is_not_running(counter_object) then
            request_counter(counter_object, count_to_zero_from);
        end if;
    end create_timebase_from;

------------------------------------------------------------------------

end package body counter_pkg;

