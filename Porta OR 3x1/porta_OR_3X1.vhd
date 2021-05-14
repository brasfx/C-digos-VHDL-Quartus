library IEEE;
use ieee.std_logic_1164.all;

entity porta_OR_3X1 is
port( w,x,y: in std_logic;
		z: out std_logic
	);
end porta_OR_3X1;

architecture comport_porta_OR_3X1 of porta_OR_3X1 is

begin 

z <= w OR x OR y;

end comport_porta_OR_3X1;