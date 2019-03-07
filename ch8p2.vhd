library ieee;
use ieee.std_logic_1164.all;

entity ch8p2 is
    port (
        A_1     : in std_logic;
        A_2     : in std_logic;
        B_1     : in std_logic;
        B_2     : in std_logic;
        D_1     : in std_logic;
        E_out   : out std_logic
    );
end ch8p2;

architecture ifversion of ch8p2 is
    signal inputs : std_logic_vector(4 downto 0) := A_1 & A_2 & B_1 & B_2 & D_1; --concatenation of inputs
begin
    
    process(inputs) begin
        if (inputs = "00001") then
            E_out <= '0';
        elsif (inputs = "11001") then
            E_out <= '0';
        elsif (inputs = "10001") then
            E_out <= '0';
        elsif (inputs = "01001") then
            E_out <= '0';
        else
            E_out <= '1';
        end if;
    end process;
    
end ifversion;


architecture caseversion of ch8p2 is
    signal inputs : std_logic_vector(4 downto 0) := A_1 & A_2 & B_1 & B_2 & D_1; --concatenation of inputs
begin
    process(inputs) begin
        case inputs is
            when "00001" => E_out <= '0';
            when "11001" => E_out <= '0';
            when "10001" => E_out <= '0';
            when "01001" => E_out <= '0';
            when others => E_out <= '1';
        end case;
    end process;
end caseversion;