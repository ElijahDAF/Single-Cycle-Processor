library ieee;
use ieee.std_logic_1164.all;


entity CPU_3380_Test is
end entity CPU_3380_Test;


architecture mixed of CPU_3380_Test is
    constant tick : time := 100 ns;
	 constant RUN_TIME : integer := 18;
    signal reset, clock : std_logic;
	 signal mem_dump : std_logic := '0';
    --signal instruction : std_logic_vector(0 to 15);
begin
    uut : entity work.CPU_3380
        port map(
            clk		=> clock,
            clear	=> reset,
				mem_dump    => mem_dump
        );

    driver : process is
    begin
        -- reset the system
        reset <= '0'; 
		  wait for 50 ns;
        reset <= '1';

			for i in  1 to RUN_TIME loop
				wait for tick;
			end loop;
--			 0. subi r2, r0, 4
--            2. addi r3, r1, 7
--            4. add r4, r2, r3
--            6. or r5, r4, r3
--            8. sw r3, 2(r5)
--           10. jmp 14
--           12. and r3, r4, r1
--           14. lw r2, 6(r3)
--           16. add r7, r4, r4
--           18. sub r6, r2, r7
--           20. sw r4, 0(r6)
--           22. sub r4, r4, r1
--           24. slt r8, r4, r1
--           26. bne r8, r0, 2
--           28. jmp 16
--           30. and r5, r7, r1
        wait;
    end process driver;

    clock_p : process is
    begin
        
        for i in 0 to 50 loop
                clock <= '1'; wait for tick/2;
                clock <= '0'; wait for tick/2;
        end loop;

    end process clock_p;
end architecture mixed;
