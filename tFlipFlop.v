module tFlipFlop(
    input T, Clk, reset,
    output Q, notQ
    );

    jkFlipFlop jk (
        .J(T),
        .K(T),
        .reset(reset),
        .Clk(Clk),
        .Q(Q),
        .notQ(notQ)
    );
    
    
endmodule
