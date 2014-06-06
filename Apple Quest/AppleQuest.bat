:: Please open this file with ether code page 473 or OEM 850 to see the right symbols.
:: https://github.com/JoshuaGud777/AppleQuest
::
::
::
@echo off
:head
:VARS


::adds the data folder to the path so that you can just call the exe name
for /F "delims=" %%I in ("%~dp0") do @set applequest_install_root=%%~fI
set PATH=%applequest_install_root%\data;%applequest_install_root%\data\exe;%PATH%
:: !VARS! if getting a parse error.
setlocal enabledelayedexpansion
:menu
:menu0
cls
echo ษอออออออออออออออออออออออป
echo บ Welcome to AppleQuest บ
echo ฬอออออออออออออออออออออออน
echo บ 1. Login              บ
echo บ 2. Create a Character บ
echo บ 3. Options            บ
echo บ 4. Dev. Contact info  บ
echo บ 5. Not actualy an     บ
echo บ option. Just needed   บ
echo บ this to look nice. :) บ
echo ศอออออออออออออออออออออออผ
choose -c 12345 -n -p "Please select a number then press Enter: "

goto :menu%ERRORLEVEL%


:menu1
echo lol
exit



:menu2 - Character Creation
echo.
echo Note: This name is also you login name!
:menu2name
editv -p "Please enter you Character's name: " charName
if %ERRORLEVEL%==2 goto :menu2name

:menu2password
editv -m -p "Please enter your password: " charPassword
if %ERRORLEVEL%==2 goto :menu2password

:menu2end
set saveLocation=saves\AQ-%charName%.save

echo charName=%charName% > %saveLocation%
echo charPassword=%charPassword% >> %saveLocation%
echo charHp=100 >> %saveLocation%
echo charMp=50 >> %saveLocation%

echo.
echo Returning to Menu to login. Please use the login  cridentials you made just now.
ping -n 5 0.0.0.0 >nul
goto :menu

:menu3
exit

:menu4
exit

:menu5
SET /A die=6*%random%/32768+1 
ECHO You rolled a %die% 
ping -n 3 0.0.0.0 >nul
goto menu

pause