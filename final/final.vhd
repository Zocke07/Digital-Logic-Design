library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity new_project is
  port (clock : in STD_LOGIC;
        red : out STD_LOGIC;
        green : out STD_LOGIC);
end new_project;
  
architecture Behavorial of new_project is
  signal count: integer range 0 to 100000000 := 0;
  signal state: integer range 0 to 1 := 0;

  begin
    process(clock)
    begin
      if rising_edge(clock) then
        case state is
        when 0 =>
          if (count = 50000000) then
            red <= '1';
            green <= '0';
            count <= 0;
            state <= 1;
          else count <= count + 1;
          end if;
        when 1 =>
           if (count = 50000000) then
             red <= '0';
             green <= '1';
             count <= 0;
             state <= 0;
           else count <= count + 1;
           end if;
        end case;
      end if;
    end process;
end Behavorial;
