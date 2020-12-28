`include "../alu_control/alu_control.v"

module alu_control_tb;

    reg[1:0] alu_op;
    reg[6:0] func7;
    reg[2:0] func3;
    wire[3:0] alu_control;

    alu_control(alu_op, func7, func3, alu_control);

initial begin

    alu_op = 2'b10;
    func7 = 7'b0000000;
    func3 = 3'b000;
    $display("control: %d", alu_control) // result is 0010 - add


    #40
    alu_op = 2'b10;
    func7 = 7'b0000000;
    func3 = 3'b111;
    $display("control: %d", alu_control) // result is 0000 - AND


    
end

always #10 clk = ~clk;

endmodule
