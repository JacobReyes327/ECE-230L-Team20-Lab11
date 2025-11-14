module dFlipFlop(
    input D, Clk, reset,
    output reg Q, 
    output notQ
    );
    
    initial begin
        Q <= 0;
    end
    
    always @(posedge Clk)begin
        if (reset)
            Q <= 1'b0; 
        else
            Q <= D; 
    end
    
    assign notQ = ~Q;
    
endmodule
