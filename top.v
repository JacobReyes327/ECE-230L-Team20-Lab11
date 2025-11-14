module top(
    input btnC, btnU,
    output [6:0] led
);
    ripple_counter rippleCounter(
        .Reset(btnU),
        .Clk(btnC),
        .Q1(led[0]),
        .Q2(led[1]),
        .Q3(led[2])
    );
    
    module_counter modCounter(
        .Reset(btnU),
        .Clk(btnC),
        .Bit0(led[3]),
        .Bit1(led[4]),
        .Bit2(led[5]),
        .Output(led[6])
    );

endmodule
