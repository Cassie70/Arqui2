library ieee;
use ieee.std_logic_1164.all;

entity multi6 is port(
        A, B: in std_logic_vector(11 downto 0);
        result: out std_logic_vector(11 downto 0)
    );
end multi6;

architecture a_multi6 of multi6 is
	component SumRest12Bits is Port (
			A : in STD_LOGIC_VECTOR(11 downto 0);
			B : in STD_LOGIC_VECTOR(11 downto 0);
			Op : in STD_LOGIC;
			CarryIn : in STD_LOGIC;
			SumRest : out STD_LOGIC_VECTOR(11 downto 0);
			CarryOut : out STD_LOGIC);
    end component;

    signal v1, v2, v3, v4, v5, v6: std_logic_vector(11 downto 0);
    signal v12, v34, v56, v12_34, v1234_56: std_logic_vector(11 downto 0);
begin
    v1 <= "000000" & (A(5) and B(0)) & (A(4) and B(0)) & (A(3) and B(0)) & (A(2) and B(0)) & (A(1) and B(0)) & (A(0) and B(0));
    v2 <= "00000" & (A(5) and B(1)) & (A(4) and B(1)) & (A(3) and B(1)) & (A(2) and B(1)) & (A(1) and B(1)) & (A(0) and B(1)) & "0";
    v3 <= "0000" & (A(5) and B(2)) & (A(4) and B(2)) & (A(3) and B(2)) & (A(2) and B(2)) & (A(1) and B(2)) & (A(0) and B(2)) & "00";
    v4 <= "000" & (A(5) and B(3)) & (A(4) and B(3)) & (A(3) and B(3)) & (A(2) and B(3)) & (A(1) and B(3)) & (A(0) and B(3)) & "000";
    v5 <= "00" & (A(5) and B(4)) & (A(4) and B(4)) & (A(3) and B(4)) & (A(2) and B(4)) & (A(1) and B(4)) & (A(0) and B(4)) & "0000";
    v6 <= "0" & (A(5) and B(5)) & (A(4) and B(5)) & (A(3) and B(5)) & (A(2) and B(5)) & (A(1) and B(5)) & (A(0) and B(5)) & "00000";
    
    adder1: SumRest12Bits port map(A => v1, B => v2, op => '0',CarryIn=>'0' ,SumRest => v12, CarryOut => open);
    adder2: SumRest12Bits port map(A => v3, B => v4, op => '0',CarryIn=>'0' ,SumRest => v34, CarryOut => open);
    adder3: SumRest12Bits port map(A => v5, B => v6, op => '0', CarryIn=>'0',SumRest => v56, CarryOut => open);
    adder4: SumRest12Bits port map(A => v12, B => v34, op => '0',CarryIn=>'0',SumRest => v12_34, CarryOut => open);
    adder5: SumRest12Bits port map(A => v12_34, B => v56, op => '0',CarryIn=>'0' ,SumRest => v1234_56, CarryOut => open);

    result <= v1234_56;
end a_multi6;