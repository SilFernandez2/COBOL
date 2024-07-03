      ******************************************************************
      * Author: Silvia Fernandez
      * Date:  30/06/2024
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77  edad1 PIC 99.
       77 edad2 PIC 99.
       77 total PIC 99.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "Ingrese la edad del primer hermano: "
            ACCEPT edad1
            DISPLAY "Ingrese la edad del segundo hermano:"
            ACCEPT edad2
            IF edad1 > edad2 THEN
              compute total = edad1 - edad2
         DISPLAY "El primer hermano es el más grande por " total " años"
              ELSE
                 IF edad1 < edad2 THEN

                 compute total = edad2 - edad1
        DISPLAY "El segundo hermano es el más grande por " total " años"
            ELSE
              DISPLAY "Los hermanos son gemelos"
            END-IF
           END-IF.
        STOP RUN.
