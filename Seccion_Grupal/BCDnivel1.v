`include "fullAdder4Bits.v"

module BCDnivel1(
    input [3:0] inA,
    input [3:0] inB,
    input carryIn,
    output [3:0] sumBCD,
    output acarreoBCD,
    output decenaBCD,
    output sumVal);


wire [3:0] conectores;
wire [3:0] entradaB;
wire acarreo, carryinnivel2;

// Se establece si la suma es valida o no mediante la salida sumVal

assign sumVal = (inA > 9) ? 0 : ((inB > 9) ? 0 : 1);

fullAdder4Bits nivel1(
    .inA(inA),
    .inB(inB),
    .carryIn(carryIn),
    .sum(conectores),
    .carryOut3(acarreo)
);

//Logica combinacional

assign salidaOr =
    acarreo |
    (conectores[3] & conectores[2] & conectores[1]) |
    (conectores[3] & conectores[2]) |
    (conectores[3] & conectores[1]);


assign entradaB[0] = 0;
assign entradaB[3] = 0;
assign entradaB[1] = salidaOr;
assign entradaB[2] = salidaOr;
assign carryinnivel2 = 0;
assign decenaBCD = salidaOr;


fullAdder4Bits nive2(
    .inA(conectores),
    .inB(entradaB),
    .carryIn(carryinnivel2),
    .sum(sumBCD),
    .carryOut3(acarreoBCD)
);

endmodule

/*
if ((conectores > 9) & cablesalida ) begin
    velid = 1
end
*/
