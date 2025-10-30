module byte_memory(
    input [7:0] data,
    input store,
    output [7:0] memory
);

    d_latch bit0(
        .D(data[0]),
        .E(store),
        .Q(memory[0])
    );
    d_latch bit1(
        .D(data[1]),
        .E(store),
        .Q(memory[1])
    );
    d_latch bit2(
        .D(data[2]),
        .E(store),
        .Q(memory[2])
    );
    d_latch bit3(
        .D(data[3]),
        .E(store),
        .Q(memory[3])
    );
    d_latch bit4(
        .D(data[4]),
        .E(store),
        .Q(memory[4])
    );
    d_latch bit5(
        .D(data[5]),
        .E(store),
        .Q(memory[5])
    );
    d_latch bit6(
        .D(data[6]),
        .E(store),
        .Q(memory[6])
    );
    d_latch bit7(
        .D(data[7]),
        .E(store),
        .Q(memory[7])
    );
    
endmodule
