library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX_2x1 is
    Port ( in1 : in STD_LOGIC;
           in2 : in STD_LOGIC;
           sel : in STD_LOGIC;
           output : out STD_LOGIC);
end MUX_2x1;

architecture Behavioral of MUX_2x1 is

begin
  
    output <= (in1 and sel) or (in2 and not sel);
  
end Behavioral;
