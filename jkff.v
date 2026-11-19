

module jkff(
    input J, K, clk, reset,
    output Q,
    output Qnot
    
    );
    wire D;
    assign D = (J & Qnot) | (~K & Q);
    
dff dffinst(
    .D(D),
    .clk(clk),
    .reset(reset),
    .Q(Q),
    .Qnot(Qnot)
    
    );
        



endmodule
