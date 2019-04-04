library verilog;
use verilog.vl_types.all;
entity IRreg is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        load            : in     vl_logic;
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        \Out\           : out    vl_logic_vector(7 downto 0)
    );
end IRreg;
