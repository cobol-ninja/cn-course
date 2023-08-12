# $\color{blue}{\textsf{GNU\ Cobol\ Installation\ on\ Windows\}}$

Special thanks to [Arnold Trembley], [Sergey Kashyrin] and especially [Simon Sobisch] of the [GNUCobol] project
for their work, and for helping me get this right. <br>

A few remarks:
- This is a step-by-step description of what I did to install and run GNU Cobol on **Windows 10 Pro 64-bit operating system (x64-based processor)**. <br>
- To simplify things, I added two .bat files to for the compile and run process (**cobc** and **cobrunc** commands are in the scripts): <br>
  - ```crtcbl.bat``` for the compile (performs the SQL precompile when passed -s)
  - ```runcbl.bat``` to run the program <br>
- As of now I did not have to change or add to the Windows user or system environment variables. <br>
- Support for embedded SQL is described at the bottom. I added information about usage with MySQL. <br>
- After setting up the environment, you'll find the [Cobol Code Examples] that accompany tutorials from the [Cobol Ninja] website.
- Check out this [video] for beginners about creating a Hello World program using GNU Cobol 
| Column 1 Header | Column 2 Header | Column 3 Header |
| --------------- | --------------- | --------------- |
| Row 1 Column 1 | Row 1 Column 2 | Row 1 Column 3 | 
| Row 2 Column 1 | Row 2 Column 2 | Row 2 Column 3 |
| Row 3 Column 1 | Row 3 Column 2 | Row 3 Column 3 |
[//]: # (These are reference links used in the body of this note and get stripped out when the markdown processor does its job. )
[Arnold Trembley]:<https://www.linkedin.com/in/arnoldtrembley>
[Sergey Kashyrin]:<https://www.linkedin.com/in/sergey-kashyrin-b736161>
[Simon Sobisch]:<https://www.linkedin.com/in/simon-sobisch-33157a133/?originalSubdomain=de>
[GNUCobol]:<https://gnucobol.sourceforge.io>
[GnuCOBOL/OpenCOBOL Downloads, Binaries, and Links]:<https://www.arnoldtrembley.com/GnuCOBOL.htm>
[GC32M-BDB-x64.7z]:<https://www.arnoldtrembley.com/GC32M-BDB-x64.7z>
[ESQL for ODBC for GnuCobol/OpenCOBOL]:<https://www.kiska.net/opencobol/esql/index.html>
[ESQL Preprocessor and Runtime version 3 binaries for Windows x86-64(AMD-64) and x86(win32)]: <https://www.kiska.net/opencobol/esql/binaries3.zip>
[Visual Studio Code]:<https://code.visualstudio.com>
[MySQL Developer]:<https://dev.mysql.com>
[Cobol Code Examples]:<https://github.com/cobol-ninja/code>
[Cobol Ninja]:<https://www.cobol.ninja>
[video]:<https://www.youtube.com/watch?v=wvk7hv84MBA>
