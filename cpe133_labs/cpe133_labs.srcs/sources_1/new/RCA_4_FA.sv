`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////


module RCA_4_FA(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] S,
    output Co
    );
    
    logic t1, t2, t3;
    
    FA FA0 (.A (A[0]), .B(B[0]), .C(Cin), .S(S[0]), .Co(t1));
    FA FA1 (.A (A[1]), .B(B[1]), .C(t1), .S(S[1]), .Co(t2));
    FA FA2 (.A (A[2]), .B(B[2]), .C(t2), .S(S[2]), .Co(t3));
    FA FA3 (.A (A[3]), .B(B[3]), .C(t3), .S(S[3]), .Co(Co));    
    
endmodule
