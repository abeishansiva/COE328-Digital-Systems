library ieee;
use ieee.std_logic_1164.all;

ENTITY C IS
PORT(
	
	S: IN std_logic_vector(3 DOWNTO 0);
	L : OUT std_logic_vector(3 DOWNTO 0));
	
	END ENTITY C;
	
ARCHITECTURE Behaviour of C IS
BEGIN

L(3) <=	(S(2) AND (NOT S(1))) OR (S(2) AND S(0));
L(2) <= (NOT (S(2) OR S(1) OR S(0))) OR (S(2) AND S(1) AND (NOT S(0)));
L(1) <= S(3) OR (NOT S(2) AND S(1) AND S(0)) OR (S(2) AND S(1) AND (NOT S(0)));
L(0) <= (NOT (S(1) OR S(0))) OR (S(2) AND S(1) AND S(0)) OR ((NOT S(2) AND S(1) AND NOT S(0)));

END ARCHITECTURE Behaviour;