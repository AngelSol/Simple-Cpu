library verilog;
use verilog.vl_types.all;
entity regifile is
    port(
        D               : in     vl_logic_vector(7 downto 0);
        WE              : in     vl_logic;
        WA              : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end regifile;
