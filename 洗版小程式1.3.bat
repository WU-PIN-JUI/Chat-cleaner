@echo off

title �~���p�{��1.3
:abc
color
mode con: lines=30 cols=50
echo         A=�ϥΦ��u��,V=������T
CHOICE /C av /N /M ���(A/V)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto start
IF ERRORLEVEL 2 goto v
:start
cls

echo         ===============
echo          �~���p�{��1.3
echo         ===============
echo.

::�w�]��
set saysomething=�~����(�w�])    �Ѭ~���p�{��1.3�޳N����
set times=10
set time=300

::�]�w��
set /p saysomething=.        �A�n������^-^-^>
set /p times=.          ���X��^-^-^>
set /p time=.      ���ݮɶ�(�@��)^-^-^>
if %times% GTR 500 (
 echo �W�L�̰��ƭ�500
 pause
 goto start
)
echo %saysomething% | clip
::�s�Wvbs
echo Set objShell = CreateObject("Wscript.Shell") >tmp.vbs
echo WScript.Sleep 3000 >>tmp.vbs
echo For i = 1 To %times% >>tmp.vbs
echo     objShell.SendKeys "^v"  >>tmp.vbs
echo     objShell.SendKeys "{BS}" >>tmp.vbs
echo     objShell.SendKeys "{ENTER}" >>tmp.vbs
echo WScript.Sleep %time% >>tmp.vbs
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
:v
cls
color 7c
echo         ������T
echo      �ثe�����Gv1.3
echo.
echo         ��s��x
echo      v1.3
echo         �ץ�bug
echo      v1.2
echo         �����u��
echo         �ץ�bug
echo      v1.1
echo         �ץ�bug
echo      v1.0
echo         �{������
echo.
ping 0.0.0.0 >nul
echo      �����N��^����
pause>nul
goto abc