@ECHO off
%~d0
cd "%~dp0"
cls

ECHO Deleting all BIN / OBJ node_modules folders...
ECHO.

FOR /d /r . %%d in (bin,obj,node_modules,packages) DO (
	IF EXIST "%%d" (
		ECHO.Deleting: %%d
		rd /s/q "%%d"
	)
)

ECHO.
ECHO.BIN and OBJ and node_modules folders have been successfully deleted. Press any key to exit.
pause > nul