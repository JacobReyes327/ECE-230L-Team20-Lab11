module ripple_counter(
    input Reset, Clk,
    output Q1, Q2, Q3
    );
    
    wire notQ1, notQ2, notQ3;
    
    tFlipFlop q1(
        .T(1'b1),
        .Clk(Clk),
        .reset(Reset),
        .Q(Q1),
        .notQ(notQ1)
    );
    
    tFlipFlop q2(
        .T(1'b1),
        .Clk(Q1),
        .reset(Reset),
        .Q(Q2),
        .notQ(notQ2)
    );
    
    tFlipFlop q3(
        .T(1'b1),
        .Clk(Q2),
        .reset(Reset),
        .Q(Q3),
        .notQ(notQ3)
    );
    
    
    
endmodule
