@echo off

setlocal enabledelayedexpansion

set i=0

dir /b > filelist.txt

for /f %%s in (filelist.txt) do (
	set filename[!i!]=%%s
	set /a i=i+1
)

set /a n=i-1

del /q filelist.txt

for /l "eol=f" %%k in (0,1,%n%) do (
	echo  ^>u!filename[%%k]!v >> filelist.txt
)

endlocal