# Temperature Converter COBOL Program

This COBOL program converts temperatures between Celsius and Fahrenheit. It prompts the user for a temperature value and its unit (C/F), then performs the conversion and displays the result.

## Prerequisites

To run this program, you need:

- A COBOL compiler installed on your system. Examples include:
  - [GnuCOBOL](https://gnucobol.sourceforge.io/)
  - Enterprise COBOL (IBM)
- Basic familiarity with running COBOL programs from the command line.

## Setup Instructions

1. **Clone the repository or download the script**:
   Save the COBOL script (`temprature.cbl`) to your local machine.

2. **Open a terminal**:
   Navigate to the directory containing the `temprature.cbl` file.

3. **Compile the program**:
   Use your COBOL compiler to compile the program. For example, with GnuCOBOL:

   ```bash
   cobc -x -o temprature temprature.cbl
   ```

4. **Run the program**:
   Execute the compiled program:
   ```bash
   ./temprature
   ```

## How to Use

1. When prompted, enter a temperature value (supports up to 3 digits before decimal and 2 after, e.g., `98.60`).
2. Next, specify the unit of the input temperature:
   - Enter `C` or `c` for Celsius
   - Enter `F` or `f` for Fahrenheit
3. The program will display the converted temperature with the new unit.

## Example Runs

Converting from Celsius to Fahrenheit:

```
Enter the temperature value: 37.00
Enter the unit of the input temperature (C/F): C
Converted to Fahrenheit: 98.60 F
```

Converting from Fahrenheit to Celsius:

```
Enter the temperature value: 98.60
Enter the unit of the input temperature (C/F): F
Converted to Celsius: 37.00 C
```

## Conversion Formulas

The program uses these standard temperature conversion formulas:

- Celsius to Fahrenheit: °F = (°C × 9/5) + 32
- Fahrenheit to Celsius: °C = (°F - 32) × 5/9

## Error Handling

- If you enter an invalid unit (not `C`, `c`, `F`, or `f`), the program will display an error message and terminate.
- The program supports temperature values with up to 3 digits before the decimal point and 2 digits after.
