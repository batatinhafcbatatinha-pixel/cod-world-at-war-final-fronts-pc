@echo off
setlocal

if not exist "%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" (
  echo Build the runner first with build-game.cmd.
  exit /b 1
)
rem Optional second argument: windowed, fullscreen, or borderless.
if not "%~2"=="" set "PS2X_WINDOW_MODE=%~2"
cd /d "%~dp0"
rem All game data is served from game_files by the extracted-files runtime.
"%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" "%~dp0game_files\SLUS_217.46"
exit /b %errorlevel%
