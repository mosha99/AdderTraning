library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
	 port(
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 S : out STD_LOGIC;
		 C : out STD_LOGIC
	     );
end HA;

architecture HA of HA is 

signal s_signal , c_signal : STD_LOGIC;	 

begin

	process(A,B) 
	begin
		
		if( A = B ) then s_signal <= '0';
		else s_signal <= '1';
		end if;	 
		
		c_signal <=  A and B;
	end process;
	
	S <= s_signal ;	   
	C <= c_signal ;

end HA;
