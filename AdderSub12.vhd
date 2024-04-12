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
        B_mod <= not B;  -- Complemento de B para la resta
        intermediate_carry(0) <= '1';  -- Iniciar con un acarreo de '1' para sumar al complemento de B
    else 
        B_mod <= B;
        intermediate_carry(0) <= CarryIn;  -- Usar el acarreo de entrada para la suma
    end if;
end process;

Gen_SumRest: for i in 0 to 11 generate
begin
    -- La suma (o resta) se realiza igual para cada bit
    SumRest(i) <= A(i) xor B_mod(i) xor intermediate_carry(i);
    intermediate_carry(i+1) <= (A(i) and B_mod(i)) or (A(i) and intermediate_carry(i)) or (B_mod(i) and intermediate_carry(i));
end generate;

CarryOut <= intermediate_carry(12) xor Op;  -- Ajuste para la operación de resta

end Behavioral;