library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity compuertas is
    Port(
        A, B: in std_logic;
        X, Y, Z: out std_logic
    );
end compuertas;

architecture compuertas_arch of compuertas is
    begin
        X <= A and (not B);
        Y <= (A and (not B)) nor (B and (not A));
        Z <= B and (not A);
end compuertas_arch;