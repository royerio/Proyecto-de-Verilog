`include "BCDnivel1.v"

//Selección de las variables y salidas del modulo de pruebas
module BCDnivel1_tb;

//Entradas
reg [3:0] inA_tb;
reg [3:0] inB_tb;
reg carryIn_tb;
   

//output sumVal;
wire [3:0] sumBCD_tb;
wire acarreoBCD_tb;
wire cable_tb, carryinnivel2_tb, decenaBCD_tb;
wire sumVal_tb;


//instanciacion al módulo fullAdder4Bits
BCDnivel1 BCDnivel1_inst (
    .inA(inA_tb),
    .inB(inB_tb),
    .carryIn(carryIn_tb),
    .sumBCD(sumBCD_tb),
    .acarreoBCD(acarreoBCD_tb),
    .decenaBCD(decenaBCD_tb),
    .sumVal(sumVal_tb)
);


//Creación del archivo .vcd que será utilizado por GTKwave
initial begin
    $dumpfile("testBCD.vcd");
    $dumpvars;
    inA_tb = 4'b0000; inB_tb = 4'b0000; carryIn_tb = 1'b0;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111000; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111010; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111100; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111110; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b000111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b001111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b10100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b010111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b011111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b100111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b101111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b110111111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111000111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111001111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111010111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111011111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111100111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111101111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111110111; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111001; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111011; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111101; #1;
    {inA_tb, inB_tb, carryIn_tb} <= 9'b111111111; #1;


    $monitor($time,,, "inA: %4b, inB: %4b, carryIn_tb: %1b",inA_tb, inB_tb, carryIn_tb);
    #600
    $finish();
end

//    $dumpvars;
//    $monitor($time,,,"inA: %4b, inB: %4b, carryIn_tb: %1b, sumBCD_tb: %4b, acarreoBCD_tb: %1b, decenaBCD_tb: %1b",inA_tb,inB_tb,carryIn_tb,sumBCD_tb,acarreoBCD_tb, decenaBCD_tb);
//    #600
//    $finish();




//integer i,j, k, s;
//reg flag;

//initial begin
//    inA_tb = 0;
//    inB_tb = 0;
//    carryIn_tb = 0;
//    flag <= 0;

//    for (i = 0; i<16; i = i + 1)begin
//        #1 inA_tb = i;

//        for (j = 0; j<16; j = j + 1)begin
//            #1 inB_tb = j;
//                if ((i == 15) && (j == 15))begin
                    
                    
//                end
//        end
//    end
//    #1 flag <= 1;
//    #1 carryIn_tb = 1;
//if (flag == 1) begin
//    inA_tb=0;
//    inB_tb=0;
    
//        for (k = 0; k<16; k = k + 1)begin
//            #1 inA_tb = k;

//            for (s = 0; s<16; s = s + 1)
//                #1 inB_tb = s;
//        end
    
//    end
    
//end

//Creación del archivo .vcd que será utilizado por GTKwave
//initial begin
//    $dumpfile("testBCD.vcd");

//    $dumpvars;
//    $monitor($time,,,"inA: %4b, inB: %4b, carryIn_tb: %1b, sumBCD_tb: %4b, acarreoBCD_tb: %1b, decenaBCD_tb: %1b",inA_tb,inB_tb,carryIn_tb,sumBCD_tb,acarreoBCD_tb, decenaBCD_tb);
//    #600
//    $finish();
//end


//Elaboración del funcionamiento del módulo de pruebas


//integer i;

//initial begin
//    inA_tb=0

//    for (i = 0; i<512; i = i + 1)begin
//        #1 inA_tb = i;
//    end
//end


//initial begin
//    $dumpfile("testBCD.vcd");

//    $dumpvars;
//    $monitor($time,,,"inA: %9b, ",inA_tb);
//    #600
//    $finish();
//end


endmodule