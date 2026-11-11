library verilog;
use verilog.vl_types.all;
entity decoModified is
    port(
        w               : in     vl_logic_vector(3 downto 0);
        En              : in     vl_logic;
        y               : out    vl_logic_vector(15 downto 0)
    );
end decoModified;
