@echo off
title 洗版小程式mini
cls
mode con: lines=30 cols=50
echo         ================
echo          洗版小程式mini
echo         ================
echo.

::預設值
set saysomething=洗版中(預設)    由洗版小程式2.0技術提供
set times=10
set time=300

::設定值
set /p saysomething=.        你要說什麼^-^-^>
set /p times=.          說幾次^-^-^>
set /p time=.      等待時間(毫秒)^-^-^>
echo %saysomething% | clip
::新增vbs
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
::新增bat(刪除vbs)
echo del /q /f %cd%\tmp.vbs >del.bat
echo del /q /f %cd%\del.bat >>del.bat
::執行tmp.vbs
start %cd%\tmp.vbs
::預備時間3秒
echo 剩餘3秒
ping 127.1 -n 2 -w 1000 >nul
cls
echo 剩餘2秒
ping 127.1 -n 2 -w 1000 >nul
cls
echo 剩餘1秒
ping 127.1 -n 2 -w 1000 >nul
cls
echo start!!!
ping 127.1 -n 3 -w 1000 >nul
exit