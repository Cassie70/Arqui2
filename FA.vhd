library ieee;
use ieee.std_logic_1164.all;

entity FA is port(
		A,B,cin: in std_logic;
		S,cout: inout std_logic
	);
end FA;

architecture a_FA of FA is
	
begin
	process(A,B,cin,S,cout)
	begin
		if(cin = '0') then
			S<=A xor B;
			cout<= A and B;
		else
			S<= A xnor B;
			cout<= A or B;
		end if;
	end process;
end a_FA;