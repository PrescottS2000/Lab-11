


module modulo(
    input wire Center,
    input wire Up,
    output wire [2:0]Q,
    output wire Output
    );
    
    wire [2:0]Cout;
    wire [2:0]Y;
    wire outlogic;
    wire connection;
    
    assign connection = Q[2] & Q[1] & ~Q[0];
    
    dff_sync dff0(
        .D(Y[0]),
        .clk(Center),
        .reset(Up | connection),
        .Q(Q[0])
        
        );
    dff_sync dff1(
        .D(Y[1]),
        .clk(Center),
        .reset(Up | connection),
        .Q(Q[1])
        );
    
    dff_sync dff2(
        .D(Y[2]),
        .clk(Center),
        .reset(Up | connection),
        .Q(Q[2])
        );    
        
     full_adder adder0(
        .A(Q[0]),
        .B(1'b1),
        .Cin(1'b0),
        .sum(Y[0]),
        .Cout(Cout[0])
        );
     
     full_adder adder1(
        .A(Q[1]),
        .B(1'b0),
        .Cin(Cout[0]),
        .sum(Y[1]),
        .Cout(Cout[1])
        );  
     full_adder adder2(
        .A(Q[2]),
        .B(1'b0),
        .Cin(Cout[1]),
        .sum(Y[2]),
        .Cout(Cout[2])
        );
        
        assign outlogic = connection ^ Output;
        
 
     
     dff_sync dffout(
        .D(outlogic),
        .clk(Center),
        .reset(Up),
        .Q(Output)
        
        );
        
 
   
endmodule
