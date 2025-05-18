library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity halfadder is
port ( 
a_i 	: in std_logic;
b_i 	: in std_logic;
sum_o 	: out std_logic;
carry_o : out std_logic
);
end halfadder;

architecture Behavioral of halfadder is

begin

sum_o	<= A_i xor B_i;
carry_o	<= A_i and B_i;

end Behavioral;