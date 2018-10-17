/*
AutoHotkey Version 1.1.30.00
Windows 10
AutoHotkey updater. Used for various programs. 
You can change the URL/ file name to whatever you want. It will download to whatever the current folder is. 
*/

#Warn
#NoEnv
SendMode, Input 
SetWorkingDir %A_ScriptDir% ;set to script directory to see files

; below is the URL name you would like to download. Filename is the name of the filename
url = https://github.com/MattAHK/ahk-bingo/archive/master.zip
Filename = Update.zip



UrlDownloadToFile, *0 %url%, %A_WorkingDir%\%Filename%
if ErrorLevel = 1
	MsgBox, There was some error updating the file. You may have the latest version, or it is blocked.
else if ErrorLevel = 0
	MsgBox, The update/ download appears to have been successful. Please check the update folder. 
else 
	MsgBox, some other crazy error occured. 

return