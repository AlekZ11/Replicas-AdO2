----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:31:22 07/13/2022 
-- Design Name: 
-- Module Name:    Estados13 - Behavioral 
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

entity Estados13 is
	port(	clk, en1, en2 : in std_logic);
end Estados13;

architecture Behavioral of Estados13 is
	type estados is (A,B,C,D);
	signal edo_pres, edo_fut : estados;

begin
	p_estados : process (en1, en2)	begin
		case edo_pres is
			When A =>
				if(en1 = '1' And en2 = '0')then
					edo_fut <= B;
				elsif (en1 = '0' And en2 = '0')then
					edo_fut <= D;
				end if;
			When B =>
				if(en1 = '1' And en2 = '0')then
					edo_fut <= C;
				elsif (en1 = '0' And en2 = '0')then
					edo_fut <= D;
				end if;
			When C =>
				if(en1 = '1' And en2 = '0')then
					edo_fut <= B;
				elsif (en1 = '0' And en2 = '0')then
					edo_fut <= D;
				end if;
			When D =>
				if(en1 = '1' And en2 = '1')then
					edo_fut <= A;
				elsif (en1 = '0' And en2 = '0')then
					edo_fut <= D;
				end if;
			end case;
	end process p_estados;
	
	p_reloj : process(clk)begin
		if(clk'event and clk = '1') then
			edo_pres <= edo_fut;
		end if;
	end process p_reloj;

end Behavioral;

