module dtg(G);//test bench for gray code convertor 8026
 reg [3:0] B;//4-bit input Binary representation of the number 8026
 output [3:0] G;//4-bit coverted output in Gray Code 8026
 deci_to_gray w1(G,B); //instantiating the the binary to gray code converter 8026
 initial begin //start of test block 8026
 B = 4'b0011; //number whose gray code is to be determined 8026
 end  //end of test block 8026
 initial begin //block for printing the gray code equivalent 8026
 $monitor("The converted gray code is = %b%b%b%b" , G[3],G[2],G[1],G[0]); //printing the gray code obtained 8026
 end //end of block for printing 8026
endmodule //end of module for gray code convertor 8026

 
