-- PORTA LOGICA AND 2x1

library IEEE;
use ieee.std_logic_1164.all;

-- criação da entidade
entity teste_bench_porta_NOT is 
end teste_bench_porta_NOT;

architecture funcionamento_test_bench of teste_bench_porta_NOT is
SIGNAL a_tb: std_logic := '0'; -- busca componente porta_And em Porta_And.vhd
SIGNAL saida_tb: std_logic;

component porta_NOT is 
port(
		a: in std_logic;
		saida: out std_logic
	);
end component porta_NOT;

begin

not_gate_INST :porta_NOT 
port map( 
			a => a_tb, 
			saida => saida_tb
		);
		
process is 
begin

a_tb <= '0';
wait for 10ns;
a_tb <= '1';
wait for 10ns;

end process;

end funcionamento_test_bench;