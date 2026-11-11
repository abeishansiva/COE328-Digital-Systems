library verilog;
use verilog.vl_types.all;
entity ALU3 is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        B               : in     vl_logic_vector(7 downto 0);
        opcode          : in     vl_logic_vector(15 downto 0);
        student_id      : in     vl_logic_vector(3 downto 0);
        result_code     : out    vl_logic_vector(3 downto 0)
    );
end ALU3;
