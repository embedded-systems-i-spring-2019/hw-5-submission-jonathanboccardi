
library ieee;
use ieee.std_logic_1164.ALL;

entity ch8p7 is
    port (
        dec     : in std_logic_vector(3 downto 0);
        output  : out std_logic_vector(7 downto 0)
    );
end ch8p7;

architecture ifversion of ch8p7 is
begin

    process(dec) begin
        if (dec = "000") then
            output(0) <= '0';
        elsif (dec = "001") then
            output(1) <= '0';
        elsif (dec = "010") then
            output(2) <= '0';
        elsif (dec = "011") then
            output(3) <= '0';
        elsif (dec = "100") then
            output(4) <= '0';
        elsif (dec = "101") then
            output(5) <= '0';
        elsif (dec = "110") then
            output(6) <= '0';
        elsif (dec = "111") then
            output(7) <= '0';
        else
            output <= "11111111";
        end if;
    end process;

end ifversion;

architecture caseversion of ch8p7 is
begin
    process(dec) begin
        case dec is
            when "000" => output(0) <= '0';
            when "001" => output(1) <= '0';
            when "010" => output(2) <= '0';
            when "011" => output(3) <= '0';
            when "100" => output(4) <= '0';
            when "101" => output(5) <= '0';
            when "110" => output(6) <= '0';
            when "111" => output(7) <= '0';
            when others => output <= "11111111";
        end case;
    end process;
end caseversion;