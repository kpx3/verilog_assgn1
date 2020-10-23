module t_q3;//module of test bench for 8x1 mux 8026
 reg [7:0] I;//8 data input 8026
 reg [2:0] S;//input for selector lines 8026
 mux_8x1 m1(ou,I,S[0],S[1],S[2]); //instantiating the 8x1 mux 8026
 initial //start of test block 8026
  begin
   S=3'b0110; //selector line input corresponding to the roll no 8026
   I = 8'bx0xxxxxx; //data input values for 8x1 mux 8026
  end //end of test block 8026
 initial begin //start of block for printing 8026
 $monitor("%b" , ou); //printing the output corresponding to the selector lines 8026
 end //end of printing block 8026
endmodule //end of module for test bench of 8x1 mux 8026
