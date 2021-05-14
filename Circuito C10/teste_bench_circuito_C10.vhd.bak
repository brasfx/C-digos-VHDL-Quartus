library ieee;
use ieee.std_logic_1164.all;
 
entity test_bench_Circuito_C17 is
end test_bench_Circuito_C17;
 
architecture funcionamento_test_bench of test_bench_Circuito_C17 is
  
    signal entrada_1_tb    : std_logic := '0';
    signal entrada_2_tb    : std_logic := '0';
	 signal entrada_3_tb    : std_logic := '0';
    signal entrada_4_tb    : std_logic := '0';
	 signal entrada_5_tb    : std_logic := '0';
	 signal  Saida_x_tb : std_logic;
	 signal  Saida_y_tb : std_logic;
  
   
  component Circuito_C17 is  -- busca componente Porta_And em Porta_And.vhd
  port  (
    entrada_1    : in  std_logic;
    entrada_2    : in  std_logic;
	 entrada_3    : in  std_logic;
    entrada_4    : in  std_logic;
	 entrada_5    : in  std_logic;
    Saida_x : out std_logic;
	 Saida_y : out std_logic
    
	 );
  end component Circuito_C17;
   
begin
   
  C17_UUT : Circuito_C17
    port map (
				entrada_1   => entrada_1_tb,
				entrada_2   => entrada_2_tb,
				entrada_3    => entrada_3_tb,
				entrada_4    => entrada_4_tb,
				entrada_5    => entrada_5_tb,
				saida_x   => saida_x_tb,
				saida_y => saida_y_tb
      );
 
  process is
  
  begin -- 2^5 = 32 testes representando a tabela verdade, aqui tem somente 5 casos de teste
   
	 entrada_1_tb <= '0';
	 entrada_2_tb <= '0';
	 entrada_3_tb <= '0';
	 entrada_4_tb <= '0';
	 entrada_5_tb <= '0';
	 wait for 100 ns;
	 
	 entrada_1_tb <= '0';
	 entrada_2_tb <= '0';
	 entrada_3_tb <= '0';
	 entrada_4_tb <= '0';
	 entrada_5_tb <= '1';
	 wait for 100 ns;
	 
	 entrada_1_tb <= '0';
	 entrada_2_tb <= '0';
	 entrada_3_tb <= '0';
	 entrada_4_tb <= '1';
	 entrada_5_tb <= '0';
	 wait for 100 ns;
	 
	 entrada_1_tb <= '0';
	 entrada_2_tb <= '0';
	 entrada_3_tb <= '0';
	 entrada_4_tb <= '1';
	 entrada_5_tb <= '1';
	 wait for 100 ns;
	 
	 entrada_1_tb <= '0';
	 entrada_2_tb <= '0';
	 entrada_3_tb <= '1';
	 entrada_4_tb <= '0';
	 entrada_5_tb <= '0';
	 wait for 100 ns;
    
  end process;
     
end funcionamento_test_bench;