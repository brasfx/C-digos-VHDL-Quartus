-- top level entity ---

-- library
library ieee;
use ieee.std_logic_1164.all;


entity Circuito_C17 is
  port 
	(
    entrada_1    : in  std_logic;
    entrada_2    : in  std_logic;
	 entrada_3    : in  std_logic;
    entrada_4    : in  std_logic;
	 entrada_5    : in  std_logic;
    Saida_x : out std_logic;
	 Saida_y : out std_logic
    
	 );
end Circuito_C17;


architecture rtl of Circuito_C17 is -- composição do circuito_C17

		signal m_U0, m_U2, m_U1, m_U4, m_U3, m_U5: std_logic;  -- sinais intermediarios
      
	component Porta_Nand -- buscando componente POrta_Nand no projeto
	
		port (a    : in  std_logic; b    : in  std_logic; y : out std_logic );
	
	end component;

begin -- começa o processo de composição lógica


	U0: Porta_Nand port map (entrada_1, entrada_2, m_U0); -- Porta NAND (U0)
	U2: Porta_Nand port map (entrada_5, entrada_1, m_U2); -- Porta NAND (U2)
	
	U1: Porta_Nand port map (m_U0, entrada_4, m_U1); -- Porta NAND (U1)
	U4: Porta_Nand port map (m_U0, entrada_3, m_U4); -- Porta NAND (U4)
	
	U3: Porta_Nand port map (m_U2, m_U1, m_U3); -- Porta NAND (U1)
	U5: Porta_Nand port map (m_U4, m_U1, m_U5); -- Porta NAND (U4)
	
	saida_x <= m_U3; -- Saida do circuito C17
	saida_y <= m_U5; -- Saida do circuito C17
	
end rtl;