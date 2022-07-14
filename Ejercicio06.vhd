----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:38 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio06 - Behavioral 
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

entity Ejercicio06 is
Port ( clk, RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio06;

architecture Behavioral of Ejercicio06 is
signal Qaux : STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= Qaux;
	process(clk, RST)
	begin
		if ( clk'event and clk='1') then
			if(RST = '0' or Qaux ="101") then
				Qaux <= "000";
			elsif(Qaux = "000") then
				Qaux <= Qaux+1;
			else
				Qaux <= Qaux+2;
			end if;
		end if;
	end process;

end Behavioral;

