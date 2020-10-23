module test_bench; //test bench for minterm function 8026
 reg [3:0] F; //four bit input for the variables of the function 8026
 f1(E,F[3],F[2],F[1],F[0]); //E is the output of the function when inputs are F[3] F[2] F[1] F[0] 8026
 initial //start of the test block 8026
  begin
   F=4'b0000; //initial value of the input F 8026
   repeat(15) #50 F = F + 4'b0001; //checking for every 4 bit binary number so incremanting by 1 bit 8026
  end  //end of the test block 8026
 initial begin //block for printing each output 8026
 $monitor("%b" , E); //printing each output 8026
 end //end of the printing block 8026
endmodule //end of the module for minterm test bench 8026
