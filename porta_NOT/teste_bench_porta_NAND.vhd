library IEEE;
use ieee.std_logic_1164.all;

entity teste_bench_porta_NAND is 
end teste_bench_porta_NAND;

architecture funcionamento_teste_bench of teste_bench_porta_NAND is
SIGNAL a_tb: std_logic := '0';
SIGNAL b_tb: std_logic := '0';
SIGNAL saida_tb: std_logic;

component porta_NAND is 
port( a,b: in std_logic; 
		saida: out std_logic
	);
end component porta_NAND;

begin
nand_gate_INST :porta_NAND

port map( a => a_tb,
			 b => b_tb,
			 saida => saida_tb
			);

process is
begin 
a_tb <= '0';
b_tb <= '0';
wait for 100 ns;
a_tb <= '0';
b_tb <= '1';
wait for 100 ns;
a_tb <= '1';
b_tb <= '0';
wait for 100 ns;
a_tb <= '1';
b_tb <= '1';
wait for 100 ns;
end process;

end funcionamento_teste_bench;