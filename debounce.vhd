library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity debouncer is

port(clk, input : in std_logic;
	output : out std_logic
);
end entity;

architecture bounce of debouncer is
	begin
		process(clk)
		variable cnt : unsigned(7 downto 0) := "00000000";
		variable seconds: unsigned(16 downto 0) := (others => '0');
		-- 125000/(2.5*10^6) = 0.05 = 5ms = 0b11110100001001000‬ per increment
		begin
			if (rising_edge(clk)) then
				if input = '1' then -- mouse click
					if seconds = "11110100001001000" then
					seconds := (others => '0'); --reset seconds
							if cnt = X"A" then --count up to 10 times for 0.5 second (5 ms * 10)
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
end bounce;