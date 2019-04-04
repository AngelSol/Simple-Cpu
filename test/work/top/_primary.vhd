library verilog;
use verilog.vl_types.all;
entity top is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        inext           : in     vl_logic_vector(7 downto 0);
        dataoutf        : out    vl_logic_vector(7 downto 0);
        ramin           : out    vl_logic_vector(7 downto 0);
        IR              : out    vl_logic_vector(7 downto 0);
        ramaddress      : out    vl_logic_vector(5 downto 0);
        memWr           : out    vl_logic;
        RFwr            : out    vl_logic
    );
end top;
