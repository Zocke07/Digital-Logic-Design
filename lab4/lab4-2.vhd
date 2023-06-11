library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity new_example is
  Port ( SW : in  STD_LOGIC_VECTOR(7 downto 0);
         HEX0, HEX1 : out  STD_LOGIC_VECTOR(6 downto 0));
end new_example;


architecture Behavioral of new_example is
  signal x, y : unsigned(3 downto 0);
  signal product : unsigned(7 downto 0);
  signal result : integer range 0 to 99;
  
  function bcd (n: integer) return STD_LOGIC_VECTOR is
  begin
    case n is
      when 0 => return "1000000";
      when 1 => return "1111001";
      when 2 => return "0100100";
      when 3 => return "0110000";
      when 4 => return "0011001";
      when 5 => return "0010010";
      when 6 => return "0000010";
      when 7 => return "1111000";
      when 8 => return "0000000";
      when 9 => return "0010000";
      when others => return "1111111";
    end case;
  end function bcd;
  
begin
  x <= unsigned(SW(3 downto 0));
  y <= unsigned(SW(7 downto 4));
  product <= x * y;
  result <= to_integer(product);
  HEX0 <= bcd(result mod 10);
  HEX1 <= bcd(result / 10);
end Behavioral;
