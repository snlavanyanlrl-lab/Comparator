`timescale 1ns/1ps

module comparator2bit_tb;

reg [1:0] A;
reg [1:0] B;

wire A_greater;
wire A_equal;
wire A_less;

// Instantiate the DUT
comparator2bit uut (
    .A(A),
    .B(B),
    .A_greater(A_greater),
    .A_equal(A_equal),
    .A_less(A_less)
);

initial begin

    // Waveform generation
    $dumpfile("comparator.vcd");
    $dumpvars(0, comparator2bit_tb);

    $display("------------------------------------------------");
    $display("Time\tA\tB\tGT\tEQ\tLT");
    $display("------------------------------------------------");

    $monitor("%0t\t%b\t%b\t%b\t%b\t%b",
              $time, A, B, A_greater, A_equal, A_less);

    A = 2'b00; B = 2'b00; #10;
    A = 2'b01; B = 2'b10; #10;
    A = 2'b10; B = 2'b01; #10;
    A = 2'b11; B = 2'b11; #10;
    A = 2'b00; B = 2'b11; #10;
    A = 2'b10; B = 2'b10; #10;
    A = 2'b11; B = 2'b01; #10;
    A = 2'b01; B = 2'b00; #10;

    $finish;

end

endmodule