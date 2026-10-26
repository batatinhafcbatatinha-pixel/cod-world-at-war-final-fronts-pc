@echo off
rem Headless Ghidra import/analysis of SLUS_217.46 (EE extension) + PS2Recomp function export.
setlocal
set "GHIDRA=C:\Users\dudua\Downloads\ghidra_12.1.4_PUBLIC_20260921\ghidra_12.1.4_PUBLIC"
set "SCRIPTS=%~dp0..\third_party\PS2Recomp\ps2xRecomp\tools\ghidra"
call "%GHIDRA%\support\analyzeHeadless.bat" "%~dp0ghidra" CoDWaWFF -import "%~dp0analysis\disc\SLUS_217.46" -overwrite ^
  -processor "r5900:LE:32:default" -analysisTimeoutPerFile 7200 ^
  -scriptPath "%SCRIPTS%" -postScript ExportPS2Functions.java "%~dp0config\codwaw-ff.toml" "%~dp0config\ghidra-functions.csv"
exit /b %errorlevel%
