//FullAdder4Bits
`include "fullAdder.v"
module fullAdder4Bits(
    input [3:0] inA,
    input [3:0] inB,
    input carryIn,
    output [3:0] sum,
    output carryOut3);

wire carryOut0, carryOut1, carryOut2;

fullAdder FA0 (
    .inA(inA[0]),
    .inB(inB[0]),
    .carryIn(carryIn),
    .sum(sum[0]),
    .carryOut(carryOut0)
);

fullAdder FA1 (
    .inA(inA[1]),
    .inB(inB[1]),
    .carryIn(carryOut0),
    .sum(sum[1]),
    .carryOut(carryOut1)
);

fullAdder FA2 (
    .inA(inA[2]),
    .inB(inB[2]),
    .carryIn(carryOut1),
    .sum(sum[2]),
    .carryOut(carryOut2)
);

fullAdder FA3 (
    .inA(inA[3]),
    .inB(inB[3]),
    .carryIn(carryOut2),
    .sum(sum[3]),
    .carryOut(carryOut3)
);

endmodule