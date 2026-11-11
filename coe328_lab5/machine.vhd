library ieee;
use ieee.std_logic_1164.all;
entity machine is
port
(
	clk	: in std_logic;
	data_in : in std_logic;
	reset : in std_logic;
	student_id : out std_logic_vector (3 downto 0);
	current_state: out std_logic_vector (3 DOWNTO 0)
	);
	
	end entity;
	
	architecture fsm of machine is 
	
	-- Build an enumerated type with 9 states for  the state machine (9 states
	-- for the state machine (9 states for parsing 9 digits of student id)
	
	type state_type is (s0, s1, s2, s3, s4, s5, s6, s7, s8);
	
	-- Register to hold the current state
	signal yfsm: state_type;
	
	begin 
		process (clk,reset)
		begin 
		if reset ='1' then
			yfsm <= s0;
			
			
		elsif (clk 'EVENT AND clk = '1') then
			
		
		-- Determine the next state synchronously, based on
		-- the current state and the input
		
		-- DONE FOR FSM #6
		
		case yfsm is
		
                when s0 =>
                    yfsm <= s1;
                when s1 =>
                    yfsm <= s2;
                when s2 =>
                    yfsm <= s3;
                when s3 =>
                    yfsm <= s4;
					 when s4 =>
                    yfsm <= s5;
					 when s5 =>
                    yfsm <= s6;
					 when s6 =>
                    yfsm <= s7;
					 when s7 =>
                    yfsm <= s8;
                when s8 =>
                    yfsm <= s0;
			
		end case;
	end if;
end process;

-- Implement the Moore or Mealy logic here
process (yfsm, data_in) -- data_in if rcqd only

begin

case yfsm is

			when s0 =>
			current_state <= "0000";
			student_id <= "0101";
			
			when s1 =>
			current_state <= "0001";
			student_id <= "0000";
			
			when s2 =>
			current_state <= "0010";
			student_id <= "0001";
			
			when s3 =>
			current_state <= "0011";
			student_id <= "0010";
			
			when s4 =>
			current_state <= "0100";
			student_id <= "1001";
			
			when s5 =>
			current_state <= "0101";
			student_id <= "1000";
			
			when s6 =>
			current_state <= "0110";
			student_id <= "0110";
			
			when s7 =>
			current_state <= "0111";
			student_id <= "1001";
			
			when s8 =>
			current_state <= "1000";
			student_id <= "0111";
		
		end case; 
		end process;
	end fsm;
	