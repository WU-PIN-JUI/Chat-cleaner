@echo off

title 洗版小程式1.3
:abc
color
mode con: lines=30 cols=50
echo         A=使用此工具,V=版本資訊
CHOICE /C av /N /M 選擇(A/V)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto start
IF ERRORLEVEL 2 goto v
:start
cls

echo         ===============
echo          洗版小程式1.3
echo         ===============
echo.

::預設值
set saysomething=洗版中(預設)    由洗版小程式1.3技術提供
set times=10
set time=300

::設定值
set /p saysomething=.        你要說什麼^-^-^>
set /p times=.          說幾次^-^-^>
set /p time=.      等待時間(毫秒)^-^-^>
if %times% GTR 500 (
 echo 超過最高數值500
 pause
 goto start
)
echo %saysomething% | clip
::新增vbs
echo Set objShell = CreateObject("Wscript.Shell") >tmp.vbs
echo WScript.Sleep 3000 >>tmp.vbs
echo For i = 1 To %times% >>tmp.vbs
echo     objShell.SendKeys "^v"  >>tmp.vbs
echo     objShell.SendKeys "{BS}" >>tmp.vbs
echo     objShell.SendKeys "{ENTER}" >>tmp.vbs
echo WScript.Sleep %time% >>tmp.vbs
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
:v
cls
color 7c
echo         版本資訊
echo      目前版本：v1.3
echo.
echo         更新日誌
echo      v1.3
echo         修正bug
echo      v1.2
echo         介面優化
echo         修正bug
echo      v1.1
echo         修正bug
echo      v1.0
echo         程式測試
echo.
ping 0.0.0.0 >nul
echo      按任意鍵回首頁
pause>nul
goto abc