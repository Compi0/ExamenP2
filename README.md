# ATmega328p Bit Control System

This project is programmed in assembly for the **ATmega328p** microcontroller, using **Microchip Studio**. It reads input from **Port C** and controls the output on **Port D**, where a number of bits are set based on the input value, starting from the least significant bit (LSB). The system is designed to turn on a corresponding number of LEDs based on the input value.

## Features

- **Input-Output Mapping**:
  - **Port C (Input)**: The input is provided through the 8-bit Port C.
  - **Port D (Output)**: Based on the input, the output on Port D controls LEDs by setting the appropriate number of bits.

### Example Scenarios:
- Input `1`: Output `0b0000 0001` (1 LED on)
- Input `3`: Output `0b0000 0111` (3 LEDs on)
- Input `6`: Output `0b0011 1111` (6 LEDs on)
- Input `7`: Output `0b0111 1111` (7 LEDs on)

If the input value exceeds the number of bits that can be represented on the output (e.g., greater than 8), all LEDs on the output are turned on.

## Technical Details

- **Microcontroller**: ATmega328p
- **Programming Language**: Assembly
- **IDE**: Microchip Studio
- **Input**: Port C (8-bit)
- **Output**: Port D (8-bit)

### Logic:
1. The input is received from **Port C**.
2. Depending on the value of the input, the corresponding number of bits (starting from the LSB) are turned on in **Port D**.
3. If the input cannot be represented (e.g., a value greater than 8), all bits in **Port D** are set to `1`, turning on all LEDs.

## Usage Instructions

1. **Setup**:
   - Ensure the ATmega328p is connected to the appropriate hardware setup, where **Port C** serves as input (e.g., switches) and **Port D** controls the LEDs.
   
2. **Assembly Program**:
   - Open the project in **Microchip Studio**.
   - The assembly code is written specifically for the ATmega328p architecture, utilizing direct register manipulation for fast and efficient bit-level control.

3. **Input Handling**:
   - Provide a value to **Port C** (0-255). The number of bits set in **Port D** will correspond to the value provided.

4. **Output**:
   - LEDs connected to **Port D** will illuminate based on the input, starting from the least significant bit (rightmost).

## Future Improvements

- Optimize the code for handling different hardware configurations or expand to larger bit sizes.

