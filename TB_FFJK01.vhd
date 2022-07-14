--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:59:00 07/13/2022
-- Design Name:   
-- Module Name:   /home/alekz/Descargas/Ejercicios02/TB_FFJK01.vhd
-- Project Name:  Ejercicios02
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FFJK01
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
 
ENTITY TB_FFJK01 IS
END TB_FFJK01;
 
ARCHITECTURE behavior OF TB_FFJK01 IS 
 
    
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Flip_Flop_JK
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         clk : IN  std_logic;
         Q : OUT  std_logic;
         Qn : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal clk : std_logic := '0';

	--Outputs
   signal Q : std_logic;
   signal Qn : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Flip_Flop_JK PORT MAP (
          J => J,
          K => K,
          clk => clk,
          Q => Q,
          Qn => Qn
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
      wait for clk_period*10;
		J <= '0';
		K <= '1';
		wait for clk_period*10;
		J <= '0';
		K <= '0';
		wait for clk_period*10;
		J <= '1';
		K <= '0';
		wait for clk_period*10;
		J <= '1';
		K <= '1';
      wait;
   end process;

END;
