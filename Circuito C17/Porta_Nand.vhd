-- CODIGO PORTA LOGICA NAND

-- library
library IEEE;
use ieee.std_logic_1164.all;
 
 
-- entity
entity Porta_NAND is
  port 
	(
    a,b: in  std_logic;
    y: out std_logic
    
	 );
end Porta_NAND;
 
 
-- architecture
architecture comportamento_Porta_NAND of Porta_NAND is 

begin
  y <= a nand b; 
  
end comportamento_Porta_NAND;