----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.02.2020 12:39:44
-- Design Name: 
-- Module Name: perceptron_sim - Behavioral
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

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
use work.lib_p.all;
entity perceptron_sim is
--  Port ( );
end perceptron_sim;

architecture Behavioral of perceptron_sim is
component perceptron_demo is
    Port ( in1 : in signed(IN_WIDTH-1 downto 0);
           in2 : in signed(IN_WIDTH-1 downto 0);
           theta0 : in signed(W_WIDTH-1 downto 0); --theta0=bias
           theta1 : in signed(W_WIDTH-1 downto 0);
           theta2 : in signed(W_WIDTH-1 downto 0);
           res : out std_logic);
    end component;
    signal in1, in2: signed(IN_WIDTH-1 downto 0);
    signal theta0,theta1,theta2: signed(W_WIDTH-1 downto 0);
    signal res: std_logic;
begin
    perceptron_inst: perceptron_demo port map(
    in1=>in1,
    in2=>in2,
    theta0=>theta0,
    theta1=>theta1,
    theta2=>theta2,
    res=>res
    );
    theta0<=(others=>'0');
    theta1<=to_signed(-10, theta1'length);
    theta2<=to_signed(5, theta2'length);
    
    process
    begin
        wait for 10 ns;
        in1<=to_signed(5, in1'length);
        in2<=to_signed(0, in2'length);
        wait for 10 ns;
        in1<=to_signed(10, in1'length);
        in2<=to_signed(0, in2'length);
        wait for 10 ns;
        in1<=to_signed(3, in1'length);
        in2<=to_signed(2, in2'length);
        wait for 10 ns;
        in1<=to_signed(3, in1'length);
        in2<=to_signed(6, in2'length);
        wait for 10 ns;
        in1<=to_signed(3, in1'length);
        in2<=to_signed(8, in2'length);
        wait for 10 ns;
        in1<=to_signed(2, in1'length);
        in2<=to_signed(10, in2'length);
        wait for 10 ns;
        in1<=to_signed(0, in1'length);
        in2<=to_signed(15, in2'length);
        wait for 10 ns;
        wait;
    end process;

end Behavioral;
