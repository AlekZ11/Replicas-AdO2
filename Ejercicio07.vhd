----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:44 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio07 - Behavioral 
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

entity Ejercicio07 is
Port ( clk, RST : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (2 downto 0));
end Ejercicio07;

architecture Behavioral of Ejercicio07 is
signal Qaux :  STD_LOGIC_VECTOR (2 downto 0);
begin
	Q <= Qaux;
	process(clk, RST)
	begin
		if (clk'event and clk = '1') then
			if (RST = '0' or Qaux = "111") then
				Qaux <= "000";
			else
				Qaux <= Qaux+1;
			end if;
		end if;
	end process;
end Behavioral;

