library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
----------------------------------------------------------
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
----------------------------------------------------------
entity alu_fetch is port(
	reset: in std_logic;
	stop_run: in std_logic;
	display: out std_logic_vector(6 downto 0);
	sel: out std_logic_vector(3 downto 0);
	CI: out std_logic_vector(23 downto 0)
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

	component ROM is port(
		clk: in std_logic;
		clr: in std_logic;
		enable: in std_logic;
		read_m : in std_logic; 
		address: in std_logic_vector(7 downto 0);
		data_out : out std_logic_vector(23 downto 0)
	);
	end component;
	
	component alu is port(
		clk: in std_logic;
		A,B: in std_logic_vector(11 downto 0);
		control: in std_logic_vector(3 downto 0);
		result: out std_logic_vector(11 downto 0);
		overflow: out std_logic
	);
	end component;
	
	component registrosPG is Port ( 
		clk      : in  STD_LOGIC;
	   reset    : in  STD_LOGIC;
	   enable   : in  STD_LOGIC;
	   data_in  : in  STD_LOGIC_VECTOR (23 downto 0);
	   selector : in  STD_LOGIC_VECTOR (1 downto 0);
	   data_out : out STD_LOGIC_VECTOR (23 downto 0));
	end component;
	
	component bcdDisplay is port(
		CLK,CLR: IN STD_LOGIC;
		E: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		DISPLAY:INOUT STD_LOGIC_VECTOR(6 DOWNTO 0)	
		);
	end component;

	component Bin2BCD is port(
		clr: in std_logic;
        bin_in : IN STD_LOGIC_VECTOR(13 DOWNTO 0);
        bcd_out   : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
	end component;

signal clk: std_logic;
signal clk_0: std_logic:='0';
signal Rdisplay: std_logic_vector(13 downto 0):=(others=>'0');
signal Qbcd: std_logic_vector(15 downto 0);
signal temp_control: std_logic_vector(3 downto 0);
signal un,de,ce,mi: std_logic_vector(6 downto 0);

--REGISTROS PARA DATAPATH--
signal PC: std_logic_vector(7 downto 0):="00000000";
signal MAR: std_logic_vector(7 downto 0):=(others=>'0');
signal MBR: std_logic_vector(23 downto 0);
signal IR: std_logic_vector(23 downto 0);
signal ACC: std_logic_vector(23 downto 0);

--entradas,salidas componentes
signal rpg_in: std_logic_vector(23 downto 0):=(others=>'0');
signal rpg_out: std_logic_vector(23 downto 0);
signal rpg_sel: std_logic_vector(1 downto 0):=(others=>'0');
signal address_bus: std_logic_vector(7 downto 0);
signal data_bus: std_logic_vector(23 downto 0);
signal A,B: std_logic_vector(11 downto 0);
signal control: std_logic_vector(3 downto 0);
signal C: std_logic;
signal Q: std_logic_vector(13 downto 0);

type state_type is (reset_pc, fetch, fetch1, fetch2, decode, execute_addi,execute_addi1,execute_addi2, 
execute_load,execute_load1, execute_jump, execute_display,execute_display1, execute_halt);
signal state,next_state: state_type;

begin
-----------IMPLEMENTACION OSCILADOR INTERNO---------------
OSCinst0: OSCH generic map("26.60") port map('0', clk);
----------------------------------------------------------

imp_binBCD: bin2bcd port map(reset,Q,Qbcd);
--clk_0
unidades: bcdDisplay port map(clk_0,reset,Qbcd(3 downto 0),un);
decenas: bcdDisplay port map(clk_0,reset,Qbcd(7 downto 4),de);
centenas: bcdDisplay port map(clk_0,reset,Qbcd(11 downto 8),ce);
millar: bcdDisplay port map(clk_0,reset,Qbcd(15 downto 12),mi);

--clk
ROM_imp: ROM port map(clk,reset,'1','1',address_bus,data_bus);
RPG : registrosPG port map(clk,reset,'1',rpg_in,rpg_sel,rpg_out);
ALU_imp : alu port map(clk,A,B,control,ACC(11 downto 0),C);  
	process(clk,reset,stop_run)
		variable count: integer range 0 to 2500000;
		begin
			if(reset = '1') then
				state<= reset_pc;
				temp_control<="0000";
			elsif(clk'event and clk='1') then
				
				if(count < 2000000) then
					count := count + 1;
				else
					count:= 0;
					clk_0 <= not clk_0;
					state<=next_state;
					case temp_control is
					when "0000"=>
						temp_control<="0001";
					when "0001"=> 
						temp_control<="0010";
						display<=mi;
					when "0010"=> 
						temp_control<="0100";
						display<=ce;
					when "0100"=> 
						temp_control<="1000";
						display<=de;
					when "1000"=> 
						temp_control<="0001";
						display<=un;
					when others=>
						temp_control<="0000";
					end case;
					sel<=temp_control;
				end if;
			end if;
	end process;
	
	process(state,PC,MAR,MBR,IR,data_bus,rpg_out,ACC)
		begin
			case state is
				when reset_pc=>
					next_state<=fetch;
				when fetch=>
					MAR<=PC;
					address_bus<=MAR;
					next_state<=fetch1;
				when fetch1=>
					MBR<=data_bus;
					next_state<=fetch2;
				when fetch2=>
					PC<=PC+1;
					IR<=MBR;
					next_state<=decode;
				when decode=>
					case IR(23 downto 18) is
						when "011000"=>
							next_state<=execute_addi;
						when "010001"=>
							next_state<=execute_load;
						when "010111"=>
							next_state<=execute_jump;
						when "011001"=>
							next_state<=execute_display;
						when "010011"=>
							next_state<=execute_halt;
						when others=>
							next_state<=fetch;
					end case;
				when execute_addi=>
					control<=IR(21 downto 18);
					rpg_sel<=IR(17 downto 16);
					next_state<=execute_addi1;
				when execute_addi1=>
					A<=rpg_out(11 downto 0);
					B<=IR(11 downto 0);
					next_state<=execute_addi2;
				when execute_addi2=>
					rpg_in<=ACC;
					next_state<=fetch;
				when execute_load=>
					address_bus<=IR(7 downto 0);
					rpg_sel<=IR(17 downto 16);
					next_state<=execute_load1;
				when execute_load1=>
					rpg_in<=data_bus;
					next_state<=fetch;
				when execute_jump=>
					PC<=IR(7 downto 0);
					next_state<=fetch;
				when execute_display=>
					rpg_sel<=IR(17 downto 16);
					next_state<=execute_display1;
				when execute_display1=>
					Rdisplay<=rpg_out(13 downto 0);
					next_state<=fetch;
				when execute_halt=>
					next_state<=execute_halt;
				when others=>
					next_state<=fetch;
				end case;
	end process;
	CI<=IR;
	Q<=Rdisplay;
end behavior;
