library IEEE;
use ieee.std_logic_1164.all;

entity teste_bench_porta_OR is 
end teste_bench_porta_OR;

architecture funcionamento_porta_OR of teste_bench_porta_OR is 
	SIGNAL a_tb:  std_logic := '0';
	SIGNAL b_tb:  std_logic := '0';
	SIGNAL saida_tb:std_logic;
	
component porta_OR is
port( a,b: in std_logic;
		saida:out std_logic
	);
end component porta_OR;

begin
and_gate_INST :porta_OR
port map( a => a_tb, b=> b_tb, saida=> saida_tb);

process is
begin 
	a_tb <= '0';
	b_tb <= '0';
	wait for 10 ns;
	a_tb <= '0';
	b_tb <= '1';
	wait for 10 ns;
	a_tb <= '1';
	b_tb <= '0';
	wait for 10 ns;
	a_tb <= '1';
	b_tb <= '1';
	wait for 10 ns;
end process;

end funcionamento_porta_OR;
