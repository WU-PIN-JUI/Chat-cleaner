@echo off
title �~���p�{��mini
cls
mode con: lines=30 cols=50
echo         ================
echo          �~���p�{��mini
echo         ================
echo.

::�w�]��
set saysomething=�~����(�w�])    �Ѭ~���p�{��2.0�޳N����
set times=10
set time=300

::�]�w��
set /p saysomething=.        �A�n������^-^-^>
set /p times=.          ���X��^-^-^>
set /p time=.      ���ݮɶ�(�@��)^-^-^>
echo %saysomething% | clip
::�s�Wvbs
echo Dim times1,times3 >tmp.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>tmp.vbs
echo times1 = %times%\500 >>tmp.vbs
echo times3 = %times% mod 500 >>tmp.vbs
echo WScript.Sleep 3000 >>tmp.vbs
echo For i = 1 To times1 >>tmp.vbs
echo     For j = 1 To 500 >>tmp.vbs
echo         objShell.SendKeys "^v"  >>tmp.vbs
echo         objShell.SendKeys "{BS}" >>tmp.vbs
echo         objShell.SendKeys "{ENTER}" >>tmp.vbs
echo         WScript.Sleep %time% >>tmp.vbs
echo     Next >>tmp.vbs
echo     WScript.Sleep 500 >>tmp.vbs
echo Next >>tmp.vbs
echo For g = 1 to times3 >>tmp.vbs
echo         objShell.SendKeys "^v"  >>tmp.vbs
echo         objShell.SendKeys "{BS}" >>tmp.vbs
echo         objShell.SendKeys "{ENTER}" >>tmp.vbs
echo         WScript.Sleep %time% >>tmp.vbs
echo Next >>tmp.vbs
echo CreateObject("WScript.Shell").Run("%cd%\del.bat") >>tmp.vbs
::�s�Wbat(�R��vbs)
echo del /q /f %cd%\tmp.vbs >del.bat
echo del /q /f %cd%\del.bat >>del.bat
::����tmp.vbs
start %cd%\tmp.vbs
::�w�Ʈɶ�3��
echo �Ѿl3��
ping 127.1 -n 2 -w 1000 >nul
cls
echo �Ѿl2��
ping 127.1 -n 2 -w 1000 >nul
cls
echo �Ѿl1��
ping 127.1 -n 2 -w 1000 >nul
cls
echo start!!!
ping 127.1 -n 3 -w 1000 >nul
exit