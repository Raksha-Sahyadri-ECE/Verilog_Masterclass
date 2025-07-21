# 8-Bit Microcontroller in Verilog

This project is a basic 8-bit microcontroller designed and simulated using Verilog and ModelSim.

## Features

- 8-bit ALU
- Instruction and Data Memory
- Register file (Accumulator, Data Register, etc.)
- Simple Control Unit
- MUX modules
- Simulation waveform output

## Files Included

- `alu.v` - ALU operations
- `adder.v` - 8-bit adder module
- `Control_Logic.v` - Control unit for decoding instructions
- `DMem.v` - Data memory
- `PMem.v` - Program memory
- `MUX2.v` - 2-to-1 multiplexer
- `MicroController.v` - Top-level MCU design
- `mcu_module.v` - Wrapper module
- `mcu_module_run.v` - Testbench file
- `mcu_run.do` - ModelSim DO script to automate simulation
- `program_mem.dat` - Instruction memory content (binary instructions)

## How to Simulate (ModelSim)

1. **Open ModelSim**
2. **Create a new project**
3. **Add all the `.v` files and `program_mem.dat`** to the project
4. **Run the `.do` script**:
