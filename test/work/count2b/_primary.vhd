library verilog;
use verilog.vl_types.all;
entity count2b is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        stop            : in     vl_logic;
        cycle           : out    vl_logic_vector(1 downto 0)
    );
end count2b;
