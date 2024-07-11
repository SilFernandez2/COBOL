      ******************************************************************
      * Author: Silvia fernandez
      * Date:
      * Purpose: Calcular la suma de la diagonal en una matriz 5x5
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. Matriz1.

       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.

      *declaro mis variables
       01  WSV-VARIABLES.
      *Aca inicializo si o si la suma si no, no la hace
           05 WSV-SUMA PIC                        9(4) VALUE 0.
           05 WSV-NUMEROS PIC                               99.
      *declaro mi matriz
           05 WSV-MATRIZ.
             10 WSV-FILA OCCURS 5 TIMES.
               15  WSV-COLUMNA OCCURS 5 TIMES PIC 99.
      * saco numero porque si lo uso me pide 3 suscripts para ingresar, uso columna directamente
      *           20 WSV-NUMERO PIC 9(02) OCCURS 5 TIMES.
      *indice para la matriz, no necesita inicializarse, en el perform varying lo hace
       01   WSV-INDICES.
         05 WSV-I PIC                                     9(2).
         05 WSV-J PIC                                     9(2).

           PROCEDURE DIVISION.
      ******************************************************************
      *Prarrafos de mi codigo
      ******************************************************************
           PERFORM 100000-INICIO
           PERFORM 200000-PROCESO
           PERFORM 300000-FIN.
      ******************************************************************
      *Inicializo mis variables
           100000-INICIO.
           INITIALIZE WSV-VARIABLES  WSV-INDICES
           .
      ******************************************************************
      *Mi proceso consta de 3 apartados, carga de matriz, mostrar matriz y sumar la diagonal
      ******************************************************************
           200000-PROCESO.
               PERFORM 200100-CARGA-MATRIZ
               PERFORM 200200-MOSTRAR-MATRIZ
               PERFORM 200300-SUMA-DIAGONAL
           .
      ******************************************************************
           200100-CARGA-MATRIZ.

           PERFORM VARYING WSV-I FROM 1 BY 1 UNTIL WSV-I > 5
             PERFORM VARYING WSV-J FROM 1 BY 1 UNTIL WSV-J > 5
                DISPLAY "INGRESE VALOR en (" WSV-I ", " WSV-J "):"
                ACCEPT WSV-NUMEROS
                MOVE WSV-NUMEROS TO WSV-COLUMNA (WSV-I, WSV-J)
             END-PERFORM
           END-PERFORM.
           .
      ******************************************************************
           200200-MOSTRAR-MATRIZ.

           PERFORM VARYING WSV-I FROM 1 BY 1 UNTIL WSV-I < 5
             DISPLAY WSV-COLUMNA (WSV-I,1)" "
                     WSV-COLUMNA (WSV-I,2)" "
                     WSV-COLUMNA (WSV-I,3)" "
                     WSV-COLUMNA (WSV-I,4)" "
                     WSV-COLUMNA (WSV-I,5)
            END-PERFORM
           .
      ******************************************************************

           200300-SUMA-DIAGONAL.

               PERFORM VARYING WSV-I FROM 1 BY 1 UNTIL WSV-I > 5
               ADD WSV-COLUMNA (WSV-I, WSV-I) TO WSV-SUMA
           END-PERFORM

           DISPLAY "LA SUMA DE LA DIAGONAL ES: " WSV-SUMA
           .
      ******************************************************************
      * fin del programa
           300000-FIN.
           END PROGRAM Matriz1.
           .
      ******************************************************************
