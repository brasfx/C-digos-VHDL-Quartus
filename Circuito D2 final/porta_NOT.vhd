-- Porta NOT(inversor)

library IEEE;
use ieee.std_logic_1164.all;

entity porta_NOT is 
port( a: in std_logic; 
		x2: out std_logic
	);

end porta_NOT;

architecture inversor of porta_NOT is

begin 

x2 <= (NOT(a));

end inversor;