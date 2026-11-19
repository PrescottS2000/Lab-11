

module tff(
    input T, clk, reset,
    output Q,
    output Qnot
    
    );
    
jkff jinst(
    .J(T),
    .K(T),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qnot(Qnot)
    
    );


endmodule
