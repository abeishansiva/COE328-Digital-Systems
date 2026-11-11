LIBRARY ieee; 
USE ieee.std_logic_1164.all;
 
ENTITY SSEG_prob3 IS 
   PORT ( 
        bcd : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        leds : OUT STD_LOGIC_VECTOR(0 TO 6)
    );
END SSEG_prob3; 

ARCHITECTURE Behavior OF SSEG_prob3 IS 
BEGIN 
    PROCESS (bcd) 
    BEGIN 
    CASE bcd IS  
    WHEN "0000" => leds <= "1101010"; 
    WHEN "1111" => leds <= "1000100"; 
    WHEN others =>
	 leds <= "0111000";
	 END CASE;
    END PROCESS;
	 
END Behavior;