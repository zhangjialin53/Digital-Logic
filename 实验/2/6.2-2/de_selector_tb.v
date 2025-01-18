module de_selector14;
reg iC;
reg iS1;
reg iS0;
wire oZ0;
wire oZ1;
wire oZ2;
wire oZ3;

de_selector14 uut (
    .iC(iC),
    .iS1(iS1),
    .iS0(iS0),
    .oZ0(oZ0),
    .oZ1(oZ1),
    .oZ2(oZ2),
    .oZ3(oZ3)
);

initial begin
    $display("iC iS1 iS0 oZ0 oZ1 oZ2 oZ3");
    
    for (int i = 0; i < 8; i++) begin
        iC = i % 2;
        iS1 = (i / 2) % 2;
        iS0 = (i / 4) % 2;
        
        #10; // wait a bit to show the change
        
        $display("%b %b %b %b %b %b %b", iC, iS1, iS0, oZ0, oZ1, oZ2, oZ3);
    end
    
    $finish;
end

endmodule