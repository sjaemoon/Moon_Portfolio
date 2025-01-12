/*
	Seungjae Moon
	bmoon9
	06/04/19
	EE271
	Final Project: Frogger
	This program takes the binary inputs and converts them
	to chosen item names as a 7-segment display.
*/

// Outputs the binary inputs' names as a 7-segment display.
module seg7 (bcd, leds);
	input logic [3:0] bcd;
	output logic [6:0] leds;
	
	always_comb begin 
		case (bcd)
			4'b0000: leds = 7'b1000000;
			4'b0001: leds = 7'b1111001;
			4'b0010: leds = 7'b0100100;
			4'b0011: leds = 7'b0110000;
			4'b0100: leds = 7'b0011001;
			4'b0101: leds = 7'b0010010;
			4'b0110: leds = 7'b0000010;
			4'b0111: leds = 7'b1111000;
			4'b1000: leds = 7'b0000000;
			4'b1001: leds = 7'b0010000;
			default: leds = 7'b1111111;
		endcase
	end
	
endmodule

// Tests the coversion of the binary inputs' names 
// to their matching HEX position.
module seg7_testbench;
	logic [2:0] bcd;
	logic [6:0] leds;	
	
	seg7 dut (bcd, leds);
	
	integer i;
	initial begin
		for (i=0; i<2**4; i++) begin
			{bcd} = i; #10;
		end
	end
	
endmodule
	