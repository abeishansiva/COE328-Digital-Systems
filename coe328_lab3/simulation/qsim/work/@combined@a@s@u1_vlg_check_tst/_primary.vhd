library verilog;
use verilog.vl_types.all;
entity CombinedASU1_vlg_check_tst is
    port(
        Cout            : in     vl_logic;
        display         : in     vl_logic_vector(1 to 7);
        neg_display     : in     vl_logic_vector(1 to 7);
        sampler_rx      : in     vl_logic
    );
end CombinedASU1_vlg_check_tst;
