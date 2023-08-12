      *****************************************************************
       IDENTIFICATION                  DIVISION.
      *****************************************************************
       PROGRAM-ID.                     CLS01EX06. 
      * ACCEPT 3 VALUES INTO 3 NUMERIC VARIABLES
      * DISPLAY THE AVERAGE OF THE 3 VALUES
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
       01  INP-C                       PIC 9(01).
       01  INP-AVG                     PIC 9(01).
      *****************************************************************
       PROCEDURE                       DIVISION.
      *****************************************************************
           DISPLAY 'Type 1st value...'
           ACCEPT INP-A
           DISPLAY 'Type 2nd value...'
           ACCEPT INP-B
           DISPLAY 'Type 3rd value...'
           ACCEPT INP-C     

           COMPUTE INP-AVG = (INP-A + INP-B + INP-C) / 3
           DISPLAY 'The average is: ' INP-AVG
           
           EXIT PROGRAM.
           STOP RUN.          
