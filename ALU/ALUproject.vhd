library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.numeric_std.all;

entity ALUproject is
port(Clock: in std_logic; -- input clock signal
	A,B: in unsigned(7 downto 0); --8 bit inputs from latches A and B
	--student_id : in unsigned(3 downto 0); --4 bit student id from FSM
	OP : in unsigned(15 downto 0); --16-bit selector for Operation from Decoder
	Neg: out std_logic; --is the result negative ? Set-ve bit output
	R1 : out unsigned(3 downto 0); -- lower 4-bits of 8-bit Result Output	
	R2 : out unsigned(3 downto 0); -- higher 4-bit of 8-bit Result Output
	OP_out: out unsigned(15 downto 0));
end ALUproject;
architecture calculation of ALUproject is -- temporary signal declarations
signal Reg1,Reg2,Result,reg : unsigned(7 downto 0) :=(others => '0');
signal Reg4,Reg5,Reg6 : unsigned(0 to 7);
begin
Reg1 <= A; --temporarily store A in Reg1 local variable
Reg2 <= B; --temporarily store B in Reg2 local variable
Reg5<="00000101";
process(Clock,OP)
begin
	if(rising_edge(Clock))THEN -- Do the calculation @ positive edge of clock cycle

--case OP is
--			WHEN "0000000000000001" =>
--				--Do Swaps upper and lower bits for A
--				
--				Reg4(0)<=reg1(3);
--				Reg4(1)<=reg1(2);
--				Reg4(2)<=reg1(1);
--				Reg4(3)<=reg1(0);
--				Reg4(4)<=reg1(7);
--				Reg4(5)<=reg1(6);
--				Reg4(6)<=reg1(5);
--				Reg4(7)<=reg1(4);
--
--
--				Result <= Reg4;
--				Neg <= '0';
--
--			WHEN "0000000000000010" =>
--				--Do A OR B
--				--"Neg" bit set if required.
--
--				Result <= Reg1 OR Reg2;
--				Neg <= '0';
--
--			WHEN "0000000000000100" =>
--				--Do B-5
--
--				Result <= (Reg2)-(Reg5);
--				Neg <= '0';
--				
--			WHEN "0000000000001000" =>
--				--Do Inverse
--
--				Result <= NOT(Reg1);
--				Neg <= '0';
--
--			WHEN "0000000000010000" =>
--				--Do Invert significant order
--
--				Reg6(0)<=reg1(0);
--				Reg6(1)<=reg1(1);
--				Reg6(2)<=reg1(2);
--				Reg6(3)<=reg1(3);
--				Reg6(4)<=reg1(4);
--				Reg6(5)<=reg1(5);
--				Reg6(6)<=reg1(6);
--				Reg6(7)<=reg1(7);
--
--				Result <= Reg6;
--				Neg <= '0';
--
--			WHEN "0000000000100000" =>
--				--Do greatest value
--				if(reg2>reg1) then
--				Result <= Reg2;
--				Neg <= '0';
--				else	
--				Result <= Reg1;
--				Neg <= '0';			
--				end if;
--				
--			WHEN "0000000001000000" =>
--				--Result <= Reg1 - Reg2;
--				
--				if(Reg2 > Reg1) THEN
--					Neg <= '1';
--					Result <= Reg2 - Reg1;
--					else 
--					Neg <= '0';
--					Result <= Reg1 - Reg2;
--				end if;
--				
--			WHEN "0000000010000000" =>
--				--Do Boolean XNOR
--
--				Result <= Reg1 XNOR Reg2;
--				Neg <= '0';
--
--			WHEN "0000000100000000" =>
--				--Do rotate B by 3 bits to the left
--
--				Result <= (Reg2 rol 3);
--				Neg <= '0';
--
--			WHEN OTHERS => 
--			--Result <= "11101110";
----				Result <= Reg1 + Reg2;
----				Neg <= '0';
--				--Don't care, do nothing
--		end case;
--	
	
	
	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
