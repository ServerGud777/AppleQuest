@echo off
:Menu
cls
echo 浜様様様様様様様様様様様�
echo � Welcome to AppleQuest �
echo 麺様様様様様様様様様様様�
echo � 1. Login              �
echo � 2. Create a Character �
echo � 3. Options            �
echo � 4. Dev. Contact info  �
echo � 5. Not actualy an     �
echo � option. Just needed   �
echo � this to look nice. :) �
echo 藩様様様様様様様様様様様�
set /p tmpChoice="Please select a number then press Enter: "

if %tmpChoice% LEQ 5 goto %tmpChoice%
echo.
echo Sorry that is not a valid option.
ping -n 3 0.0.0.0 >nul
goto :Menu


:1
echo 1
:2
echo 2
:3
echo 3
:4
echo 4
:5
echo 5
:done
echop done

pause