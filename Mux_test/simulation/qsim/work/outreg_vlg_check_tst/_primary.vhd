library verilog;
use verilog.vl_types.all;
entity outreg_vlg_check_tst is
    port(
        qr              : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end outreg_vlg_check_tst;
