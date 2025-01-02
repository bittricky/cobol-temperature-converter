       IDENTIFICATION DIVISION.
       PROGRAM-ID. TemperatureConverter.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01  WS-TEMPERATURE.
           05  WS-INPUT-TEMP        PIC 9(3)V9(2) VALUE 0.
           05  WS-OUTPUT-TEMP       PIC 9(3)V9(2) VALUE 0.

       01  WS-UNIT.
           05  WS-INPUT-UNIT        PIC X(1).
           05  WS-OUTPUT-UNIT       PIC X(1).

       01  WS-MESSAGE               PIC A(50).

       PROCEDURE DIVISION.
       BEGIN.
           DISPLAY "Enter the temperature value: "
           ACCEPT WS-INPUT-TEMP.

           DISPLAY "Enter the unit of the input temperature (C/F): "
           ACCEPT WS-INPUT-UNIT.

           IF WS-INPUT-UNIT = 'C' OR WS-INPUT-UNIT = 'c'
               COMPUTE WS-OUTPUT-TEMP = (WS-INPUT-TEMP * 9 / 5) + 32
               MOVE 'F' TO WS-OUTPUT-UNIT
               MOVE "Converted to Fahrenheit: " TO WS-MESSAGE
           ELSE
               IF WS-INPUT-UNIT = 'F' OR WS-INPUT-UNIT = 'f'
                   COMPUTE WS-OUTPUT-TEMP = (WS-INPUT-TEMP - 32) * 5 / 9
                   MOVE 'C' TO WS-OUTPUT-UNIT
                   MOVE "Converted to Celsius: " TO WS-MESSAGE
               ELSE
                   DISPLAY "Invalid unit. Please enter 'C' or 'F'."
                   STOP RUN.
               END-IF
           END-IF.

           DISPLAY WS-MESSAGE WS-OUTPUT-TEMP " " WS-OUTPUT-UNIT.

           STOP RUN.
