LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
ENTITY TB_Compuertas IS
END TB_Compuertas;
 
ARCHITECTURE behavior OF TB_Compuertas IS 

	COMPONENT compuertas
	PORT(
			A : IN  std_logic_vector(1 downto 0);
			B : IN  std_logic_vector(1 downto 0);
			X : OUT  std_logic;
			Y : OUT  std_logic;
			Z : OUT  std_logic
		);
	END COMPONENT;
	
   	signal A : std_logic_vector(1 downto 0);
   	signal B : std_logic_vector(1 downto 0);
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

		A(1) <= '0', '1' after 400ns;
		A(0) <= '0', '1' after 200ns, '0' after 400ns, '1' after 600ns;
		B(1) <= '0', '1' after 100ns, '0' after 200ns, '1' after 300ns, '0' after 400ns, '1' after 500ns, '0' after 600ns, '1' after 700ns, '0' after 800ns;
		B(0) <= '0', '1' after 50ns, '0' after 100ns, '1' after 150ns, '0' after 200ns, '1' after 250ns, '0' after 300ns, '1' after 350ns, '0' after 400ns, '1' after 450ns, '0' after 500ns, '1' after 550ns, '0' after 600ns, '1' after 650ns, '0' after 700ns, '1' after 750ns;
END;