----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/03/2025 07:23:50 PM
-- Design Name: 
-- Module Name: JMP_Concat - Behavioral
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
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity JMP_Concat is
  Port ( Addr : in std_logic_vector(11 downto 0);
         PC : in std_logic_vector(15 downto 0);
         PC_jmp : out std_logic_vector(15 downto 0));
end JMP_Concat;

architecture Behavioral of JMP_Concat is

begin

    PC_jmp <= PC(15 downto 12) & Addr;

end Behavioral;
