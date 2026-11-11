library verilog;
use verilog.vl_types.all;
entity problem3 is
    port(
        DecodeTest      : out    vl_logic_vector(15 downto 0);
        Enable_Decoder  : in     vl_logic;
        Clock           : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        R1test          : out    vl_logic_vector(3 downto 0);
        ALU3_reset      : in     vl_logic;
        Reset_A         : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        result          : out    vl_logic_vector(0 to 6);
        student         : out    vl_logic_vector(3 downto 0);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end problem3;
