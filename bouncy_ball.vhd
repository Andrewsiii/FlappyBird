LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;


ENTITY bouncy_ball IS
	PORT
		(SIGNAL pb1, pb2, clk, vert_sync, sw0	: IN std_logic;
		SIGNAL left_button					: IN std_logic; -- when mouse clicking, ball will bounce up
        SIGNAL pixel_row, pixel_column		: IN std_logic_vector(9 DOWNTO 0);
		SIGNAL red, green, blue 			: OUT std_logic);		
END bouncy_ball;

architecture behavior of bouncy_ball is

SIGNAL ball_on					: std_logic;
SIGNAL size 					: std_logic_vector(9 DOWNTO 0);  
SIGNAL ball_y_pos				: std_logic_vector(9 DOWNTO 0);
SiGNAL ball_x_pos				: std_logic_vector(10 DOWNTO 0);
SIGNAL ball_y_motion			: std_logic_vector(9 DOWNTO 0);

BEGIN           

size <= CONV_STD_LOGIC_VECTOR(8,10);
ball_x_pos <= CONV_STD_LOGIC_VECTOR(100,11);

ball_on <= '1' when ( ('0' & ball_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & ball_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & ball_y_pos <= pixel_row + size) and ('0' & pixel_row <= ball_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';


-- Colours for pixel data on video signal
-- Changing the background and ball colour by pushbuttons
Red <=  not pb1;
Green <= pb2 and (not ball_on);
Blue <=  not ball_on;


Move_Ball: process (vert_sync)  	
begin
	-- VGA 640 x 480
	-- Move ball once every vertical sync
	if (rising_edge(vert_sync)) then
		-- (The & operator is used to concatenate (join) arrays, or join new elements to an array, ball_y_pos has nine bits, it will compare with ten bits number)
		case sw0 is
			when '0' =>
				if (left_button = '1' and ball_y_pos > size) then -- moving up
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(2,10);
				
				elsif (('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) or (ball_y_pos <= size and left_button = '1'))then -- reach top with left button pressed or buttom, stop
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);

				else -- moving down when not clicking
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(2,10);		
				end if;
			when '1' => --when the sw0 is high, increase speed of ball moving up and down
				if (left_button = '1' and ball_y_pos > size) then -- moving up
					ball_y_motion <= - CONV_STD_LOGIC_VECTOR(5,10);
				
				elsif (('0' & ball_y_pos >= CONV_STD_LOGIC_VECTOR(479,10) - size) or (ball_y_pos <= size and left_button = '1'))then -- reach top with left button pressed or buttom, stop
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(0,10);

				else -- moving down when not clicking
					ball_y_motion <= CONV_STD_LOGIC_VECTOR(5,10);		
				end if;
		end case;

		-- Compute next ball Y position
		ball_y_pos <= ball_y_pos + ball_y_motion;
	end if;
end process Move_Ball;

END behavior;

