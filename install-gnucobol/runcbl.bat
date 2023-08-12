echo off
rem run cobol exe
set COB_SYS="C:\gnuCobol"
set COB_APP="C:\myCobol"
rem set env
call C:\gnuCobol\set_env
rem run
echo -----------------------------------------------
echo Running Cobol EXE %1%
echo -----------------------------------------------
call %COB_APP%\exe\%1%