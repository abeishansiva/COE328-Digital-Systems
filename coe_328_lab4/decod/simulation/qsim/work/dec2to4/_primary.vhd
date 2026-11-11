library verilog;
use verilog.vl_types.all;
entity dec2to4 is
    port(
        w               : in     vl_logic_vector(1 downto 0);
        En              : in     vl_logic;
        y               : out    vl_logic_vector(0 to 3)
    );
end dec2to4;
