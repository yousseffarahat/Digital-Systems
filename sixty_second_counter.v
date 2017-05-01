module sixty_second_counter(clkin,rst,outld,outrd);
input clkin,rst;
output [6:0] outld, outrd;
wire clkout;
wire [3:0] ld,rd;

// Main module, call all modules together
clk_generator(clkin,clkout);
sixty_counter(clkout,rst,ld,rd);
seven_segment_decoder(ld,outld); // left digit output
seven_segment_decoder(rd,outrd); // right digit output

endmodule