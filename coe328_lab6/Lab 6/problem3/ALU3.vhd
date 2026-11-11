LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU3 IS
PORT (
    clk, reset : IN  std_logic;
    A, B       : IN  unsigned(7 DOWNTO 0);   -- now using B
    opcode     : IN  unsigned(15 DOWNTO 0);  -- microcode instruction
    student_id : IN  unsigned(3 DOWNTO 0);   -- 4-bit FSM output
    result_code: OUT unsigned(3 DOWNTO 0)    -- 1111='y', 0000='n'
);
END ALU3;

ARCHITECTURE behavior OF ALU3 IS
    SIGNAL B_digit1, B_digit2 : unsigned(3 DOWNTO 0);
BEGIN
    PROCESS(clk, reset)
    BEGIN
        IF reset = '0' THEN
            result_code <= "0000";  -- default = 'n'
        ELSIF clk'EVENT AND clk = '1' THEN
            -- Split B into upper/lower 4 bits
            B_digit1 <= B(7 DOWNTO 4);
            B_digit2 <= B(3 DOWNTO 0);

            -- Check opcode and set result_code
            CASE opcode IS
                WHEN "0000000000000001" =>  -- microcode 1
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111"; -- 'y'
                    ELSE
                        result_code <= "0000"; -- 'n'
                    END IF;

                WHEN "0000000000000010" =>  -- microcode 2
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000000000100" =>  -- microcode 3
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000000001000" =>  -- microcode 4
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000000010000" =>  -- microcode 5
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000000100000" =>  -- microcode 6
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000001000000" =>  -- microcode 7
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000010000000" =>  -- microcode 8
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN "0000000100000000" =>  -- microcode 9
                    IF (B_digit1 = student_id) OR (B_digit2 = student_id) THEN
                        result_code <= "1111";
                    ELSE
                        result_code <= "0000";
                    END IF;

                WHEN OTHERS =>  -- any other opcode
                    result_code <= "0000";
            END CASE;
        END IF;
    END PROCESS;
END behavior;
