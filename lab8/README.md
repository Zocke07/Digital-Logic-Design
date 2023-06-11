# LAB 8: FPGA Sequential Circuits  
◼ Objective  
➢ To learn how to write VHDL programs to implement sequential circuits  
➢ To learn how to debug a moderately complicated VHDL program  
◼ Background knowledge  
19. Read Fundamentals of Logic Design to refresh the knowledge of sequential   
circuit design using VHDL  
◼ Experiments, observations, and discussion  
# Project Part 1
1. In the project you will build a simple traffic model using the FPGA board. The model has two sets of traffic lights (with each set having Red, Yellow, 
and Green LEDs). The R-G-Y cycle has 10 units, where the Red light lasts 5units, Yellow 1 unit, and Green 4 units.  
2. One unit in the R-G-Y cycle is set to t unit = 1 + 0.25 * (group number) (sec). For example, group 8 must design a counter to have a time unit of 
1 + 0.25 * 8 = 3 second  
5. Present a copy of your program when checking off.  
# Project Part 2  
1. Include two counters to show the remaining time of red lights in the unit of seconds. You can ignore any fractional second and show only whole 
seconds. (我們做不完(哭))  
