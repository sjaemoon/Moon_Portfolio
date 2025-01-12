# Moon Portfolio Project Descriptions

**Fingerprint Locking System** <br />
Jul 2019 – Aug 2019 <br />
<br />
Overview <br />
This embedded system project uses the Tiva board, fingerprint sensor, Arduino MEGA, stepping motor, and a LCD screen to simulate a fingerprint locking system. When the Tiva and the Arduino are powered on, the fingerprint sensor connected to the Arduino waits until a finger is scanned. A finger can be enrolled with an ID using the premade firmware code. If the scanned fingerprint is valid, the ID is passed to the Tiva using UART via RX/TX. When the ID is passed, the Tiva sends the appropriate bit to the GPIO and to the stepping motor driver to rotate the lock 90 degrees to the unlocked position. Once valid fingerprint is scanned again, the lock goes into the locked position again. Meanwhile, the LCD is used as a user interface to interact with the user with personalized messages based on the ID. <br />
<br />
Skills
• C programming and reading the datasheet to assign the right bit at the right address of the processor. <br />
• Designing a finite state machine for the logic. <br />
• Using interrupts to change the logic at appropriate times. <br />
• Determining between UART, I2C, and SPI. <br />
• Incorporating external drivers (e.g. LCD, stepping motor). <br />
• Other skills learned from exploring the Tiva: ADC, RTOS, bluetooth. <br />
<br />
<br />
<br />
<br />
**Project nameMaze Solver** <br />
Jul 2019 – Aug 2019 <br />

