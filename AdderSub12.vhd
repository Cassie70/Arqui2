library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity SumRest12Bits is
    Port (
        A : in STD_LOGIC_VECTOR(11 downto 0);
        B : in STD_LOGIC_VECTOR(11 downto 0);
        SumRest : out STD_LOGIC_VECTOR(11 downto 0);
        CarryIn : in STD_LOGIC;
        Op : in STD_LOGIC; 
        CarryOut : out STD_LOGIC
    );
end SumRest12Bits;

architecture Behavioral of SumRest12Bits is

signal intermediate_carry : STD_LOGIC_VECTOR(12 downto 0);
signal B_mod : STD_LOGIC_VECTOR(11 downto 0);

begin

Process(A, B, Op)
begin
    if Op = '1' then  
        B_mod <= not B;
    else 
        B_mod <= B;
    end if;
end process;


intermediate_carry(0) <= CarryIn;


Gen_SumRest: for i in 0 to 11 generate
begin
    SumRest(i) <= A(i) xor B_mod(i) xor intermediate_carry(i);
    intermediate_carry(i+1) <= (A(i) and B_mod(i)) or (A(i) and intermediate_carry(i)) or (B_mod(i) and intermediate_carry(i));
end generate;

CarryOut <= intermediate_carry(12) xor Op; 

end Behavioral;