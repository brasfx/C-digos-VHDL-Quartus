library IEEE;
use ieee.std_logic_1164.all;

entity porta_AND is
port( a,b: in std_logic;
		saida: out std_logic
	);
end porta_AND;

architecture comport_porta_AND of porta_AND is

begin 

saida <= a AND b;

end comport_porta_AND;