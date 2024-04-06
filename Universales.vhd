library ieee;
use ieee.std_logic_1164.all;

entity Universales is
    port (
        enable  : in  std_logic;                          -- Habilitador de escritura
        data_in : in  std_logic_vector(23 downto 0);      -- Datos de entrada
        read_en : in  std_logic;                          -- Habilitador de lectura
        selector: in std_logic_vector(1 downto 0);
		data_out: out std_logic_vector(23 downto 0)      -- Datos de salida
    );
end entity Universales;

architecture Behavioral of Universales is
    type registro_array is array(0 to 3) of std_logic_vector(23 downto 0); --4 registros de 20
	
    signal registros: registro_array := (others => (others => '0')); -- registros(0) 
begin
    process (enable)
    begin
    if enable = '1' then
		case selector is
			when "00"=> --imprimir primer registro
				registros(0) <= data_in;
			when "01"=> --imprimir segundo registro
				registros(1) <= data_in;
			when "10"=> --imprimir tercer registro
				registros(2) <= data_in;
			when others => --imprimir cuarto registro
				registros(3) <= data_in;
		end case;
    end if;
    end process;
	
	process(selector, registros,read_en)
	begin 
	
	if(read_en = '1') then
		case selector is
			when "00"=> --imprimir primer registro
				data_out <= registros(0);
			when "01"=> --imprimir segundo registro
				data_out <= registros(1);
			when "10"=> --imprimir tercer registro
				data_out <= registros(2);
			when others => --imprimir cuarto registro
				data_out <= registros(3);
		end case;
	end if;	
	end process;
end architecture Behavioral;
