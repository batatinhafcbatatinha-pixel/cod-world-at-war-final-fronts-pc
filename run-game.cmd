@echo off
setlocal
set "PS2X_CD_IMAGE="

if not exist "%~dp0game_files\.disc\layout.tsv" (
  python "%~dp0tools\port-installer\prepare_folder.py" --root "%~dp0." --config "%~dp0installer.json"
  if errorlevel 1 exit /b 1
)
if not exist "%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" (
  echo Build the runner first with build-game.cmd.
  exit /b 1
)
rem Optional second argument: windowed, fullscreen, or borderless.
if not "%~2"=="" set "PS2X_WINDOW_MODE=%~2"
cd /d "%~dp0"
rem Sector and named reads use the extracted files in game_files.
"%~dp0build\game\ps2xRuntime\ps2EntryRunner.exe" "%~dp0game_files\SLUS_217.46"
exit /b %errorlevel%
