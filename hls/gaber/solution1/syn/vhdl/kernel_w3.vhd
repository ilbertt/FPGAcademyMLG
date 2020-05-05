-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.2 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity kernel_w3_rom is 
    generic(
             DWIDTH     : integer := 32; 
             AWIDTH     : integer := 5; 
             MEM_SIZE    : integer := 32
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of kernel_w3_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "10111111111011010011100101110100", 
    1 => "00111111100000010101000001111100", 
    2 => "10111111010100010110010110101010", 
    3 => "00111111110010000001101001011101", 
    4 => "10111111011010111000001110010111", 
    5 => "10111111100000011111001111010101", 
    6 => "10111111011001000111011010111111", 
    7 => "01000000000000011011110110110110", 
    8 => "10111111100101011001111011110110", 
    9 => "00111111011101011100000111011001", 
    10 => "10111111011011000110100000100110", 
    11 => "10111101010011000100111011111001", 
    12 => "10111111011011101000001001110101", 
    13 => "10111111011100010111010111111111", 
    14 => "10111101100001100100001001010110", 
    15 => "00111111101101100110010110101010", 
    16 => "00111111011011100110100111101011", 
    17 => "00111101101011001101010100000001", 
    18 => "10111101100110100111111001110000", 
    19 => "10111110100111000010000011010001", 
    20 => "00111111011101100111010011110110", 
    21 => "00111110111010000000101010001101", 
    22 => "00111111010101010000101011110100", 
    23 => "10111101000110101010110001000000", 
    24 => "11000000000100000110100011101100", 
    25 => "00111111001010100101011011010000", 
    26 => "10111111101000001100000011111111", 
    27 => "00111111111110111000010001100011", 
    28 => "10111111101001001110001011100001", 
    29 => "10111110010101001100101001000001", 
    30 => "10111110010110001110010111010101", 
    31 => "01000000000111011001001110100110" );


begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity kernel_w3 is
    generic (
        DataWidth : INTEGER := 32;
        AddressRange : INTEGER := 32;
        AddressWidth : INTEGER := 5);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of kernel_w3 is
    component kernel_w3_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    kernel_w3_rom_U :  component kernel_w3_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


