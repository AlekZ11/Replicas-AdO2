----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:28:17 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio05 - Behavioral 
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

entity Ejercicio05 is
Port ( clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (3 downto 0);
           SN, EO : inout  STD_LOGIC_VECTOR (0 to 2));
end Ejercicio05;

architecture Behavioral of Ejercicio05 is
signal Qn : STD_LOGIC_VECTOR (3 downto 0) := "0000";
begin
	Q <= Qn;
	process(clk)
		begin
			if (clk'event and clk = '0') then
					Qn <= not((Qn(3) or Qn(2)) or Qn(1)) & Qn (3 downto 1);
				if(Qn = "1000") then
					SN <= "100";
					EO <= "001";
				elsif (Qn = "0100") then
					EO <= "010";
				elsif (Qn = "0010") then
					SN <= "001";
					EO <= "100";
				elsif (Qn = "0001") then
					SN <= "010";
				end if;
			end if;
	end process;
end Behavioral;

