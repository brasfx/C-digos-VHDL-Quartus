library IEEE;
use ieee.std_logic_1164.all;

entity Circuito_D2 is 
port( D_in,Clock,Reset,A,B: in std_logic;
		Out_x: out std_logic
);

end Circuito_D2;

architecture comportamento_Circuto_D2 of Circuito_D2 is 

SIGNAL Q_out,x2,x1,saida: std_logic;

component FF_D_Serie is 
port (
		D_in,clock,reset: in std_logic;
		Q_out: out std_logic
	); 
end component;

component porta_NAND is 
port (
		a,b: in std_logic; 
		x1: out std_logic
	); 
end component;

component porta_NOT is 
port (
		a: in std_logic; 
		x2: out std_logic
	); 
end component;

component porta_OR is 
port (
		a,b: in std_logic;
		saida: out std_logic
	); 
end component;

begin 

		C1: FF_D_Serie port map(D_in,Clock,Reset,Q_out);
		C2: porta_NAND port map (A,B,x1);
		C3: porta_NOT port map(x1,x2);
		C4: porta_OR port map (x2,Q_out,saida);
		
		Out_x <= saida;
		
end comportamento_Circuto_D2;