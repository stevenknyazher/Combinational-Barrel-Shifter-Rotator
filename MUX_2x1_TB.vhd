library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1_TB is
--  Port ( );
end MUX_2x1_TB;

architecture Behavioral of MUX_2x1_TB is

component MUX_2x1 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           sel : in STD_LOGIC;
           output : out STD_LOGIC);
end component MUX_2x1;

signal in1_TB : std_logic;
signal in2_TB : std_logic;
signal sel_TB : std_logic;
signal output_TB : std_logic;

begin

uut: MUX_2x1 port map (in1 => in1_TB, in2 => in2_TB, sel => sel_TB, output => output_TB);

process
begin
in1_TB <= '0';
wait for 20 ns;
in1_TB <= '1';
wait for 30 ns;
in1_TB <= '0';
wait for 50 ns;
in1_TB <= '1';
wait for 40 ns;
in1_TB <= '0';
wait;
end process;

process
begin
in2_TB <= '0';
wait for 30 ns;
in2_TB <= '1';
wait for 50 ns;
in2_TB <= '0';
wait for 20 ns;
in2_TB <= '1';
wait for 40 ns;
in2_TB <= '0';
wait;
end process;

process
begin
sel_TB <= '0';
wait for 10 ns;
sel_TB <= '1';
wait for 60 ns;
sel_TB <= '0';
wait for 30 ns;
sel_TB <= '1';
wait for 40 ns;
sel_TB <= '0';
wait;
end process;

end Behavioral;
