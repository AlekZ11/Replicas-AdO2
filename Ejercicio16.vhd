----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:19 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio16 - Behavioral 
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

entity Ejercicio16 is
Port ( clk, x : in  STD_LOGIC;
           z : out  STD_LOGIC);
end Ejercicio16;

architecture Behavioral of Ejercicio16 is
type estados is (A,B,C,D,E,F);
signal presente, futuro : estados;
begin
proceso1: process(presente, x) begin
	case presente is
		when A => z <= '0';
			if x = '1' then
				futuro <= B;
			end if;
		when B => z <= '0';
			if x = '1' then
				futuro <= C;
			end if;
		when C => z <= '0';
			if x = '0' then
				futuro <= D;
			end if;
		when D => z <= '0';
			if x = '0' then
				futuro <= E;
			end if;
		when E => z <= '0';
			if x = '1' then
				futuro <= F;
			end if;
		when F =>
			if x = '1' then
				futuro <= A;
				z <= '1';
			else
				z <= '0';
			end if;
	end case;
end process proceso1;

proceso2: process(clk) begin
	if (clk'event and clk='1') then
		presente <= futuro;
	end if;
end process proceso2;

end Behavioral;

