library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;----------------------------------------------------------
library lattice;
use lattice.components.all;
library machxo2;
use machxo2.all;
----------------------------------------------------------
entity alu_fetch is port(
	reset: in std_logic;
	stop_run: in std_logic;
	rom_address: in std_logic_vector(7 downto 0);
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
	
	component Universales is port(
        enable  : in  std_logic;                           
        data_in : in  std_logic_vector(23 downto 0);      
        read_en : in  std_logic;                          
        selector: in std_logic_vector(1 downto 0);
		data_out: out std_logic_vector(23 downto 0)      
    );
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
	
	component registro24 is port(
	clk : in std_logic;
	clr : in std_logic;
	load : in std_logic;
	data_in : in std_logic_vector(23 downto 0);
	data_out : out std_logic_vector(23 downto 0)
	);
	end component;

signal clk_0: std_logic:='0';
signal Q: std_logic_vector(13 downto 0);
signal Qbcd: std_logic_vector(15 downto 0);
signal temp_control: std_logic_vector(3 downto 0):="0001";
signal u,d,c,m: std_logic_vector(6 downto 0);
	
	
signal clk: std_logic;

type state_type is (reset_pc, fetch, decode, execute_addi, execute_load, execute_jump, execute_display, execute_halt);
signal state,next_state: state_type;

type fetch_type is (t1,t2,t3);
signal fetch_state,next_fetch_state: fetch_type;



--BUSES--
signal pc_out: std_logic_vector(23 downto 0);
signal address_bus: std_logic_vector(23 downto 0);
signal data_bus: std_logic_vector(23 downto 0);
signal mbr_out: std_logic_vector(23 downto 0);
signal ir_out: std_logic_vector(23 downto 0);
signal rpg_in: std_logic_vector(23 downto 0);
signal rpg_out: std_logic_vector(23 downto 0);
signal rpg_sel: std_logic_vector(1 downto 0);

begin
-----------IMPLEMENTACION OSCILADOR INTERNO---------------
OSCinst0: OSCH generic map("26.60") port map('0', clk);
----------------------------------------------------------
imp_binBCD: bin2bcd port map(reset,Q,Qbcd);
unidades: bcdDisplay port map(clk_0,reset,Qbcd(3 downto 0),u);
decenas: bcdDisplay port map(clk_0,reset,Qbcd(7 downto 4),d);
centenas: bcdDisplay port map(clk_0,reset,Qbcd(11 downto 8),c);
millar: bcdDisplay port map(clk_0,reset,Qbcd(15 downto 12),m);
ROM_imp: ROM port map(clk,reset,'1','1',address_bus(7 downto 0),data_bus);
RPG : Universales port map('1',rpg_in,'1',rpg_sel,rpg_out);

--REGISTROS PARA DATAPATH--
PC: registro24 port map(clk,reset,'1',"0000000000000000"&rom_address,pc_out); --Program Counter
MAR: registro24 port map(clk,reset,'1',pc_out,address_bus);--Memory Address Register
MBR: registro24 port map(clk,reset,'1',data_bus,mbr_out);--Memory Buffer Register 
IR: registro24 port map(clk,reset,'1',mbr_out,ir_out);--Instruction Register
--ACC: registro24 port map(clk,reset,1,x"000001",);--Accumulator

	process(clk,reset)
		variable count: integer range 0 to 2500000;
		begin
			if(reset = '1') then
				state<= reset_pc;
				temp_control<="0000";
			elsif(clk'event and clk='1') then
				state<=next_state;
				
				if(count < 150000) then
					count := count + 1;
				else
					count:= 0;
					clk_0 <= not clk_0;
					
					case temp_control is
					when "0000"=>
						temp_control<="0001";
					when "0001"=> 
						temp_control<="0010";
						display<=m;
					when "0010"=> 
						temp_control<="0100";
						display<=c;
					when "0100"=> 
						temp_control<="1000";
						display<=d;
					when "1000"=> 
						temp_control<="0001";
						display<=u;
					end case;
					sel<=temp_control;
				end if;
			end if;
	end process;
	
	process(state)
		begin
			case state is
				when reset_pc=>
					next_state<=fetch;
				when fetch=>
					next_state<=decode;
				when decode=>
					case ir_out(23 downto 18) is
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
				when execute_load=>
					rpg_sel<=ir_out(17 downto 16);
					rpg_in<="00000000"&ir_out(15 downto 0);
					next_state<=execute_halt;
				when execute_halt=>
					next_state<=execute_halt;
				end case;
	end process;
	CI<=rpg_out;
end behavior;