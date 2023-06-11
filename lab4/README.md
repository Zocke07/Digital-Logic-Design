# LAB 4: FPGA Combinational Circuits
◼ Objective  
➢ To be familiar with the VHDL codes  
➢ To know how to use the FPGA board for circuit design  
◼ Background knowledge  
9. Read the VHDL chapters in the textbook  
10. Read the provided ppt file to know how to use the Quartus Lite and FPGA board  
◼ Experiments, observations, and discussion:  
## Project Part 1  
1. FPGAs are widely used in industry nowadays. They are flexible and easy to use. This lab shows how easy it could be if you know the basic steps to 
program an FPGA via VHDL.  
2. In the project, you need to build an 8-bit priority encoder. A priority encoder produces a value of n if the input binary number is 00…0b<sub>n</sub>xx…xx, where x 
represents “don’t care” and 𝑏 = 1. For example, the encoded output for binary numbers from 00100000 to 00111111 is five. In case the binary is 
00000000, then the display is not illuminated.  
3. The input bits are set by switches SW[7] to SW[0], where SW[7] is the MSB. The encoded result is shown on 7-segment display HEX0.  
4. You need to read the user’s manual of the FPGA board to know the pin assignments of the switches and the 7-segment display. Note that the 
displays are of common anode type. Thus, you need to use a low-level voltage to light a segment.  
## Project Part 2  
1. Design a 4-bit by 4-bit unsigned multiplier and show the results (less than 100<sub>10</sub>) on two 7-segment displays in decimal format.   
2. Again, you must use SW[7] to SW[4] and SW[3] to SW[0] as the binary inputs and the results are shown on HEX0 and HEX1.  
