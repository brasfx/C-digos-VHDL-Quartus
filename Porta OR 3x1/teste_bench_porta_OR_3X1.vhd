library IEEE;
use ieee.std_logic_1164.all;

entity teste_bench_porta_OR_3X1 is 
end teste_bench_porta_OR_3X1;

architecture funcionamento_porta_OR_3X1 of teste_bench_porta_OR_3X1 is 
	SIGNAL w_tb:  std_logic := '0';
	SIGNAL x_tb:  std_logic := '0';
	SIGNAL y_tb:  std_logic := '0';
	SIGNAL z_tb:  std_logic;
	
component porta_OR_3X1 is
port( w,x,y: in std_logic;
		z:out std_logic
	);
end component porta_OR_3X1;

begin
and_gate_INST :porta_OR_3X1
port map( w => w_tb, x=> x_tb,y=> y_tb, z=> z_tb);

process is
begin 
	w_tb <= '0';
	x_tb <= '0';
	y_tb <= '0';
	wait for 100 ns;
	w_tb <= '0';
	x_tb <= '0';
	y_tb <= '1';
	wait for 100 ns;
	w_tb <= '0';
	x_tb <= '1';
	y_tb <= '0';
	wait for 100 ns;
	w_tb <= '0';
	x_tb <= '1';
	y_tb <= '1';
	wait for 100 ns;
	w_tb <= '1';
	x_tb <= '0';
	y_tb <= '0';
	wait for 100 ns;
	w_tb <= '1';
	x_tb <= '0';
	y_tb <= '1';
	wait for 100 ns;
	w_tb <= '1';
	x_tb <= '1';
	y_tb <= '0';
	wait for 100 ns;
	w_tb <= '1';
	x_tb <= '1';
	y_tb <= '1';
	wait for 100 ns;
end process;

end funcionamento_porta_OR_3X1;
