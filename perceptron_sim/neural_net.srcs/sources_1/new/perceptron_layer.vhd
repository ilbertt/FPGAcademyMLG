--one layer of three perceptrons

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;

entity perceptron_layer is
    Port ( input : in mem_in_1d(2 downto 0);
           weight :in mem_w_2d (2 downto 0, 3 downto 0);
           result : out std_logic_vector(2 downto 0));
end perceptron_layer;

architecture Behavioral of perceptron_layer is
    component perceptron is
        Port ( input : in mem_in_1d;
            weight : in mem_w_1d;
            result : out std_logic);
    end component;
    
    type perc is array(weight'range(1)) of mem_w_1d(weight'range(2));
    signal s: perc; --weights memory
   
begin
    gen: for i in weight'range(1) generate
        gen_n:for j in weight'range(2) generate
            s(i)(j)<=weight(i,j);
        end generate;
        perc_inst: perceptron port map(
            input=>input,
            weight=>s(i),
            result=>result(i)
        );
    end generate;

end Behavioral;
