'�~���p�{�� 
Dim saysomething,times,time,x 
MsgBox "�~���p�{��VB1.0" 
saysomething = InputBox ("�A�n������H","���e") 
times = InputBox ("���X���H","����") 
time = InputBox ("���ݮɶ�(�@��)","���ݮɶ�") 
saysomething = "cmd /c echo " + saysomething + "     �Ѭ~���p�{��2.0�޳N���� | clip" 
CreateObject("WScript.Shell").Run(saysomething) 
Set objShell = CreateObject("Wscript.Shell") 
CreateObject("SAPI.SpVoice").Speak "�Ѿl3��" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "�Ѿl2��" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "�Ѿl1��" 
WScript.Sleep 1000 
CreateObject("SAPI.SpVoice").Speak "start" 
WScript.Sleep 1000 
For i = 1 To times 
    objShell.SendKeys "^v"  
    objShell.SendKeys "{BS}" 
    objShell.SendKeys "{ENTER}" 
WScript.Sleep time 
Next 
MsgBox "�w�~������" 
x = MsgBox ("�A���w���u��ܡH�H",3+32+4096+0,"���D") 
If x = 6 Then 
MsgBox "�P�±z���ϥΡC�ڭ̷|�����n" 
End If 
If x = 7 Then 
MsgBox "�P�±z���^�СC�ڭ̱N���򰵱o��n" 
End If 
