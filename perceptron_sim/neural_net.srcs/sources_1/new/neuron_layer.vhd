--one layer of three neurons

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.lib_p.all;

entity neuron_layer is
    Port ( input : in mem_in_1d(2 downto 0);
           weight :in mem_w_2d(2 downto 0, 3 downto 0) ;
           result : out mem_in_1d(2 downto 0));
end neuron_layer;

architecture Behavioral of neuron_layer is
    component neuron is
        Port ( input : in mem_in_1d;
            weight : in mem_w_1d;
            result : out signed(IN_WIDTH-1 downto 0));
    end component;
    
    type perc is array(weight'range(1)) of mem_w_1d(weight'range(2));
    signal s: perc;
   
begin
    gen: for i in weight'range(1) generate
        gen_n:for j in weight'range(2) generate
            s(i)(j)<=weight(i,j);
        end generate;
        perc_inst: neuron port map(
            input=>input,
            weight=>s(i),
            result=>result(i)
        );
    end generate;

end Behavioral;