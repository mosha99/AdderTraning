
library IEEE;
use IEEE.std_logic_1164.all;

entity \_4BitFullAdder\ is
	 port(
		 C_in : in STD_LOGIC;
		 C_out : out STD_LOGIC;
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 B : in STD_LOGIC_VECTOR(3 downto 0);
		 S : out STD_LOGIC_VECTOR(3 downto 0)
	     );
end \_4BitFullAdder\;

architecture \_4BitFullAdder\ of \_4BitFullAdder\ is   

	component FA is 
		 port(
		 A ,B,C_in: in STD_LOGIC;
		 S ,C_out: out STD_LOGIC
	     );
	end component;	   

	signal c: std_logic_vector(3 downto 0);

begin									  

	u1 : FA port Map(A => A(0) , B=> B(0) , C_in => C_in , S => S(0),C_out => c(0) );
	u2 : FA port Map(A => A(1) , B=> B(1) , C_in => c(0) , S => S(1),C_out => c(1) );
	u3 : FA port Map(A => A(2) , B=> B(2) , C_in => c(1) , S => S(2),C_out => c(2) );
	u4 : FA port Map(A => A(3) , B=> B(3) , C_in => c(0) , S => S(3),C_out => c(3) );

	C_out <= c(3);

end \_4BitFullAdder\;
