`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 21:10:05
// Design Name: 
// Module Name: and
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

module logic_gates_1(iA,iB,oAnd,oOr,oNot); 
input iA, iB; 
output oAnd,oOr,oNot; 
and and_inst(oAnd, iA,iB); 
or or_inst(oOr, iA,iB); 
not not_inst(oNot, iA); 
endmodule
