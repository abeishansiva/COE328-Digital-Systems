library verilog;
use verilog.vl_types.all;
entity problem3_vlg_check_tst is
    port(
        DecodeTest      : in     vl_logic_vector(15 downto 0);
        R1test          : in     vl_logic_vector(3 downto 0);
        result          : in     vl_logic_vector(0 to 6);
        student         : in     vl_logic_vector(3 downto 0);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end problem3_vlg_check_tst;
