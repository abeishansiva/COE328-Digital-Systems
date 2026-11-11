library verilog;
use verilog.vl_types.all;
entity encoder is
    port(
        w               : in     vl_logic_vector(3 downto 0);
        y               : out    vl_logic_vector(1 downto 0);
        z               : out    vl_logic
    );
end encoder;
