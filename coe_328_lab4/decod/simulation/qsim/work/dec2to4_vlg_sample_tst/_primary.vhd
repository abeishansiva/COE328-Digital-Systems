library verilog;
use verilog.vl_types.all;
entity dec2to4_vlg_sample_tst is
    port(
        En              : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end dec2to4_vlg_sample_tst;
