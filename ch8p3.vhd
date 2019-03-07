library ieee;
use ieee.std_logic_1164.all;

entity ch8p3 is
    port (
        A_1     : in std_logic;
        A_2     : in std_logic;
        B_1     : in std_logic;
        B_2     : in std_logic;
        D_1     : in std_logic;
        E_out   : out std_logic 
    );
end ch8p3;

architecture concurrent of ch8p3 is
begin
    E_out <=    (A_1 and A_2) or
                (B_1 or B_2) or
                (B_2 and (not D_1));
end concurrent;