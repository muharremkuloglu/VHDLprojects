library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity fulladder is
port ( 
    a_i        : in std_logic;
    b_i        : in std_logic;
    carry_i    : in std_logic;
    sum_out    : out std_logic;
    carry_out  : out std_logic
);
end fulladder;

architecture Behavioral of fulladder is

    -- COMPONENT DECLARATION
    component halfadder is
        port ( 
            a_i     : in std_logic;
            b_i     : in std_logic;
            sum_o   : out std_logic;
            carry_o : out std_logic
        );
    end component;

    -- SIGNALS
    signal first_sum     : std_logic := '0';
    signal first_carry   : std_logic := '0';
    signal second_carry  : std_logic := '0';

begin

    -- COMPONENT INSTANTIATION
    first_half_adder : halfadder
        port map( 
            a_i     => a_i,
            b_i     => b_i,
            sum_o   => first_sum,
            carry_o => first_carry
        );

    second_half_adder : halfadder
        port map( 
            a_i     => first_sum,
            b_i     => carry_i,
            sum_o   => sum_out,
            carry_o => second_carry
        );

    -- FINAL CARRY OUTPUT
    carry_out <= first_carry or second_carry;

end Behavioral;
