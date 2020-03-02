library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
package lib_p is
    constant N: integer:=8;
    constant A: integer:=64;
    constant B: integer:=10;
	constant W_WIDTH: integer :=10;
	constant IN_WIDTH: integer :=16;
	--constant FIL_DATA_WIDTH: integer :=4;
	type mem_w_1d is array(natural range <>) of signed(W_WIDTH-1 downto 0);
	type mem_in_1d is array(natural range <>) of signed(IN_WIDTH-1 downto 0);
	type mem_w_2d is array(natural range <>,natural range <>) of signed(W_WIDTH-1 downto 0);
	type mem_in_2d is array(natural range <>,natural range <>) of signed(IN_WIDTH-1 downto 0);
	--type fil_mem is array(natural range <>) of std_logic_vector(FIL_DATA_WIDTH-1 downto 0);
end lib_p; 