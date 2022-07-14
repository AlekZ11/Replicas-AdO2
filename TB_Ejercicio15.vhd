--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:04:33 07/13/2022
-- Design Name:   
-- Module Name:   /home/alekz/Descargas/Ejercicios02/TB_Ejercicio15.vhd
-- Project Name:  Ejercicios02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Ejercicio15
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
 
ENTITY TB_Ejercicio15 IS
END TB_Ejercicio15;
 
ARCHITECTURE behavior OF TB_Ejercicio15 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Ejercicio15
    PORT(
         clk : IN  std_logic;
         sensor : IN  std_logic;
         OE : OUT  std_logic_vector(0 to 2);
         SN : OUT  std_logic_vector(0 to 2)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal sensor : std_logic := '0';

 	--Outputs
   signal OE : std_logic_vector(0 to 2);
   signal SN : std_logic_vector(0 to 2);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Ejercicio15 PORT MAP (
          clk => clk,
          sensor => sensor,
          OE => OE,
          SN => SN
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
      -- hold reset state for 100 ns.
		sensor <= '0';
      wait for 100 ns;	
		sensor <= '1';
      --wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
