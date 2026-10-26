@echo off
setlocal
set "GAME_ISO=D:\ISO\Call of Duty - World at War - Final Fronts (USA, Canada) (En,Fr)\Call of Duty - World at War - Final Fronts (USA, Canada) (En,Fr).iso"
if not "%~1"=="" set "GAME_ISO=%~f1"
if not exist "%GAME_ISO%" (
  echo ISO not found: "%GAME_ISO%"
  exit /b 1
)
if not exist "%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" (
  echo Build the runner first with build-game.cmd.
  exit /b 1
)
rem Optional second argument: windowed, fullscreen, or borderless.
if not "%~2"=="" set "PS2X_WINDOW_MODE=%~2"
cd /d "%~dp0"
rem The ELF directory supplies named files; the ISO supplies raw LBN sector reads.
"%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" "%~dp0disc-root\SLUS_217.46" "%GAME_ISO%"
exit /b %errorlevel%
