`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/10/09 22:17:41
// Design Name: 
// Module Name: eight
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

module transmission8( 
    input [7:0] iData, // 输入信号 D7~D0 
    input A, B, C,     // 选择信号 S2~S0 
    output reg [7:0] oData // 输出信号 f0~f7 
    ); 
 always @(iData, A,B,C,oData)
 begin
 case({A,B,C})
 3'b000:
 begin
 oData[0]=iData[0];
 oData[1]=1;
 oData[2]=1;
   oData[3]=1;
      oData[4]=1;
       oData[5]=1;
        oData[6]=1;
         oData[7]=1;
         end
 3'b001:
         begin
         oData[0]=1;
         oData[1]=iData[1];
          oData[2]=1;
           oData[3]=1;
              oData[4]=1;
               oData[5]=1;
                oData[6]=1;
                 oData[7]=1;
                 end
 3'b010:
                 begin
                 oData[0]=1;
                 oData[1]=1;
                  oData[2]=iData[2];
                   oData[3]=1;
                      oData[4]=1;
                       oData[5]=1;
                        oData[6]=1;
                         oData[7]=1;
                         end        
 3'b011:
                         begin
                         oData[0]=1;
                         oData[1]=1;
                          oData[2]=1;
                           oData[3]=iData[3];
                              oData[4]=1;
                               oData[5]=1;
                                oData[6]=1;
                                 oData[7]=1;
                                 end
 3'b100:
                                 begin
                                 oData[0]=1;
                                 oData[1]=1;
                                  oData[2]=1;
                                   oData[3]=1;
                                      oData[4]=iData[4];
                                       oData[5]=1;
                                        oData[6]=1;
                                         oData[7]=1;
                                         end

 3'b101:
 begin
 oData[0]=1;
 oData[1]=1;
  oData[2]=1;
   oData[3]=1;
      oData[4]=1;
       oData[5]=iData[5];
        oData[6]=1;
         oData[7]=1;
         end

 3'b110:
 begin
 oData[0]=1;
 oData[1]=1;
  oData[2]=1;
   oData[3]=1;
      oData[4]=1;
       oData[5]=1;
        oData[6]=iData[6];
         oData[7]=1;
         end

  3'b111:
 begin
 oData[0]=1;
 oData[1]=1;
  oData[2]=1;
   oData[3]=1;
      oData[4]=1;
       oData[5]=1;
        oData[6]=1;
         oData[7]=iData[7];
         end
         
   endcase
   end
    
    
endmodule 
