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

entity perceptron_demo is
    Port ( in1 : in signed(IN_WIDTH-1 downto 0);
           in2 : in signed(IN_WIDTH-1 downto 0);
           theta0 : in signed(W_WIDTH-1 downto 0); --theta0=bias
           theta1 : in signed(W_WIDTH-1 downto 0);
           theta2 : in signed(W_WIDTH-1 downto 0);
           res : out std_logic);
end perceptron_demo;

architecture Behavioral of perceptron_demo is
    signal s: signed(IN_WIDTH + W_WIDTH -1 downto 0);
begin
    s<=theta0+in1*theta1+in2*theta2;
    res<= '1' when s>0 else
          '0';
end Behavioral;
