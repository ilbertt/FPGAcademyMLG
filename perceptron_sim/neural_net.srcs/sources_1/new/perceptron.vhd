--1 layer perceptron with step function

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;

entity perceptron is
    Port ( input : in mem_in_1d;
           weight : in mem_w_1d;
           result : out std_logic);
end perceptron;

architecture Behavioral of perceptron is
begin
    process(weight, input)
    variable s: signed(IN_WIDTH + W_WIDTH -1+N downto 0);
    begin
        s:=(others=>'0');
        s:=s+weight(0); --bias
        loop1: for i in input'range loop
            s:=s+weight(i+1)*input(i);  --weighted sum of inputs 
        end loop;
        if s>0 then --output: step function 
            result<='1';
        else
            result<='0';
        end if;
    end process;
end Behavioral;
