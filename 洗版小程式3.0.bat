@echo off

title �~���p�{��3.0
:abc
call :startset
:bbc
mode con: lines=30 cols=50
echo         A=�ϥΦ��u��,B=�ǰe�h��T��
echo         V=������T,G=���oVB����,S=�]�w
CHOICE /C avgsb /N /M ���(A/B/C/V/G/S)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto start
IF ERRORLEVEL 2 If Not ErrorLevel 3 goto v
IF ERRORLEVEL 3 If Not ErrorLevel 4 goto get_vb
IF ERRORLEVEL 4 If Not ErrorLevel 5 goto setting
IF ERRORLEVEL 5 If Not ErrorLevel 6 goto lines
:start
cls

echo         ===============
echo          �~���p�{��3.0
echo         ===============
echo.

::�]�w��
set /p saysomething=.        �A�n������^-^-^>
set /p times=.          ���X��^-^-^>
set /p time=.      ���ݮɶ�(�@��)^-^-^>
echo %saysomething%     �Ѭ~���p�{��3.0�޳N���� | clip
goto addvbs
:lines
set linestime=10
set /p linestime=��ơH(�w�]10��)
@echo. >wash.line
set i=1
set /a linestime +=1
echo. >wash.line
:linesa
if %i%==%linestime% goto linesb
set /p lines=.      ��%i%�y^-^-^>
set /a i+=1
echo %lines% >>wash.line
goto linesa
:linesb
set /p times=.          ���X��^-^-^>
set /p time=.      ���ݮɶ�(�@��)^-^-^>
type wash.line | clip
del /q /f wash.line
goto addvbs

:addvbs
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

