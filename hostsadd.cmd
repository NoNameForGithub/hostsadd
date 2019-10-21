@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\games\Desktop\harc3.exe
REM BFCPEICON=C:\Users\games\Downloads\captura2_hxI_icon.ico
REM BFCPEICONINDEX=3
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=1
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=0.5.1.0
REM BFCPEVERPRODUCT=HostsAdd RC3
REM BFCPEVERDESC=Adds strings into hosts. No more asofnow
REM BFCPEVERCOMPANY=by nonameforgithub(web url in copyright)
REM BFCPEVERCOPYRIGHT=nonameforgithub.github.io GNUgplv3 2019
REM BFCPEOPTIONEND
@ECHO ON
@echo off
title hostsadd 0.5.1 [RC4 and lotsa unused code]

//-define settings-// [doesn't work!]

//-define variables//-
cls
set currentdir=.
set hostsd=%windir%\System32\drivers\etc\hosts
cls
//-dv end-//

//-Maincode-//
cls
:main
cls
echo HostsAdd (dated fri 17/10/2019 10:18)
set /p ip=Enter the IP (ex. 127.0.0.1) = 
set /p domain=Enter the domain (ex. google.com / maps.google.com) = 
goto technical
//-mc end-//


echo 
//-Technical stuff (don't edit if you don't know what you're doing)-//
:technical 
echo %ip% %domain% > %currentdir%/hosts.tmp
copy %windir%\System32\drivers\etc\hosts %currentdir%\backup\hosts
copy %windir%\System32\drivers\etc\hosts %currentdir%\hostsc.tmp
copy *.tmp hoststest
copy hoststest C:\Windows\System32\Drivers\etc\hosts
del *.tmp
del hoststest
//-ts end-//