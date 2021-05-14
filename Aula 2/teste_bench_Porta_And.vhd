-- PORTA LOGICA AND 2x1

library IEEE;
use ieee.std_logic_1164.all;

-- criação da entidade
entity teste_bench_Porta_And is 
end teste_bench_Porta_And;

architecture funcionamneto_test_bench of teste_bench_Porta_And is
SIGNAL a_tb,b_tb: std_logic := '0'; -- busca componente porta_And em Porta_And.vhd
SIGNAL x_tb: std_logic;

component Porta_And is 
port(
		a,b: in std_logic;
		y: out std_logic
	);
end component Porta_And;

begin

and_gate_INST :porta_And 
port map( 
			a => a_tb, 
			b => b_tb,
			y => x_tb
		);
		
process is 
begin

a_tb <= '0';
b_tb <= '0';
wait for 10ns;
a_tb <= '0';
b_tb <= '1';
wait for 10ns;
a_tb <= '1';
b_tb <= '0';
wait for 10ns;
a_tb <= '1';
b_tb <= '1';
wait for 10ns;

end process;

end funcionamneto_test_bench;
