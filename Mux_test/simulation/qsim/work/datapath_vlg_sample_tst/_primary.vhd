library verilog;
use verilog.vl_types.all;
entity datapath_vlg_sample_tst is
    port(
        ALUsel          : in     vl_logic_vector(2 downto 0);
        Aload           : in     vl_logic;
        Asel            : in     vl_logic_vector(2 downto 0);
        IRload          : in     vl_logic;
        JMPmux          : in     vl_logic_vector(1 downto 0);
        MRload          : in     vl_logic;
        MemInst         : in     vl_logic;
        PCload          : in     vl_logic;
        RFwr            : in     vl_logic;
        Shftsel         : in     vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        inext           : in     vl_logic_vector(7 downto 0);
        instr           : in     vl_logic_vector(7 downto 0);
        memWr           : in     vl_logic;
        outen           : in     vl_logic;
        reset           : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end datapath_vlg_sample_tst;
