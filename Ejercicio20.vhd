----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:38:32 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio20 - Behavioral 
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

entity Ejercicio20 is
Port ( clk : in  STD_LOGIC;
           moneda : in  STD_LOGIC_VECTOR(4 downto 0);
           cambio : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejercicio20;

architecture Behavioral of Ejercicio20 is
type estados is (inicial, moneda5, moneda10, moneda20);
signal presente, futuro : estados;
begin
 proceso1 : process(presente, moneda) begin
	case presente is
		when inicial => cambio <= "0000";
			if moneda = "00101" then
				futuro <= moneda5;
			elsif moneda = "01010" then
				futuro <= moneda10;
			elsif moneda = "10100" then
				futuro <= moneda20;
			else
				futuro <= inicial;
			end if;
		when moneda5 => cambio <= "0000";
			futuro<= inicial;
		when moneda10 => cambio <= "0101";
			futuro<= inicial;
		when moneda20 => cambio <= "1111";
			futuro<= inicial;
	end case;
 end process proceso1;

 proceso2 : process(clk) begin
	if clk'event and clk = '1' then
		presente <= futuro;
	end if;
 end process proceso2;

end Behavioral;

