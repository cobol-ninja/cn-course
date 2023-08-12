echo off
set COB_SYS="C:\gnuCobol"
set COB_APP="C:\myCobol"
rem set env
call C:\gnuCobol\set_env
rem run
echo -----------------------------------------------
echo Running Cobol program %1%
echo -----------------------------------------------
rem call %COB_SYS%\bin\cobcrun.exe C:\myCobol\%1%
call %COB_APP%\%1%
