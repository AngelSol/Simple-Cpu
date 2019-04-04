library verilog;
use verilog.vl_types.all;
entity accumulator is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        Wr              : in     vl_logic;
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        q               : out    vl_logic_vector(7 downto 0)
    );
end accumulator;
