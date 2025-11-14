module jkFlipFlop(
    input J, K, Clk, reset,
    output  Q, notQ
    );
    
    wire D_inp;
    assign D_inp = (J & notQ)| (~K & Q);
    dFlipFlop D(
        .D(D_inp),
        .Clk(Clk),
        .reset(reset),
        .Q(Q),
        .notQ(notQ)
    );
    
    
    
endmodule
