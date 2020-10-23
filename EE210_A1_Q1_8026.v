primitive f1(E,A,B,C,D); // User defined primitive for truth table functionality 8026
 output E; //output of the function for a given 4 bit binary number 8026
 input A,B,C,D; //inputting the 4 bit number for which we have to determine the value of function 8026
 table //truth table for the given minterms 8026
//A B C D : E; 8026
  0 0 0 0 : 1; //corresponding to 0 minterm 8026
  0 0 0 1 : 1; //corresponding to 1 minterm 8026
  0 0 1 0 : 1; //corresponding to 2 minterm 8026
  0 0 1 1 : 0; //corresponding to 3 minterm 8026
  0 1 0 0 : 0; //corresponding to 4 minterm 8026
  0 1 0 1 : 0; //corresponding to 5 minterm 8026
  0 1 1 0 : 1; //corresponding to 6 minterm 8026
  0 1 1 1 : 0; //corresponding to 7 minterm 8026
  1 0 0 0 : 1; //corresponding to 8 minterm 8026
  1 0 0 1 : 0; //corresponding to 9 minterm 8026
  1 0 1 0 : 0; //corresponding to 10 minterm 8026
  1 0 1 1 : 0; //corresponding to 11 minterm 8026
  1 1 0 0 : 0; //corresponding to 12 minterm 8026
  1 1 0 1 : 0; //corresponding to 13 minterm 8026
  1 1 1 0 : 0; //corresponding to 14 minterm 8026
  1 1 1 1 : 0; //corresponding to 15 minterm 8026
 endtable //end of the truth table for the function 8026
endprimitive // End of user defined primitive for truth table functionality 8026
