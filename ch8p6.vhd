library ieee;
use ieee.std_logic_1164.all;

entity ch8p6 is
    port (
        muxinputs   : in std_logic_vector(7 downto 0);
        sel         : in std_logic_vector(2 downto 0);
        output      : out std_logic
    );
end ch8p6;

architecture ifversion of ch8p6 is
begin
    process(sel) begin
        if (sel = "000") then
            output <= muxinputs(0);
        elsif (sel = "001") then
            output <= muxinputs(1);
        elsif (sel = "010") then
            output <= muxinputs(2);
        elsif (sel = "011") then
            output <= muxinputs(3);
        elsif (sel = "100") then
            output <= muxinputs(4);
        elsif (sel = "101") then
            output <= muxinputs(5);
        elsif (sel = "110") then
            output <= muxinputs(6);
        elsif (sel = "111") then
            output <= muxinputs(7);
        else
            output <= '0';
        end if;
    end process;
end ifversion;

architecture caseversion of ch8p6 is
begin
    process(sel) begin
        case sel is
            when "000" => output <= muxinputs(0);
            when "001" => output <= muxinputs(1);
            when "010" => output <= muxinputs(2);
            when "011" => output <= muxinputs(3);
            when "100" => output <= muxinputs(4);
            when "101" => output <= muxinputs(5);
            when "110" => output <= muxinputs(6);
            when "111" => output <= muxinputs(7);
            when others => output <= '0';
        end case;
    end process;
end caseversion;