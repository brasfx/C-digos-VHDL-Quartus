library IEEE;
use ieee.std_logic_1164.all;

entity FF_D_Serie is 

port( D_in,clock,reset: in std_logic;
		Q_out: out std_logic
);


end FF_D_Serie;


architecture comportamento_FF_D_Serie of FF_D_Serie is 

--SIGNAL Q3,Q2,Q1,Q0: std_logic;

signal dado_registrado : std_logic_vector (3 downto 0); 

--component FF_D is 
--port (
--		clock : in std_logic; 
--		D: in std_logic;  
--		Q: out std_logic
--	); 
--end component;

begin

Q_out <= dado_registrado(3);  
	
process(clock,reset) 

begin 

if (reset = '1') then     -- Pino de reset
				dado_registrado <= "0000";  
		 
		 elsif rising_edge(clock) then  -- Semelhante ao (clock 'event and clock = '1')
		 
				dado_registrado(0) <= D_in;  
				dado_registrado(1) <= dado_registrado(0);  
				dado_registrado(2) <= dado_registrado(1);
				dado_registrado(3) <= dado_registrado(2);			
		
		
		end if;  

		--FF3: FF_D port map(clock,D_in,Q3);
		--FF2: FF_D port map(clock,Q3,Q2);
		--FF1: FF_D port map(clock,Q2,Q1);
		--FF0: FF_D port map(clock,Q1,Q0);
		
		--Q_out <= Q0;
		
end process;

end comportamento_FF_D_Serie;