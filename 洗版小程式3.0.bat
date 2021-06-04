@echo off

title 洗版小程式3.0
:abc
call :startset
:bbc
mode con: lines=30 cols=50
echo         A=使用此工具,B=傳送多行訊息
echo         V=版本資訊,G=取得VB版本,S=設定
CHOICE /C avgsb /N /M 選擇(A/B/C/V/G/S)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto start
IF ERRORLEVEL 2 If Not ErrorLevel 3 goto v
IF ERRORLEVEL 3 If Not ErrorLevel 4 goto get_vb
IF ERRORLEVEL 4 If Not ErrorLevel 5 goto setting
IF ERRORLEVEL 5 If Not ErrorLevel 6 goto lines
:start
cls

echo         ===============
echo          洗版小程式3.0
echo         ===============
echo.

::設定值
set /p saysomething=.        你要說什麼^-^-^>
set /p times=.          說幾次^-^-^>
set /p time=.      等待時間(毫秒)^-^-^>
echo %saysomething%     由洗版小程式3.0技術提供 | clip
goto addvbs
:lines
set linestime=10
set /p linestime=行數？(預設10行)
@echo. >wash.line
set i=1
set /a linestime +=1
echo. >wash.line
:linesa
if %i%==%linestime% goto linesb
set /p lines=.      第%i%句^-^-^>
set /a i+=1
echo %lines% >>wash.line
goto linesa
:linesb
set /p times=.          說幾次^-^-^>
set /p time=.      等待時間(毫秒)^-^-^>
type wash.line | clip
del /q /f wash.line
goto addvbs

:addvbs
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

:v
cls
color 7c
echo         版本資訊
echo      目前版本：v3.0
echo.
echo         更新日誌
echo      v3.0
echo         功能更新：
echo           1.新增傳送多行訊息的功能
echo           2.新增設定 - 自訂預設值
echo         下載VB版本視覺優化
echo      v2.0
echo         修正bug
echo         介面優化
echo         功能更新：
echo           1.可傳送超過500個訊息，
echo             每500個會休息0.5秒
echo           2.可從此程式下載VB版1.0
echo           3.新增設定 - 自訂顏色
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
:get_vb
echo 正在下載至當前目錄
echo ^'洗版小程式 >洗版小程式VB1.0.vbs
echo Dim saysomething,times,time,x >>洗版小程式VB1.0.vbs
echo MsgBox "洗版小程式VB1.0" >>洗版小程式VB1.0.vbs
echo saysomething ^= InputBox ^("你要說什麼？","內容"^) >>洗版小程式VB1.0.vbs
echo times ^= InputBox ^("說幾次？","次數"^) >>洗版小程式VB1.0.vbs
echo time ^= InputBox ^("等待時間(毫秒)","等待時間"^) >>洗版小程式VB1.0.vbs
echo saysomething = "cmd /c echo " + saysomething + "     由洗版小程式3.0技術提供 | clip" >>洗版小程式VB1.0.vbs
echo CreateObject("WScript.Shell").Run(saysomething) >>洗版小程式VB1.0.vbs
echo Set objShell = CreateObject("Wscript.Shell") >>洗版小程式VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "剩餘3秒" >>洗版小程式VB1.0.vbs
echo WScript.Sleep 1000 >>洗版小程式VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "剩餘2秒" >>洗版小程式VB1.0.vbs
echo WScript.Sleep 1000 >>洗版小程式VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "剩餘1秒" >>洗版小程式VB1.0.vbs
echo WScript.Sleep 1000 >>洗版小程式VB1.0.vbs
echo CreateObject("SAPI.SpVoice").Speak "start" >>洗版小程式VB1.0.vbs
echo WScript.Sleep 1000 >>洗版小程式VB1.0.vbs
echo For i = 1 To times >>洗版小程式VB1.0.vbs
echo     objShell.SendKeys "^v"  >>洗版小程式VB1.0.vbs
echo     objShell.SendKeys "{BS}" >>洗版小程式VB1.0.vbs
echo     objShell.SendKeys "{ENTER}" >>洗版小程式VB1.0.vbs
echo WScript.Sleep time >>洗版小程式VB1.0.vbs
echo Next >>洗版小程式VB1.0.vbs
echo MsgBox "已洗版完畢" >>洗版小程式VB1.0.vbs
echo x ^= MsgBox ("你喜歡本工具嗎？？",3+32+4096+0,"問題") >>洗版小程式VB1.0.vbs
echo If x ^= 6 Then >>洗版小程式VB1.0.vbs
echo MsgBox "感謝您的使用。我們會持續更好" >>洗版小程式VB1.0.vbs
echo End If >>洗版小程式VB1.0.vbs
echo If x ^= 7 Then >>洗版小程式VB1.0.vbs
echo MsgBox "感謝您的回覆。我們將持續做得更好" >>洗版小程式VB1.0.vbs
echo End If >>洗版小程式VB1.0.vbs
for /l %%g in (1,1,100) do (
cls
echo 進度[%%g/100]
ping -n 1 127.1 >nul
)
ping -n 2 127.1 >nul
CHOICE /C yn /N /M 立即體驗？[Y^/N]
IF ERRORLEVEL 1 If Not ErrorLevel 2 start %cd%\洗版小程式VB1.0.vbs

echo      按任意鍵回首頁 & pause >nul
goto bbc
:setting
cls
echo         C=自訂顏色,A=自訂預設值
CHOICE /C ca /N /M 選擇(C/A)
IF ERRORLEVEL 1 If Not ErrorLevel 2 goto settingco
IF ERRORLEVEL 2 If Not ErrorLevel 3 goto settinga
:settingco
cls
echo     0 = 黑色        8 = 灰色
echo     1 = 藍色        9 = 淡藍色
echo     2 = 綠色        A = 淡綠色
echo     3 = 藍綠色      B = 淡藍綠色
echo     4 = 紅色        C = 淡紅色
echo     5 = 紫色        D = 淡紫色
echo     6 = 黃色        E = 淡黃色
echo     7 = 白色        F = 亮白色
echo     ！注意！不可將背景顏色與文字顏色設為相同
::文字顏色
CHOICE /C 0123456789ABCDEF /N /M 請選擇文字顏色
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
::背景顏色
CHOICE /C 0123456789ABCDEF /N /M 請選擇背景顏色
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
echo 不可將背景顏色與文字顏色設為相同
pause
goto settingco
)
echo color %co2%%co1% >>%0
echo 設定完成 & pause
exit
:settinga
set /p saysomethingset=.        預設傳送訊息^-^-^>
set /p timesset=.        預設傳送次數^-^-^>
set /p timeset=.        預設傳送等待時間(毫秒)^-^-^>
echo set saysomething=%saysomethingset% >>%0
echo set times=%timesset% >>%0
echo set time=%timeset% >>%0
::一定要擺最後面
:startset
::預設值
set saysomething=洗版中(預設)    由洗版小程式3.0技術提供
set times=10
set time=300
