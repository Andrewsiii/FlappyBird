library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity game_fsm is
port (
		clk, reset, PB1, PB2, SW_pause : in std_logic; 
		hit : in std_logic;
		game_reset, game_pause : out std_logic;
		selected_mode : out std_logic_vector(2 downto 0)
		);
		
end entity;

architecture fsm of game_fsm is
-- FSM signals
type state_type is (s_menu, s_regular, s_training, s_over, s_pause);
signal state, next_state, prev_state : state_type;

begin

	--synchronously move to next state
	sync_proc : process(clk, reset) 
	begin	
		if rising_edge(clk) then
			if (reset = '1') then
				state <= s_menu;
			else
				state <= next_state;
			end if;
		end if;
	end process;
	

	--asynchronously decide next state based only on current state and inputs
	next_states_fn: process(state, PB1, PB2, SW_pause, hit) 
	begin
		case(state) is
			when s_menu =>
				if (PB1 = '0') then 					--if button 1 is pressed, current state = menu, next state = training
					next_state <= s_training;
				elsif (PB2 = '0') then				--if button 2 is pressed, current state = menu, next state = regular
					next_state <= s_regular;
				else 										-- Stay stays the same if buttons are untouched
					next_state <= s_menu;
				end if;
				
			when s_training =>
				if (hit = '1') then 
					next_state <= s_over;
				elsif (reset = '1') then 
					next_state <= s_menu;
				elsif (SW_pause = '1') then
					prev_state <= s_training;
					next_state <= s_pause;	
				else
					next_state <= s_training;
				end if;
				
			when s_regular =>
				if (hit = '1') then 
					next_state <= s_over;
				elsif (reset = '1') then 
					next_state <= s_menu;
				elsif (SW_pause = '1') then
					prev_state <= s_regular;
					next_state <= s_pause;
				else
					next_state <= s_regular;
				end if;
				
			when s_over =>
				if (reset = '1') then
					next_state <= s_menu;
				else 
					next_state <= s_over;
				end if;
			
			when s_pause =>
				if (SW_pause = '0') then
					next_state <= prev_state;
				else
					next_state <= s_pause;
				end if;
		end case;
		game_pause <= SW_pause;
	end process;
	
	-- Determines the outputs depending on the state
	outputs:process(state)
		begin
			case state is
				when s_menu =>
					game_reset <= '1';
					selected_mode <= "000";
				when s_training =>
					game_reset <= '0';
					selected_mode <= "001";
				when s_regular =>
					game_reset <= '0';
					selected_mode <= "010";
				when s_over =>
					game_reset <= '0';
					selected_mode <= "011";
				when s_pause =>
					game_reset <= '0';
					selected_mode <= "100";
			end case;
		end process;
end architecture fsm;