----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:30:47 07/13/2022 
-- Design Name: 
-- Module Name:    FFJK01 - Behavioral 
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

entity FFJK01 is
    Port ( clk: in  STD_LOGIC;
           Q: out  STD_LOGIC_VECTOR (3 downto 0));
end FFJK01;

architecture Behavioral of FFJK01 is
signal Qn : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	Q <= Qn;
	process(clk)
		begin
			if (clk'event and clk = '0') then
					Qn <= not((Qn(3) or Qn(2)) or Qn(1)) & Qn (3 downto 1);
			end if;
	end process;
end Behavioral;

