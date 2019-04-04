library verilog;
use verilog.vl_types.all;
entity pcreg is
    port(
        D               : in     vl_logic_vector(5 downto 0);
        Load            : in     vl_logic;
        Clear           : in     vl_logic;
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(5 downto 0)
    );
end pcreg;
