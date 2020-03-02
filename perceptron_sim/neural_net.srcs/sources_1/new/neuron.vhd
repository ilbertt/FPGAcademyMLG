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

entity neuron is
    Port ( input : in mem_in;
           weight : in mem_w;
           result : out signed(IN_WIDTH-1 downto 0));
end neuron;

architecture Behavioral of neuron is
    signal s0: signed(IN_WIDTH + W_WIDTH -1+N downto 0);
    signal s1: signed(67 downto 0);
begin
    process(weight, input)
    variable s: signed(IN_WIDTH + W_WIDTH -1+N downto 0);
    begin
        s:=weight(0);
        loop1: for i in input'range loop
            s:=s+weight(i-1)*input(i);
        end loop;
        s0<=s;
    end process;
    s1<=s0*s0/64+s0+1;
    result<= (others =>'1') when s0>1 else
          (others=>'0')  when s0<1 else 
          s1(result'range);
end Behavioral;
