library verilog;
use verilog.vl_types.all;
entity problem2 is
    port(
        neg_test        : out    vl_logic;
        Clock           : in     vl_logic;
        Rest_A          : in     vl_logic;
        A               : in     vl_logic_vector(7 downto 0);
        Reset_B         : in     vl_logic;
        B               : in     vl_logic_vector(7 downto 0);
        Enable_Decoder  : in     vl_logic;
        data_in         : in     vl_logic;
        FSM_reset       : in     vl_logic;
        DecodetestOut   : out    vl_logic_vector(0 to 15);
        R1              : out    vl_logic_vector(3 downto 0);
        R2              : out    vl_logic_vector(3 downto 0);
        R_first_four    : out    vl_logic_vector(0 to 6);
        R_last_four     : out    vl_logic_vector(0 to 6);
        s_number        : out    vl_logic_vector(0 to 3);
        Sign            : out    vl_logic_vector(0 to 6);
        student_id      : out    vl_logic_vector(0 to 6)
    );
end problem2;
