module sixty_counter(clk,rst,ld,rd);
input clk,rst;
output reg [3:0] rd = 0, ld = 0;


always @(posedge clk or negedge rst) 
begin

if (~rst) begin
    ld <= 0;
    rd <=0;
end
else begin
// Check if right digit "rd" is 9 reset rd to 0 and check if left digit ld is 5 then 
// reset it to zero else increment the ld, if rd isn't 9 increment it.
    if (rd == 9) begin
        rd <= 0;
        if (ld == 5) begin
            ld <= 0;
        end
        else begin
            ld <= ld + 1;
        end
    end
    else begin
        rd <= rd + 1;
    end
end

end
endmodule