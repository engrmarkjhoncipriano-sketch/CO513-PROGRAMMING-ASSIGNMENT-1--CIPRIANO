.global _start
_start:
	MOV r0, #4          // Load the number n into r0. n=4
    
    MOV r1, #1          // Initialize r1 to 1 (the factorial result).
    CMP r0, #1          // Compare r0 with 1.
    BLE end             // If n <= 1, branch to end.
    
    MOV r2, r0          // Copy the value of n from r0 to r2 (our loop counter).

loop:
    MUL r1, r1, r2      // Multiply the current result (r1) by the counter (r2).
    SUB r2, r2, #1      // Subtract the counter r2 by 1.
    CMP r2, #1          // Compare r2 with 1.
    BGT loop            // If r2 is greater than 1, branch back to the loop.

end:
    // The result (n!) is now in r1.
    // You can inspect the value of r1 here.

            
    SWI 0               // Exit the program.
	
	