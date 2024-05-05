library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
	 port(
		 A ,B,C_in: in STD_LOGIC;
		 S ,C_out: out STD_LOGIC
	     );
end FA;

--}} End of automatically maintained section

architecture FA of FA is  
	component Ha
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 S : out STD_LOGIC;
		 C : out STD_LOGIC
	     );
	end component;   
	signal S_signal , C1_signal , C2_signal: STD_LOGIC;	
begin 
	
	u1 : Ha port map (A => A , B => B , S => S_signal, C => C1_signal);
	
	u2 : Ha port map (A => S_signal , B => C_in , S => S, C => C2_signal); 
	
	C_out <= C1_signal or C2_signal;

end FA;
