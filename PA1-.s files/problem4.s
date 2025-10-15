.global _start
_start:
    MOV r0, #0xFA       // Load the 8-bit input value 0xFA (1111 1010) into r0.
    AND r2, r0, #0xF0   // Isolate the Upper Nibble (r2 = 0xF0).
    LSR r2, r2, #4      // r2 now holds the shifted MSN (0x0F).
    AND r3, r0, #0x0F   // Isolate the Lower Nibblee (r3 = 0x0A).
    LSL r3, r3, #4      // r3 now holds the shifted LSN (0xA0).
    ORR r1, r2, r3      // Combine the new LSN (r2) and new MSN (r3) into the output r1.
   					    // r1 now holds the swapped value (0xFA).

    SWI 0               // Exit the program.

	
	