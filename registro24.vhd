library ieee;
use ieee.std_logic_1164.all;

entity registro24 is port(
	clk : in std_logic;
	clr : in std_logic;
	load : in std_logic;
	data_in : in std_logic_vector(23 downto 0);
	data_out : out std_logic_vector(23 downto 0)
);
end registro24;

architecture a_registro12 of registro12 is
	signal registro : std_logic_vector(23 downto 0);
begin
	process(clk)
	begin
		if(clr='1') then
			registro<=(others=>'0');
		elsif(clk'event and clk='1') then
			if(load = '1') then
				registro<=data_in;
			end if;
		end if;
	end process;
	data_out <=registro;
end a_registro24;