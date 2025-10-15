.global _start
_start:
.data
my_array:
    .word 28, -10, 100, 55, 150, 69, 500, 35  //Maximum value is 500.
array_size:
    .word 8                                   // The number of elements in array_data.
.text
    LDR r0, =my_array         // r0 = Starting address of the array (base pointer).
    LDR r1, =array_size         // Load address of the size variable.
    LDR r1, [r1]                // register direct r1 = Number of elements in the array (8).
    LDR r2, [r0], #4            // r2 = First element (28). r0 now points to the second element (-10).
    SUBS r1, r1, #1             // r1 = 7. Use SUBS to set flags for zero check.
    BEQ end_max_find            // If the array had only 1 element, we are done (r2 holds the answer).
	
loop_max_find:
    LDR r3, [r0], #4            // r3 = Current element. r0 moves to the next word address.
    CMP r3, r2                  // Compare r3 and r2.
    MOVGT r2, r3                // r2 = MAX(r2, r3).
    SUBS r1, r1, #1             // Decrement counter r1 (and update flags).
    BNE loop_max_find           // If r1 is Not Equal to zero, continue the loop.

end_max_find:
    // r2 now holds the largest integer found.
    SWI 0                       // Exit the program.

	