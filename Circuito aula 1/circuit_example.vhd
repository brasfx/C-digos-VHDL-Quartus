
library IEEE;
use ieee.std_logic_1164.all;

entity circuit_example is
port( m,n,q: in std_logic;
		x: out std_logic
);

end circuit_example;

architecture arc_cirtuit_example of circuit_example is 

SIGNAL sig1,sig3,sig2: std_logic;


begin 

sig1<= (NOT(m AND n AND q));
sig2<= (NOT((m AND (NOT n)) AND q));
sig3<= (NOT((q AND(NOT m)) AND n));
x<= (NOT((sig1 AND sig2) AND sig3));

end arc_cirtuit_example;
