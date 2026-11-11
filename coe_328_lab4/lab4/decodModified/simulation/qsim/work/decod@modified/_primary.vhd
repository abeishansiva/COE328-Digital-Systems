library verilog;
use verilog.vl_types.all;
entity decodModified is
    port(
        y               : out    vl_logic_vector(0 to 7);
        w2              : in     vl_logic;
        En              : in     vl_logic;
        w               : in     vl_logic_vector(1 downto 0)
    );
end decodModified;
