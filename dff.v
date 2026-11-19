

module dff(
    input D, clk, reset,
    output reg Q,
    output Qnot
    );
    
always @(posedge clk or posedge reset)
begin
    if(reset)
        Q <= 1'b0;
    else
        Q <= D;
end

assign Qnot = ~Q;
      
endmodule
