
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

package lib_p is
    constant N: integer:=8;
    constant A: integer:=64;
    constant B: integer:=10;
	constant W_WIDTH: integer :=10;
	constant W_NUM: integer := 4;  --number of weights to each perceptron (= IN_SIG + 1)
	constant IN_WIDTH: integer :=16;
	constant IN_SIG: integer := 3; --number of input signals to each perceptron
	constant OUT_WIDTH: integer :=16;
	constant OUT_SIG: integer := 3; --number of output signals from each perceptron
	constant PERC_NUM: integer := 3; --number of perceptrons for each layer  
	--constant FIL_DATA_WIDTH: integer :=4;
	type mem_w_1d is array(natural range <>) of signed(W_WIDTH-1 downto 0);
	type mem_in_1d is array(natural range <>) of signed(IN_WIDTH-1 downto 0);
	type mem_out_1d is array(OUT_SIG-1 downto 0) of std_logic;
	type mem_w_2d is array(natural range <>,natural range <>) of signed(W_WIDTH-1 downto 0);
	type mem_in_2d is array(natural range <>,natural range <>) of signed(IN_WIDTH-1 downto 0);
	type mem_out_2d is array(natural range <>, natural range <>) of std_logic;
	--type fil_mem is array(natural range <>) of std_logic_vector(FIL_DATA_WIDTH-1 downto 0);
end lib_p; 
