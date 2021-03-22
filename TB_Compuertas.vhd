--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:15:50 03/21/2021
-- Design Name:   
-- Module Name:   C:/Xilinx/Laboratorio_1/TB_Compuertas.vhd
-- Project Name:  Laboratorio_1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: compuertas
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
 
ENTITY TB_Compuertas IS
END TB_Compuertas;
 
ARCHITECTURE behavior OF TB_Compuertas IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT compuertas
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';

 	--Outputs
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: compuertas PORT MAP (
          A => A,
          B => B,
          X => X,
          Y => Y,
          Z => Z
        );

   -- Valores de las entradas
   A <= '0', '1' after 200 ns;
   B <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END;
