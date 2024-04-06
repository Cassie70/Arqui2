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

signal clk_0: std_logic:='0';
signal Q: std_logic_vector(13 downto 0);
signal Qbcd: std_logic_vector(15 downto 0);
signal temp_control: std_logic_vector(3 downto 0);
signal u,d,c,m: std_logic_vector(6 downto 0);
	
	
signal clk: std_logic;

type state_type is (reset_pc, fetch, decode, execute_addi, execute_load, execute_jump, execute_display);
signal state,next_state: state_type;

type fetch_type is (t1,t2,t3);
signal fetch_state,next_fetch_state: fetch_type;

--REGISTROS PARA DATAPATH--
signal PC: std_logic_vector(15 downto 0); --Program Counter
signal MAR: std_logic_vector(15 downto 0);--Memory Address Register
signal MBR: std_logic_vector(23 downto 0);--Memory Buffer Register 
signal IR: std_logic_vector(23 downto 0);--Instruction Register
signal ACC: std_logic_vector(23 downto 0);--Accumulator

--BUSES--
signal address_bus: std_logic_vector(15 downto 0);
signal data_bus: std_logic_vector(23 downto 0);
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

	process(clk,reset)
		variable count: integer range 0 to 2500000;
		begin
			if(reset = '1') then
				state<= reset_pc;
			elsif(clk'event and clk='1') then
				state<=next_state;
				if (state=fetch) then
					fetch_state <= next_fetch_state;
				end if;
				
				
				if(count < 150000) then
					count := count + 1;
				else
					count:= 0;
					clk_0 <= not clk_0;
					if temp_control = "1000" then
						temp_control <= "0001"; 
					else
						temp_control <= temp_control(2 downto 0) & temp_control(3);
					end if;
					case temp_control is
					when "0001"=> display<=m;
					when "0010"=> display<=c;
					when "0100"=> display<=d;
					when "1000"=> display<=u;
					when others=> display<="0111111";
					end case;
					sel<=temp_control;
				end if;
			end if;
	end process;
	
	process(state,fetch_state)
		begin
			case state is
				when reset_pc=>
					PC<=(others=>'0');
					MAR<=(others=>'0');
					MBR<=(others=>'0');
					IR<=(others=>'0');
					ACC<=(others=>'0');
				when fetch=>
					case fetch_state is 
						when t1=>
							MAR<=PC;
							address_bus<=MAR(15 downto 0);
							next_fetch_state<=t2;
						when t2=>
							MBR<= data_bus;
							next_fetch_state<=t3;
						when t3=>
							IR<= MBR;
							PC<=PC+1;
							next_fetch_state<=t1;
							next_state<=decode;
					end case;
				when decode=>
					CI<= IR;
					case IR(23 downto 18) is
						when "011000"=>
							next_state<=execute_addi;
						when "010001"=>
							next_state<=execute_load;
						when "010111"=>
							next_state<=execute_jump;
						when "011010"=>
							next_state<=execute_display;
						when others=>
							next_state<=fetch;
					end case;
				when execute_load=>
					rpg_sel<=IR(17 downto 16);
					MAR<=IR(15 downto 0);
					address_bus<=MAR;
					MBR<=data_bus;
					ACC<=MBR;
					rpg_in<=ACC;
				when execute_display=>
					Q<= IR(13 downto 0);
				end case;
	end process;
end behavior;