README	FILE
Assignment 1, ECE 474
Group: Angel Lopez , Peter Lankisch
Date: 9/8/2015

1.) Xilinx Vivado v2015.2 (64bit)

2.) Target FPGA: xc7a100tlcsg324-2L Speed-2L (used for almost all the synthesis)
	Additional FPGA used: xc7a100tlfgg484-3 Speed -3 (used for synthesis of circuit 5 only)
							 ( Due to number of required i/o)

3.) In order to calculate the critical path of circuits 1-5, We used the information regarding the critical
	path for each component within each circuit (ADDER, SUB, REG....) and found the longest path the 
	data must travel from the inputs to the outputs of the circuit. We then traced the longest
	path to create a running sum of the critical paths of all the components the path went in and out of.
	The resulting sum of the critical paths of each component was the total estimate of the critical path of 
	the whole circuit. 	

