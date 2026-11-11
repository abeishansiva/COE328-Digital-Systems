library verilog;
use verilog.vl_types.all;
entity problem2_vlg_check_tst is
    port(
        DecodetestOut   : in     vl_logic_vector(0 to 15);
        neg_test        : in     vl_logic;
        R1              : in     vl_logic_vector(3 downto 0);
        R2              : in     vl_logic_vector(3 downto 0);
        R_first_four    : in     vl_logic_vector(0 to 6);
        R_last_four     : in     vl_logic_vector(0 to 6);
        s_number        : in     vl_logic_vector(0 to 3);
        Sign            : in     vl_logic_vector(0 to 6);
        student_id      : in     vl_logic_vector(0 to 6);
        sampler_rx      : in     vl_logic
    );
end problem2_vlg_check_tst;
