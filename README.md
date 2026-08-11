# traffic-light-controler
Traffic Light Controller

Description

A digital traffic light controller designed using Verilog HDL to control Red, Yellow, and Green signals in a predefined sequence.

Features

- FSM-based design
- Controls Red, Yellow, and Green traffic signals
- Automatic signal sequence
- Simple and easy to simulate
- Suitable for digital logic and FPGA learning

Traffic Light Sequence

State| Red| Yellow| Green
RED| 1| 0| 0
GREEN| 0| 0| 1
YELLOW| 0| 1| 0

Files

- "traffic_light_controller.v" – Verilog design code
- "traffic_light_controller_tb.v" – Testbench
- "simulation/simulation.vcd" – Simulation waveform

Tools Used

- Verilog HDL
- Icarus Verilog
- GTKWave

How to Run

Compile the design and testbench:

iverilog -o traffic_light_sim traffic_light_controller.v traffic_light_controller_tb.v

Run the simulation:

vvp traffic_light_sim

Open the waveform:

gtkwave simulation.vcd

Expected Result

The traffic lights operate continuously in the following sequence:

RED → GREEN → YELLOW → RED

Author

Traffic Light Controller – Digital Logic Design Project
author: Sai teja sree 
