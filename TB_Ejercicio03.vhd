--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:37 07/13/2022
-- Design Name:   
-- Module Name:   /home/alekz/Descargas/Ejercicios02/TB_Ejercicio03.vhd
-- Project Name:  Ejercicios02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ejercicio03
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY TB_Ejercicio03 IS
END TB_Ejercicio03;
 
ARCHITECTURE behavior OF TB_Ejercicio03 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejercicio03
    PORT(
         clk : IN  std_logic;
         RST : IN  std_logic;
         L : IN  std_logic;
         R : IN  std_logic;
         S : IN  std_logic_vector(0 to 1);
         D : IN  std_logic_vector(0 to 3);
         Q : OUT  std_logic_vector(0 to 3)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal RST : std_logic := '0';
   signal L : std_logic := '0';
   signal R : std_logic := '0';
   signal S : std_logic_vector(0 to 1) := (others => '0');
   signal D : std_logic_vector(0 to 3) := (others => '0');

 	--Outputs
   signal Q : std_logic_vector(0 to 3);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio03 PORT MAP (
          clk => clk,
          RST => RST,
          L => L,
          R => R,
          S => S,
          D => D,
          Q => Q
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      D <= "0101";
		L <= '1';
		R <= '0';
		S <= "10";
      --wait for 100 ns;	
      wait for clk_period;
		S <= "01";
		wait for clk_period;
		S <= "11";
		wait for clk_period;
		S <= "00";
		wait for clk_period;
		RST <= '1';
      -- insert stimulus here 

      wait;
   end process;

END;
