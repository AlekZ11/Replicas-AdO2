----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:18:06 07/13/2022 
-- Design Name: 
-- Module Name:    FFT02 - Behavioral 
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

entity FFT02 is
    Port ( T, clk : in  STD_LOGIC;
           Q, Qn : out  STD_LOGIC);
end FFT02;

architecture Behavioral of FFT02 is
signal Qaux: STD_LOGIC := '0';
begin
	Q <= Qaux;
	Qn <= not Qaux;
	process(T, clk)
	begin
		if (clk'event and clk = '1') then
			if (T='1') then
				Qaux <= not Qaux;
			end if;
		end if;
	end process;
end Behavioral;