:v
cls
color 7c
echo         ������T
echo      �ثe�����Gv3.0
echo.
echo         ��s��x
echo      v3.0
echo         �\���s�G
echo           1.�s�W�ǰe�h��T�����\��
echo           2.�s�W�]�w - �ۭq�w�]��
echo         �U��VB������ı�u��
echo      v2.0
echo         �ץ�bug
echo         �����u��
echo         �\���s�G
echo           1.�i�ǰe�W�L500�ӰT���A
echo             �C500�ӷ|��0.5��
echo           2.�i�q���{���U��VB��1.0
echo           3.�s�W�]�w - �ۭq�C��
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
:get_vb
echo ���b�U���ܷ�e�ؿ�
echo ^'�~���p�{�� >�~���p�{��VB1.0.vbs
echo Dim saysomething,times,time,x >>�~���p�{��VB1.0.vbs
echo MsgBox "�~���p�{��VB1.0" >>�~���p�{��VB1.0.vbs
echo saysomething ^= InputBox ^("�A�n������H","���e"^) >>�~���p�{��VB1.0.vbs
echo times ^= InputBox ^("���X���H","����"^) >>�~���p�{��VB1.0.vbs
echo time ^= InputBox ^("���ݮɶ�(�@��)","���ݮɶ�"^) >>�~���p�{��VB1.0.vbs
echo saysomething = "cmd /c echo " + saysomething + "     �Ѭ~���p�{��3.0�޳N���� | clip" >>�~���p�{��VB1.0.vbs
echo CreateObject("WScript.Shell").Run(saysomething) >>�~���p�{��VB1.0.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>�~���p�{��VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "�Ѿl3��" >>�~���p�{��VB1.0.vbs
echo WScript.Sleep 1000 >>�~���p�{��VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "�Ѿl2��" >>�~���p�{��VB1.0.vbs
echo WScript.Sleep 1000 >>�~���p�{��VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "�Ѿl1��" >>�~���p�{��VB1.0.vbs
echo WScript.Sleep 1000 >>�~���p�{��VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "start" >>�~���p�{��VB1.0.vbs
echo WScript.Sleep 1000 >>�~���p�{��VB1.0.vbs
echo For i = 1 To times >>�~���p�{��VB1.0.vbs
echo     objShell.SendKeys "^v"  >>�~���p�{��VB1.0.vbs
echo     objShell.SendKeys "{BS}" >>�~���p�{��VB1.0.vbs
echo     objShell.SendKeys "{ENTER}" >>�~���p�{��VB1.0.vbs
echo WScript.Sleep time >>�~���p�{��VB1.0.vbs
echo Next >>�~���p�{��VB1.0.vbs
echo MsgBox "�w�~������" >>�~���p�{��VB1.0.vbs
echo x ^= MsgBox ("�A���w���u��ܡH�H",3+32+4096+0,"���D") >>�~���p�{��VB1.0.vbs
echo If x ^= 6 Then >>�~���p�{��VB1.0.vbs
echo MsgBox "�P�±z���ϥΡC�ڭ̷|�����n" >>�~���p�{��VB1.0.vbs
echo End If >>�~���p�{��VB1.0.vbs
echo If x ^= 7 Then >>�~���p�{��VB1.0.vbs
echo MsgBox "�P�±z���^�СC�ڭ̱N���򰵱o��n" >>�~���p�{��VB1.0.vbs
echo End If >>�~���p�{��VB1.0.vbs
for /l %%g in (1,1,100) do (
cls
echo �i��[%%g/100]
ping -n 1 127.1 >nul
)
ping -n 2 127.1 >nul
CHOICE /C yn /N /M �ߧY����H[Y^/N]
IF ERRORLEVEL 1 If Not ErrorLevel 2 start %cd%\�~���p�{��VB1.0.vbs

echo      �����N��^���� & pause >nul
goto bbc
:setting
cls
echo         C=�ۭq�C��,A=�ۭq�w�]��
CHOICE /C ca /N /M ���(C/A)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto settingco
IF ERRORLEVEL 2 If Not ErrorLevel 3 goto settinga
:settingco
cls
echo     0 = �¦�        8 = �Ǧ�
echo     1 = �Ŧ�        9 = �H�Ŧ�
echo     2 = ���        A = �H���
echo     3 = �ź��      B = �H�ź��
echo     4 = ����        C = �H����
echo     5 = ����        D = �H����
echo     6 = ����        E = �H����
echo     7 = �զ�        F = �G�զ�
echo     �I�`�N�I���i�N�I���C��P��r�C��]���ۦP
::��r�C��
CHOICE /C 0123456789ABCDEF /N /M �п�ܤ�r�C��
IF ERRORLEVEL 1 If Not ErrorLevel 2 set co1=0
IF ERRORLEVEL 2 If Not ErrorLevel 3 set co1=1
IF ERRORLEVEL 3 If Not ErrorLevel 4 set co1=2
IF ERRORLEVEL 4 If Not ErrorLevel 5 set co1=3
IF ERRORLEVEL 5 If Not ErrorLevel 6 set co1=4
IF ERRORLEVEL 6 If Not ErrorLevel 7 set co1=5
IF ERRORLEVEL 7 If Not ErrorLevel 8 set co1=6
IF ERRORLEVEL 8 If Not ErrorLevel 9 set co1=7
IF ERRORLEVEL 9 If Not ErrorLevel 10 set co1=8
IF ERRORLEVEL 10 If Not ErrorLevel 11 set co1=9
IF ERRORLEVEL 11 If Not ErrorLevel 12 set co1=A
IF ERRORLEVEL 12 If Not ErrorLevel 13 set co1=B
IF ERRORLEVEL 13 If Not ErrorLevel 14 set co1=C
IF ERRORLEVEL 14 If Not ErrorLevel 15 set co1=D
IF ERRORLEVEL 15 If Not ErrorLevel 16 set co1=E
IF ERRORLEVEL 16 If Not ErrorLevel 17 set co1=F
::�I���C��
CHOICE /C 0123456789ABCDEF /N /M �п�ܭI���C��
IF ERRORLEVEL 1 If Not ErrorLevel 2 set co2=0
IF ERRORLEVEL 2 If Not ErrorLevel 3 set co2=1
IF ERRORLEVEL 3 If Not ErrorLevel 4 set co2=2
IF ERRORLEVEL 4 If Not ErrorLevel 5 set co2=3
IF ERRORLEVEL 5 If Not ErrorLevel 6 set co2=4
IF ERRORLEVEL 6 If Not ErrorLevel 7 set co2=5
IF ERRORLEVEL 7 If Not ErrorLevel 8 set co2=6
IF ERRORLEVEL 8 If Not ErrorLevel 9 set co2=7
IF ERRORLEVEL 9 If Not ErrorLevel 10 set co2=8
IF ERRORLEVEL 10 If Not ErrorLevel 11 set co2=9
IF ERRORLEVEL 11 If Not ErrorLevel 12 set co2=A
IF ERRORLEVEL 12 If Not ErrorLevel 13 set co2=B
IF ERRORLEVEL 13 If Not ErrorLevel 14 set co2=C
IF ERRORLEVEL 14 If Not ErrorLevel 15 set co2=D
IF ERRORLEVEL 15 If Not ErrorLevel 16 set co2=E
IF ERRORLEVEL 16 If Not ErrorLevel 17 set co2=F
IF %co2% == %co1% (
echo ���i�N�I���C��P��r�C��]���ۦP
pause
goto settingco
)
echo color %co2%%co1% >>%0
echo �]�w���� & pause
exit
:settinga
set /p saysomethingset=.        �w�]�ǰe�T��^-^-^>
set /p timesset=.        �w�]�ǰe����^-^-^>
set /p timeset=.        �w�]�ǰe���ݮɶ�(�@��)^-^-^>
echo set saysomething=%saysomethingset% >>%0
echo set times=%timesset% >>%0
echo set time=%timeset% >>%0
::�@�w�n�\�̫᭱
:startset
::�w�]��
set saysomething=�~����(�w�])    �Ѭ~���p�{��3.0�޳N����
set times=10
set time=300
