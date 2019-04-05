@echo off
::set default path here.
set DefaultPath="D:\Development\MultirunTarget.txt"
set /P Instance=Multi-Open Instance : || set Instance=0

if "%Instance%"=="" (Exit)
if "%Instance%"=="0" (Exit)

@echo on 
@echo.
@echo Press enter to use default path : %DefaultPath%
@echo.
@echo off
set /P TargetPath=ExecutePath : || set TargetPath=%DefaultPath%

start "MultiRunProgram-CMD" CMD /c Instance TargetPath
@echo on
@echo.
@echo Running %Instance% instance(s) on %TargetPath% with %~nx0
@echo.
@echo off

::Attach application extra argument behind target path.
FOR /L %%G IN (1, 1, %Instance%) DO START "%%G" "%TargetPath%"

Msg %USERNAME% MultiRunProgram called %Instance% instance(s)

