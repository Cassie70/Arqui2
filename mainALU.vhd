LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;

entity compALU is port(
	clk: inout std_logic;
	data: in std_logic_vector(11 downto 0);
	control: in std_logic_vector(3 downto 0);
	load: in std_logic;
	result: out std_logic_vector(11 downto 0);
	overflow: out std_logic;
	outreg: out std_logic_vector(11 downto 0)
);
end compALU;

architecture a_compALU of compALU is

	component OSCH
		generic (NOM_FREQ: string);
		port (STDBY: in std_logic; OSC: out std_logic);
	end component;
	
	attribute NOM_FREQ: string;
	attribute NOM_FREQ of OSCinst0: label is "26.60";

	component alu is port(
		A,B: in std_logic_vector(11 downto 0);
		control: in std_logic_vector(3 downto 0);
		result: out std_logic_vector(11 downto 0);
		overflow: out std_logic
	);
	end component;
	
	component registro12 is port(
		clk : in std_logic;
		load : in std_logic;
		data_in : in std_logic_vector(11 downto 0);
		data_out : out std_logic_vector(11 downto 0)
	);
	end component;
	
	signal A: std_logic_vector(11 downto 0);
begin

	OSCinst0: OSCH
	generic map("26.60")
	port map ('0', clk);

	imp_reg: registro12 port map(clk,load,data,A);
	imp_alu: alu port map(A,data,control,result,overflow);
	outreg<= A;
end a_compALU;