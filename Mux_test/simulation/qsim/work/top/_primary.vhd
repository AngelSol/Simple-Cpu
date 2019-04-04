library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        inext           : in     vl_logic_vector(7 downto 0);
        dataoutf        : out    vl_logic_vector(7 downto 0)
    );
end top;
