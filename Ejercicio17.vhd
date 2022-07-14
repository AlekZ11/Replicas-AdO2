----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:36 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio17 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ejercicio17 is
Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC_VECTOR(0 to 6));
end Ejercicio17;

architecture Behavioral of Ejercicio17 is
type estados is (A,B,C,D,E,F,G,H);
signal presente, futuro : estados;
begin
proceso1 : process (presente, x) begin
	case presente is
		when A => z <= "0000000";
			if x = '0' then
				futuro <= B;
			end if;
		when B => z <= "0000000";
			if x = '1' then
				futuro <= C;
			end if;
		when C => z <= "0000000";
			if x = '1' then
				futuro <= D;
			end if;
		when D => z <= "0000000";
			if x = '0' then
				futuro <= E;
			end if;
		when E => z <= "0000000";
			if x = '1' then
				futuro <= F;
			end if;
		when F => z <= "0000000";
			if x = '0' then
				futuro <= G;
			end if;
		when G => z <= "0000000";
			if  x = '1' then
				futuro <= H;
			end if;
		when H =>
			if x = '0' then 
				futuro <= A;
				z <= "1101111";
			else
				z <= "0000000";
			end if;
	end case;
end process proceso1;

proceso2 : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
end process proceso2;

end Behavioral;

