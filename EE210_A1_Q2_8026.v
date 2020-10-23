module half_adder(S,C,x,y); //module for half adder 8026
 output S, C;//output sum and carry 8026
 input x, y;// input bits 8026
 xor (S, x, y);// output sum 8026
 and (C, x, y);// output carry 8026
 endmodule//end of module for half adderv8026

module full_adder (S,C,x,y,z);//module for full adder 8026
 output S, C; //output sum and carry 8026
 input x, y, z; //three input numbers to be added 8026
 wire s, c1, c2;//output sum - s from half adder, c1 - carry from 1st half adder , c2 carry from 2nd half adder 8026
 half_adder HA1 (s, c1, x, y);//1st half adder 8026
 half_adder HA2 (S, c2, s, z);//2nd half adder 8026
 or G1 (C, c2, c1);//carry from this addition 8026
 endmodule

module ALU_implementation (sum,ovf,negf,zf,carry,A,B);//module for ALU implementation 8026
 output [3:0] sum;//output sum of the two binary numbers 8026
 output zf,ovf,negf;//output zf - zero flag, ovf - overflow flag, negf - negative flag 8026
 output carry;//carry output 8026
 input [3:0] A;//1st input 8026
 input [3:0] B;//2nd input 8026
 output zf,ovf,negf;//output for zero flag, overflow and carry flag 8026
 wire C0,C1, C2, C3; // Intermediate carries between adders 8026
 assign C0=1'b0;//initial carry = 0 8026
 full_adder FA0 (sum[0], C1, A[0], B[0], C0);//instantiating the 1st adder 8026
 full_adder FA1 (sum[1], C2, A[1], B[1], C1);//instantiating the 2nd adder 8026
 full_adder FA2 (sum[2], C3, A[2], B[2], C2);//instantiating the 3rd adder 8026
 full_adder FA3 (sum[3], carry, A[3], B[3], C3);//instantiating the 4th adder 8026
 nor( zf , sum[0], sum[1], sum[2]);//determining zero flag 8026
 xor( ovf , C3, carry);//determing overflow 8026
 xor(negf, sum[3], ovf);//determining negative flag 8026
endmodule//end of madule 8026
