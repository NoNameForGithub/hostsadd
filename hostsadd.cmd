@echo off
title hostsadd 1.0.1

//-define variables-//
set hostsd=%windir%\System32\drivers\etc\hosts
set lang=en // change for different lang
//-dv end-//

goto main%lang%
cls

//-Maincode-//

:maines
cls
echo Por nonameforgithub
echo HostsAdd (sab 13/02/2021 20:24)
set /p ip=Escribe la IP (ex. 127.0.0.1) = 
set /p domain=Escribe el dominio (ej. google.com / maps.google.com) = 
goto technical

:mainen
cls
echo By nonameforgithub
echo HostsAdd (dated sat 13/02/2021 20:24)
set /p ip=Enter the IP (ex. 127.0.0.1) = 
set /p domain=Enter the domain (ex. google.com / maps.google.com) = 
goto technical
//-mc end-//

//-Technical stuff (don't edit if you don't know what you're doing)-//
:technical 
echo %ip% %domain% >> %hostsd%
//-ts end-//