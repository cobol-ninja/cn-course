      *****************************************************************
       IDENTIFICATION                  DIVISION.
      *****************************************************************
       PROGRAM-ID.                     CLS01EX05. 
      * ACCEPT 2 VALUES INTO 2 NUMERIC VARIABLES
      * THE FIRST VALUE IS THE LENGTH OF A RECTANGLE
      * THE SECOND VALUE IS THE WIDTH OF A RECTANGLE
      * DISPLAY THE AREA AND THE PERIMETER OF THE RECTANGLE 
      * Reminder:
      *   PERIMETER = 2 * (LENGTH + WIDTH)
      *   AREA = LENGTH * WIDTH
      *****************************************************************
       ENVIRONMENT                     DIVISION.
      *****************************************************************
      *****************************************************************
       DATA                            DIVISION.
      *****************************************************************
      *================================================================
       WORKING-STORAGE                 SECTION.
      *================================================================
       01  INP-WIDTH                   PIC 9(02).
       01  INP-LENGTH                  PIC 9(02).
       01  INP-AREA                    PIC 9(04).  
       01  INP-PERIMETER               PIC 9(03).
      *****************************************************************
       PROCEDURE                       DIVISION.
      *****************************************************************
           DISPLAY 'Type in the WIDTH of the rectangle...'
           ACCEPT INP-WIDTH 
           DISPLAY 'Type in the LENGTH of the rectangle...'
           ACCEPT INP-LENGTH

           COMPUTE INP-AREA = INP-WIDTH * INP-LENGTH
           COMPUTE INP-PERIMETER = 2 * (INP-WIDTH + INP-LENGTH)

           DISPLAY 'The rectangle AREA is: ' INP-AREA
           DISPLAY 'The rectangle perimeter is: ' INP-PERIMETER

           EXIT PROGRAM.
           STOP RUN.          