Overview <br />
This programming project uses graph algorithms to create a valid maze using the minimum spanning tree algorithm (Kruskal) and generate a solution using the shortest path algorithm (Dijkstra). The DoubleLinkedList, ChainedHashDictionary, ArrayHeapPriorityQueue, and DisjointSet are datastructures that are self-implemented. A room, wall, and polygon objects are used in conjunction with the Drawing Panel for the GUI. <br />
<br />
Skills <br />
• Java programming to implement the data structures and graph algorithms. <br />
• Running Big-O analysis to determine which data structure is the most suitable. <br />
• Debugging when there is a compiler error, runtime error, or just unexpected output. <br />
• Creating test codes to check the contents of the data structure and considering all the cases (e.g. edge, random input, null input, single element). <br />
• Learning how to partner program effectively and using git. <br />
<br />
<br />
<br />
<br />
**Frogger** <br />
Apr 2019 – Jun 2019 <br />
<br />
Overview <br />
This digital circuit design project uses SystemVerilog programming on the DE1_SoC board to emulate the 1981 Konami Frogger game on a 8x8 LED. <br />
<br />
Skills <br />
• SystemVerilog programming to implement a multi-state game on a FPGA board. <br />
• Designing a finite machine with complex combinational and sequential logic. <br />
• Dealing with metastability of the hardware using D flip-flops. <br />
• Implementing randomness with linear-feedback shift registers and adjusting speed with clock dividers. <br />
• Creating testbench and exhaustively testing the bit of each logic variable using ModelSim. <br />
• Practicing advanced Verilog features (e.g. generate statements). <br />
• Analyzing the resource utilization to ensure simplified boolean logic. <br />
<br />
<br />
<br />
<br />
**Voltage Doubler Circuit** <br />
Apr 2019 – Jun 2019 <br />
<br />
Overview <br />
This analog circuit design project builds a voltage multiplier circuit using transformers, voltage rectifiers, AC to DC converters, transistors, and DC to AC converters. Voltage multiplier is a circuit with many applications, including handheld electronics. Many electronic devices have a fixed voltage source, usually a battery. However, sub-circuits in a device may need more than one DC voltage source, including voltage values that are larger than the battery voltage. Therefore, the voltage multiplier is used to power these sub-circuits. <br />
<br />
Skills <br />
• Reviewing the concepts of full-wave bridge rectifier circuit, tripler circuit, voltage regulator circuit. <br />
• Choosing the correct resistors, capacitors, regular and Zener diode, and MOSFETs for the circuit's power and current specifications. <br />
• Using MultiSim to simulate the circuit topology before the physical build. <br />
• Using an oscilloscope and a digital multimeter to compare the current, voltage, and graph to the expected calculations. <br />
• Practicing written technical communication through a detailed lab report. <br />
<br />
<br />
<br />
<br />
**Audio Mixer System** <br />
Jan 2019 – Apr 2019 <br />
<br />
Overview <br />
This analog circuit design project builds an audio mixer system using a preamplifier, summing amplifier, and three-channel equalizer circuit. A sound signal that passes through these series of circuits gets amplified and filtered using op-amps and potentiometers. The system input is from a media player or a microphone, and the output is emitted by a speaker. <br />
<br />
Skills <br />
• Reviewing the concepts of preamplifier, summing amplifier, and filter circuits. <br />
• Choosing the correct resistors, capacitors, and potentiometer values for each circuit. <br />
• Conducting RC and other basic circuit analysis. <br />
• Using MultiSim to simulate the circuit topology before the physical build. <br />
• Using lab devices (e.g. power supply, oscilloscope, function generators and a digital multimeter). <br />
• Writing industry-standard lab document. <br />
<br />
<br />
<br />
<br />
**Game of Sticks** <br />
Jun 2018 – Sep 2018 <br />
<br />
Overview <br />
This individual programming project designs an artificial intelligence for a game called "Game of Sticks." This is a turn-based 2-player game. The user chooses the number of sticks to start with. Player-1 and Player-2 alternates taking a number of sticks of their choice in the given range (1-3 by default). The player that is forced to choose the last stick loses. <br />
<br />
Skills <br />
• AI design <br />
• User interface design <br />
• Object-oriented programming <br />
<br />
Implementation <br />
The AI memorizes what number it chose when a certain number of sticks is left using an array. If it won, it reinforces that number in the array, so there is more possibility of choosing that specific number for the future game. If it lost, it lowers the possibility of choosing that specific lost. However, the possibility of choosing any number of sticks (in the given range) does not go to zero because there is a possibility of the AI learning improperly. The AI plays against another AI thousands of times almost instantly. <br />
<br />
<br />
<br />
<br />
**Word Drawing** <br />
Jul 2018 – Sep 2018 <br />
<br />
Overview <br />
This individual programming project builds a prototype of the drawing software in Microsoft Word. The program completes functions like drawing, deleting, resizing, layering, duplicating, recoloring, and re-outlining shapes on Windows Form. <br />
<br />
This project emphasizes the use of Windows Form and class communication. <br />
<br />
<br />
<br />
<br />
**Who's That Pokemon** <br />
Jun 2018 <br />
<br />
Overview <br />
This individual programming project immitates the Nintendo's "Guess That Pokemon" game with an interactive component. <br />
<br />
I learned how to use Windows Form and extract bit information from image libraries. <br />
<br />
<br />
<br />
<br />
**Greedy Strategies in Prisoner’s Dilemma** <br />
Jan 2018 – Apr 2018 <br />
<br />
Overview <br />
This 27-page team research paper discusses the evolutionary benefit of greedy strategies in Prisoner’s Dilemma. This research was conducted under University of Washington Assistant Professor Ivana Bozic. Prisoner’s Dilemma is a standard example of a game analyzed in game theory that shows why two completely rational individuals might not cooperate, even if it appears that it is in their best interests to do so. <br />
<br />
This research demonstrates the proficiency in differential equations, MATLAB, LaTex, and professional language. <br />
<br />
<br />
<br />
<br />
**Hunt the Bowser** <br />
Jan 2016 – Jun 2016 <br />
<br />
Overview <br />
This team programming project creates a game called "Hunt the Bowser," a version of the original game called "Hunt the Wumpus." Hunt the Wumpus is a game set in a cave that consists of a 20-room labyrinth. Each room is connected to 3 other rooms (the cave is modeled after the vertices of a dodecahedron). The objective of the player is to find and kill the horrendous beast Wumpus that lurks in the cave with obstacles and trivia. <br />
<br />
This game development required the use of Unity and C# scripts for the graphic user interface and event controllers. Also, detailed documentation and communication was required to distribute work among the team members and mentors. <br />
<br />
This project placed 2nd in the Microsoft's "Hunt the Wumpus" competition by creating a click-and-play game that follows the specified guidelines from Microsoft.<br />
<br />
