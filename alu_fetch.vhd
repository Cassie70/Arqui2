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
	CI: out std_logic_vector(23 downto 0);
	led: out std_logic
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
signal clk_1: std_logic:='0';
signal Q: std_logic_vector(13 downto 0);
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
signal address_bus: std_logic_vector(7 downto 0);
signal data_bus: std_logic_vector(23 downto 0);
signal rpg_in: std_logic_vector(23 downto 0):=(others=>'0');
signal rpg_out: std_logic_vector(23 downto 0);
signal rpg_sel: std_logic_vector(1 downto 0):=(others=>'0');
--signal A,B: std_logic_vector(11 downto 0);
--signal control: std_logic_vector(3 downto 0);
--signal C: std_logic;


type global_state_type is (fetch, decode, execute, reset_pc); 
signal global_state,next_global_state: global_state_type;

type instruction_type is (i_addi,i_load,i_jump,i_display,i_halt,i_null,i_nop);
signal instruction: instruction_type;

type execute_type is (initial_state,final_state);
signal addi_state,halt_state: execute_type;

signal end_execute: std_logic;
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
ROM_imp: ROM port map(clk_1,reset,'1','1',address_bus,data_bus);
RPG : registrosPG port map(clk_1,reset,'1',rpg_in,rpg_sel,rpg_out);
--ALU_imp : alu port map(clk,A,B,control,ACC(11 downto 0),C);  

	process(clk_1, reset, stop_run)
	begin
		if (reset = '1') then
			global_state <= fetch;
		elsif (rising_edge(clk_1) and stop_run='0') then
			global_state <= next_global_state;
		end if;
	end process;

	process(global_state)
	begin
		case global_state is
			when fetch =>
				MAR<=PC;
				address_bus<=MAR;
				MBR<=data_bus;
				PC<=PC+1;
				IR<=MBR;
				next_global_state<=decode;
			when decode =>
				case IR(23 downto 18) is
					when "011000" =>
						instruction <= i_addi;
					when "010001" =>
						instruction <= i_load;
					when "010111" =>
						instruction <= i_jump;
					when "011001" =>
						instruction <= i_display;
					when "010011" =>
						instruction <= i_halt;
					when others =>
						instruction <= i_null;
				end case;
					next_global_state<=execute;
			when execute =>
				case instruction is 
					when i_halt =>
						PC<=PC-1;
					when others =>
				end case;
				next_global_state<=fetch;
		end case;
	end process;
	
	CI<=IR;
	Q<="000000"&PC;
	process(clk_0, reset)
	begin
		if (reset = '1') then
			temp_control <= "0000";
		elsif (rising_edge(clk_0)) then
			case temp_control is
				when "0000"=>
					temp_control <= "0001";
				when "0001"=> 
					temp_control <= "0010";
					display <= mi;
				when "0010"=> 
					temp_control <= "0100";
					display <= ce;
				when "0100"=> 
					temp_control <= "1000";
					display <= de;
				when "1000"=> 
					temp_control <= "0001";
					display <= un;
				when others=>
					temp_control <= "0000";
			end case;
			sel <= temp_control;
		end if;
end process;

process(clk, reset)
	variable count: integer range 0 to 250000;
	variable count1: integer range 0 to 25000000;
	begin
		if (reset = '1') then
			clk_0<= '0';
			clk_1<= '0';
		elsif (rising_edge(clk)) then
			if (count < 150000) then
				count := count + 1;
			else
				count := 0;
				clk_0 <= not clk_0;
			end if;
			
			if (count1 < 20000000) then
				count1 := count1 + 1;
			else
				count1 := 0;
				clk_1 <= not clk_1;
			end if;
		end if;
end process;

led<=clk_1;
end behavior;
