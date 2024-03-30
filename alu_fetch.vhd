library ieee;
use ieee.std_logic_1164.all;
----------------------------------------------------------
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
----------------------------------------------------------
entity alu_fetch is port(
	reset: in std_logic;
	stop_run: in std_logic
);
end alu_fetch;

architecture behavior of alu_fetch is
----------OSCILADOR INTERNO-------------------------------
    component OSCH
        generic (NOM_FREQ: string);
        port (STDBY: in std_logic; OSC: out std_logic);
    end component;
    
    attribute NOM_FREQ: string;
    attribute NOM_FREQ of OSCinst0: label is "26.60";
----------------------------------------------------------
	component registro12 is port(
		clk : in std_logic;
		clr : in std_logic;
		load : in std_logic;
		data_in : in std_logic_vector(11 downto 0);
		data_out : out std_logic_vector(11 downto 0)
	);
	end component;
	
	component ROM is port(
		clk: in std_logic;
		clr: in std_logic;
		enable: in std_logic;
		read_m : in std_logic; 
		address: in std_logic_vector(4 downto 0);
		data_out : out std_logic_vector(23 downto 0)
	);
	end component;
	
signal clk: std_logic;

begin
-----------IMPLEMENTACION OSCILADOR INTERNO---------------
OSCinst0: OSCH generic map("26.60") port map('0', clk);
----------------------------------------------------------

--REGISTROS PARA DATAPATH--
PC: registro12 port map(clk,reset,1,,); --Program Counter
MAR: registro12 port map(clk,reset,1,,);--Memory Address Register
MBR: registro12 port map(clk,reset,1,,);--Memory Buffer Register 
IR: registro12 port map(clk,reset,1,,);--Instruction Register
ACC: registro12 port map(clk,reset,1,,);--Accumulator

--REGISTROS PROPOSITO GENERAL--
A: registro12 port map(clk,reset,1,,);
B: registro12 port map(clk,reset,1,,);
C: registro12 port map(clk,reset,1,,);
D: registro12 port map(clk,reset,1,,);

	process(clk,reset,stop_run)
		if(reset = '1') then
			
		elsif(stop_run = '1') then
		
		elsif(clk'event and clk='1') then
		
		end if;
	end process;
end behavior;