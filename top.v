

module top(
    input btnC, btnU,
    output [6:0]led
    
    );
    

    ripple a_inst(
        .Center(btnC),
        .Up(btnU),
        .Q0(led[0]),
        .Q1(led[1]),
        .Q2(led[2])
        );
        
    modulo b_inst(
        .Center(btnC),
        .Up(btnU),
        .Q(led[5:3]),
        .Output(led[6])
   
   );
endmodule
