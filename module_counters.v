module module_counter(
    input Reset, Clk,
    output Bit0, Bit1, Bit2, Output
    );
    wire [2:0] Cout, add, q;
    wire P, G;
    // a set of D-FlipFlops to store the current count
    
    dFlipFlop ff0(
        .D(add[0]),
        .Clk(Clk),
        .reset(P),
        .Q(q[0]), 
        .notQ()
    );
    
    dFlipFlop ff1(
        .D(add[1]),
        .Clk(Clk),
        .reset(P),
        .Q(q[1]), 
        .notQ()
    );
    
    dFlipFlop ff2(
        .D(add[2]),
        .Clk(Clk),
        .reset(P),
        .Q(q[2]), 
        .notQ()
    );
    
     // An Adder to Compute N+1
    full_adder bit0(
        .A(q[0]),
        .B(Clk),
        .Cin(1'b0),
        .Y(add[0]),
        .Cout(Cout[0])
    );
    
    full_adder bit1(
        .A(q[1]),
        .B(1'b0),
        .Cin(Cout[0]),
        .Y(add[1]),
        .Cout(Cout[1])
    );
    
    full_adder bit2(
        .A(q[2]),
        .B(1'b0),
        .Cin(Cout[1]),
        .Y(add[2]),
        .Cout(Cout[2])
    );
    
    //a comparison block 
    //to check the current count against the reset value
    assign P = (q[0] & ~q[1] & q[2]);
    assign G = (P ^ (Reset) ^ (Output));
    
    //Output
    dFlipFlop OUTPUT(
        .D(G),
        .Clk(Clk),
        .Q(Output), 
        .notQ(),
        .reset(Reset)
    );
    
    assign Bit0 = q[0];
    assign Bit1 = q[1];
    assign Bit2 = q[2];
    
endmodule