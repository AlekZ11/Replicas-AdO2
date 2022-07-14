----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:37:11 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio15 - Behavioral 
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Ejercicio15 is
Port ( clk, sensor : in  STD_LOGIC;
            OE, SN : out  STD_LOGIC_VECTOR(0 to 2));
end Ejercicio15;

architecture Behavioral of Ejercicio15 is
	type estados is (inicial, eo_ambar, inicial_inv, ns_ambar);
	
	signal futuro, presente: estados:= inicial;
	signal verde: STD_LOGIC_VECTOR(0 to 2):="001";
	signal ambar: STD_LOGIC_VECTOR(0 to 2):="010";
	signal rojo: STD_LOGIC_VECTOR(0 to 2):="100";
	
begin
proceso1 : process(presente, sensor) begin
	case presente is
		when inicial =>
			if sensor = '1' then
				futuro <= eo_ambar;
			end if;
		when eo_ambar =>
				futuro <= inicial_inv;
		when inicial_inv =>
				futuro <= ns_ambar;
		when ns_ambar =>
				futuro <= inicial;
	end case;
end process proceso1;
	
proceso2: process(presente) begin
	case presente is
		when inicial =>
			SN <= rojo;
			OE <= verde;
		when eo_ambar =>
			SN <= rojo;
			OE <= ambar;
		when inicial_inv =>
			SN <= verde;
			OE <= rojo;
		when ns_ambar =>
			SN <= ambar;
			OE <= rojo;
	end case;
end process proceso2;

proceso3: process(clk) begin
	if(clk'event and clk='1') then
		presente <= futuro;
	end if;
end process proceso3;

end Behavioral;

