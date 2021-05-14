library IEEE;
use ieee.std_logic_1164.all;
 
entity test_bench_circuito_C10 is
end test_bench_circuito_C10;
 
architecture funcionamento_test_bench of test_bench_circuito_C10 is
  
    SIGNAL g1_tb: std_logic := '0';
    SIGNAL g2_tb: std_logic := '0';
	 SIGNAL g3_tb: std_logic := '0';
    SIGNAL g4_tb: std_logic := '0';
	 SIGNAL g5_tb: std_logic := '0';
	 SIGNAL g6_tb: std_logic := '0';
	 SIGNAL g7_tb: std_logic := '0';
	 SIGNAL g8_tb: std_logic := '0';
	 SIGNAL g9_tb: std_logic;
  
   
  component circuito_C10 is 
  port  (g1,g2,g3,g4,g5,g6,g7,g8: in std_logic;
			g9: out std_logic
		);
  end component circuito_C10;
   
begin
   
  C10_UUT : circuito_C10
    port map (
				g1 => g1_tb,
				g2 => g2_tb,
				g3 => g3_tb,
				g4 => g4_tb,
				g5 => g5_tb,
				g6 => g6_tb,
				g7 => g7_tb,
				g8 => g8_tb,
				g9 => g9_tb
      );
 
  process is
  
  begin -- 2^8 = 256 testes representando a tabela verdade, aqui tem somente 9 casos de teste
   
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '0';
	 g7_tb <= '0';
	 g8_tb <= '0';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '0';
	 g7_tb <= '0';
	 g8_tb <= '1';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '0';
	 g7_tb <= '1';
	 g8_tb <= '0';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '0';
	 g7_tb <= '1';
	 g8_tb <= '1';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '1';
	 g7_tb <= '0';
	 g8_tb <= '0';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '1';
	 g7_tb <= '0';
	 g8_tb <= '1';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '1';
	 g7_tb <= '1';
	 g8_tb <= '0';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '0';
	 g6_tb <= '1';
	 g7_tb <= '1';
	 g8_tb <= '1';
	 wait for 100 ns;
	 
	 g1_tb <= '0';
	 g2_tb <= '0';
	 g3_tb <= '0';
	 g4_tb <= '0';
	 g5_tb <= '1';
	 g6_tb <= '0';
	 g7_tb <= '0';
	 g8_tb <= '0';
	 wait for 100 ns;
	 
  end process;
     
end funcionamento_test_bench;