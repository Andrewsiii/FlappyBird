library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is

port(clk, input : in std_logic;
	output : out std_logic
);
end entity;

architecture bhv of debouncer is
	begin
		process(clk)
		variable cnt : unsigned(7 downto 0) := "00000000";
		variable seconds: unsigned(16 downto 0) := (others => '0');
		--the number of clock cycles per increment is 125000 for a time value of 5ms = 0b11110100001001000‬ per increment
		begin
			if (rising_edge(clk)) then
				if input = '1' then -- mouse click
					if seconds = "11110100001001000" then
					seconds := (others => '0'); --reset seconds
							if cnt = X"16" then --count up to 100 times in dec for 0.5 second
								output <= '1';
								cnt := X"00";
							else
								cnt := cnt + 1;
							end if;
						else
							seconds := seconds + 1;
						end if;
				else --reset counters
					seconds := (others => '0');
					cnt := (others => '0');
					output <= '0';
				end if;
			end if;
		end process;
end bhv;