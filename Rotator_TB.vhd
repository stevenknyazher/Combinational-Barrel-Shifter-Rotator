library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rotator_TB is
--  Port ( );
end Rotator_TB;

architecture Behavioral of Rotator_TB is

component Rotator is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           amt : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (15 downto 0));
end component Rotator;

signal a_TB : std_logic_vector (15 downto 0);
signal amt_TB : std_logic_vector (3 downto 0);
signal y_TB : std_logic_vector (15 downto 0);

begin

uut: Rotator port map (a => a_TB, amt => amt_TB, y => y_TB);

process
begin
a_TB <= "0101011110111101";
wait for 20 ns;
a_TB <= "0011001111000111";
wait for 30 ns;
a_TB <= "0111101100010111";
wait for 50 ns;
a_TB <= "1000000101110011";
wait for 40 ns;
a_TB <= "1110001000010011";
wait;
end process;

process
begin
amt_TB <= "1011";
wait for 30 ns;
amt_TB <= "0010";
wait for 50 ns;
amt_TB <= "0101";
wait for 20 ns;
amt_TB <= "1110";
wait for 40 ns;
amt_TB <= "1001";
wait;
end process;

end Behavioral;
