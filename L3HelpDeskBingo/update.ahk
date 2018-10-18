/*
AutoHotkey Version 1.1.30.00
Windows 10
AutoHotkey updater. Used for various programs. 
You can change the URL/ file name to whatever you want. It will download to whatever the current folder is. 
You also need to change line 22 to where the update version file is located.
*/

#Warn
#NoEnv
SendMode, Input 
SetWorkingDir %A_ScriptDir% ;set to script directory to see files

; below is the URL name you would like to download. Filename is the name of the filename
url = https://github.com/MattAHK/ahk-bingo/archive/master.zip
Filename = Update.zip

FileReadLine, VNum, %A_WorkingDir%\version.txt, 1
	if ErrorLevel = 1
	Vnum = 0

whr := ComObjCreate("WinHttp.WinHttpRequest.5.1")
whr.Open("GET", "https://raw.githubusercontent.com/MattAHK/ahk-bingo/Matt's-working-branch/L3HelpDeskBingo/version.txt", true)
whr.Send()
; Using 'true' above and the call below allows the script to remain responsive.
whr.WaitForResponse()
version := whr.ResponseText

MsgBox, 1, Press OK to download, Your current version is %Vnum%. This latest is %version%.
	IfMsgBox OK
		UrlDownloadToFile, *0 %url%, %A_WorkingDir%\%Filename%
		if ErrorLevel = 1
			MsgBox, There was some error updating the file. You may have the latest version, or it is blocked.
		else if ErrorLevel = 0
			MsgBox, The update/ download appears to have been successful or you clicked cancel. Please check the update folder. 
		else 
			MsgBox, some other crazy error occured. 
Return 