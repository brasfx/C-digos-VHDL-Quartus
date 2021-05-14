--Circuito C10

library IEEE;
use ieee.std_logic_1164.all;


entity circuito_C10 is
 port(g1,g2,g3,g4,g5,g6,g7,g8: in std_logic;
		g9: out std_logic
	 );
end circuito_C10;


architecture arch_C10 of circuito_C10 is -- composição do circuito_C10

		signal si_U0,si_U1,si_U2,si_U3,si_U4,si_U5,si_U6,si_U7,si_U8,si_U9 : std_logic;  -- sinais intermediarios
      
	component porta_AND  -- importando as portas dos arquivos externos 
	port (a: in  std_logic; b: in  std_logic; saida: out std_logic );
	end component;
	
	component porta_NAND
	port (a: in  std_logic; b: in  std_logic; saida: out std_logic );
	end component;
	
	component porta_OR
	port (a: in  std_logic; b: in  std_logic; saida: out std_logic );
	end component;
	
	component porta_NOT
	port (a: in  std_logic; saida: out std_logic );
	end component;

begin -- começa o processo de composição lógica


	U0: porta_NAND port map (g1, g2, si_U0); -- Porta NAND (U0)
	U1: porta_NAND port map (g3, g4, si_U1); -- Porta NAND (U1)
	
	U2: porta_NOT port map (g5,si_U2); -- Porta NOT (U2)
	U3: porta_NOT port map (g8,si_U3); -- Porta NOT (U3)
	
	U4: porta_NAND port map (si_U0,si_U2,si_U4); -- Porta NAND (U4)
	U5: porta_AND port map (g6,g7,si_U5); -- Porta AND (U5)
	
	U6: porta_AND port map (g7,si_U3,si_U6); -- Porta AND (U6)
	U7: porta_NAND port map (si_U5,si_U6,si_U7); -- Porta NAND (U7)
	
	U8: porta_AND port map (si_U4,si_U1,si_U8); -- Porta AND (U8)
	U9: porta_OR port map (si_U8,si_U7,si_U9); -- Porta OR(U9)
	
	g9 <= si_U9; -- saida
	
end arch_C10;