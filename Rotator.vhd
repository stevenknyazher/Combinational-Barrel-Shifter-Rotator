library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Rotator is
    Port ( a : in STD_LOGIC_VECTOR (15 downto 0);
           amt : in STD_LOGIC_VECTOR (3 downto 0);
           y : out STD_LOGIC_VECTOR (15 downto 0));
end Rotator;

architecture Behavioral of Rotator is

component MUX_2x1 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           sel : in STD_LOGIC;
           output : out STD_LOGIC);
end component MUX_2x1;

signal S1_O : std_logic_vector (15 downto 0);
signal S2_O : std_logic_vector (15 downto 0);
signal S3_O : std_logic_vector (15 downto 0);
signal S4_O : std_logic_vector (15 downto 0);

begin

S1_MUX16: MUX_2x1 port map (in1 => a(0), in2 => a(15), sel => amt(0), output => S1_O(15));
S1_MUX15: MUX_2x1 port map (in1 => a(15), in2 => a(15 - 1), sel => amt(0), output => S1_O(14));
S1_MUX14: MUX_2x1 port map (in1 => a(14), in2 => a(14 - 1), sel => amt(0), output => S1_O(13));
S1_MUX13: MUX_2x1 port map (in1 => a(13), in2 => a(13 - 1), sel => amt(0), output => S1_O(12));
S1_MUX12: MUX_2x1 port map (in1 => a(12), in2 => a(12 - 1), sel => amt(0), output => S1_O(11));
S1_MUX11: MUX_2x1 port map (in1 => a(11), in2 => a(11 - 1), sel => amt(0), output => S1_O(10));
S1_MUX10: MUX_2x1 port map (in1 => a(10), in2 => a(10 - 1), sel => amt(0), output => S1_O(9));
S1_MUX9: MUX_2x1 port map (in1 => a(9), in2 => a(9 - 1), sel => amt(0), output => S1_O(8));
S1_MUX8: MUX_2x1 port map (in1 => a(8), in2 => a(8 - 1), sel => amt(0), output => S1_O(7));
S1_MUX7: MUX_2x1 port map (in1 => a(7), in2 => a(7 - 1), sel => amt(0), output => S1_O(6));
S1_MUX6: MUX_2x1 port map (in1 => a(6), in2 => a(6 - 1), sel => amt(0), output => S1_O(5));
S1_MUX5: MUX_2x1 port map (in1 => a(5), in2 => a(5 - 1), sel => amt(0), output => S1_O(4));
S1_MUX4: MUX_2x1 port map (in1 => a(4), in2 => a(4 - 1), sel => amt(0), output => S1_O(3));
S1_MUX3: MUX_2x1 port map (in1 => a(3), in2 => a(3 - 1), sel => amt(0), output => S1_O(2));
S1_MUX2: MUX_2x1 port map (in1 => a(2), in2 => a(2 - 1), sel => amt(0), output => S1_O(1));
S1_MUX1: MUX_2x1 port map (in1 => a(1), in2 => a(1 - 1), sel => amt(0), output => S1_O(0));

S2_MUX16: MUX_2x1 port map (in1 => S1_O(1), in2 => S1_O(15), sel => amt(1), output => S2_O(15));
S2_MUX15: MUX_2x1 port map (in1 => S1_O(0), in2 => S1_O(15 - 1), sel => amt(1), output => S2_O(14));
S2_MUX14: MUX_2x1 port map (in1 => S1_O(15), in2 => S1_O(15 - 2), sel => amt(1), output => S2_O(13));
S2_MUX13: MUX_2x1 port map (in1 => S1_O(14), in2 => S1_O(14 - 2), sel => amt(1), output => S2_O(12));
S2_MUX12: MUX_2x1 port map (in1 => S1_O(13), in2 => S1_O(13 - 2), sel => amt(1), output => S2_O(11));
S2_MUX11: MUX_2x1 port map (in1 => S1_O(12), in2 => S1_O(12 - 2), sel => amt(1), output => S2_O(10));
S2_MUX10: MUX_2x1 port map (in1 => S1_O(11), in2 => S1_O(11 - 2), sel => amt(1), output => S2_O(9));
S2_MUX9: MUX_2x1 port map (in1 => S1_O(10), in2 => S1_O(10 - 2), sel => amt(1), output => S2_O(8));
S2_MUX8: MUX_2x1 port map (in1 => S1_O(9), in2 => S1_O(9 - 2), sel => amt(1), output => S2_O(7));
S2_MUX7: MUX_2x1 port map (in1 => S1_O(8), in2 => S1_O(8 - 2), sel => amt(1), output => S2_O(6));
S2_MUX6: MUX_2x1 port map (in1 => S1_O(7), in2 => S1_O(7 - 2), sel => amt(1), output => S2_O(5));
S2_MUX5: MUX_2x1 port map (in1 => S1_O(6), in2 => S1_O(6 - 2), sel => amt(1), output => S2_O(4));
S2_MUX4: MUX_2x1 port map (in1 => S1_O(5), in2 => S1_O(5 - 2), sel => amt(1), output => S2_O(3));
S2_MUX3: MUX_2x1 port map (in1 => S1_O(4), in2 => S1_O(4 - 2), sel => amt(1), output => S2_O(2));
S2_MUX2: MUX_2x1 port map (in1 => S1_O(3), in2 => S1_O(3 - 2), sel => amt(1), output => S2_O(1));
S2_MUX1: MUX_2x1 port map (in1 => S1_O(2), in2 => S1_O(2 - 2), sel => amt(1), output => S2_O(0));

