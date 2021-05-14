library ieee;  
 use ieee.std_logic_1164.all;  
 
 entity tb_Flip_Flop_D_Serie is  
 end entity tb_Flip_Flop_D_Serie;  

 architecture tb of tb_Flip_Flop_D_Serie is  
 
  signal  clock_tb      : std_logic;  
  signal  reset_tb      : std_logic        := '0';  
  signal  D_tb 			: std_logic        := '0';  
  signal  Q_tb  			: std_logic;  
  
  
  signal Clk : std_logic := '1'; -- Clock
  
 
begin 

FF_EM_SERIE : entity  work.Flip_Flop_D_Serie port map (clock_tb, reset_tb, D_tb, Q_tb);
  
 -- clock generation  
 
  Clk  <= not Clk after 5 ns;  
  clock_tb <= Clk;  
  
	
  
  process is
  
  
  begin  
		reset_tb <= '1'; -- Inicia os FFs com 000
      
		wait for 10 ns;	  
      
		reset_tb <= '0';  
      
		wait for 10 ns;  
      
		D_tb <= '1';  
      
		wait for 10 ns;  
      
		D_tb <= '0';  
   
	wait;  
  end process;  
 end architecture tb;  