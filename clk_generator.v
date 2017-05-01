module clk_generator(clkin,clkout);
input clkin; // 50 MHZ Clk
output reg clkout = 0;
reg [24:0] ctr = 0; // 25 bits to fit log2(1e6*50/2)

// Convert 50 MHZ Clk to 1 MHZ, flip output when ctr is 0.

always @(posedge clkin)
begin
if (ctr == 0) begin
    ctr <= 24999999;
    clkout <= ~clkout;
end
else begin
    ctr <= ctr - 1;
end
end
endmodule