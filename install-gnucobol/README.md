# GNU Cobol Installation on Windows 

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

# $\color{blue}{\textsf{Table Of Contents}}$
- [Installing GNU Cobol](#Installing_GNU_Cobol) <br><br>
- [Installing Visual Studio Code](#Installing_Visual_Studio_Code) <br><br>
- [Getting Started](#Getting_Started) <br>
  - [Setting up our Cobol project](#Setting_up_our_Cobol_project) <br>
  - [Open the Cobol project in Visual Studio Code](#Open_the_Cobol_project_in_Visual_Studio_Code) <br>
  - [Setting up the terminal command prompt](#Setting_up_the_terminal_command_prompt) <br>
  - [Compiling](#Compiling) <br>
  - [Running](#Running) <br>
  - [Debugging](#Debugging) <br><br>
- [Embedded SQL support](#Embedded_SQL_support)<br>
  - [Setting up MySQL](#Setting_up_MySQL) <br>


<a name="Installing_GNU_Cobol"></a>
# $\color{blue}{\textsf{Installing GNU Cobol}}$
- From Arnold Trembley's [GnuCOBOL/OpenCOBOL Downloads, Binaries, and Links] page, <br>
download the 64-bit version as seen here [GC32M-BDB-x64.7z] <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/9597d237-fa99-4187-82c7-49e3c8b3f633) <br><br>
- Create folder ```C:\gnuCobol``` and extract the contents of the downloaded archive there: <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/24f85514-3b53-4f89-93e0-286cc3fc4182) <br><br>

<a name="Installing_Visual_Studio_Code"></a>
# $\color{blue}{\textsf{Installing Visual Studio Code}}$
- From the [Visual Studio Code] page, download and install the **Visual Studio Code 64-bit version** <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/fc9c4d0d-3e9b-41c7-9a4d-36495429a18f) <br><br>
- Add the **Cobol Language Support** extension from Broadcom <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/c80251c7-7071-41ff-8b26-672dd98d36f4) <br><br>

<a name="Getting_Started"></a>
# $\color{blue}{\textsf{Getting Started}}$

   <a name="Setting_up_our_Cobol_project"></a>
###   <ins>Setting up our Cobol project</ins>
   - Create a new folder for your Cobol projects ```C:\myCobol``` <br>
   - Create the following folders under ```C:\myCobol``` <br>
      - ```C:\myCobol\debug``` <br>
      - ```C:\myCobol\dll``` <br>
      - ```C:\myCobol\exe``` <br>
      - ```C:\myCobol\list``` <br>
      - ```C:\myCobol\source``` <br>
   - Copy the two .bat files enclosed here ```crtcbl.bat``` and ```runcbl.bat``` into ```C:\myCobol``` <br>
   - Copy the enclosed source file ```CLS01EX01.cob``` into ```C:\myCobol\sources``` as well.<br>
   
   <a name="Open_the_Cobol_project_in_Visual_Studio_Code"></a>
###   <ins>Open the Cobol project in Visual Studio Code</ins>
   - Open Visual Studio Code <br>
   - From the top menu, click ```File```, and choose ```Open Folder``` <br>
   - Select the **myCobol** folder <br>
   - Click on the MYCOBOL folder that appears in the Visual Studio Code explorer to the left <br>
   - Click on the ```CLS01EX01.cob``` source file - the program displays the message **HELLO COBOL WORLD!** <br>
   - The screen should look like this: <br><br>
     ![image](https://github.com/cobol-ninja/installations/assets/140850635/e843dec5-737a-46d9-a701-37a597ea0b50) <br><br>
   - The **COBOL Language Support** extension from Broadcom mentioned above is helpful in pointing out syntax errors such as a referenced variable that is not defined or a sentence that did not end with a period.<br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/42588ed0-695f-4392-97d8-f2a987f46da3)<br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/f81ee6d8-079c-42ed-a466-fa5c450275b2)<br><br>   
   - If you open the **Outline** tab on the bottom left, below the MYCOBOL folder, you can view the Cobol program outline -
     Divisions, Sections, and Variables. <br><br>
        ![image](https://github.com/cobol-ninja/installations/assets/140850635/51e56b75-a658-4ee8-8748-429389fc1103) <br><br>  
   - If you want to have the Outline always open for each source, drag the Outline to the secondary pane on the right side of the source editor. <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/58fe5529-c539-4ebe-8628-427cc0fb2286)

   <a name="Setting_up_the_terminal_command_prompt"></a>
###   <ins>Setting up the terminal command prompt</ins>
   - From the top menu, click on ```View``` and then ```Command Palette``` <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/84660b6a-7f19-447f-99db-7deb493a5d1a) <br><br>
   - Set the command prompt to DOS by typing ```>terminal select default profile``` and choosing ```Command Prompt``` <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/c10aaf9a-13cb-40e2-8e57-5e504ce74d80) <br><br>
   - From the top menu, click on ```Terminal``` and then ```New Terminal``` <br><br>
   - The terminal window should appear at the bottom of the source <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/1301b6fd-1494-4311-b038-f54b881cbfa0) <br>

   <a name="Compiling"></a>
###   <ins>Compiling</ins>
   - To compile the program, type the command ```crtcbl``` followed by the name of the source ```CLS01EX01``` (no suffix) <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/7fdd4743-014d-44a7-a317-f9d391b548c0) <br>
   - If all goes well, we should see the message ```Program CLS01EX01 compiled successfully``` appear in the terminal. <br>
   We should also see a new executable file to the left, in the MYCOBOL folder, called ```CLS01EX01.dll``` <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/ee4e5260-f663-4190-a889-cfc656699591) <br>

      <a name="Running"></a>
###   <ins>Running</ins>
   - To run the program, type the command ```runcbl``` followed by the name of the program ```CLS01EX01``` (no suffix) <br>
   - If all goes well, we should see the message ```HELLO COBOL WORLD!``` appear in the terminal. <br><br>
   ![image](https://github.com/cobol-ninja/installations/assets/140850635/c2f11847-8f3c-48d7-a729-4b7983296e4c) <br>

<a name="Debugging"></a>
###   <ins>Debugging (for now)</ins>
Here is a brief description of some of the most commonly used features of the **GNU Debugger (GDB)**.<br>
To prepare the program for debugging, you must compile it with the ```-g``` flag. <br>
To start **GDB**, just type ```gdb``` and the name of the Cobol program. <br>
Gdb will give you a prompt that looks like this: (gdb). <br>
From that prompt you can run your program, look at variables, etc., using the commands listed below (and others not listed). <br>
To exit the program just type quit at the (gdb) prompt (actually just typing q is good enough).<br>
-   file: file executable specifies which program you want to debug.<br>
-   run: run will start the program running under gdb.<br>
-   step: step will go ahead and execute the current source line, and then stop execution again before the next source line.<br>

<a name="Embedded_SQL_support"></a>
# $\color{blue}{\textsf{Embedded SQL Support\}}$
- From Sergey Kashyrin's [ESQL for ODBC for GnuCobol/OpenCOBOL] page, <br> download [ESQL Preprocessor and Runtime version 3 binaries for Windows x86-64(AMD-64) and x86(win32)] <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/9b6e75f5-6eff-4699-88f1-25d53f2056af) <br><br>
<ins>Important</ins><br>
      - This archive contains two folders: ```win32``` and ```x64``` <br>
      - Each folder contains another two folders: ```debug``` and ```release``` <br>
      - For this Windows x64 installation we will be copying the contents from the ```x64/release``` folder only <br><br>
- In ```C:\gnuCobol``` create another folder ```C:\gnuCobol\esql``` and extract the contents of the downloaded archive folder ```binaries3.zip\x64\release``` into ```C:\gnuCobol\esql```<br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/5fe61c77-c194-4245-97d4-39d1d602b4f1) <br><br>
- Copy file **ocsql.dll** from ```C:\gnuCobol\esql\ocsql.dll``` to the **extras** folder at ```C:\gnuCobol\extras``` <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/d9d66942-2794-4cb1-a947-3d85e8e30209) <br><br>
- Edit file ```C:\gnuCobol\set_env.cmd``` and add the following line ```set COB_PRE_LOAD=ocsql``` at the bottom <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/09813ae4-2950-4cfb-959f-f6ce448ed43b) <br><br>
<a name="Setting_up_MySQL"></a>
###   <ins>Setting up MySQL</ins>
For each database we want GNUCobol to connect to, we need to install an ODBC Driver.<br>
Since I am using the latest version of MySQL, I will download and install the latest ODBC driver for MySQL.
- Go to the [MySQL Developer] site
- Click on **Downloads**
- Click on **MySQL Community (GPL) Downloads**
- Click on the **Connector/ODBC** link as shown here <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/fbf366f8-8acf-4f7e-bbc3-3eb5a3b3e80d) <br>
- Download the **Connector/ODBC Windows (x86, 64-bit) MSI Installer**, and install <br><br>
  ![image](https://github.com/cobol-ninja/installations/assets/140850635/abd963ec-4b92-4f13-a6d5-cd5e2df413e5) <br><br>
- Open the Windows Administrative Tools and double-click on **ODBC Data Sources (64-bit)** <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/46da0067-826a-42e6-bc71-b3504e2e6d67) <br><br>
- Click on the **Drivers** tab and make sure the MySQL ODBC driver that you downloaded and installed appears <br><br>
![image](https://github.com/cobol-ninja/installations/assets/140850635/93d39dbf-8cf3-40e2-aee4-c56bb96d01c4) <br><br>



       
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
[video]:<https://www.youtube.com/watch?v=hZdRRk1U7JM&list=PL7LgghZnXLP35_vK25UuQUufPa5V_-AeS>
