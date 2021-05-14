library IEEE;

use ieee.std_logic_1164.all;


entity teste_bench_FF_Serie is 
	-- vazio
end teste_bench_FF_Serie;



architecture funcionamento_FF_Serie of teste_bench_FF_Serie is 

component Flip_Flop_Serie is 
	port (
			clock: in std_logic; 
			D: in std_logic; 
			Q: out std_logic
		); 
end component;
	
	
	--Signal
SIGNAL clock_tb, D_tb, Q_tb: std_logic;

		begin 
		
		-- Instaciar FF_D
		FF_Serie: Flip_Flop_Serie port map (clock_tb, D_tb, Q_tb); 
		
			process
			
				begin 
				
				D_tb <= '0';
				clock_tb <= '1';
				wait for 10 ns;
				
				D_tb <= '1';
				clock_tb <= '1';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '1';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				D_tb <= '1';
				clock_tb <= '1';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				D_tb <= '0';
				clock_tb <= '0';
				wait for 10 ns;
				
				
			end process;
			
	end funcionamento_FF_Serie;