library ieee;  
 use ieee.std_logic_1164.all; 

 
 ENTITY Flip_Flop_D_Serie IS  
	port(  
      clock : in std_logic;  
      reset : in std_logic;  
      D_in : in std_logic;  
      Q : out std_logic  
 );  
 
 
 end Flip_Flop_D_Serie;  
 
 architecture RTL of Flip_Flop_D_Serie is  
 
 signal dado_registrado : std_logic_vector (2 downto 0);   -- vetore de tam 3
 
 begin 
 
	Q <= dado_registrado(2);  
	
	process(clock,reset)  
	
	begin  
	
		 if (reset = '1') then     -- Pino de reset
				dado_registrado <= "000";  
		 
		 elsif rising_edge(clock) then  -- Semelhante ao (clock 'event and clock = '1')
		 
				dado_registrado(0) <= D_in;  
				dado_registrado(1) <= dado_registrado(0);  
				dado_registrado(2) <= dado_registrado(1);   
		
		
		end if;  
 
 end process;
 
 end RTL;