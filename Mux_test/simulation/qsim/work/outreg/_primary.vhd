library verilog;
use verilog.vl_types.all;
entity outreg is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        Wr              : in     vl_logic;
        clear           : in     vl_logic;
        clk             : in     vl_logic;
        qr              : out    vl_logic_vector(7 downto 0)
    );
end outreg;
