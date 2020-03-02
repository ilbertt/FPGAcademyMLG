----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 23.02.2020 12:35:40
-- Design Name: 
-- Module Name: perceptron - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

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
        s:=s+weight(0);
        loop1: for i in input'range loop
            s:=s+weight(i+1)*input(i);
        end loop;
        if s>0 then
            result<='1';
        else
            result<='0';
        end if;
    end process;
end Behavioral;
