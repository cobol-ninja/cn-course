      *****************************************************************
       IDENTIFICATION                  DIVISION.
      *****************************************************************
       PROGRAM-ID.                     CLS01EX07. 
      * ACCEPT 2 VALUES INTO 2 VARIABLES
      * SWITCH THE CONTENTS OF THE VARIABLES
      * THE FIRST VARIABLE WILL CONTAIN THE CONTENTS OF THE 2nd VARIBLE
      * THE SECOND VARIABLE WILL THE CONTENTS OF THE 1st VARIABLE
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
       01  INP-SAVE                    PIC X(01).
      *****************************************************************
       PROCEDURE                       DIVISION.
      *****************************************************************
           DISPLAY 'Type 1st value...'
           ACCEPT INP-A
           DISPLAY 'Type 2nd value...'
           ACCEPT INP-B

           MOVE INP-A TO INP-SAVE
           MOVE INP-B TO INP-A
           MOVE INP-SAVE TO INP-B 

           DISPLAY 'The content of INP-A is: ' INP-A 
           DISPLAY 'The content of INP-B is: ' INP-B 

           EXIT PROGRAM.
           STOP RUN.          
