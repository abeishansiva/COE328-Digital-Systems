library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALU is
    port(
        Clk   : in std_logic; -- input clock signal
        A       : in unsigned(7 downto 0); -- 8-bit input from latch A
        B       : in unsigned(7 downto 0); -- 8-bit input from latch B
        OP      : in unsigned(15 downto 0); -- 16-bit selector for Operation from Decoder
        Neg     : out std_logic; -- is the result negative? Set = -ve bit output
        R1      : out unsigned(3 downto 0); -- lower 4-bits of 8-bit Result Output
        R2      : out unsigned(3 downto 0)  -- higher 4-bits of 8-bit Result Output
    );
end ALU;

architecture calculation of ALU is
    -- temporary signal declarations
    signal Result : unsigned(7 downto 0) := (others => '0');
    
begin
    

    process(Clk, OP)
    begin
        if rising_edge(Clk) then
            -- Do the calculation at positive edge of clock cycle.
            case OP is
                when "0000000000000001" =>
                    Result <= A + B; -- Do Addition for A and B
						  neg <= Result(3);
                when "0000000000000010" =>
                    Result <= A - B; -- Do Subtraction
                    IF (A < B) THEN -- "Neg" bit set if required.
							  neg <= '1';
						  ELSE
							  neg <= '0';
						  END IF;
                when "0000000000000100" =>
							neg <= '0';
                    Result <= NOT A;	-- Do Inverse
                when "0000000000001000" =>
							neg <= '0';
                    Result <= A NAND B;	-- Do Boolean NAND
                when "0000000000010000" =>
							neg <= '0';
                    Result <= A NOR B;		-- Do Boolean NOR
                when "0000000000100000" =>
							neg <= '0';
                    Result <= A AND B;		-- Do Boolean AND
                when "0000000001000000" =>
							neg <= '0';
                    Result <= A XOR B;		-- Do Boolean OR
                when "0000000010000000" =>
							neg <= '0';
                    Result <= A OR B;		-- Do Boolean XOR
                when "0000000100000000" =>
							neg <= '0';
                    Result <= A XNOR B;	-- Do Boolean XNOR
                when others =>
							neg <= '0';
                   Result <= Result; -- no operation 
            end case;
        end if;
    end process;

    R1 <= Result(3 downto 0);  -- Since the output seven segments can 
    R2 <= Result(7 downto 4);  -- Only 4 bits, split the 8-bit into two 4-bits.
	 
	 
end calculation;
