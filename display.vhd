LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

--This is where all the graphics are controlled

ENTITY display IS
	PORT
		(SIGNAL pb1, pb2, clk, vert_sync	: IN std_logic;
		 SIGNAL reset, pause					: IN std_logic;
       SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		 SIGNAL selected_mode            : IN std_logic_vector(2 downto 0);
		 SIGNAL hit 							: OUT std_logic;
		 SIGNAL red, green, blue 			: OUT std_logic);		
END display;

architecture behavior of display is


-- Adds the bouncy_ball component where the ball logic is developed
component bouncy_ball is
	PORT
		(SIGNAL pb1, pb2, clk, vert_sync	      			: IN std_logic;
		 SIGNAL reset, pause    			      			: IN std_logic;
       SIGNAL pixel_row, pixel_column	      			: IN std_logic_vector(9 DOWNTO 0);
		 SIGNAL selected_mode                 			   : IN std_logic_vector(2 downto 0);
		 SIGNAL score0_out, score1_out, score2_out 	   : OUT std_logic_vector(5 downto 0);
		 SIGNAL hit													: OUT std_logic := '0';
		 SIGNAL text_on, ball_on, pipe_out, gift_out 	: OUT std_logic);
end component bouncy_ball;

-- Adds the menu screen component to allow it to be displayed
component menu is
	port(
		SIGNAL clk, vert_sync		      : IN std_logic;
		SIGNAL reset, pause					: IN std_logic;
		SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL menu_text_on, menu_out 	: OUT std_logic	
		);
end component menu;

-- Adds the game over screen component to allow it to be displayed
component gameover is
    port(
        SIGNAL clk, vert_sync                  : IN std_logic;
        SIGNAL reset, pause                    : IN std_logic;
        SIGNAL pixel_row, pixel_column         : IN std_logic_vector(9 DOWNTO 0);
		  SIGNAL score0, score1, score2 			  : IN std_logic_vector(5 downto 0);
        SIGNAL over_text_on, gameover_out      : OUT std_logic    
        );
end component gameover;

component pause_screen is
	port(
		SIGNAL clk, vert_sync		      : IN std_logic;
		SIGNAL reset, pause					: IN std_logic;
		SIGNAL pixel_row, pixel_column	: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL pause_out, pause_text_on 	: OUT std_logic	
		);
end component pause_screen;

signal bird_text_on, bird_ball_on, bird_pipe_on, bird_gift_on : std_logic;
signal menu_screen_on, menu_text_on 	   : std_logic;
signal over_screen_on, over_text_on 	   : std_logic;
signal player_hit							      : std_logic;
signal score0_out, score1_out, score2_out : std_logic_vector(5 downto 0);
signal pause_screen_on, pause_text_on : std_logic;

begin

--	Assigns port map and instantiates these components	
bird: bouncy_ball port map (pb1, pb2, clk, vert_sync, reset, pause, pixel_row, pixel_column, selected_mode, 
                            score0_out, score1_out, score2_out, player_hit, bird_text_on, bird_ball_on, bird_pipe_on, bird_gift_on);
menu_screen : menu port map (clk, vert_sync, reset, pause, pixel_row, pixel_column, menu_text_on, menu_screen_on);
game_over_screen : gameover port map (clk, vert_sync, reset, pause, pixel_row, pixel_column, score0_out, score1_out, 
												  score2_out, over_text_on, over_screen_on);
paused_screen : pause_screen port map (clk, vert_sync, reset, pause, pixel_row, pixel_column, pause_screen_on, pause_text_on);


select_mode: process(selected_mode)

begin

	--Controls the graphics of the default state (menu) and sets it to blue background, white text
	if (selected_mode = "000") then
		Red   <=  not(menu_screen_on) or menu_text_on;
		Green <=  not(menu_screen_on) or menu_text_on;
		Blue  <=  menu_screen_on or menu_text_on;	
	
	--Controls the graphics of the game over state (gameover) and sets it to red background, white text
	elsif (selected_mode = "011") then
      Red   <=  over_screen_on;
      Green <=  over_text_on;
      Blue  <=  not(over_screen_on) or (over_text_on);
		
	--Controls the graphics of the game play states (regular and training mode), sets a blue background, white text, green pipes and red ball	
	elsif (selected_mode = "010" or selected_mode = "001") then
		Red <=  bird_text_on or bird_ball_on or bird_gift_on;
		Green <= (bird_text_on and not(bird_ball_on)) or bird_pipe_on or bird_gift_on;
		Blue <=  not(bird_ball_on) or bird_gift_on;
		hit <= player_hit;
		
	elsif (selected_mode = "100") then
		Red <= pause_screen_on;
		Green <= pause_text_on;
		Blue <= not(pause_screen_on) or (pause_text_on);
	end if;
	
end process select_mode;

end architecture behavior;