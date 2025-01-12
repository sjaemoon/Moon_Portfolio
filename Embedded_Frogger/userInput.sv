/*
 	Seungjae Moon
	bmoon9
	06/04/19
	EE271
	Final Project: Frogger
	This program detects a button press from the user
	and moves once per press and disregards 
	additional moves if the button is held.
*/
	
// Keeps track of a button press and whether the button is held 
// for a given clock cycle. Ouputs whether to move given the 
// user input and the state of reset.
module userInput (clk, reset, needReset, pressed, move);

	input logic clk, reset, pressed, needReset;
	output logic move;
	enum {off, on} ps, ns;
	
	always_comb begin
		case (ps)
			off: if(pressed) ns = on;
				else ns = off;  
			on: if (pressed) ns = on;
				else ns = off; 
		endcase
	end
	
	assign move = (ps == off) & pressed & ~reset & ~needReset;
	
	always_ff @(posedge clk) begin
		if (reset)
			ps <= off;
		else begin
			ps <= ns;
		end
	end
endmodule


// Tests different combinations of user inputs
// and determines whether the move is executed correctly.
module userInput_testbench();
	logic clk, reset, needReset, pressed;
	logic move;
	
	userInput dut (clk, reset, needReset, pressed, move);
	
	// Set up the clock.
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever#(CLOCK_PERIOD/2)clk <= ~clk;
	end
	
	// Set up the inputs to the design. Each line is a clock cycle.
	initial begin
		reset <= 1; needReset <= 0; pressed <= 0; @(posedge clk);
		reset <= 0;					  @(posedge clk);
										  @(posedge clk);
						pressed <= 1; @(posedge clk);
										  @(posedge clk);
										  @(posedge clk); 
						pressed <= 0; @(posedge clk);
						pressed <= 1; @(posedge clk);
		needReset <= 1;           @(posedge clk);
						pressed <= 1; @(posedge clk); // does not move until reset
		reset <= 1;					  @(posedge clk);
						pressed <= 0; @(posedge clk);
		reset <= 0; pressed <= 1; @(posedge clk);										  
						pressed <= 0; @(posedge clk);	
		$stop; // End the simulation.
	end
endmodule