# CO513-PROGRAMMING-ASSIGNMENT 1-CIPRIANO

# PROBLEM 1: Factorial Calculation

This problem 1 calculates the factorial of n (n!).
Register r0 holds the input, r1 is the result initialized to 1, and r2 is the loop counter, also initialized to 4 .
The program enters a loop that runs if the counter r2 is greater than 1.
It multiplies the running result in r1 by the current counter r2.
It then decrements the counter (SUB r2, r2, #1).
The loop executes for r2 = 4, 3, and 2. When reaches 1, the loop terminates. The result, 24 in decimal and 18 in hexadecimal, is stored in register r1.

YT LINK: https://youtu.be/mYAhycGxqjM

# PROBLEM 2: Eucledian Algorithim for GCD

# PROBLEM 3: Bitwise Parity Checker

This problem 3 performs bitwise parity checker
It uses an iterative loop to examine the input integer in register r0 bit-by-bit, starting with the Least Significant Bit (LSB). The core of the algorithm uses the Exclusive OR (EOR) instruction to toggle a parity flag in register r1 every time a set bit (1) is found. After processing all 32 bits via logical shifting, the final value in r1 indicates the parity: 0 for an even count of set bits, and 1 for an odd count.

YT LINK: https://youtu.be/0PmWLRFeLYg

# PROBLEM 4: Swap Nibbles in a Byte

This proble 4 swapping the nibbles in a byte 
separates the 8-bit input into its two 4-bit nibbles, shifts them to their new positions, and then combines them using the ORR instruction, storing the final swapped value in r1.

YT LINK: https://youtu.be/uEzjlqrkEnM

# PROBLEM 5: Find the Maximum Value in an Array

This problem 5 program efficiently determines the maximum 32-bit signed integer in a defined array. It initializes the running maximum in register r2 with the first element while using post-increment addressing (LDR r2, [r0], #4) to advance the array pointer r0. The main loop iterates through the remaining elements, utilizing CMP to compare the current value (r3) against the maximum (r2). The conditional instruction MOVGT r2, r3 ensures that the maximum is updated only when a strictly larger value is found. The loop is controlled by a decrementing counter in r1 (SUBS r1, r1, #1; BNE loop_max_find), which terminates the program when all elements are processed, leaving the final result in r2.

YT LINK: https://youtu.be/y7eJJ5_XcSQ
