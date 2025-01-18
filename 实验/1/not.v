`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/19 21:11:08
// Design Name: 
// Module Name: not
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

module logic_gates_3(iA,iB,oAnd,oOr,oNot); 
input iA, iB; 
output oAnd,oOr,oNot; 
reg oAnd, oOr, oNot; 
always @ (*) 
begin 
oAnd = iA & iB; 
oOr = iA | iB; 
oNot = ~iA; 
end 
endmodule