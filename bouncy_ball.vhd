LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
use ieee.numeric_std.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

--Logic of the bouncy ball

ENTITY bouncy_ball IS
	PORT
		(SIGNAL pb1, pb2, clk, vert_sync	      			: IN std_logic;
		 SIGNAL reset, pause    			      			: IN std_logic;
       SIGNAL pixel_row, pixel_column	      			: IN std_logic_vector(9 DOWNTO 0);
		 SIGNAL selected_mode                 			   : IN std_logic_vector(2 downto 0);
		 SIGNAL score0_out, score1_out, score2_out 	   : OUT std_logic_vector(5 downto 0);
		 SIGNAL hit													: OUT std_logic := '0';
		 SIGNAL text_on, ball_on, pipe_out, gift_out 					: OUT std_logic);	
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0) := -CONV_STD_LOGIC_VECTOR(5,10);

--Adds a char_rom component which imports the mif file, used to display the score and lives remaining
COMPONENT char_rom is
	PORT (
		character_address	:	IN STD_LOGIC_VECTOR (5 DOWNTO 0);
		font_row, font_col	:	IN STD_LOGIC_VECTOR (2 DOWNTO 0);
		clock				: 	IN STD_LOGIC ;
		rom_mux_output		:	OUT STD_LOGIC
	);
end COMPONENT char_rom;

COMPONENT pipes is
	port(
		SIGNAL clk, vert_sync		        : IN std_logic;
		SIGNAL reset, pause					  : IN std_logic;
		SIGNAL hit_temp						  : IN std_logic;
		SIGNAL pixel_row, pixel_column	  : IN std_logic_vector(9 DOWNTO 0);
		SIGNAL selected_mode               : IN std_logic_vector(2 downto 0);
		SIGNAL x_pos_1, x_pos_2 			  : OUT std_logic_vector(10 DOWNTO 0);
		SIGNAL topheight_1, bottomheight_1 : OUT integer;
	   SIGNAL topheight_2, bottomheight_2 : OUT integer;
		SIGNAL pipe_out 	                 : OUT std_logic;
		SIGNAL current_level : OUT std_logic_vector(5 downto 0)
		
		);
end COMPONENT pipes;

COMPONENT gifts is
	port(
			SIGNAL clk, vert_sync		        : IN std_logic;
			SIGNAL reset, pause					  : IN std_logic;
			SIGNAL touch_ball						  : IN std_logic;
			SIGNAL pixel_row, pixel_column	  : IN std_logic_vector(9 DOWNTO 0);
			SIGNAL selected_mode               : IN std_logic_vector(2 downto 0);
			SIGNAL gift_x_position			  : OUT std_logic_vector(10 DOWNTO 0);
			SIGNAL gift_y_position : OUT std_logic_vector(9 downto 0);
			SIGNAL gift_out 	                 : OUT std_logic
			);
	end COMPONENT gifts;


SIGNAL score_text_out        : STD_LOGIC := '0';
SIGNAL score_text            : std_logic_vector(5 downto 0);
SIGNAL score0,score1, score2 : std_logic_vector(5 downto 0) := "110000";

SIGNAL lives_text_out : STD_LOGIC := '0';
SIGNAL lives_text     : std_logic_vector(5 downto 0); 
SIGNAL lives          : std_logic_vector(5 downto 0) := "110011";

SIGNAL level_text_out : STD_LOGIC := '0';
SIGNAL level_text     : std_logic_vector(5 downto 0); 
SIGNAL level : std_logic_vector(5 downto 0);


SIGNAL text_x_pos : std_logic_vector(10 DOWNTO 0);
SIGNAL text_y_pos : std_logic_vector(9 DOWNTO 0);
SIGNAL text_size  : std_logic_vector(9 DOWNTO 0);

SIGNAL pipe_x_pos_1 : std_logic_vector(10 DOWNTO 0);
SIGNAL pipe_x_pos_2 : std_logic_vector(10 DOWNTO 0);

SIGNAL topheight_1, bottomheight_1 : integer range 0 to 480;
SIGNAL topheight_2, bottomheight_2 : integer range 0 to 480;
SIGNAL hit_temp 				        : std_logic := '0';

SIGNAL gift_x_pos : std_logic_vector(10 DOWNTO 0);
SIGNAL gift_y_pos : std_logic_vector(9 downto 0);
SIGNAL touch_ball : std_logic := '0';

