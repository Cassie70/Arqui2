library ieee;
use ieee.std_logic_1164.all;

entity multi6 is port(
        A, B: in std_logic_vector(11 downto 0);
        result: out std_logic_vector(11 downto 0)
    );
end multi6;

architecture a_multi6 of multi6 is
    component add_sub_12 is
        port (
            A, B: in std_logic_vector(11 downto 0);
            sub: in std_logic;
            S: out std_logic_vector(11 downto 0);
            cout: out std_logic
        );
    end component;

    signal v1, v2, v3, v4, v5, v6: std_logic_vector(11 downto 0);
    signal v12, v34, v56, v12_34, v1234_56: std_logic_vector(11 downto 0);
begin
    v1 <= "000000" & (A(5) and B(0)) & (A(4) and B(0)) & (A(3) and B(0)) & (A(2) and B(0)) & (A(1) and B(0)) & (A(0) and B(0));
    v2 <= "00000" & (A(5) and B(1)) & (A(4) and B(1)) & (A(3) and B(1)) & (A(2) and B(1)) & (A(1) and B(1)) & (A(0) and B(1)) & "0";
    v3 <= "0000" & (A(5) and B(2)) & (A(4) and B(2)) & (A(3) and B(2)) & (A(2) and B(2)) & (A(1) and B(2)) & (A(0) and B(2)) & "00";
    v4 <= "000" & (A(5) and B(3)) & (A(4) and B(3)) & (A(3) and B(3)) & (A(2) and B(3)) & (A(1) and B(3)) & (A(0) and B(3)) & "000";
    v5 <= "00" & (A(5) and B(4)) & (A(4) and B(4)) & (A(3) and B(4)) & (A(2) and B(4)) & (A(1) and B(4)) & (A(0) and B(4)) & "0000";
    v6 <= "0" & (A(5) and B(5)) & (A(4) and B(5)) & (A(3) and B(5)) & (A(2) and B(5)) & (A(1) and B(5)) & (A(0) and B(5)) & "00000";
    
    adder1: add_sub_12 port map(A => v1, B => v2, sub => '0', S => v12, cout => open);
    adder2: add_sub_12 port map(A => v3, B => v4, sub => '0', S => v34, cout => open);
    adder3: add_sub_12 port map(A => v5, B => v6, sub => '0', S => v56, cout => open);
    adder4: add_sub_12 port map(A => v12, B => v34, sub => '0', S => v12_34, cout => open);
    adder5: add_sub_12 port map(A => v12_34, B => v56, sub => '0', S => v1234_56, cout => open);

    result <= v1234_56;
end a_multi6;