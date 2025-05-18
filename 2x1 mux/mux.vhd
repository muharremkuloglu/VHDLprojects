library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux is
    Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC;
           s : in STD_LOGIC);
end mux;

architecture Behavioral of mux is

signal x :  std_logic; -- ara sinyal tanımladım


begin

x <= a when s = '0' else b; -- ara sinyale işlemi yaptırıyoruz
c <= x; -- ara sinyali çıkışa aktarıyoruz

end Behavioral;
