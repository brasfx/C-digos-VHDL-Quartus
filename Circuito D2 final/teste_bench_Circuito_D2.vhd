library ieee;  
 use ieee.std_logic_1164.all;  
 
 entity teste_bench_Circuito_D2 is  
 end entity teste_bench_Circuito_D2;  

 architecture tb_Circuito_D2 of teste_bench_Circuito_D2 is  
 
  signal  clock_tb: std_logic:='0';  
  signal  reset_tb: std_logic:= '0';
  signal  A_tb,B_tb: std_logic:= '0';
  signal  D_tb: std_logic:= '0';  
  signal  Q_tb: std_logic;

 component Circuito_D2 is  
  port  (
			D_in,Clock,Reset,A,B: in std_logic;
			Out_x: out std_logic
	 );
  end component Circuito_D2;
  
  
 
 begin

D2_UUT : Circuito_D2
    port map (
				D_in  => D_tb,
				Reset => reset_tb,
				Clock => clock_tb,
				A  => A_tb,
				B  => B_tb,
				Out_x => Q_tb
      );


 process
			
				begin 
				reset_tb <= '1';  --inicio 
				D_tb <= '0';
				A_tb <= '0';
				B_tb <= '0';
				clock_tb <= '0';
				
			   --wait;
				wait for 10 ns;
				
				reset_tb <= '0';   --
				D_tb <= '0';
				A_tb <= '0';
				B_tb <= '0';
				clock_tb <= '0';
				
			   --wait;
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida FFD armazena 1°
				clock_tb <= '1';
				D_tb <= '1';
				A_tb <= '0';
				B_tb <= '0';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				
				reset_tb <= '0'; -- esperando proxima borda de subida do clock
				clock_tb <= '0';
				D_tb <= '1';
				A_tb <= '0';
				B_tb <= '1';
				
				--Q_tb <= '0';
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida 2° FFD armazena do 1° FFD 
				clock_tb <= '1';
				D_tb <= '1';
				A_tb <= '0';
				B_tb <= '1';
				wait for 10 ns;
				
					
				reset_tb <= '0'; -- esperando proxima borda de subida do clock
				clock_tb <= '0';
				D_tb <= '1';
				A_tb <= '1';
				B_tb <= '0';
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida 3° FFD armazena do 2° FFD 
				clock_tb <= '1';
				D_tb <= '1';
				A_tb <= '1';
				B_tb <= '0';
				wait for 10 ns;
				
				reset_tb <= '0'; -- esperando proxima borda de subida do clock
				clock_tb <= '0';
				D_tb <= '1';
				A_tb <= '1';
				B_tb <= '1';
				wait for 10 ns;
				
				reset_tb <= '0'; -- borda de subida 4° FFD armazena do 3° FFD 
				clock_tb <= '1';
				D_tb <= '1';
				A_tb <= '1';
				B_tb <= '1';
				wait for 10 ns;
				
				
			end process;
 end architecture tb_Circuito_D2; 