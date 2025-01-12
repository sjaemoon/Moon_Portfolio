/*
 	Seungjae Moon
	bmoon9
	06/04/19
	EE271
	Final Project: Frogger
	This program keeps track of each element on the green LED array 
	(representing a frog) based on the adjacent elements and the user's button press.
	Design based on the original KONAMI Frogger 1981: https://youtu.be/WNrz9_Fe-Us
*/

// Returns light ON, frog's position, after checking when the adjacent element 
// is ON AND the user moves in the opposite direction of that element.
// Makes default behavior if either resets are activated.
module frog (clk, reset, resetRound, L, U, D, R, NL, NU, ND, NR, lightOn);
	input logic clk, reset, resetRound, L, U, D, R, NL, NU, ND, NR;
	output logic lightOn;
	enum {off, on} ps, ns;
	
	always_comb begin
		case (ps)
			off: if((L & ~U & ~D & ~R & NR) | (U & ~L & ~D & ~R & ND) |
			(D & ~L & ~U & ~R & NU) | (R & ~L & ~U & ~D & NL)) ns = on;
				else ns = off;
			on: if((L & ~U & ~D & ~R) | (~L & U & ~D & ~R) | 
			(~L & ~U & D & ~R) | (~L & ~U & ~D & R)) ns = off;
				else ns = on;
		endcase
	end
	
	assign lightOn = (ps == on);
	
	always_ff @(posedge clk) begin
		if (reset | resetRound)
			ps <= off;
		else
			ps <= ns;
	end
endmodule

// Tests if the light is ON/OFF as expected at the 
// given state of user inputs, adjacent lights, and reset.
module frog_testbench();
	logic clk, reset, resetRound, L, U, D, R, NL, NU, ND, NR;
	logic lightOn;
	
	frog dut (clk, reset, resetRound, L, U, D, R, NL, NU, ND, NR, lightOn);
	
	// Set up the clock.
	parameter CLOCK_PERIOD = 100;
	initial begin
		clk <= 0;
		forever#(CLOCK_PERIOD/2)clk <= ~clk;
	end
	
	// Set up the inputs to the design. Each line is a clock cycle.
	initial begin
		reset <= 1; resetRound <= 0; L <= 0; U <= 0; D <= 0; R <= 0; NL <= 0; NU <= 0; ND <= 0; NR <= 0; @(posedge clk); // off
		reset <= 0; @(posedge clk); // starts off
		L <= 1; @(posedge clk); // stays off
		NR <= 1; @(posedge clk); // turns on
		L <= 0; @(posedge clk); // stays on
		L <= 1; @(posedge clk); // turns off
		L <= 1; NR <= 0; NL <= 1; @(posedge clk); // stays off
		L <= 0; NL <= 0; @(posedge clk); // stays off
		
		U <= 1; @(posedge clk);
		ND <= 1; @(posedge clk); // turns on
		U <= 0; @(posedge clk); // stays on
		U <= 1; @(posedge clk); // turns off
		U <= 1; ND <= 0; NU <= 1; @(posedge clk); // stays off
		U <= 0; NU <= 0; @(posedge clk); // stays off		
		
		$stop; // End the simulation.
	end
endmodule