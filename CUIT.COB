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
       77 anio1 PIC 9999.
       77 anio2 PIC 9999.
       77 diferencia PIC 999.

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

       display " Ingrese el año actual"
       ACCEPT anio1

       DISPLAY " Ingrese su año de naciemiento"
       accept anio2

       compute diferencia = anio1 - anio2
       if (anio1 > anio2) and (diferencia >= 17) THEN
           DISPLAY "Usted ya tiene CUIT"
           else
               if anio1 < anio2 then
              DISPLAY " El año de naciento es mas grande que el actual"
       ELSE
           display "Usted aún no tiene CUIT"
          END-IF
        END-IF
       STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
