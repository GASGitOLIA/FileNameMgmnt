rem replace first 2 chars with new string in mp3 files

@echo off
Setlocal enabledelayedexpansion

for %%i in ("*.mp3") do (set fname=%%i) & call :rename
goto :eof
:rename
::Cuts off 1st two chars, then appends prefix
ren "%fname%" "Michael Jackson - %fname:~19%"
goto :eof

Pause&Exit