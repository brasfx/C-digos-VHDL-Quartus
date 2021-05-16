library IEEE;
use ieee.std_logic_1164.all;

entity FF_D is 

port( D,clock,reset: in std_logic;
		Q: out std_logic
);

end FF_D;


architecture comportamento_FF_D of FF_D is 

begin 

process (clock,reset)

begin
	if (reset = '1') then     -- Pino de reset
				Q <= '0';  
		 
		 elsif rising_edge(clock) then  -- Semelhante ao (clock 'event and clock = '1')
		 
				Q <= D;  
			
		
		end if;  
	
end process;

end comportamento_FF_D;