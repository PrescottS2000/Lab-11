
module dff_sync(
    input D,
    input clk,
    input reset,
    output reg Q,
    output Qnot
);

initial begin
    Q <= 1'b0;
end 

always @(posedge clk)
begin
    if(reset)
        Q <= 1'b0;
    else
        Q <= D;
end

assign Qnot = ~Q;

endmodule
