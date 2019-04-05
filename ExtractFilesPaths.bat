@ECHO "[A] Absolute [A,] Absolute+','
@ECHO OFF

SET /P Input="Enter Type: "

IF "%Input%"=="A" (for /r %%i in (*) do @echo "%%i"  >> FilesPaths.txt) 
IF "%Input%"=="A," (for /r %%i in (*) do @echo "%%i", >> FilesPaths.txt)

@PAUSE