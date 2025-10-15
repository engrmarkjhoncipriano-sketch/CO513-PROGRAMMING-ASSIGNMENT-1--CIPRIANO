.global _start
_start:
	MOV r0, #23        //Input: r0 = 23 (Binary 10111). Four '1' bits means EVEN parity.
    MOV r1, #0          // Initially r1 (Parity Result) to 0 (Assuming EVEN parity initially).
    // r2 will be used as a temporary register for the LSB check.

loop_check:
    CMP r0, #0          // Compare the working number in r0 with 0.
    BEQ end_parity      // If r0 = 0, all bits have been processed, branch to end.
    AND r2, r0, #1      // r2 = r0 & 1. r2 will be 1 if the LSB is set, 0 otherwise.
    EOR r1, r1, r2      // flag r1 if the LSB was 1.
    LSR r0, r0, #1      // Logical Shift Right r0 by 1 bit. This moves the next bit into the LSB position.
    B loop_check        // Go back to check the next bit.

end_parity:
    
	// The final parity result (0 for Even, 1 for Odd) is now in r1.

    SWI 0               // Exit the program.
	
	
	