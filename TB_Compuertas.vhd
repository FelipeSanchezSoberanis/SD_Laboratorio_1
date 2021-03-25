LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY TB_Compuertas IS
END TB_Compuertas;
 
ARCHITECTURE behavior OF TB_Compuertas IS 
 
    COMPONENT compuertas
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         X : OUT  std_logic;
         Y : OUT  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;

   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal X : std_logic;
   signal Y : std_logic;
   signal Z : std_logic;
 
	BEGIN
	
		uut: compuertas PORT MAP (
				A => A,
				B => B,
				X => X,
				Y => Y,
				Z => Z
				);

		A <= '0', '1' after 200 ns;
		B <= '0', '1' after 100 ns, '0' after 200 ns, '1' after 300 ns;

END;