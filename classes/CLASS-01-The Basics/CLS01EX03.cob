      *****************************************************************
       IDENTIFICATION                  DIVISION.
      *****************************************************************
       PROGRAM-ID.                     CLS01EX03. 
      * ACCEPT A VALUE INTO A VARIABLE
      * MOVE THE CONTENT FROM THE VARIABLE TO ANOTHER VARIABLE
      * DISPLAY THE VALUE OF THE SECOND VARIABLE 
      *****************************************************************
       ENVIRONMENT                     DIVISION.
      *****************************************************************
      *****************************************************************
       DATA                            DIVISION.
      *****************************************************************
      *================================================================
       WORKING-STORAGE                 SECTION.
      *================================================================
       01  INP-A                       PIC X(01).
       01  INP-B                       PIC X(01).
      *****************************************************************
       PROCEDURE                       DIVISION.
      *****************************************************************
           DISPLAY 'Type a value into the first variable...'
           ACCEPT INP-A
           MOVE INP-A TO INP-B
           DISPLAY 'The value of the second variable is: ' INP-B

           EXIT PROGRAM.
           STOP RUN.          
