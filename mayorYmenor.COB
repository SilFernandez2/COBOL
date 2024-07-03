      ******************************************************************
      * Author: Silvia Fernandez
      * Date: 30/06/2024
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 edad pic 999.
       77 i pic 99 value 1.
       77 mayores pic 999 value 0.
       77 menores pic 99 value 0.
       01 edades-array.
        05 edad-item OCCURS 200 TIMES PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            display " Ingrese las 200 edades: "
            PERFORM VARYING i from  1 by 1  until i > 200
            DISPLAY "Edad " i ": "
            ACCEPT edad
            if edad is NUMERIC THEN
             MOVE edad TO edad-item(i)
             if edad >17 THEN
                 add 1 to mayores
            ELSE
            add 1 to menores
            END-IF
            ELSE
          DISPLAY "Error: Solo se permiten numeros. Intente nuevamente."
            SUBTRACT 1 FROM i
        END-IF
        END-PERFORM

           display " Total mayores: " mayores
           DISPLAY "Total menores " menores
       STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
