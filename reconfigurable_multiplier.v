`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.05.2025 14:39:33
// Design Name: 
// Module Name: reconfigurable_multiplier
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module reconfigurable_multiplier #(parameter N = 8)(
input  [N-1:0] A, B,
    input          mode, // 0 = exact, 1 = approximate
    output [2*N-1:0] P
    );
     wire [2*N-1:0] exact_result;
    wire [2*N-1:0] approx_result;

    exact_multiplier #(N) EX_MUL (.A(A), .B(B), .P(exact_result));
    approx_multiplier #(N) APX_MUL (.A(A), .B(B), .P(approx_result));

    assign P = (mode == 0) ? exact_result : approx_result;
endmodule
