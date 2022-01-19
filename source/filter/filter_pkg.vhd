library ieee;
    use ieee.std_logic_1164.all;
    use ieee.numeric_std.all;

package filter_pkg is
------------------------------------------------------------------------
    type multiplier_record is record
        left, right : signed(17 downto 0);
        result : signed(35 downto 0);
        shift_register : std_logic_vector(1 downto 0);
    end record;

    constant init_multiplier : multiplier_record := ((others => '0'),(others => '0'),(others => '0'), (others => '0'));
------------------------------------------------------------------------
    procedure create_multiplier (
        signal multiplier_object : inout multiplier_record);
------------------------------------------------------------------------
    procedure request_multiplier (
        signal multiplier_object : out multiplier_record;
        left, right : integer);
------------------------------------------------------------------------
    function multiplier_is_ready ( multiplier_object : multiplier_record)
        return boolean;
------------------------------------------------------------------------
    function get_multiplier_result (
        multiplier_object : multiplier_record;
        radix : integer range 1 to 17)
    return integer;
------------------------------------------------------------------------
    type filter_record is record
        filter_is_done      : boolean;
        filter_in           : integer;
        filter_out          : integer;
        filter_memory       : integer;
        b0 : integer;
        b1 : integer;
        a1 : integer;

        process_counter : integer range 0 to 7;
        process_counter2 : integer range 0 to 7;
    end record;

    constant filter_responce_constant : integer := 10e3;
    constant init_filter : filter_record := (false, 0, 0, 0, filter_responce_constant/2, filter_responce_constant/2, 2**16 - filter_responce_constant, 7,7);

------------------------------------------------------------------------
    procedure create_filter (
        signal filter_object : inout filter_record;
        signal multiplier : inout multiplier_record);
------------------------------------------------------------------------
    procedure request_filter (
        signal filter_object : inout filter_record; filter_input : in integer);
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
        signal filter_object : inout filter_record;
        signal multiplier : inout multiplier_record
    ) 
    is
        alias filter_is_done      is  filter_object.filter_is_done      ;
        alias filter_in           is  filter_object.filter_in           ;
        alias filter_out          is  filter_object.filter_out          ;
        alias filter_memory       is  filter_object.filter_memory       ;
        alias process_counter     is  filter_object.process_counter     ;
        alias process_counter2    is  filter_object.process_counter2    ;

        alias b0 is filter_object.b0;
        alias b1 is filter_object.b1;
        alias a1 is filter_object.a1;

        variable filter_output : integer;
    begin

        CASE process_counter is
            WHEN 0 =>
                request_multiplier(multiplier, filter_in, b0);
                process_counter <= process_counter +1;
            WHEN 1 =>
                request_multiplier(multiplier, filter_in, b1);
                process_counter <= process_counter +1;
            WHEN others => -- wait for start
        end CASE; --process_counter

        --------------------------------------------------
        filter_is_done <= false;

        CASE process_counter2 is
            WHEN 0 =>
                if multiplier_is_ready(multiplier) then
                    filter_output := get_multiplier_result(multiplier, 16) + filter_memory;
                    filter_out <= filter_output;
                    request_multiplier(multiplier, filter_output, a1);
                    process_counter2 <= process_counter2 + 1;
                end if;
            WHEN 1 => 
                if multiplier_is_ready(multiplier) then
                    filter_memory <= get_multiplier_result(multiplier, 16);
                    process_counter2 <= process_counter2 + 1;
                end if;
            WHEN 2 => 
                if multiplier_is_ready(multiplier) then
                    filter_memory <= filter_memory + get_multiplier_result(multiplier, 16);
                    process_counter2 <= process_counter2 + 1;
                    filter_is_done <= true;
                end if;
            WHEN others => -- wait for start
        end CASE; --process_counter2

    end procedure;

------------------------------------------------------------------------
    procedure request_filter
    (
        signal filter_object : inout filter_record;
        filter_input : in integer
    ) is
    begin
        if filter_object.process_counter2 > 2 then
            filter_object.process_counter  <= 0;
            filter_object.process_counter2 <= 0;
            filter_object.filter_in        <= filter_input;
        end if;
        
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
------------------------------------------------------------------------
    procedure create_multiplier
    (
        signal multiplier_object : inout multiplier_record
    ) is
        alias left is multiplier_object.left;
        alias right is multiplier_object.right;
        alias result is multiplier_object.result;
        alias shift_register is multiplier_object.shift_register;
    begin
        result <= left * right;
        shift_register <= shift_register(shift_register'left -1 downto 0) & '0';
        
    end create_multiplier;
------------------------------------------------------------------------
    procedure request_multiplier
    (
        signal multiplier_object : out multiplier_record;
        left, right : integer
    ) is
    begin
        multiplier_object.left  <= to_signed(left, 18);
        multiplier_object.right <= to_signed(right, 18);
        multiplier_object.shift_register(0) <= '1';
    end request_multiplier;
------------------------------------------------------------------------
    function multiplier_is_ready
    (
        multiplier_object : multiplier_record
    )
    return boolean
    is
    begin
        return multiplier_object.shift_register(multiplier_object.shift_register'left) = '1';
    end multiplier_is_ready;
------------------------------------------------------------------------
    function get_multiplier_result
    (
        multiplier_object : multiplier_record;
        radix : integer range 1 to 17
    )
    return integer
    is
        alias result is multiplier_object.result;
    begin
        
        return to_integer(result(17+radix downto radix) - result(radix-1 downto radix-1));
    end get_multiplier_result;
------------------------------------------------------------------------
end package body filter_pkg;
