.global _start
_start:
	 MOV     r0, #45             // Example input: a = 45
        MOV     r1, #10             // Example input: b = 10

gcd_loop:
        CMP     r1, #0              // while (b = 0)
        BEQ     done                // if b = 0, exit loop

        MOV     r2, r0              // temp = a
        MOV     r3, r1              // copy b (for mod calculation)
        BL      mod_sub             // r1 = a mod b (result in r1)
        MOV     r0, r3              // a = old b
        B       gcd_loop            // repeat until b = 0

done:
        
        B       done                // Result (GCD) now in r0       

mod_sub:
        CMP     r0, r1              // if a < b
        BLT     mod_done            // return a as remainder

mod_loop:
        SUB     r0, r0, r1          // a = a - b
        CMP     r0, r1
        BGE     mod_loop            // continue if a >= b

mod_done:
        MOV     r1, r0              @ remainder in r1
        BX      lr
	
	