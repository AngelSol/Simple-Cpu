library verilog;
use verilog.vl_types.all;
entity datapath is
    port(
        clk             : in     vl_logic;
        instr           : in     vl_logic_vector(7 downto 0);
        IRload          : in     vl_logic;
        JMPmux          : in     vl_logic_vector(1 downto 0);
        PCload          : in     vl_logic;
        MemInst         : in     vl_logic;
        MRload          : in     vl_logic;
        memWr           : in     vl_logic;
        Asel            : in     vl_logic_vector(2 downto 0);
        Aload           : in     vl_logic;
        reset           : in     vl_logic;
        RFwr            : in     vl_logic;
        ALUsel          : in     vl_logic_vector(2 downto 0);
        Shftsel         : in     vl_logic_vector(1 downto 0);
        outen           : in     vl_logic;
        inext           : in     vl_logic_vector(7 downto 0);
        IR              : out    vl_logic_vector(7 downto 0);
        Aeq0            : out    vl_logic;
        apos            : out    vl_logic;
        dataout         : out    vl_logic_vector(7 downto 0)
    );
end datapath;