BEGIN           

--Ball Parameters
size <= CONV_STD_LOGIC_VECTOR(8,10);
-- ball_x_pos and ball_y_pos show the (x,y) for the centre of ball
ball_x_pos <= CONV_STD_LOGIC_VECTOR(250,11); --590


-- Determines where the ball will be displyed on the VGA screen
ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';

-- determines when and where to display the score 
text_on <= '1' when (score_text_out = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(158,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(14,10) 
					and pixel_row <= CONV_STD_LOGIC_VECTOR(30,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(16,10)) or
					
					(lives_text_out = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(128,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(14,10) 
					and pixel_row <= CONV_STD_LOGIC_VECTOR(45,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(30,10)) or
					
					(level_text_out = '1' and pixel_column <= CONV_STD_LOGIC_VECTOR(98,10) and pixel_column >= CONV_STD_LOGIC_VECTOR(14,10) 
					and pixel_row <= CONV_STD_LOGIC_VECTOR(60,10) and pixel_row >= CONV_STD_LOGIC_VECTOR(45,10))
					else 
					'0';

-- prints "SCORE:sss" where s is the score value
score_text <= CONV_STD_LOGIC_VECTOR(19,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(30,10) else -- "S"
				CONV_STD_LOGIC_VECTOR(3,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(54,10) else    -- "C"
				CONV_STD_LOGIC_VECTOR(15,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(62,10) else   -- "O"
				CONV_STD_LOGIC_VECTOR(18,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(78,10) else 	 -- "R"
				CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(94,10) else    -- "E"
				CONV_STD_LOGIC_VECTOR(45,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(110,10) else  -- "-"
				score0 when pixel_column <= CONV_STD_LOGIC_VECTOR(126,10) else                       -- "#"
				score1 when pixel_column <= CONV_STD_LOGIC_VECTOR(143,10) else                       -- "#"
				score2 when pixel_column <= CONV_STD_LOGIC_VECTOR(158,10) else                       -- "#"
				"101111";
			
--Prints the number of lives remaining			
lives_text <= CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(30,10) else -- "L"
				CONV_STD_LOGIC_VECTOR(9,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(45,10) else -- "I"
				CONV_STD_LOGIC_VECTOR(22,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(62,10) else -- "V"
				CONV_STD_LOGIC_VECTOR(5,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(78,10) else -- "E"
				CONV_STD_LOGIC_VECTOR(19,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(94,10) else -- "S"
				CONV_STD_LOGIC_VECTOR(45,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(110,10) else -- "-"
				lives when pixel_column <= CONV_STD_LOGIC_VECTOR(126,10) else -- "#"
				"101111";
				
level_text <= CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(30,10) else -- "L"
				CONV_STD_LOGIC_VECTOR(22,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(45,10) else -- "V"
				CONV_STD_LOGIC_VECTOR(12,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(62,10) else -- "L"
				CONV_STD_LOGIC_VECTOR(45,6) when pixel_column <= CONV_STD_LOGIC_VECTOR(78,10) else -- "-"
				level when pixel_column <= CONV_STD_LOGIC_VECTOR(94,10) else -- "#"
				"101111";
				
--	Assigns port map and instantiates these components	
textscore: char_rom port map (score_text, pixel_row(3 downto 1), pixel_column(3 downto 1), clk, score_text_out);
textlives: char_rom port map (lives_text, pixel_row(3 downto 1), pixel_column(3 downto 1), clk, lives_text_out);
textlevel: char_rom port map (level_text, pixel_row(3 downto 1), pixel_column(3 downto 1), clk, level_text_out);
pipe: pipes port map (clk, vert_sync, reset, pause, hit_temp, pixel_row, pixel_column, selected_mode, pipe_x_pos_1, 
                      pipe_x_pos_2, topheight_1, bottomheight_1, topheight_2, bottomheight_2, pipe_out, level);
gift: gifts port map (clk, vert_sync, reset, pause, touch_ball, pixel_row, pixel_column, selected_mode, gift_x_pos, gift_y_pos, gift_out);		

	
Move_Ball: process (vert_sync, reset, pause) 

variable score_check : std_logic := '1';
variable life	:	integer range 0 to 9 := 3;
variable score : integer range 0 to 26 := 0;

begin
	if(reset = '1') then
		score0 <= "110000";
		score1 <= "110000";
		score2 <= "110000";
		lives  <= "110011";
		score := 0;
		ball_y_pos <= CONV_STD_LOGIC_VECTOR(100, 10);
		ball_y_motion <= -CONV_STD_LOGIC_VECTOR(5,10);
		hit <= '0';
		life := 3; -- Sets initial number of lives to 3
		hit_temp <= '0';
		
	elsif(rising_edge(vert_sync) and pause = '0') then  -- every vertical sync = 699 * 524 / 25MHz = 0.015 sec
		-- Move ball once every vertical sync
		if (selected_mode = "001" or selected_mode = "010") then			
				
				if (pb1 = '1' and ball_y_pos > size) then -- moving up
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
				
				elsif (('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) or (ball_y_pos <= size and pb1 = '1'))then -- reach top with left button pressed or buttom, stop
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);

				else -- moving down when not clicking
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);		
				end if;
			
			-- Collision detection of bird with pipes (if bird touches a pipe, life decreases by 1)
			if ((
				(((ball_x_pos + size) >= (pipe_x_pos_1 - 35) and (ball_x_pos - size) <= (pipe_x_pos_1 + 35)) and
				 ((ball_y_pos - size) <= topheight_1 or (ball_y_pos + size) >= bottomheight_1)) or
				(((ball_x_pos + size) >= (pipe_x_pos_2 - 35) and (ball_x_pos - size) <= (pipe_x_pos_2 + 35)) and
				 ((ball_y_pos - size) <= topheight_2 or (ball_y_pos + size) >= bottomheight_2))
				) and hit_temp = '0') then
				hit_temp <= '1';
			end if;
			
			--collision detection of bird with ceiling or floor(if bird touches ceiling or floor, game is over)
			if (ball_y_pos >= CONV_STD_LOGIC_VECTOR(464, 10) or 
				 ball_y_pos <= CONV_STD_LOGIC_VECTOR(16, 10)) then
				hit <= '1';
			end if;
			
			--collision with the gift
			if (((ball_x_pos + size) >= (gift_x_pos - 7) and (ball_x_pos - size) <= (gift_x_pos + 7)) and
				 ((ball_y_pos - size) <= (gift_y_pos + 7) and (ball_y_pos + size) >= (gift_y_pos - 7) and touch_ball = '0')) then
				 touch_ball <= '1';
			end if;
			
			
			-- If a collision occurs, life decreases by one, motion of ball is reset
			if (hit_temp = '1') then
				life := life - 1;
				if (life > 0) then
					hit_temp <= '0';
				elsif (life = 0) then
					hit <= '1';
				end if;
			end if;
			
			if (touch_ball = '1') then
				life := life + 1 ;
				if (life < 9) then
					touch_ball <= '0';
				elsif (life > 9) then
					life := 9;
					touch_ball <= '0';
				end if;
			end if;
			
			if((ball_x_pos <= pipe_x_pos_1 and ball_x_pos <= pipe_x_pos_2) and score_check = '0') then --to make sure it increases score only once per pipe
				score_check := '1';
			end if;
			
			
			--updates the y position of the player
			ball_y_pos <= ball_y_pos + ball_y_motion;
			
			if (life = 1) then
				lives <= "110001";
			elsif (life = 2) then
				lives <= "110010";
			elsif (life = 3) then
				lives <= "110011";
			elsif (life = 4) then
				lives <= "110100";
			elsif (life = 5) then
				lives <= "110101";
			elsif (life = 6) then
				lives <= "110110";
			elsif (life = 7) then
				lives <= "110111";
			elsif (life = 8) then
				lives <= "111000";
			elsif (life = 9) then
				lives <= "111001";
			else
				lives <= "111001";
			end if;
			
			-- Logic to increase the score by one when the bird passes through a pipe 
			if ((ball_x_pos >= pipe_x_pos_1 or ball_x_pos >= pipe_x_pos_2) and score_check = '1') then
				score := score + 1;
				score2 <= score2 + 1;
				if(score2 = "111001") then
					score2 <= "110000";
					score1 <= score1 + 1;
					if(score1 = "111001") then
						score1 <= "110000";
						score0 <= score0 + 1;
						if(score0 = "111001") then
							score0 <= "110000";
						end if;
					end if;
				end if;
				score_check := '0';
			end if;
		end if;
	end if;
end process Move_Ball;

score0_out <= score0;
score1_out <= score1;
score2_out <= score2;

END behavior;

