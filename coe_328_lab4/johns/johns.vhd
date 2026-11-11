LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY johns IS
    PORT (
        Clrn, E, Clkn : IN STD_LOGIC;  -- Clrn is your reset button
        STUDENT_ID    : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        Q             : OUT STD_LOGIC_VECTOR(0 TO 2)
    );
END johns;

ARCHITECTURE Behavior OF johns IS
    SIGNAL Qreg : STD_LOGIC_VECTOR(0 TO 2);
BEGIN
    PROCESS (Clrn, Clkn)
    BEGIN
        IF Clrn = '0' THEN
            Qreg <= "000";
        ELSIF (Clkn'EVENT AND Clkn = '0') THEN
            IF E = '1' THEN
                -- complete your johns flip-flop outputs here
                -- ..
               Qreg(2) <= Qreg(1);
					Qreg(1) <= Qreg(0);
					Qreg(0) <= not Qreg(2);

                -- ..
                -- ..
            ELSE
                Qreg <= Qreg;
            END IF;
        END IF;

        -- STUDENT_ID variable represents the last 6 digits of your student ID
        -- hence d4 is the fourth digit of your
        -- student ID in four bits, d5 is the fifth and so on.
        -- For example, for Student ID 500435429,
        -- d4 is 0100, d5 is 0011 and so on
		  -- 
		  
		  -- MY STUDENT # 501298697

        CASE Qreg IS
            WHEN "000" =>
                STUDENT_ID <= "0010"; -- d4
            WHEN "100" =>
                STUDENT_ID <= "1001"; -- d5
				WHEN "110" =>
                STUDENT_ID <= "1000"; -- d6
            WHEN "111" =>
                STUDENT_ID <= "0110"; -- d7
				WHEN "011" =>
                STUDENT_ID <= "1001"; -- d8
            WHEN "001" =>
                STUDENT_ID <= "0111"; -- d9
            
            WHEN OTHERS =>
                STUDENT_ID <= "----"; -- error
        END CASE;
    END PROCESS;

    Q <= Qreg;
END Behavior;
