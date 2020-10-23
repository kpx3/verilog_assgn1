module  t_EE210_A1_Q2_8026(sum,A,B); //test bench for implementing the ALU 8026
 input [3:0] A;//input the first number 8026
 input [3:0] B;//input the second number 8026
 output [3:0] sum;//storing the sum of the two number 8026
 ALU_implementation a(sum,ovf,negf,zf,carf,A,B);//instantiating the ALU 8026
 assign  A=4'b0110;//assigning the first number it's value 8026
 assign B=4'b0010;//assigning the second the number it's value 8026
 initial begin //test block for printing the varoius output 8026
 $monitor("sum = %b%b%b%b zero flag = %b negative flag = %b overflow flag = %b carry flag = %b",sum[3],sum[2],sum[1],sum[0],zf,negf,ovf,carf );
 end //end of test block 8026
endmodule //end of module 8026
