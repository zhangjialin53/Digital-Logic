`timescale 1ns / 1ns 
 
module selector41_tb; 
reg [3:0] iC0; 
reg [3:0] iC1; 
reg [3:0] iC2; 
reg [3:0] iC3; 
reg iS0; 
reg iS1; 
wire [3:0] oZ; 
selector41 uut( 
.iC0(iC0), 
.iC1(iC1), 
.iC2(iC2), 
.iC3(iC3), 
.iS0(iS0), 
.iS1(iS1), 
.oZ(oZ) 
); 
initial 
begin 
iC0 = 2'b0001; 
iC1 = 2'b0010; 
iC2 = 2'b0100; 
iC3 = 2'b1000; 
iS0 = 0; 
#40 iS0 = 1; 
#40 iS0 = 0; 
#40 iS0 = 1; 
end 
initial 
begin 
iS1 = 0; 
#40 iS1 = 0; 
#40 iS1 = 1; 
#40 iS1 = 1; 
end 
endmodule