--		case OP is
--			WHEN "0000000000000001" =>
--				--Do Addition for Reg1 and Reg2
--
--				Result <= Reg1 + Reg2;
--				Neg <= '0';
--
--			WHEN "0000000000000010" =>
--				--Do Subtraction
--				--"Neg" bit set if required.
--
--				--Result <= Reg1 - Reg2;
--				if(Reg2 > Reg1) THEN
--					Neg <= '1';
--					Result <= Reg2 - Reg1;
--					else 
--					Neg <= '0';
--					Result <= Reg1 - Reg2;
--				end if;
--
--			WHEN "0000000000000100" =>
--				--Do Inverse
--
--				Result <= NOT(Reg1);
--				Neg <= '0';
--				
--			WHEN "0000000000001000" =>
--				--Do Boolean NAND
--
--				Result <= NOT(Reg1 AND Reg2);
--				Neg <= '0';
--
--			WHEN "0000000000010000" =>
--				--Do Boolean NOR
--
--				Result <= NOT(Reg1 OR Reg2);
--				Neg <= '0';
--
--			WHEN "0000000000100000" =>
--				--Do Boolean AND
--
--				Result <= Reg1 AND Reg2;
--				Neg <= '0';				
--
--			WHEN "0000000001000000" =>
--				--Do Boolean XOR
--
--				Result <= Reg1 XOR Reg2;
--				Neg <= '0';
--				
--			WHEN "0000000010000000" =>
--				--Do Boolean OR
--
--				Result <= Reg1 OR Reg2;
--				Neg <= '0';
--
--			WHEN "0000000100000000" =>
--				--Do Boolean XNOR
--
--				Result <= Reg1 XNOR Reg2;
--				Neg <= '0';
--
--			WHEN OTHERS => 
--			--Result <= "11101110";
----				Result <= Reg1 + Reg2;
----				Neg <= '0';
--				--Don't care, do nothing
--		end case;

case OP is 
WHEN "0000000000000001" =>
--Increment A by 2
Result <= Reg1 + 2;

Neg <= '0';
WHEN "0000000000000010" =>

--Shift B to right by two bits, input bit = 0 (SHR)
Result <= shift_right(unsigned(Reg2),2);
Neg <= '0';
WHEN "0000000000000100" =>
--Shift A to right by four bits, input bit = 1 (SHR)

Result <= shift_right(unsigned(Reg1),4);
WHEN "0000000000001000" =>

--Find the smaller value of A and B and produce the results ( Min(A,B) )


if(Reg1 > Reg2) THEN
Result <= Reg2;
Neg <= '0';
else
Result <= Reg1;
Neg <= '0';
end if;
WHEN "0000000000010000" =>
--Rotate A to right by two bits (ROR)

Result <= Reg1 ror 2;
Neg <= '0';

WHEN "0000000000100000" =>

--Invert the bit-significance order of B

reg(0)<=Reg2(7);

reg(1)<=Reg2(6);

reg(2)<=Reg2(5);

reg(3)<=Reg2(4);


reg(4)<=Reg2(3);

reg(5)<=Reg2(2);

reg(6)<=Reg2(1);

reg(7)<=Reg2(0);

Result <= reg;



WHEN "0000000001000000" =>
--Produce the result of XORing A and B
Result <= Reg1 XOR Reg2;
Neg <= '0';

WHEN "0000000010000000" =>
--Produce the summation of A and B, then decrease it by 4
Result <= (Reg1 + Reg2)-4;
Neg <= '0';
WHEN "0000000100000000" =>
--Produce all high bits on the output
Result <= "11111111";
Neg <= '0';
WHEN OTHERS =>
--Result <= "11101110";
-- Result <= Reg1 + Reg2;
-- Neg <= '0';
--Don't care, do nothing
end case;






















	end if;
	end process;
	R1 <= Result(3 downto 0); --Since the output seven segments can
	R2 <= Result(7 downto 4); -- only 4-bits, split the 8-bit to two 4-bits.
	end calculation;

				

