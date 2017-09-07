@echo off

setlocal enabledelayedexpansion

set i=0

dir /b > filelist.txt

for /f %%s (filelist.txt) do (
	set filename[!i!]=%%s
	set /a i=i+1
)

del /q filelist.txt

set /a n=i-1

for /l %%k (0, 1, %n%) do (
	echo ^>ufilename[%k%]v >> filelist.txt
)

endlocal