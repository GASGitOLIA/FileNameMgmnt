@echo off
setlocal enabledelayedexpansion
for %%a in (*_*.mp3) do (
  set file=%%a
  ren "!file!" "!file:_= !"
)