library ieee;
use ieee.std_logic_1164.all;

entity new_project is
    Port ( SW : in  STD_LOGIC_VECTOR (7 downto 0);
           HEX0 : out  STD_LOGIC_VECTOR (6 downto 0));
end new_project;

architecture Behavioral of new_project is
begin

    process(SW)
    begin
			if (SW(7) = '1') then HEX0 <= "1111000";
			elsif (SW(6) = '1') then HEX0 <= "0000010";
			elsif (SW(5) = '1') then HEX0 <= "0010010";
			elsif (SW(4) = '1') then HEX0 <= "0011001";
			elsif (SW(3) = '1') then HEX0 <= "0110000";
			elsif (SW(2) = '1') then HEX0 <= "0100100";
			elsif (SW(1) = '1') then HEX0 <= "1111001";
			elsif (SW(0) = '1') then HEX0 <= "1000000"; 
			else HEX0 <= "1111111";
			end if;
    end process;

end Behavioral;
