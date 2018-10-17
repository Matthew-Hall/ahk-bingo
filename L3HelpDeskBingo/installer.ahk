;installer
;this will be used to reduce file size on disk for the bingo game. If everything is compile the size increases by a lot. 
;the following is taken from user HakitoJin https://autohotkey.com/boards/viewtopic.php?f=6&t=55638
;Thank you!

SetWorkingDir %A_ScriptDir% 

FileAssociate(Label:="AutohotkeyScript",Ext:=".ahk",Cmd:="%A_WorkingDir%\AutoHotkeyU64.exe",Icon:="") ;by Ħakito   -   https://autohotkey.com/boards/viewtopic.php?f=6&t=55638
{
	SuccessLevel:=0
	iF Label
	{
		;Note that "HKEY_CLASSES_ROOT" actually writes to "HKEY_LOCAL_MACHINE\SOFTWARE\Classes"
		iF Cmd ;Path to executable
		{
			iF SubStr(Cmd,2,2)=":\" and FileExist(Cmd) ;If the command is just a simple path, then convert it into a proper run command
				Cmd:="`"" Cmd "`" `"" "%1`" %*"
			
			RegWrite Label,"REG_SZ","HKEY_CLASSES_ROOT\" Label
			RegWrite Cmd,"REG_SZ","HKEY_CLASSES_ROOT\" Label "\Shell\Open\Command"
			SuccessLevel+=1<<0 ;+1
		}
		
		iF Icon ;Path to icon
		{
			RegWrite Icon,"REG_SZ","HKEY_CLASSES_ROOT\" Label "\DefaultIcon"
			SuccessLevel+=1<<1 ;+2
		}
		
		iF Ext and RegRead("HKEY_CLASSES_ROOT\" Label "\Shell\Open\Command") ;Checks if "Label" is valid before associating the extension with it
		{
			;Backup HKEY_CLASSES_ROOT\.ext\OpenWithProgids, the function has no use for this backup currently, it's just there for peace of mind
			Loop Reg,"HKEY_CLASSES_ROOT\" Ext "\OpenWithProgids",V
				iF A_LoopRegName
					RegWrite "","REG_SZ","HKEY_CLASSES_ROOT\" Ext "\BackupOpenWithProgids",A_LoopRegName
		
			;Sets the default label for this extension
			RegWrite Label,"REG_SZ","HKEY_CLASSES_ROOT\" Ext
			RegDeleteKey "HKEY_CLASSES_ROOT\" Ext "\OpenWithProgids"
						
			;Delete "OpenWithProgids" to ensure that the default program will be used
			RegDeleteKey "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\" Ext "\OpenWithProgids" ;The key will be automatically re-created when you open the appropriate extension
			
			;This next part deletes "UserChoice", which is harder to remove because it's protected (and it can only be created by using "Always use this app to open .ext files")
			FileDelete A_ScriptDir "\DeleteUserChoice.reg" ;Just in case the previous file didn't get deleted
			FileAppend "Windows Registry Editor Version 5.00`n[-HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\" Ext "\UserChoice]",A_ScriptDir "\DeleteUserChoice.reg"
			RunWait("Reg Import `"" A_ScriptDir "\DeleteUserChoice.reg`"",,"Hide") ;Applies the change, which deletes "UserChoice"
			FileDelete A_ScriptDir "\DeleteUserChoice.reg" ;We don't want the file laying around
			SuccessLevel+=1<<2 ;+4
		}
	}
	return SuccessLevel
	
	;You can register an application in "HKEY_CURRENT_USER\SOFTWARE\Classes\Applications", but it seems unnecessary
	;RegWrite Q ahk2File Q _ Q coreDirectory "\Glimpse.ahk2" Q _ Q "%1" Q _ "%*","REG_SZ","HKEY_CURRENT_USER\SOFTWARE\Classes\Applications\CodeFusionImage.exe\shell\open\command"

	;Other places where I found my label "CodeFusionImage":
	;HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts
	;HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.png\OpenWithProgids
	;HKEY_USERS\S-1-5-21-4017089542-160688567-4195577993-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\ApplicationAssociationToasts ;These two are the same as the above I guess
	;HKEY_USERS\S-1-5-21-4017089542-160688567-4195577993-1001\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.png\OpenWithProgids

	;You can also write registry like this:
	;Run("Reg Add "  "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\FileExts\.png\Key /v Name /t REG_SZ /d Data /f",,"Hide")
	;More information here   -    https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/reg-add

	;P.S. The Q is a variable that contains a quote, and _ contains space.
}