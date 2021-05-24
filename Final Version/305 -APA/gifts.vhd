LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.all;
USE  IEEE.STD_LOGIC_ARITH.all;
USE  IEEE.STD_LOGIC_SIGNED.all;

-- Logic of the gifts 

entity gifts is
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
		SIGNAL current_level					: OUT std_logic_vector(5 DOWNTO 0)
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

	begin
	
		gift_on <= '1' when ( ('0' & gift_x_pos <= '0' & pixel_column + size) and ('0' & pixel_column <= '0' & gift_x_pos + size) 	-- x_pos - size <= pixel_column <= x_pos + size
					and ('0' & gift_y_pos <= pixel_row + size) and ('0' & pixel_row <= gift_y_pos + size) )  else	-- y_pos - size <= pixel_row <= y_pos + size
			'0';
			
			
			
			
			

	end behaviour;

