@echo off
rem This purpose of this command is to compile a GNU Cobol .cob source using cobc.
rem If the compile is successful, a .dll will be created which can be run by cobcrun.
rem You can also pass it the following parameter options:
rem -s to perform the SQL precompile on an .sqb source, creating a .cob source for compile
rem -r to run the program after compiling
rem -d debug after compiling

rem ================================================================================

set COB_SYS="C:\gnuCobol"
set COB_APP="C:\myCobol"

rem ================================================================================

rem set parms
SET RUN=0
SET SQL=0
SET DBG=0
SET CRT=0

if "%2%"=="-s" (
    SET SQL=1
)
if "%3%"=="-s" (
    SET SQL=1
)
if "%4%"=="-s" (
    SET SQL=1
)
if "%2%"=="-r" (
    SET RUN=1
)
if "%3%"=="-r" (
    SET RUN=1
)
if "%4%"=="-r" (
    SET RUN=1
)
if "%2%"=="-d" (
    SET DBG=1
)
if "%3%"=="-d" (
    SET DBG=1
)
if "%4%"=="-d" (
    SET DBG=1
)

rem ================================================================================

rem set env
call %COB_SYS%\set_env

rem ================================================================================

rem precompile 
IF "%SQL%"=="1" (
    echo ---------------------------------------------------
    echo SQL precompile for %1%.sqb
    echo ---------------------------------------------------
    call %COB_SYS%\esql\esqlOC.exe  %COB_APP%\source\%1%.sqb 
    if not exist %COB_APP%\source\%1%.cob (
        echo ---------------------------------------------------
        echo %1%.sqb did not compile successfully - please check
        echo ---------------------------------------------------
    ) 
)
IF "%SQL%"=="0" ( 
    if exist %COB_APP%\source\%1%.sqb (
        echo ---------------------------------------------------
        echo Check if you need to pass -s for SQL precompile
        echo ---------------------------------------------------
    )
)

rem ================================================================================

rem compile
echo ---------------------------------------------------
echo GNU Cobol compile for %1%.cob
echo ---------------------------------------------------

rem (for now creating both dll and exe)
call %COB_SYS%\bin\cobc.exe -x -g --debug -Xref -t list\%1.lst -o exe\%1 %COB_APP%\source\%1%.cob 
call %COB_SYS%\bin\cobc.exe -o dll\%1 %COB_APP%\source\%1%.cob 

rem (until i come up with a better idea)
call move *.c debug >NUL 2>NUL
call move *.h debug >NUL 2>NUL
call move *.i debug >NUL 2>NUL

rem ================================================================================

if exist exe\%1%.exe (
   SET CRT=1
)
if exist dll\%1%.dll (
   SET CRT=1
)
IF "%CRT%"=="1" (
    echo ---------------------------------------------------
    echo Program %1% compiled successfully
    echo ---------------------------------------------------
)

rem ================================================================================

rem debug
IF "%DBG%"=="1" (
    if not exist exe\%1%.exe (
        echo ---------------------------------------------------
        echo The program did not compile successfully. Please check.
        echo ---------------------------------------------------
    )
    if exist exe\%1%.exe (
        call gdb exe\%1%
    )
)

rem run
IF "%RUN%"=="1" (
    call runce %1%  
)
