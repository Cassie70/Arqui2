library ieee;
use ieee.std_logic_1164.all;

entity add_sub_12 is port(
		A,B: in std_logic_vector(11 downto 0);
		sub: in std_logic;
		S: inout std_logic_vector(11 downto 0);
		cout: out std_logic
	);
end add_sub_12;

architecture A_add_sub_12 of add_sub_12 is
	
component FA is
	port(
		A,B,cin: in std_logic;
		S,cout: inout std_logic
	);
end component;

signal carry: std_logic_vector(12 downto 0);
begin

	carry(0)<=sub;
	gen_addsub : for i in 0 to 11 generate
		bit_FA: FA port map(
			A=>A(i),
			B=>B(i) xor sub,
			cin=>carry(i),
			S=>S(i),
			cout=>carry(i+1)
		);
	end generate gen_addsub;
	cout <= carry(12);
end A_add_sub_12;

