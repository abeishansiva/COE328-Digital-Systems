LIBRARY ieee ;
USE ieee.std_logic_1164.all ;
USE ieee.std_logic_unsigned.all ;
ENTITY ASU IS

PORT (Cin : IN STD_LOGIC ;
X ,Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
S : OUT STD_LOGIC_VECTOR(3 DOWNTO 0) ;
Cout,neg : OUT STD_LOGIC ) ;
END ASU ;

ARCHITECTURE Behavior OF ASU IS
SIGNAL Sum : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL Y_xor : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
Y_xor <= Y XOR (3 DOWNTO 0 => Cin);
Sum <= ('0' & X) + ('0' & Y_xor) + Cin;

S<= Sum(3 DOWNTO 0);
Cout <= Sum(4);
neg <= Sum(4) XOR x(3) XOR Y(3) XOR Sum(3);
END Behavior;