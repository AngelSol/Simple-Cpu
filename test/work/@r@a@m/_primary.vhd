library verilog;
use verilog.vl_types.all;
entity RAM is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        addr            : in     vl_logic_vector(5 downto 0);
        WE              : in     vl_logic;
        clk             : in     vl_logic;
        Q               : out    vl_logic_vector(7 downto 0)
    );
end RAM;
