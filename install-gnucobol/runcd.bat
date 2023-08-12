echo off
rem run cobol dll
set COB_SYS="C:\gnuCobol"
set COB_APP="C:\myCobol"
rem set env
call C:\gnuCobol\set_env
rem run
echo -----------------------------------------------
echo Running Cobol DLL %1%
echo -----------------------------------------------
call %COB_SYS%\bin\cobcrun.exe %COB_APP%\dll\%1%
