library IEEE;
use IEEE.std_logic_1164.all;

entity Flip_Flop_D is 
port (
		clock, D: in std_logic; 
		Q: out std_logic
	);
end Flip_Flop_D;


architecture comportamento_Flip_Flop_D of Flip_Flop_D is 

begin 

		process (clock, D)
		
		begin
		
			if clock 'event  and clock = '1' then 
				Q <= D;
				
			end if;
			
		end process;
	

end comportamento_Flip_Flop_D;	