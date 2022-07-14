----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:29:17 07/13/2022 
-- Design Name: 
-- Module Name:    Ejercicio09 - Behavioral 
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

entity Ejercicio09 is
Port ( clk, X : in  STD_LOGIC;
           Z1, Z2 : inout  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR(3 downto 0));
end Ejercicio09;

architecture Behavioral of Ejercicio09 is
signal Qaux: std_logic_vector(3 downto 0) := "0000";
begin
	Q <= Qaux;
	process(clk, X) 
	begin
	if(clk'event and clk = '1') then
		if(X = '0') then
			Qaux <= Qaux+1;
		else
			Qaux <= Qaux-1;
		end if;
		if(Qaux(0) = '0') then
			Z1 <= '1';
			Z2 <= '0';
		else
			Z1 <= '0';
			Z2 <= '1';
		end if;
	end if;
	end process;
end Behavioral;

