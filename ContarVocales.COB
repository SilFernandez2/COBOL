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
       77 letra pic X.
       77 i pic 99 value 0.
       77 vocales pic 99 value 0.
       77 consonante pic 99 value 0.
       01  letras.
       10 letra-array   OCCURS 10 TIMES PIC X.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       display " Ingrese las 10 letras:"

       PERFORM VARYING i from  1 by 1  until i > 10
       DISPLAY "Letra " i ": "
       ACCEPT letra
        IF letra IS ALPHABETIC THEN
           MOVE letra TO letra-array(i)

       if letra = "A" or letra = "a" or letra = "E" or letra = "e" OR
           letra = "I"  or letra = "i"  or letra = "O"  or letra = "o"OR
           letra = "U"  or letra = "u" add 1 to vocales
        ELSE
            add 1 to consonante
        END-IF
       ELSE
          DISPLAY "Error: Solo se permiten letras. Intente nuevamente."
            SUBTRACT 1 FROM i
        END-IF
       END-PERFORM

       display " Total vocales: " vocales
       DISPLAY "Total consonantes " consonante

       STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
