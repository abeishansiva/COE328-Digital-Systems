library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;

entity ALUmodified is
    port(
        Clk   : in std_logic; -- input clock signal
        A       : in unsigned(7 downto 0); -- 8-bit input from latch A
        B       : in unsigned(7 downto 0); -- 8-bit input from latch B
        OP      : in unsigned(15 downto 0); -- 16-bit selector for Operation from Decoder
        Neg     : out std_logic; -- is the result negative? Set = -ve bit output
        R1      : out unsigned(3 downto 0); -- lower 4-bits of 8-bit Result Output
        R2      : out unsigned(3 downto 0)  -- higher 4-bits of 8-bit Result Output
    );
end ALUmodified;

architecture calculation of ALUmodified is
    -- temporary signal declarations
    signal Result : unsigned(7 downto 0) := (others => '0');
    
begin
    

    process(Clk, OP)
    begin
        if rising_edge(Clk) then
            -- Do the calculation at positive edge of clock cycle.
            case OP is

                ------------------------------------------------------------------
                -- FUNCTION 1: Swap lower and upper 4 bits of A
                ------------------------------------------------------------------
                when "0000000000000001" =>
                    neg <= '0';
                    Result <= A(3 downto 0) & A(7 downto 4);

                ------------------------------------------------------------------
                -- FUNCTION 2: OR A and B
                ------------------------------------------------------------------
                when "0000000000000010" =>
                    neg <= '0';
                    Result <= A OR B;

                ------------------------------------------------------------------
                -- FUNCTION 3: Decrement B by 5
                ------------------------------------------------------------------
                when "0000000000000100" =>
                    neg <= '0';
                    Result <= B - 5;
						  
						    IF (B < 5) THEN
							  neg <= '1';
						  ELSE
							  neg <= '0';
						  END IF;

                ------------------------------------------------------------------
                -- FUNCTION 4: Invert all bits of A (NOT A)
                ------------------------------------------------------------------
                when "0000000000001000" =>
                    neg <= '0';
                    Result <= NOT A;

                ------------------------------------------------------------------
                -- FUNCTION 5: Reverse bit order of A (bit significance inversion)
                ------------------------------------------------------------------
                when "0000000000010000" =>
                    neg <= '0';
                    Result <= A(0) & A(1) & A(2) & A(3) & A(4) & A(5) & A(6) & A(7);

                ------------------------------------------------------------------
                -- FUNCTION 6: Max(A,B)
                ------------------------------------------------------------------
                when "0000000000100000" =>
                    neg <= '0';
                    if A >= B then
                        Result <= A;
                    else
                        Result <= B;
                    end if;

                ------------------------------------------------------------------
                -- FUNCTION 7: A - B   (Neg bit set if A < B)
                ------------------------------------------------------------------
                when "0000000001000000" =>
                    Result <= A - B;
                    IF (A < B) THEN
							  neg <= '1';
						  ELSE
							  neg <= '0';
						  END IF;

                ------------------------------------------------------------------
                -- FUNCTION 8: XNOR A and B
                ------------------------------------------------------------------
                when "0000000010000000" =>
                    neg <= '0';
                    Result <= A XNOR B;

                ------------------------------------------------------------------
                -- FUNCTION 9: Rotate B left by 3 bits (ROL3)
                ------------------------------------------------------------------
                when "0000000100000000" =>
                    neg <= '0';
                    Result <= B(4 downto 0) & B(7 downto 5);

                ------------------------------------------------------------------
                -- no operation
                ------------------------------------------------------------------
                when others =>
                    neg <= '0';
                    Result <= Result; -- no operation 
            end case;
        end if;
    end process;

    R1 <= Result(3 downto 0);  -- Since the output seven segments can 
    R2 <= Result(7 downto 4);  -- Only 4 bits, split the 8-bit into two 4-bits.
end calculation;
