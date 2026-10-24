# Verilog Traffic Light Controller

An FSM-based traffic light controller designed in Verilog HDL and verified through simulation using ModelSim.

## Project Overview

This project implements a traffic light sequence using a Finite State Machine (FSM). The controller cycles through three states: RED, YELLOW, and GREEN.

## State Sequence

**RED → YELLOW → GREEN → RED**

## Design Details

- **Hardware Description Language:** Verilog HDL
- **Design concept:** Finite State Machine (FSM)
- **Simulation tool:** ModelSim
- **Verification:** Verilog testbench and waveform analysis
- **Timing:** Configurable clock-cycle counts for each state

The state durations used in simulation are RED = 5 cycles, YELLOW = 2 cycles, and GREEN = 5 cycles.

*These cycle counts are simulation settings, not real-world traffic-light timings.*

## Repository Structure

- `traffic_light.v` — RTL design
- `traffic_test.v` — Testbench
- `waveform.png` — Simulation waveform

## Simulation Results

The design was simulated in ModelSim to observe the state transitions and verify the traffic-light sequence.

See `waveform.png` for the simulation waveform.

## Concepts Practiced

- FSM design and state transitions
- Sequential logic and clocked processes
- Counters and timing control
- Testbench development
- RTL simulation and waveform debugging

## Future Improvements

- Add a pedestrian crossing request
- Add a reset mechanism and configurable timings
- Extend the controller for a four-way intersection
