library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;

entity network is
    Port (input: in mem_in_1d(9 downto 0);
          weight1: in mem_w_2d(9 downto 0, 10 downto 0);
          weight2: in mem_w_2d(4 downto 0, 10 downto 0);
          weight3: in mem_w_2d(2 downto 0, 5 downto 0);
          weight4: in mem_w_2d(0 downto 0, 3 downto 0);
          result: out std_logic_vector(0 downto 0) );
end network;

architecture Behavioral of network is
    
    component neuron_layer is
        Port ( input : in mem_in_1d;
            weight :in mem_w_2d;
            result : out mem_in_1d);
    end component;
    
    component perceptron_layer is
        Port ( input : in mem_in_1d;
             weight :in mem_w_2d;
             result : out std_logic_vector);
    end component;
    
    signal res1: mem_in_1d(9 downto 0);
    signal res2: mem_in_1d(4 downto 0);
    signal res3: mem_in_1d(2 downto 0);
    
begin
    layer1: neuron_layer port map(input=>input, weight=>weight1, result=>res1);
    layer2: neuron_layer port map(input=>res1, weight=>weight2, result=>res2);
    layer3: neuron_layer port map(input=>res2, weight=>weight3, result=>res3);
    layer4: perceptron_layer port map(input=>res3, weight=>weight4, result=>result);

end Behavioral;
