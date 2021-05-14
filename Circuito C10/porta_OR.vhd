library IEEE;
use ieee.std_logic_1164.all;

entity porta_OR is
port( a,b: in std_logic;
		saida: out std_logic
	);
end porta_OR;

architecture comport_porta_OR of porta_OR is

begin 

saida <= a OR b;

end comport_porta_OR;