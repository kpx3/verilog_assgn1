module mux_2x1(m_out,a,b,s);//module for 2x1 mux functionality 8026
 output m_out; // output of the 2x1 mux 8026
 input a,b,s; // two input data lines a and b , selector line s 8026 
 wire a_1,a_2,s_c; // wires connecting the three gates for mux 2x1 implementation 8026
 not (s_c,s); //storing inverse of selector s in s_c 8026
 and (a_1,a,s_c); //storing output of AND  between a,s_c in a_1 8026 
 and (a_2,b,s); //storing output of AND between b,s in a_2 8026
 or (m_out,a_1,a_2); //storing the output of the data input according to the selector line 8026
endmodule //End of module for 2x1 mux functionality 8026
 
module mux_8x1(out,i,s2,s1,s0);//module for 8x1 mux implementation using 2x1 mux 8026
 input s2,s1,s0; // s2,s1,s0 are the three selector lines 8026
 input [7:0] i; // 8 data input lines stored in i 8026
 output out; // ouput of the selected data input on the basis of selector lines 8026
 wire [5:0] m;//6-bit m for connecting the outputs of 7 2x1 mux needed for 8x1 mux functionality 8026
 mux_2x1 mux0(m[0],i[0],i[1],s2);//1st mux for data input i0 and i1 8026
 mux_2x1 mux1(m[1],i[2],i[3],s2);//2nd mux for data input i2 and 13 8026
 mux_2x1 mux2(m[2],i[4],i[5],s2);//3rd mux for data input i4 and i5 8026
 mux_2x1 mux3(m[3],i[6],i[7],s2);//4th mux for data input 16 and 17 8026
 mux_2x1 mux4(m[4],m[0],m[1],s1);//5th mux for data input from 1st and 2nd mux 8026
 mux_2x1 mux5(m[5],m[2],m[3],s1);//6th mux for data input from 3rd and 4th mux 8026
 mux_2x1 mux6(out,m[4],m[5],s0);//7th mux for data input from 5th and 6th mux 8026
endmodule //end of module for 8x1 mux 8026