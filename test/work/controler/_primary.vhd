library verilog;
use verilog.vl_types.all;
entity controler is
    port(
        clk             : in     vl_logic;
        IR              : in     vl_logic_vector(7 downto 0);
        Aeq0            : in     vl_logic;
        apos            : in     vl_logic;
        dataout         : in     vl_logic_vector(7 downto 0);
        IRload          : out    vl_logic;
        JMPmux          : out    vl_logic_vector(1 downto 0);
        PCload          : out    vl_logic;
        MemInst         : out    vl_logic;
        MRload          : out    vl_logic;
        memWr           : out    vl_logic;
        Asel            : out    vl_logic_vector(2 downto 0);
        Aload           : out    vl_logic;
        reset           : out    vl_logic;
        RFwr            : out    vl_logic;
        ALUsel          : out    vl_logic_vector(2 downto 0);
        Shftsel         : out    vl_logic_vector(1 downto 0);
        outen           : out    vl_logic
    );
end controler;
