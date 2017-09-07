@echo off

for %%s in (*.jpg) do (
	ren %%s a%%s
)

pause