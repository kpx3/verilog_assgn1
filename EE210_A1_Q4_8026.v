module deci_to_gray(g,b); //module for gray code convertor 8026
 input [3:0] b; //input binary number to be converted 8026
 output [3:0] g; //output the gray code equivalent of the input number 8026
 assign g[3] = b[3]; // assigning the 4th bit 8026
 xor (g[2],b[3],b[2]);// assigning the 3rd bit the xor of 4th and 3rd bit of binary 8026
 xor (g[1],b[2],b[1]);// assigning the 2nd bit the xor of 3rd and 2nd bit of binary 8026
 xor (g[0],b[1],b[0]);// assigning the 1st bit the xor of 2nd and 1st bit of binary 8026
endmodule//end of module for gray code converter 8026
