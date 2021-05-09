library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.numeric_std.all;

entity BCD_Counter is
    port (Clk, Enable : in std_logic;
		    Q_Ones, Q_Tens: out std_logic_vector(3 downto 0));
end entity;

architecture count of BCD_Counter is
  begin
      process(Clk, Enable)
      variable Q : integer range 0 to 99 := 0;
      begin
          if (rising_edge(Clk)) then
              if (Enable = '1') then
                  if (Q < 99) then
                       Q:= Q + 1;
                  else
                       Q:= 0;
                  end if;
               end if; 
           end if;
          Q_Ones <= std_logic_vector(to_unsigned(Q mod 10, 4));
			 Q_Tens <= std_logic_vector(to_unsigned(Q/10, 4));
      end process;
end architecture count;