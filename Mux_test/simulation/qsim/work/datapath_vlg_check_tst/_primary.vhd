library verilog;
use verilog.vl_types.all;
entity datapath_vlg_check_tst is
    port(
        Aeq0            : in     vl_logic;
        IR              : in     vl_logic_vector(7 downto 0);
        apos            : in     vl_logic;
        dataout         : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end datapath_vlg_check_tst;
