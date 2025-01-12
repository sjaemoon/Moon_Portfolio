/*
 	Seungjae Moon
	bmoon9
	06/04/19
	EE271
	Final Project: Frogger
	This program connects the content in the 
	red and green LED array to the driver.
*/

// Creates a decoder and other logic to update 
// the LED board based on the given array information.
module led_matrix_driver (clk, reset, red_array, green_array, red_driver, green_driver, row_sink);
	input clk, reset;
	input [7:0][7:0] red_array, green_array;
	output reg [7:0] red_driver, green_driver, row_sink;
	
	reg [2:0] count;
	
	always @(posedge clk)
		if (reset)
			count <= 3'b000;
		else
			count <= count + 3'b001;
		
	always @(*)
		case (count)
			3'b000: row_sink = 8'b11111110;
			3'b001: row_sink = 8'b11111101;
			3'b010: row_sink = 8'b11111011;
			3'b011: row_sink = 8'b11110111;
			3'b100: row_sink = 8'b11101111;
			3'b101: row_sink = 8'b11011111;
			3'b110: row_sink = 8'b10111111;
			3'b111: row_sink = 8'b01111111;
		endcase   
 
	 assign red_driver = red_array[count];
	 assign green_driver = green_array[count];
 endmodule 