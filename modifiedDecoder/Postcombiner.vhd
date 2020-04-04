LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Postcombiner is
	PORT(A,B,C,D :IN STD_LOGIC_VECTOR(0 TO 3);
		  Y :OUT STD_LOGIC_VECTOR(15 downto 0));
end Postcombiner;

ARCHITECTURE Behaviour of Postcombiner is
BEGIN

Y(0) <= A(0);
Y(1) <= A(1);
Y(2) <= A(2);
Y(3) <= A(3);

Y(4) <= B(0);
Y(5) <= B(1);
Y(6) <= B(2);
Y(7) <= B(3);

Y(8) <= C(0);
Y(9) <= C(1);
Y(10) <=C(2);
Y(11) <= C(3);

Y(12) <= D(0);
Y(13) <= D(1);
Y(14) <= D(2);
Y(15) <= D(3);

end Behaviour;
	