library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package filter_pkg is
------------------------------------------------------------------------
    type filter_record is record
        filter_is_done      : boolean;
        filter_is_requested : boolean;
        filter_in           : integer;
        filter_out          : integer;
        filter_memory       : integer;
        b0 : integer;
        b1 : integer;
        a1 : integer;

    end record;

    constant filter_responce_constant : integer := 10e3;
    constant init_filter : filter_record := (false, false, 0, 0, 0, filter_responce_constant/2, filter_responce_constant/2, 2**16 - filter_responce_constant);

------------------------------------------------------------------------
    procedure create_filter (
        signal filter_object : inout filter_record);
------------------------------------------------------------------------
    procedure request_filter (
        signal filter_object : out filter_record; filter_input : in integer);
------------------------------------------------------------------------
    function filter_is_ready (filter_object : filter_record)
        return boolean;
------------------------------------------------------------------------
    function get_filter_output ( filter_object : filter_record)
        return integer;
------------------------------------------------------------------------
    procedure set_filter_constant (
        signal filter_object : out filter_record;
        filter_time_constant : integer);
------------------------------------------------------------------------
end package filter_pkg;

package body filter_pkg is
------------------------------------------------------------------------
    function "*"
    (
        right, left : integer
    )
    return integer
    is
        variable result : signed(35 downto 0);
        constant radix : integer := 16;
    begin

        result := to_signed(right, 18) * to_signed(left, 18);
        return to_integer(result(17+radix downto radix) - result(radix-1 downto radix-1));
        
    end "*";
------------------------------------------------------------------------
    procedure create_filter 
    (
        signal filter_object : inout filter_record
    ) 
    is
        alias filter_is_requested is  filter_object.filter_is_requested ;
        alias filter_is_done      is  filter_object.filter_is_done      ;
        alias filter_in           is  filter_object.filter_in           ;
        alias filter_out          is  filter_object.filter_out          ;
        alias filter_memory       is  filter_object.filter_memory       ;

        alias b0 is filter_object.b0;
        alias b1 is filter_object.b1;
        alias a1 is filter_object.a1;

    begin
        filter_is_requested <= false;
        if filter_is_requested then
            filter_is_done <= true;

            filter_out    <= filter_in * b0 + filter_memory;
            filter_memory <= filter_in * b1 + filter_out*a1;

        else
            filter_is_done <= false;
        end if;
    end procedure;

------------------------------------------------------------------------
    procedure request_filter
    (
        signal filter_object : out filter_record;
        filter_input : in integer
    ) is
    begin
        filter_object.filter_is_requested <= true;
        filter_object.filter_in <= filter_input;
        
    end request_filter;

------------------------------------------------------------------------
    function filter_is_ready
    (
        filter_object : filter_record
    )
    return boolean
    is
    begin
        return filter_object.filter_is_done;
    end filter_is_ready;

------------------------------------------------------------------------
    function get_filter_output
    (
        filter_object : filter_record
    )
    return integer
    is
    begin
        return filter_object.filter_out;
    end get_filter_output;
------------------------------------------------------------------------
    procedure set_filter_constant
    (
        signal filter_object : out filter_record;
        filter_time_constant : integer
    ) is
    begin
        filter_object.b0 <= filter_time_constant/2;
        filter_object.b1 <= filter_time_constant/2;
        filter_object.a1 <= 2**16 - filter_time_constant;
        
    end set_filter_constant;
------------------------------------------------------------------------
end package body filter_pkg;
