      *****************************************************************
       IDENTIFICATION                  DIVISION.
      *****************************************************************
       PROGRAM-ID.                     CLS01EX04. 
      * ACCEPT 2 VALUES INTO 2 NUMERIC VARIABLES
      * DISPLAY THE SUM OF THE 2 VARIABLES 
      *****************************************************************
       ENVIRONMENT                     DIVISION.
      *****************************************************************
      *****************************************************************
       DATA                            DIVISION.
      *****************************************************************
      *================================================================
       WORKING-STORAGE                 SECTION.
      *================================================================
       01  INP-A                       PIC 9(01).
       01  INP-B                       PIC 9(01).
       01  INP-SUM                     PIC 9(02).
      *****************************************************************
       PROCEDURE                       DIVISION.
      *****************************************************************
           DISPLAY 'Type in the first numeric value (0-9)...'
           ACCEPT INP-A
           DISPLAY 'Type in the second numeric value (0-9)...'
           ACCEPT INP-B

           COMPUTE INP-SUM = INP-A + INP-B
           DISPLAY 'The sum of INP-A and INP-B is: ' INP-SUM

           EXIT PROGRAM.
           STOP RUN.          