S3_MUX16: MUX_2x1 port map (in1 => S2_O(3), in2 => S2_O(15), sel => amt(2), output => S3_O(15));
S3_MUX15: MUX_2x1 port map (in1 => S2_O(2), in2 => S2_O(15 - 1), sel => amt(2), output => S3_O(14));
S3_MUX14: MUX_2x1 port map (in1 => S2_O(1), in2 => S2_O(15 - 2), sel => amt(2), output => S3_O(13));
S3_MUX13: MUX_2x1 port map (in1 => S2_O(0), in2 => S2_O(15 - 3), sel => amt(2), output => S3_O(12));
S3_MUX12: MUX_2x1 port map (in1 => S2_O(15), in2 => S2_O(15 - 4), sel => amt(2), output => S3_O(11));
S3_MUX11: MUX_2x1 port map (in1 => S2_O(14), in2 => S2_O(14 - 4), sel => amt(2), output => S3_O(10));
S3_MUX10: MUX_2x1 port map (in1 => S2_O(13), in2 => S2_O(13 - 4), sel => amt(2), output => S3_O(9));
S3_MUX9: MUX_2x1 port map (in1 => S2_O(12), in2 => S2_O(12 - 4), sel => amt(2), output => S3_O(8));
S3_MUX8: MUX_2x1 port map (in1 => S2_O(11), in2 => S2_O(11 - 4), sel => amt(2), output => S3_O(7));
S3_MUX7: MUX_2x1 port map (in1 => S2_O(10), in2 => S2_O(10 - 4), sel => amt(2), output => S3_O(6));
S3_MUX6: MUX_2x1 port map (in1 => S2_O(9), in2 => S2_O(9 - 4), sel => amt(2), output => S3_O(5));
S3_MUX5: MUX_2x1 port map (in1 => S2_O(8), in2 => S2_O(8 - 4), sel => amt(2), output => S3_O(4));
S3_MUX4: MUX_2x1 port map (in1 => S2_O(7), in2 => S2_O(7 - 4), sel => amt(2), output => S3_O(3));
S3_MUX3: MUX_2x1 port map (in1 => S2_O(6), in2 => S2_O(6 - 4), sel => amt(2), output => S3_O(2));
S3_MUX2: MUX_2x1 port map (in1 => S2_O(5), in2 => S2_O(5 - 4), sel => amt(2), output => S3_O(1));
S3_MUX1: MUX_2x1 port map (in1 => S2_O(4), in2 => S2_O(4 - 4), sel => amt(2), output => S3_O(0));

S4_MUX16: MUX_2x1 port map (in1 => S3_O(7), in2 => S3_O(15), sel => amt(3), output => y(15));
S4_MUX15: MUX_2x1 port map (in1 => S3_O(6), in2 => S3_O(15 - 1), sel => amt(3), output => y(14));
S4_MUX14: MUX_2x1 port map (in1 => S3_O(5), in2 => S3_O(15 - 2), sel => amt(3), output => y(13));
S4_MUX13: MUX_2x1 port map (in1 => S3_O(4), in2 => S3_O(15 - 3), sel => amt(3), output => y(12));
S4_MUX12: MUX_2x1 port map (in1 => S3_O(3), in2 => S3_O(15 - 4), sel => amt(3), output => y(11));
S4_MUX11: MUX_2x1 port map (in1 => S3_O(2), in2 => S3_O(15 - 5), sel => amt(3), output => y(10));
S4_MUX10: MUX_2x1 port map (in1 => S3_O(1), in2 => S3_O(15 - 6), sel => amt(3), output => y(9));
S4_MUX9: MUX_2x1 port map (in1 => S3_O(0), in2 => S3_O(15 - 7), sel => amt(3), output => y(8));
S4_MUX8: MUX_2x1 port map (in1 => S3_O(15), in2 => S3_O(15 - 8), sel => amt(3), output => y(7));
S4_MUX7: MUX_2x1 port map (in1 => S3_O(14), in2 => S3_O(14 - 8), sel => amt(3), output => y(6));
S4_MUX6: MUX_2x1 port map (in1 => S3_O(13), in2 => S3_O(13 - 8), sel => amt(3), output => y(5));
S4_MUX5: MUX_2x1 port map (in1 => S3_O(12), in2 => S3_O(12 - 8), sel => amt(3), output => y(4));
S4_MUX4: MUX_2x1 port map (in1 => S3_O(11), in2 => S3_O(11 - 8), sel => amt(3), output => y(3));
S4_MUX3: MUX_2x1 port map (in1 => S3_O(10), in2 => S3_O(10 - 8), sel => amt(3), output => y(2));
S4_MUX2: MUX_2x1 port map (in1 => S3_O(9), in2 => S3_O(9 - 8), sel => amt(3), output => y(1));
S4_MUX1: MUX_2x1 port map (in1 => S3_O(8), in2 => S3_O(8 - 8), sel => amt(3), output => y(0));

end Behavioral;
