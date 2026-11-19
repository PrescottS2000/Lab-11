


module ripple(

input wire Center, Up,
output wire Q0,
output wire Q1,
output wire Q2
);

wire String0;
wire String1;
wire String2;

assign Q0 = String0;
assign Q1 = String1;
assign Q2 = String2;

    tff tffone(
        .T(1'b1),
        .clk(Center),
        .Q(String0),
        .reset(Up)

        
        );
        
     tff tfftwo(
        .T(1'b1),
        .clk(String0),
        .Q(String1),
        .reset(Up)

        );
        
     tff tffthree(
        .T(1'b1),
        .clk(String1),
        .Q(String2),
        .reset(Up)

    );
    

endmodule
