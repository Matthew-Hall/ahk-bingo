#Warn
#NoEnv

SetWorkingDir %A_ScriptDir%

Gui, Add, Tab, x4 y-1 w550 h20 , Menu|Game
Gui, Add, Text, x100 y100 w363 h149 +Center, Welcome to Service Desk bingo!`nHave fun and enjoy the game. This was made with the intention that it would be used throughout the day as just a tiny boost to yourself between calls. I hope you are able to find it useful. 
Gui, Add, Text, x180 y364 w250 h30, Please select a token to use. Then, click play.
Gui, Add, Picture, x100 y249 w100 h100, %A_WorkingDir%\resources\token.jpg
Gui, Add, Picture, x230 y249 w100 h100, %A_WorkingDir%\resources\token3.jpg
Gui, Add, Picture, x360 y249 w100 h100, %A_WorkingDir%\resources\token2.jpg
Gui, Add, Radio, x168 y379 w80 h30 gCheck vRadioGroup, Green Token
Gui, Add, Radio, x257 y379 w80 h30 gCheck, Blue Token
Gui, Add, Radio, x337 y379 w80 h30 gCheck, Red Token
Gui, Add, Button, x232 y490 w100 h30 , Info
Gui, Add, Button, x232 y550 w100 h30 , Exit
Gui, Add, Button, x232 y430 w100 h30 +Disabled, Play
Gui, Tab, Game
Gui, Add, Text, x14 y29 w530 h30 , Text
Gui, Add, Button, x450 y29 w100 h30 , New
Gui, Add, GroupBox, x12 y79 w100 h100 , ;1
Gui, Add, GroupBox, x122 y79 w100 h100 , ;2
Gui, Add, GroupBox, x232 y79 w100 h100 , ;3
Gui, Add, GroupBox, x342 y79 w100 h100 , ;4
Gui, Add, GroupBox, x452 y79 w100 h100 , ;5
Gui, Add, GroupBox, x12 y189 w100 h100 , ;6
Gui, Add, GroupBox, x122 y189 w100 h100 , ;7
Gui, Add, GroupBox, x232 y189 w100 h100 , ;8
Gui, Add, GroupBox, x342 y189 w100 h100 , ;9
Gui, Add, GroupBox, x452 y189 w100 h100 , ;10
Gui, Add, GroupBox, x12 y299 w100 h100 , ;11
Gui, Add, GroupBox, x122 y299 w100 h100 , ;12
Gui, Add, GroupBox, x232 y299 w100 h100 , ;13 Free Space
Gui, Add, Picture, x232 y299 w100 h100 gClickFree, %A_WorkingDir%\resources\free.jpg
Gui, Add, GroupBox, x342 y299 w100 h100 , ;14
Gui, Add, GroupBox, x452 y299 w100 h100 , ;15
Gui, Add, GroupBox, x12 y409 w100 h100 , ;16
Gui, Add, GroupBox, x122 y409 w100 h100 , ;17
Gui, Add, GroupBox, x232 y409 w100 h100 , ;18
Gui, Add, GroupBox, x342 y409 w100 h100 , ;19
Gui, Add, GroupBox, x452 y409 w100 h100 , ;20
Gui, Add, GroupBox, x12 y519 w100 h100 , ;21
Gui, Add, GroupBox, x122 y519 w100 h100 , ;22
Gui, Add, GroupBox, x232 y519 w100 h100 , ;23
Gui, Add, GroupBox, x342 y519 w100 h100 , ;24
Gui, Add, GroupBox, x452 y519 w100 h100 , ;25
; Generated using SmartGUI Creator 4.0
Gui, Show, x189 y87 h630 w563, ServiceDesk Bingo
Return

Check:
gui, submit, nohide
if (RadioGroup = 1 or 2 or 3){
	Gui, Tab, Menu
	Gui, Add, Button, x232 y430 w100 h30, Play
	}
return

ButtonPlay:
x = 0
while x < 25
	{
	x += 1
	if x = 1
		{
		a = 12
		y = 79
		}
	if x = 2
		{
		a = 122
		y = 79
		}
	if x = 3
		{
		a = 232
		y = 79
		}
	if x = 4
		{
		a = 342
		y = 79
		}
	if x = 5
		{
		a = 452
		y = 79
		}
	if x = 6
		{
		a = 12
		y = 189
		}
	if x = 7
		{
		a = 122
		y = 189
		}
	if x = 8
		{
		a = 232
		y = 189
		}
	if x = 9
		{
		a = 342
		y = 189
		}
	if x = 10
		{
		a = 452
		y = 189
		}
	if x = 11
		{
		a = 12
		y = 299
		}
	if x = 12
		{
		a = 122
		y = 299
		}
	if x = 13
		{
		a = 342
		y = 299
		}
	if x = 14
		{
		a = 452
		y = 299
		}
	if x = 15
		{
		a = 12
		y = 409
		}
	if x = 16
		{
		a = 122
		y = 409
		}
	if x = 17
		{
		a = 232
		y = 409
		}
	if x = 18
		{
		a = 342
		y = 409
		}
	if x = 19
		{
		a = 452
		y = 409
		}
	if x = 20
		{
		a = 12
		y = 519
		}
	if x = 21
		{
		a = 122
		y = 519
		}
	if x = 22
		{
		a = 232
		y = 519
		}
	if x = 23
		{
		a = 342
		y = 519
		}
	if x = 24
		{
		a = 452
		y = 519
		}
	if x = 25
		{
		send ^{Tab}
		return
		}
	{
	Random, Choice%x%, 1, 48
	if Choice%x% = 1
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\restart.jpg
		}
	if Choice%x% = 2
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\boxer.jpg
		}
	if Choice%x% = 3
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\cics.jpg
		}
	if Choice%x% = 4
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\autotime.jpg
		}
	if Choice%x% = 5
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\snow.jpg
		}
	if Choice%x% = 6
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\escalate.jpg
		}
	if Choice%x% = 7
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\EASR.jpg
		}
	if Choice%x% = 8
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\sap.jpg
		}
	if Choice%x% = 9
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\bomgar.jpg
		}
	if Choice%x% = 10
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\ticketnumber.jpg
		}
	if Choice%x% = 11
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\status.jpg
		}
	if Choice%x% = 12
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\external.jpg
		}
	if Choice%x% = 13
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\notsolved.jpg
		}
	if Choice%x% = 14
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\callback.jpg
		}
	if Choice%x% = 15
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\ooo.jpg
		}
	if Choice%x% = 16
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\undelbell.jpg
		}
	if Choice%x% = 17
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\undel3.jpg
		}
	if Choice%x% = 18
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\euu.jpg
		}
	if Choice%x% = 19
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\closed.jpg
		}
	if Choice%x% = 20
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\lost.jpg
		}
	if Choice%x% = 21
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\answer.jpg
		}
	if Choice%x% = 22
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\local.jpg
		}
	if Choice%x% = 23
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\chat.jpg
		}
	if Choice%x% = 24
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\snowemail.jpg
		}
	if Choice%x% = 25
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\important.jpg
		}
	if Choice%x% = 26
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\quickescalation.jpg
		}
	if Choice%x% = 27
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\building157.jpg
		}
	if Choice%x% = 28
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\VPN.jpg
		}
	if Choice%x% = 29
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\invincea.jpg
		}
	if Choice%x% = 30
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\told.jpg
		}
	if Choice%x% = 31
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\sharepoint.jpg
		}
	if Choice%x% = 32
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\driveshare.jpg
		}
	if Choice%x% = 33
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\rtw.jpg
		}
	if Choice%x% = 34
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\loa.jpg
		}
	if Choice%x% = 35
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\outlook.jpg
		}
	if Choice%x% = 36
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\outbound.jpg
		}
	if Choice%x% = 37
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\friday.jpg
		}
	if Choice%x% = 38
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\500.jpg
		}
	if Choice%x% = 39
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\why.jpg
		}
	if Choice%x% = 40
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\autoide.jpg
		}
	if Choice%x% = 41
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\africa.jpg
		}
	if Choice%x% = 42
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\noq.jpg
		}
	if Choice%x% = 43
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\p11.jpg
		}
	if Choice%x% = 44
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\actived.jpg
		}
	if Choice%x% = 45
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\accessd.jpg
		}
	if Choice%x% = 46
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\rsaadmin.jpg
		}
	if Choice%x% = 47
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\transfer.jpg
		}
	if Choice%x% = 48
		{
		Gui, Tab, Game
		Gui, Add, Picture, x%a% y%y% w100 h100 vPicN%x% gTokenGet%x%, %A_WorkingDir%\resources\receive.jpg
		}	
	}
}
return

ClickFree:
if RadioGroup = 1
	{
	Gui, Add, Picture, x232 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x232 y299 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x232 y299 w100 h100, %A_WorkingDir%\resources\token2.jpg
	}
return

TokenGet1:
if RadioGroup = 1
	{
	Gui, Add, Picture, x12 y79 w100 h100 gReverse1, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x12 y79 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x12 y79 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

Reverse1:
GuiControl, Show, PicN1
return

TokenGet2:
if RadioGroup = 1
	{
	Gui, Add, Picture, x122 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x122 y79 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x122 y79 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet3:
if RadioGroup = 1
	{
	Gui, Add, Picture, x232 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x232 y79 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x232 y79 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet4:
if RadioGroup = 1
	{
	Gui, Add, Picture, x342 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x342 y79 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x342 y79 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet5:
if RadioGroup = 1
	{
	Gui, Add, Picture, x452 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x452 y79 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x452 y79 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet6:
if RadioGroup = 1
	{
	Gui, Add, Picture, x12 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x12 y189 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x12 y189 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet7:
if RadioGroup = 1
	{
	Gui, Add, Picture, x122 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x122 y189 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x122 y189 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet8:
if RadioGroup = 1
	{
	Gui, Add, Picture, x232 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x232 y189 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x232 y189 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet9:
if RadioGroup = 1
	{
	Gui, Add, Picture, x342 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x342 y189 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x342 y189 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet10:
if RadioGroup = 1
	{
	Gui, Add, Picture, x452 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x452 y189 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x452 y189 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet11:
if RadioGroup = 1
	{
	Gui, Add, Picture, x12 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x12 y299 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x12 y299 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet12:
if RadioGroup = 1
	{
	Gui, Add, Picture, x122 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x122 y299 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x122 y299 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet13:
if RadioGroup = 1
	{
	Gui, Add, Picture, x342 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x342 y299 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x342 y299 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet14:
if RadioGroup = 1
	{
	Gui, Add, Picture, x452 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x452 y299 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x452 y299 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet15:
if RadioGroup = 1
	{
	Gui, Add, Picture, x12 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x12 y409 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x12 y409 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet16:
if RadioGroup = 1
	{
	Gui, Add, Picture, x122 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x122 y409 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x122 y409 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet17:
if RadioGroup = 1
	{
	Gui, Add, Picture, x232 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x232 y409 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x232 y409 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet18:
if RadioGroup = 1
	{
	Gui, Add, Picture, x342 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x342 y409 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x342 y409 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet19:
if RadioGroup = 1
	{
	Gui, Add, Picture, x452 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x452 y409 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x452 y409 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet20:
if RadioGroup = 1
	{
	Gui, Add, Picture, x12 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x12 y519 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x12 y519 w100 h100, %A_WorkingDir%\resources\token2.jpg	
	}
return

TokenGet21:
if RadioGroup = 1
	{
	Gui, Add, Picture, x122 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x122 y519 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x122 y519 w100 h100, %A_WorkingDir%\resources\token2.jpg
	}
return

TokenGet22:
if RadioGroup = 1
	{
	Gui, Add, Picture, x232 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x232 y519 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x232 y519 w100 h100, %A_WorkingDir%\resources\token2.jpg
	}
return

TokenGet23:
if RadioGroup = 1
	{
	Gui, Add, Picture, x342 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x342 y519 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x342 y519 w100 h100, %A_WorkingDir%\resources\token2.jpg
	}
return

TokenGet24:
if RadioGroup = 1
	{
	Gui, Add, Picture, x452 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
	}
else if RadioGroup = 2
	{
	Gui, Add, Picture, x452 y519 w100 h100, %A_WorkingDir%\resources\token3.jpg
	}
else if RadioGroup = 3
	{
	Gui, Add, Picture, x452 y519 w100 h100, %A_WorkingDir%\resources\token2.jpg
	}
return

ButtonNew:
send ^{Tab}
return
	
ButtonInfo:
MsgBox Version 2.0. See change log for further information. 
return

GuiClose:
ButtonExit:
ExitApp

/*
This function uses the Mersenne Twister random number generator, MT19937, written by Takuji Nishimura and Makoto Matsumoto, Shawn Cokus, Matthe Bellew and Isaku Wada.

The Mersenne Twister is an algorithm for generating random numbers. It was designed with consideration of the flaws in various other generators. The period, 219937-1, and the order of equidistribution, 623 dimensions, are far greater. The generator is also fast; it avoids multiplication and division, and it benefits from caches and pipelines. For more information see the inventors' web page at www.math.keio.ac.jp/~matumoto/emt.html

Copyright (C) 1997 - 2002, Makoto Matsumoto and Takuji Nishimura, All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
The names of its contributors may not be used to endorse or promote products derived from this software without specific prior written permission.
THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

Do NOT use for CRYPTOGRAPHY without securely hashing several returned values together, otherwise the generator state can be learned after reading 624 consecutive values.

When you use this, send an email to: matumoto@math.keio.ac.jp with an appropriate reference to your work. It would be nice to CC: rjwagner@writeme.com and Cokus@math.washington.edu when you write.
*/