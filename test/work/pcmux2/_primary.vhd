library verilog;
use verilog.vl_types.all;
entity pcmux2 is
    port(
        a               : in     vl_logic_vector(5 downto 0);
        b               : in     vl_logic_vector(5 downto 0);
        sel             : in     vl_logic;
        \out\           : out    vl_logic_vector(5 downto 0)
    );
end pcmux2;
