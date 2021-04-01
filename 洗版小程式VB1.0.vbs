'洗版小程式 
Dim saysomething,times,time,x 
MsgBox "洗版小程式VB1.0" 
saysomething = InputBox ("你要說什麼？","內容") 
times = InputBox ("說幾次？","次數") 
time = InputBox ("等待時間(毫秒)","等待時間") 
saysomething = "cmd /c echo " + saysomething + "     由洗版小程式2.0技術提供 | clip" 
CreateObject("WScript.Shell").Run(saysomething) 
Set objShell = CreateObject("Wscript.Shell") 
CreateObject("SAPI.SpVoice").Speak "剩餘3秒" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "剩餘2秒" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "剩餘1秒" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "start" 
WScript.Sleep 1000 
For i = 1 To times 
    objShell.SendKeys "^v"  
    objShell.SendKeys "{BS}" 
    objShell.SendKeys "{ENTER}" 
WScript.Sleep time 
Next 
MsgBox "已洗版完畢" 
x = MsgBox ("你喜歡本工具嗎？？",3+32+4096+0,"問題") 
If x = 6 Then 
MsgBox "感謝您的使用。我們會持續更好" 
End If 
If x = 7 Then 
MsgBox "感謝您的回覆。我們將持續做得更好" 
End If 
