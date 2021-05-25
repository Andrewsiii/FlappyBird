LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

-- Logic of the gifts 

entity gifts is
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
end gifts;

architecture behaviour of gifts is	

--Adds a component of the LSFR which will be used to randomly determine the location of the gift
component LFSR is
port
(
    clk : in std_logic;
    reset : in std_logic;
    output : out std_logic_vector(8 downto 0)
);
end component LFSR;	

SIGNAL gift_y_pos : std_logic_vector(9 downto 0);
SIGNAL gift_x_pos : std_logic_vector(10 downto 0) := conv_std_logic_vector(960, 11);
SIGNAL randnum : std_logic_vector(8 downto 0) := conv_std_logic_vector(200, 9);
SIGNAL LFSR_reset : std_logic := '0';
SIGNAL size : std_logic_vector(9 downto 0) := conv_std_logic_vector(14, 10);
SIGNAL gift_x_motion : std_logic_vector(10 downto 0) := conv_std_logic_vector(5, 11);

begin

gift_out <= '1' when ( ('0' & gift_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & gift_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
			and ('0' & gift_y_pos <= pixel_row + size) and ('0' & pixel_row <= gift_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
	'0';
		
rand: LFSR port map (clk, LFSR_reset, randnum);		

gift_motion: process(vert_sync, reset, selected_mode)
begin	

	if(reset = '1') then
		gift_x_pos <= conv_std_logic_vector(960, 11);
		gift_x_motion <= conv_std_logic_vector(5, 11);
		gift_y_pos <= ('0' & randnum + randnum(4 downto 2));
		
	elsif(rising_edge(vert_sync) and pause = '0') then		
		if (selected_mode = "010" or selected_mode = "001") then
			gift_x_pos <= gift_x_pos - gift_x_motion;
			if(touch_ball = '1') then
				gift_x_pos <= conv_std_logic_vector(960, 11);
				gift_y_pos <= ('0' & randnum + randnum(4 downto 2));
			end if;
		end if;
	end if;
end process gift_motion;

gift_x_position <= gift_x_pos;
gift_y_position <= gift_y_pos;

end behaviour;

