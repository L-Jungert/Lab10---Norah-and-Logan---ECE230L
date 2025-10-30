module mux(
    input  wire [7:0] byte0,
    input  wire [7:0] byte1,
    input  wire [7:0] byte2,
    input  wire [7:0] byte3,
    input  wire [1:0] Sel,
    output reg  [7:0] Y
);
    always @(*) begin
        case (Sel)
            2'b00: Y = byte0;
            2'b01: Y = byte1;
            2'b10: Y = byte2;
            2'b11: Y = byte3;
        endcase
    end
endmodule

