LIBRARY IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Precombiner is
	PORT(X :IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		  W :OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		  W2,W3 : OUT STD_LOGIC);
end Precombiner;

ARCHITECTURE Behaviour of Precombiner is
BEGIN
W<= X(1 DOWNTO 0);
W2<=X(2);
W3<=X(3);
end Behaviour;
	