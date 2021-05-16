library IEEE;
use ieee.std_logic_1164.all;

entity FF_D_Serie is 

port( D_in,Clock,Reset: in std_logic;
		Q_out: out std_logic
);


end FF_D_Serie;


architecture comportamento_FF_D_Serie of FF_D_Serie is 

SIGNAL Q3,Q2,Q1,Q0: std_logic;


component FF_D is 
port (
		clock: in std_logic;
		reset: in std_logic;
		D: in std_logic;  
		Q: out std_logic	
	); 
end component;
	

begin 

		FF3: FF_D port map(Clock,Reset,D_in,Q3);
		FF2: FF_D port map(Clock,Reset,Q3,Q2);
		FF1: FF_D port map(Clock,Reset,Q2,Q1);
		FF0: FF_D port map(Clock,Reset,Q1,Q0);
		
		Q_out <= Q0;
		

end comportamento_FF_D_Serie;