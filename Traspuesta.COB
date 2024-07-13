     ******************************************************************
      * Author: Silvia Fernandez
      * Date: 11/7/2024
      * Purpose: Hacer un programa donde ingreso una matriz y muestro la trasuesta
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Traspuesta1.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      * Declaro mis variables y la matriz
       01  WSV-VARIABLES.
           05 WSV-NUMEROS PIC                               99.
           05 WSV-MATRIZ.
             10 WSV-FILA OCCURS 3 TIMES.
               15  WSV-COLUMNA OCCURS 3 TIMES PIC 99.
       01   WSV-INDICES.
         05 WSV-I PIC                                     9(2).
         05 WSV-J PIC                                     9(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
      ******************************************************************
      *Prarrafos de mi codigo
      ******************************************************************
           PERFORM 100000-INICIO
           PERFORM 200000-PROCESO
           PERFORM 300000-FIN.
      ******************************************************************
       100000-INICIO.
            INITIALIZE WSV-VARIABLES  WSV-INDICES
       .
      ******************************************************************
      *Mi proceso consta de 2 apartados, carga de matriz y mostrarla
      ******************************************************************
       200000-PROCESO.
               PERFORM 200100-CARGA-MATRIZ

               PERFORM 200300-MOSTRAR-TRASPUESTA
           .
      **********************************************************************
      *carga de la matriz
           200100-CARGA-MATRIZ.

            PERFORM VARYING WSV-J FROM 1 BY 1 UNTIL WSV-J > 3
                   PERFORM VARYING WSV-I FROM 1 BY 1 UNTIL WSV-I > 3
                DISPLAY "INGRESE VALOR en (" WSV-I ", " WSV-J "):"
                ACCEPT WSV-NUMEROS
                MOVE WSV-NUMEROS TO WSV-COLUMNA (WSV-I, WSV-J)
             END-PERFORM
           END-PERFORM.
           .

      **********************************************************************
      *mostrar la traspuesta
           200300-MOSTRAR-TRASPUESTA.

           DISPLAY "Matriz Traspuesta:"

           PERFORM VARYING WSV-I FROM 1 BY 1 UNTIL WSV-I > 3

      *       PERFORM VARYING WSV-J FROM 1 BY 1 UNTIL WSV-J > 3
                DISPLAY WSV-COLUMNA (WSV-I, 1) " "
                        WSV-COLUMNA (WSV-I, 2) " "
                        WSV-COLUMNA (WSV-I, 3)
      *       END-PERFORM

           END-PERFORM.
           .
      ******************************************************************
      * fin del programa
           300000-FIN.
           STOP RUN.
       END PROGRAM Traspuesta1.
           .
      *******************************************************************
