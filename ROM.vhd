library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;

entity ROM is port(
	clk: in std_logic;
	clr: in std_logic;
	enable: in std_logic;
	read_m : in std_logic; 
	address: in std_logic_vector(4 downto 0);
	data_out : out std_logic_vector(23 downto 0)
);
end ROM;

architecture a_ROM of ROM is
	
	constant OP_ADD8: std_logic_vector(5 downto 0):=  "000000";
	constant OP_SUB8: std_logic_vector(5 downto 0):=  "000001";
	constant OP_AND: std_logic_vector(5 downto 0):=   "000010";
	constant OP_AINC: std_logic_vector(5 downto 0):=  "000011";
	constant OP_ADEC: std_logic_vector(5 downto 0):=  "000100";
	constant OP_BINC: std_logic_vector(5 downto 0):=  "000101";
	constant OP_BDEC: std_logic_vector(5 downto 0):=  "000110";
	constant OP_ADD: std_logic_vector(5 downto 0):=   "000111";
	constant OP_SUB: std_logic_vector(5 downto 0):=   "001000";
	constant OP_AND: std_logic_vector(5 downto 0):=   "001001";
	constant OP_OR: std_logic_vector(5 downto 0):=    "001010";
	constant OP_XOR: std_logic_vector(5 downto 0):=   "001011";
	constant OP_COMP1: std_logic_vector(5 downto 0):= "001100";
	constant OP_COMP2: std_logic_vector(5 downto 0):= "001101";
	constant OP_MULT: std_logic_vector(5 downto 0):=  "001110";
	constant OP_DIV: std_logic_vector(5 downto 0):=   "001111";
	constant OP_LSL: std_logic_vector(5 downto 0):=   "010000";
	constant OP_LOAD: std_logic_vector(5 downto 0):=  "010001";
	constant OP_MOV: std_logic_vector(5 downto 0):=   "010010";
	constant OP_HALF: std_logic_vector(5 downto 0):=  "010011";
	constant OP_BNZ: std_logic_vector(5 downto 0):=   "010100";
	constant OP_BZ: std_logic_vector(5 downto 0):=    "010101";
	constant OP_NOP: std_logic_vector(5 downto 0):=   "010110";
	constant OP_JMP: std_logic_vector(5 downto 0):=   "010111";
	
	type ROM_Array is array (0 to 31) of std_logic_vector(23 downto 0);
	constant content: ROM_Array:=(
		0=>,
		1=>,
		2=>,
		3=>,
		others=>"1111111";
	);
begin
	process(clk,clr,read_m, address)
	begin
		if(clr='1') then	
			data_out<="ZZZZZZZ";
		elsif(clk'event and clk='1') then
			if(enable='1') then 
				if(read_m='1') then
					data_out<=content(conv_integer(address)):
				else
					data_out<="ZZZZZZZ";
				end if;
			end if;
		end if;
	end process;
en a_ROM;
					