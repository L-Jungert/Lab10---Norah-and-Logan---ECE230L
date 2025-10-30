module memory_system(
    input [7:0] data,
    input store,
    input [1:0] addr,
    output [7:0] memory
);
    wire [3:0] store_enable;
    wire [7:0] store_data[3:0];
    wire [7:0] mem[3:0];

    byte_memory byte0(
        .data(store_data[0]),
        .store(store_enable[0]),
        .memory(mem[0])
    );
    
    byte_memory byte1(
        .data(store_data[1]),
        .store(store_enable[1]),
        .memory(mem[1])
    );
    
    byte_memory byte2(
        .data(store_data[2]),
        .store(store_enable[2]),
        .memory(mem[2])
    );
    
    byte_memory byte3(
        .data(store_data[3]),
        .store(store_enable[3]),
        .memory(mem[3])
    );

    demux demux_inst(
        .data(data),
        .sel(addr),
        .A(store_data[0]),
        .B(store_data[1]),
        .C(store_data[2]),
        .D(store_data[3])
    );
    
    demux2 demux2_inst(
        .data(store),
        .sel(addr),
        .A(store_enable[0]),
        .B(store_enable[1]),
        .C(store_enable[2]),
        .D(store_enable[3])
    );
    
    mux mux_inst(
        .byte0(mem[0]),
        .byte1(mem[1]),
        .byte2(mem[2]),
        .byte3(mem[3]),
        .Sel(addr),
        .Y(memory)
    );
endmodule
