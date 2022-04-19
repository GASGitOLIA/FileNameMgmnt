@echo off
setlocal enabledelayedexpansion

for %%f in ("*.mp3") do if %%f neq %~nx0 (
    set "filename=%%~nf"
    ren "%%f" "!filename:~0,-4!%%~xf"
)