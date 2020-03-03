--output neuron with approximated logistic function

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;

entity neuron is
    Port ( input : in mem_in_1d;
           weight : in mem_w_1d;
           result : out signed(IN_WIDTH-1 downto 0));
end neuron;

architecture Behavioral of neuron is    
begin
    process(weight, input)
    variable s: signed(IN_WIDTH + W_WIDTH -1+N downto 0);
    variable s0: signed(IN_WIDTH downto 0);
    variable s1: signed(2*s0'length-1 downto 0);
    begin
        s:=(others=>'0');
        s:=s+weight(0); --bias
        loop1: for i in input'range loop
            s:=s+weight(i+1)*input(i);  --weighted sum
        end loop;
        if(s>A*B or s=A*B) then --output: approx logistic function
            result<=to_signed(B**2, result'length);
        elsif(s>0 and s<A*B) then
            s0:=s(IN_WIDTH downto 0);
            s1:=-((s0/A-B)*(s0/A-B))/2+B*B;
            result<=s1(result'range);
        elsif((s>-A*B and s<0) or s=0) then
            s0:=s(IN_WIDTH downto 0);
            s1:=((s0/A+B)*(s0/A+B))/2;
            result<=s1(result'range);
        else
            result<=(others=>'0');  
        end if;
    end process;
end Behavioral;
