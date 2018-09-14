/*
Help desk bingo
includes 48 possible squares:
-boxer not receiving email
-CICS password
-AutoTime
-ServiceNow ticket
-escalate
-Needs to be an EASR 
-SAP (not p11)
-Bomgar In
-Actually wants ticket number
-Check on status
-external
-not resolved
-doing callbacks
-out of office
-bell techlogix undeliverable
-l3 undeliverable
-pending approval
-closed ticket
-lost/damaged device 
-answer a question in daily chat
-call from local IT
-chat received
-ServiceNow email ticket  
-*Important* message in chat
-escalation in less than a minute
-Building 157
-VPN issue
-Invincea issue
-TOLD issue
-Sharepoint issue
-FileShare issue
-RTW
-LOA
-Email from Williams2
-Outbound call
-Friday! (yours or for reals)
-500 L3 calls
-resolved by restart
-people that should have been amish
-autotime that is actually IDE
-someone humming/whistling Africa
-no queue
-P11 reset
-Active Directory
-Access Dashboard
-RSA Pin
-transfer an email
-receive transferred email
end

These answers should be randomly associated to boxes. Duplicates are ok
will use the random function to pick between 1-48 for cards. 
will have a start screen with a generate button
then move to second screen that has the cards
cards will use the click g control to replace card with a token
optionally, could pick individual cards

request user pick one at a time for duplicates
*/

SetWorkingDir %A_ScriptDir%

Gui, Add, Tab, x4 y-1 w550 h20 , Menu|Game
Gui, Add, Text, x34 y49 w490 h130 +Center, Text
Gui, Add, Button, x232 y399 w100 h30 , Info
Gui, Add, Button, x232 y459 w100 h30 , Exit
Gui, Add, Button, x232 y339 w100 h30 , Play
Gui, Add, Text, x34 y209 w490 h110 +Center, Bingo
;Gui, Font, S40 CDefault, Verdana
Gui, Tab, Game
Gui, Add, Text, x14 y29 w530 h30 , Text
Gui, Add, Button, x450 y29 w100 h30 , New
Gui, Add, GroupBox, x12 y81 w100 h100 , ;1
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
Gui, Add, GroupBox, x232 y299 w100 h100 , ;13 Free
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

ButtonPlay:
{
gui, submit, nohide
Gui, Tab, Game
Gui, Add, Picture, x232 y299 w100 h100 gClickFree, %A_WorkingDir%\resources\free.jpg
Random, Choice, 1, 48
Random, Choice2, 1, 48
Random, Choice3, 1, 48
Random, Choice4, 1, 48
Random, Choice5, 1, 48
Random, Choice6, 1, 48
Random, Choice7, 1, 48
Random, Choice8, 1, 48
Random, Choice9, 1, 48
Random, Choice10, 1, 48
Random, Choice11, 1, 48
Random, Choice12, 1, 48
Random, Choice14, 1, 48
Random, Choice15, 1, 48
Random, Choice16, 1, 48
Random, Choice17, 1, 48
Random, Choice18, 1, 48
Random, Choice19, 1, 48
Random, Choice20, 1, 48
Random, Choice21, 1, 48
Random, Choice22, 1, 48
Random, Choice23, 1, 48
Random, Choice24, 1, 48
Random, Choice25, 1, 48
if Choice = 1
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\boxer.jpg
	send ^{Tab}
	}
if Choice = 2
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\cics.jpg
	send ^{Tab}
	}
if Choice = 3
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\bomgar.jpg
	send ^{Tab}
	}
if Choice = 4
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\sap.jpg
	send ^{Tab}
	}
if Choice = 5
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\EASR.jpg
	send ^{Tab}
	}
if Choice = 6
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\escalate.jpg
	send ^{Tab}
	}
if Choice = 7
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\snow.jpg
	send ^{Tab}
	}
if Choice = 8
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\autotime.jpg
	send ^{Tab}
	}
if Choice = 9
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\ticketnumber.jpg
	send ^{Tab}
	}
if Choice = 10
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\undel3.jpg
	send ^{Tab}
	}
if Choice = 11
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\undelbell.jpg
	send ^{Tab}
	}
if Choice = 12
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\status.jpg
	send ^{Tab}
	}
if Choice = 13
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\notsolved.jpg
	send ^{Tab}
	}
if Choice = 14
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\callback.jpg
	send ^{Tab}
	}
if Choice = 15
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\external.jpg
	send ^{Tab}
	}
if Choice = 16
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\ooo.jpg
	send ^{Tab}
	}
if Choice = 17
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\lost.jpg
	send ^{Tab}
	}
if Choice = 18
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\euu.jpg
	send ^{Tab}
	}
if Choice = 19
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\local.jpg
	send ^{Tab}
	}
if Choice = 20
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\answer.jpg
	send ^{Tab}
	}
if Choice = 21
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\closed.jpg
	send ^{Tab}
	}
if Choice = 22
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\building157.jpg
	send ^{Tab}
	}
if Choice = 23
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\vpn.jpg
	send ^{Tab}
	}
if Choice = 24
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\invincea.jpg
	send ^{Tab}
	}
if Choice = 25
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\told.jpg
	send ^{Tab}
	}
if Choice = 26
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\sharepoint.jpg
	send ^{Tab}
	}
if Choice = 27
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\driveshare.jpg
	send ^{Tab}
	}
if Choice = 28
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\rtw.jpg
	send ^{Tab}
	}
if Choice = 29
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\loa.jpg
	send ^{Tab}
	}
if Choice = 30
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\outlook.jpg
	send ^{Tab}
	}
if Choice = 31
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\outbound.jpg
	send ^{Tab}
	}
if Choice = 32
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\friday.jpg
	send ^{Tab}
	}
if Choice = 33
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\500.jpg
	send ^{Tab}
	}
if Choice = 34
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\why.jpg
	send ^{Tab}
	}
if Choice = 35
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\autoide.jpg
	send ^{Tab}
	}
if Choice = 36
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\africa.jpg
	send ^{Tab}
	}
if Choice = 37
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\noq.jpg
	send ^{Tab}
	}
if Choice = 38
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\restart.jpg
	send ^{Tab}
	}
if Choice = 39
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\p11.jpg
	send ^{Tab}
	}
if Choice = 40
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\actived.jpg
	send ^{Tab}
	}
if Choice = 41
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\accessd.jpg
	send ^{Tab}
	}
if Choice = 42
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\rsaadmin.jpg
	send ^{Tab}
	}
if Choice = 43
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\transfer.jpg
	send ^{Tab}
	}
if Choice = 44
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\receive.jpg
	send ^{Tab}
	}
if Choice = 45
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\quickescalation.jpg
	send ^{Tab}
	}
if Choice = 46
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\important.jpg
	send ^{Tab}
	}
if Choice = 47
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\snowemail.jpg
	send ^{Tab}
	}
if Choice = 48
	{
	Gui, Add, Picture, x12 y81 w100 h100 gTokenGet, %A_WorkingDir%\resources\chat.jpg
	send ^{Tab}
	}
if Choice2 = 1
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice2 = 2
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\cics.jpg
	}
if Choice2 = 3
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice2 = 4
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\sap.jpg
	}
if Choice2 = 5
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice2 = 6
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice2 = 7
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\snow.jpg
	}
if Choice2 = 8
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice2 = 9
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice2 = 10
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice2 = 11
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice2 = 12
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\status.jpg
	}
if Choice2 = 13
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice2 = 14
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\callback.jpg
	}
if Choice2 = 15
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\external.jpg
	}
if Choice2 = 16
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice2 = 17
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\lost.jpg
	}
if Choice2 = 18
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\euu.jpg
	}
if Choice2 = 19
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\local.jpg
	}
if Choice2 = 20
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\answer.jpg
	}
if Choice2 = 21
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\closed.jpg
	}
if Choice2 = 22
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\building157.jpg
	}
if Choice2 = 23
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice2 = 24
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice2 = 25
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\told.jpg
	}
if Choice2 = 26
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice2 = 27
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice2 = 28
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice2 = 29
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\loa.jpg
	}
if Choice2 = 30
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice2 = 31
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice2 = 32
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\friday.jpg
	}
if Choice2 = 33
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\500.jpg
	}
if Choice2 = 34
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\why.jpg
	}
if Choice2 = 35
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice2 = 36
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\africa.jpg
	}
if Choice2 = 37
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\noq.jpg
	}
if Choice2 = 38
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\restart.jpg
	}
if Choice2 = 39
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\p11.jpg
	}
if Choice2 = 40
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\actived.jpg
	}
if Choice2 = 41
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice2 = 42
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice2 = 43
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice2 = 44
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\receive.jpg
	}
if Choice2 = 45
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice2 = 46
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\important.jpg
	}
if Choice2 = 47
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice2 = 48
	{
	Gui, Add, Picture, x122 y79 w100 h100 gTokenGet2, %A_WorkingDir%\resources\chat.jpg
	}	
if Choice3 = 1
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice3 = 2
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\cics.jpg
	}
if Choice3 = 3
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice3 = 4
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\sap.jpg
	}
if Choice3 = 5
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice3 = 6
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice3 = 7
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\snow.jpg
	}
if Choice3 = 8
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice3 = 9
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice3 = 10
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice3 = 11
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice3 = 12
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\status.jpg
	}
if Choice3 = 13
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice3 = 14
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\callback.jpg
	}
if Choice3 = 15
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\external.jpg
	}
if Choice3 = 16
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice3 = 17
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\lost.jpg
	}
if Choice3 = 18
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\euu.jpg
	}
if Choice3 = 19
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\local.jpg
	}
if Choice3 = 20
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\answer.jpg
	}
if Choice3 = 21
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\closed.jpg
	}
if Choice3 = 22
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\building157.jpg
	}
if Choice3 = 23
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice3 = 24
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice3 = 25
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\told.jpg
	}
if Choice3 = 26
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice3 = 27
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice3 = 28
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice3 = 29
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\loa.jpg
	}
if Choice3 = 30
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice3 = 31
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice3 = 32
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\friday.jpg
	}
if Choice3 = 33
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\500.jpg
	}
if Choice3 = 34
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\why.jpg
	}
if Choice3 = 35
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice3 = 36
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\africa.jpg
	}
if Choice3 = 37
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\noq.jpg
	}
if Choice3 = 38
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\restart.jpg
	}
if Choice3 = 39
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\p11.jpg
	}
if Choice3 = 40
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\actived.jpg
	}
if Choice3 = 41
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice3 = 42
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice3 = 43
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice3 = 44
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\receive.jpg
	}
if Choice3 = 45
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice3 = 46
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\important.jpg
	}
if Choice3 = 47
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice3 = 48
	{
	Gui, Add, Picture, x232 y79 w100 h100 gTokenGet3, %A_WorkingDir%\resources\chat.jpg
	}
if Choice4 = 1
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice4 = 2
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\cics.jpg
	}
if Choice4 = 3
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice4 = 4
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\sap.jpg
	}
if Choice4 = 5
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice4 = 6
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice4 = 7
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\snow.jpg
	}
if Choice4 = 8
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice4 = 9
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice4 = 10
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice4 = 11
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice4 = 12
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\status.jpg
	}
if Choice4 = 13
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice4 = 14
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\callback.jpg
	}
if Choice4 = 15
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\external.jpg
	}
if Choice4 = 16
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice4 = 17
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\lost.jpg
	}
if Choice4 = 18
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\euu.jpg
	}
if Choice4 = 19
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\local.jpg
	}
if Choice4 = 20
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\answer.jpg
	}
if Choice4 = 21
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\closed.jpg
	}
if Choice4 = 22
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\building157.jpg
	}
if Choice4 = 23
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice4 = 24
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice4 = 25
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\told.jpg
	}
if Choice4 = 26
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice4 = 27
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice4 = 28
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice4 = 29
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\loa.jpg
	}
if Choice4 = 30
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice4 = 31
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice4 = 32
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\friday.jpg
	}
if Choice4 = 33
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\500.jpg
	}
if Choice4 = 34
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\why.jpg
	}
if Choice4 = 35
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice4 = 36
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\africa.jpg
	}
if Choice4 = 37
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\noq.jpg
	}
if Choice4 = 38
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\restart.jpg
	}
if Choice4 = 39
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\p11.jpg
	}
if Choice4 = 40
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\actived.jpg
	}
if Choice4 = 41
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice4 = 42
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice4 = 43
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice4 = 44
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\receive.jpg
	}
if Choice4 = 45
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice4 = 46
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\important.jpg
	}
if Choice4 = 47
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice4 = 48
	{
	Gui, Add, Picture, x342 y79 w100 h100 gTokenGet4, %A_WorkingDir%\resources\chat.jpg
	}
if Choice5 = 1
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice5 = 2
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\cics.jpg
	}
if Choice5 = 3
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice5 = 4
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\sap.jpg
	}
if Choice5 = 5
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice5 = 6
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice5 = 7
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\snow.jpg
	}
if Choice5 = 8
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice5 = 9
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice5 = 10
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice5 = 11
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice5 = 12
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\status.jpg
	}
if Choice5 = 13
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice5 = 14
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\callback.jpg
	}
if Choice5 = 15
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\external.jpg
	}
if Choice5 = 16
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice5 = 17
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\lost.jpg
	}
if Choice5 = 18
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\euu.jpg
	}
if Choice5 = 19
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\local.jpg
	}
if Choice5 = 20
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\answer.jpg
	}
if Choice5 = 21
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\closed.jpg
	}
if Choice5 = 22
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\building157.jpg
	}
if Choice5 = 23
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice5 = 24
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice5 = 25
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\told.jpg
	}
if Choice5 = 26
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice5 = 27
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice5 = 28
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice5 = 29
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\loa.jpg
	}
if Choice5 = 30
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice5 = 31
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice5 = 32
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\friday.jpg
	}
if Choice5 = 33
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\500.jpg
	}
if Choice5 = 34
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\why.jpg
	}
if Choice5 = 35
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice5 = 36
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\africa.jpg
	}
if Choice5 = 37
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\noq.jpg
	}
if Choice5 = 38
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\restart.jpg
	}
if Choice5 = 39
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\p11.jpg
	}
if Choice5 = 40
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\actived.jpg
	}
if Choice5 = 41
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice5 = 42
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice5 = 43
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice5 = 44
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\receive.jpg
	}
if Choice5 = 45
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice5 = 46
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\important.jpg
	}
if Choice5 = 47
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice5 = 48
	{
	Gui, Add, Picture, x452 y79 w100 h100 gTokenGet5, %A_WorkingDir%\resources\chat.jpg
	}
if Choice6 = 1
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice6 = 2
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\cics.jpg
	}
if Choice6 = 3
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice6 = 4
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\sap.jpg
	}
if Choice6 = 5
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice6 = 6
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice6 = 7
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\snow.jpg
	}
if Choice6 = 8
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice6 = 9
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice6 = 10
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice6 = 11
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice6 = 12
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\status.jpg
	}
if Choice6 = 13
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice6 = 14
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\callback.jpg
	}
if Choice6 = 15
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\external.jpg
	}
if Choice6 = 16
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice6 = 17
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\lost.jpg
	}
if Choice6 = 18
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\euu.jpg
	}
if Choice6 = 19
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\local.jpg
	}
if Choice6 = 20
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\answer.jpg
	}
if Choice6 = 21
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\closed.jpg
	}
if Choice6 = 22
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\building157.jpg
	}
if Choice6 = 23
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice6 = 24
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice6 = 25
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\told.jpg
	}
if Choice6 = 26
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice6 = 27
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice6 = 28
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice6 = 29
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\loa.jpg
	}
if Choice6 = 30
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice6 = 31
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice6 = 32
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\friday.jpg
	}
if Choice6 = 33
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\500.jpg
	}
if Choice6 = 34
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\why.jpg
	}
if Choice6 = 35
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice6 = 36
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\africa.jpg
	}
if Choice6 = 37
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\noq.jpg
	}
if Choice6 = 38
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\restart.jpg
	}
if Choice6 = 39
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\p11.jpg
	}
if Choice6 = 40
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\actived.jpg
	}
if Choice6 = 41
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice6 = 42
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice6 = 43
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice6 = 44
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\receive.jpg
	}
if Choice6 = 45
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice6 = 46
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\important.jpg
	}
if Choice6 = 47
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice6 = 48
	{
	Gui, Add, Picture, x12 y189 w100 h100 gTokenGet6, %A_WorkingDir%\resources\chat.jpg
	}	
if Choice7 = 1
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice7 = 2
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\cics.jpg
	}
if Choice7 = 3
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice7 = 4
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\sap.jpg
	}
if Choice7 = 5
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice7 = 6
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice7 = 7
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\snow.jpg
	}
if Choice7 = 8
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice7 = 9
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice7 = 10
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice7 = 11
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice7 = 12
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\status.jpg
	}
if Choice7 = 13
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice7 = 14
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\callback.jpg
	}
if Choice7 = 15
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\external.jpg
	}
if Choice7 = 16
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice7 = 17
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\lost.jpg
	}
if Choice7 = 18
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\euu.jpg
	}
if Choice7 = 19
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\local.jpg
	}
if Choice7 = 20
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\answer.jpg
	}
if Choice7 = 21
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\closed.jpg
	}
if Choice7 = 22
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\building157.jpg
	}
if Choice7 = 23
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice7 = 24
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice7 = 25
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\told.jpg
	}
if Choice7 = 26
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice7 = 27
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice7 = 28
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice7 = 29
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\loa.jpg
	}
if Choice7 = 30
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice7 = 31
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice7 = 32
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\friday.jpg
	}
if Choice7 = 33
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\500.jpg
	}
if Choice7 = 34
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\why.jpg
	}
if Choice7 = 35
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice7 = 36
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\africa.jpg
	}
if Choice7 = 37
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\noq.jpg
	}
if Choice7 = 38
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\restart.jpg
	}
if Choice7 = 39
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\p11.jpg
	}
if Choice7 = 40
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\actived.jpg
	}
if Choice7 = 41
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice7 = 42
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice7 = 43
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice7 = 44
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\receive.jpg
	}
if Choice7 = 45
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice7 = 46
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\important.jpg
	}
if Choice7 = 47
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice7 = 48
	{
	Gui, Add, Picture, x122 y189 w100 h100 gTokenGet7, %A_WorkingDir%\resources\chat.jpg
	}
if Choice8 = 1
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice8 = 2
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\cics.jpg
	}
if Choice8 = 3
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice8 = 4
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\sap.jpg
	}
if Choice8 = 5
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice8 = 6
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice8 = 7
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\snow.jpg
	}
if Choice8 = 8
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice8 = 9
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice8 = 10
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice8 = 11
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice8 = 12
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\status.jpg
	}
if Choice8 = 13
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice8 = 14
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\callback.jpg
	}
if Choice8 = 15
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\external.jpg
	}
if Choice8 = 16
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice8 = 17
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\lost.jpg
	}
if Choice8 = 18
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\euu.jpg
	}
if Choice8 = 19
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\local.jpg
	}
if Choice8 = 20
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\answer.jpg
	}
if Choice8 = 21
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\closed.jpg
	}
if Choice8 = 22
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\building157.jpg
	}
if Choice8 = 23
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice8 = 24
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice8 = 25
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\told.jpg
	}
if Choice8 = 26
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice8 = 27
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice8 = 28
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice8 = 29
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\loa.jpg
	}
if Choice8 = 30
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice8 = 31
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice8 = 32
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\friday.jpg
	}
if Choice8 = 33
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\500.jpg
	}
if Choice8 = 34
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\why.jpg
	}
if Choice8 = 35
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice8 = 36
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\africa.jpg
	}
if Choice8 = 37
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\noq.jpg
	}
if Choice8 = 38
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\restart.jpg
	}
if Choice8 = 39
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\p11.jpg
	}
if Choice8 = 40
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\actived.jpg
	}
if Choice8 = 41
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice8 = 42
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice8 = 43
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice8 = 44
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\receive.jpg
	}
if Choice8 = 45
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice8 = 46
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\important.jpg
	}
if Choice8 = 47
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice8 = 48
	{
	Gui, Add, Picture, x232 y189 w100 h100 gTokenGet8, %A_WorkingDir%\resources\chat.jpg
	}
if Choice9 = 1
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice9 = 2
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\cics.jpg
	}
if Choice9 = 3
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice9 = 4
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\sap.jpg
	}
if Choice9 = 5
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice9 = 6
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice9 = 7
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\snow.jpg
	}
if Choice9 = 8
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice9 = 9
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice9 = 10
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice9 = 11
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice9 = 12
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\status.jpg
	}
if Choice9 = 13
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice9 = 14
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\callback.jpg
	}
if Choice9 = 15
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\external.jpg
	}
if Choice9 = 16
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice9 = 17
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\lost.jpg
	}
if Choice9 = 18
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\euu.jpg
	}
if Choice9 = 19
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\local.jpg
	}
if Choice9 = 20
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\answer.jpg
	}
if Choice9 = 21
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\closed.jpg
	}
if Choice9 = 22
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\building157.jpg
	}
if Choice9 = 23
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice9 = 24
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice9 = 25
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\told.jpg
	}
if Choice9 = 26
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice9 = 27
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice9 = 28
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice9 = 29
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\loa.jpg
	}
if Choice9 = 30
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice9 = 31
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice9 = 32
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\friday.jpg
	}
if Choice9 = 33
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\500.jpg
	}
if Choice9 = 34
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\why.jpg
	}
if Choice9 = 35
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice9 = 36
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\africa.jpg
	}
if Choice9 = 37
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\noq.jpg
	}
if Choice9 = 38
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\restart.jpg
	}
if Choice9 = 39
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\p11.jpg
	}
if Choice9 = 40
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\actived.jpg
	}
if Choice9 = 41
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice9 = 42
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice9 = 43
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice9 = 44
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\receive.jpg
	}
if Choice9 = 45
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice9 = 46
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\important.jpg
	}
if Choice9 = 47
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice9 = 48
	{
	Gui, Add, Picture, x342 y189 w100 h100 gTokenGet9, %A_WorkingDir%\resources\chat.jpg
	}
if Choice10 = 1
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice10 = 2
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\cics.jpg
	}
if Choice10 = 3
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice10 = 4
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\sap.jpg
	}
if Choice10 = 5
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice10 = 6
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice10 = 7
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\snow.jpg
	}
if Choice10 = 8
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice10 = 9
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice10 = 10
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice10 = 11
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice10 = 12
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\status.jpg
	}
if Choice10 = 13
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice10 = 14
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\callback.jpg
	}
if Choice10 = 15
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\external.jpg
	}
if Choice10 = 16
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice10 = 17
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\lost.jpg
	}
if Choice10 = 18
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\euu.jpg
	}
if Choice10 = 19
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\local.jpg
	}
if Choice10 = 20
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\answer.jpg
	}
if Choice10 = 21
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\closed.jpg
	}
if Choice10 = 22
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\building157.jpg
	}
if Choice10 = 23
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice10 = 24
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice10 = 25
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\told.jpg
	}
if Choice10 = 26
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice10 = 27
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice10 = 28
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice10 = 29
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\loa.jpg
	}
if Choice10 = 30
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice10 = 31
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice10 = 32
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\friday.jpg
	}
if Choice10 = 33
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\500.jpg
	}
if Choice10 = 34
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\why.jpg
	}
if Choice10 = 35
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice10 = 36
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\africa.jpg
	}
if Choice10 = 37
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\noq.jpg
	}
if Choice10 = 38
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\restart.jpg
	}
if Choice10 = 39
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\p11.jpg
	}
if Choice10 = 40
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\actived.jpg
	}
if Choice10 = 41
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice10 = 42
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice10 = 43
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice10 = 44
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\receive.jpg
	}
if Choice10 = 45
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice10 = 46
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\important.jpg
	}
if Choice10 = 47
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice10 = 48
	{
	Gui, Add, Picture, x452 y189 w100 h100 gTokenGet10, %A_WorkingDir%\resources\chat.jpg
	}
if Choice11 = 1
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice11 = 2
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\cics.jpg
	}
if Choice11 = 3
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice11 = 4
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\sap.jpg
	}
if Choice11 = 5
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice11 = 6
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice11 = 7
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\snow.jpg
	}
if Choice11 = 8
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice11 = 9
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice11 = 10
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice11 = 11
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice11 = 12
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\status.jpg
	}
if Choice11 = 13
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice11 = 14
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\callback.jpg
	}
if Choice11 = 15
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\external.jpg
	}
if Choice11 = 16
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice11 = 17
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\lost.jpg
	}
if Choice11 = 18
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\euu.jpg
	}
if Choice11 = 19
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\local.jpg
	}
if Choice11 = 20
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\answer.jpg
	}
if Choice11 = 21
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\closed.jpg
	}
if Choice11 = 22
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\building157.jpg
	}
if Choice11 = 23
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice11 = 24
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice11 = 25
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\told.jpg
	}
if Choice11 = 26
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice11 = 27
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice11 = 28
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice11 = 29
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\loa.jpg
	}
if Choice11 = 30
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice11 = 31
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice11 = 32
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\friday.jpg
	}
if Choice11 = 33
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\500.jpg
	}
if Choice11 = 34
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\why.jpg
	}
if Choice11 = 35
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice11 = 36
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\africa.jpg
	}
if Choice11 = 37
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\noq.jpg
	}
if Choice11 = 38
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\restart.jpg
	}
if Choice11 = 39
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\p11.jpg
	}
if Choice11 = 40
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\actived.jpg
	}
if Choice11 = 41
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice11 = 42
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice11 = 43
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice11 = 44
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\receive.jpg
	}
if Choice11 = 45
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice11 = 46
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\important.jpg
	}
if Choice11 = 47
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice11 = 48
	{
	Gui, Add, Picture, x12 y299 w100 h100 gTokenGet11, %A_WorkingDir%\resources\chat.jpg
	}
if Choice12 = 1
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice12 = 2
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\cics.jpg
	}
if Choice12 = 3
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice12 = 4
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\sap.jpg
	}
if Choice12 = 5
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice12 = 6
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice12 = 7
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\snow.jpg
	}
if Choice12 = 8
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice12 = 9
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice12 = 10
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice12 = 11
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice12 = 12
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\status.jpg
	}
if Choice12 = 13
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice12 = 14
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\callback.jpg
	}
if Choice12 = 15
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\external.jpg
	}
if Choice12 = 16
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice12 = 17
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\lost.jpg
	}
if Choice12 = 18
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\euu.jpg
	}
if Choice12 = 19
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\local.jpg
	}
if Choice12 = 20
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\answer.jpg
	}
if Choice12 = 21
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\closed.jpg
	}
if Choice12 = 22
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\building157.jpg
	}
if Choice12 = 23
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice12 = 24
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice12 = 25
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\told.jpg
	}
if Choice12 = 26
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice12 = 27
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice12 = 28
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice12 = 29
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\loa.jpg
	}
if Choice12 = 30
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice12 = 31
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice12 = 32
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\friday.jpg
	}
if Choice12 = 33
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\500.jpg
	}
if Choice12 = 34
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\why.jpg
	}
if Choice12 = 35
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice12 = 36
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\africa.jpg
	}
if Choice12 = 37
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\noq.jpg
	}
if Choice12 = 38
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\restart.jpg
	}
if Choice12 = 39
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\p11.jpg
	}
if Choice12 = 40
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\actived.jpg
	}
if Choice12 = 41
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice12 = 42
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice12 = 43
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice12 = 44
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\receive.jpg
	}
if Choice12 = 45
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice12 = 46
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\important.jpg
	}
if Choice12 = 47
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice12 = 48
	{
	Gui, Add, Picture, x122 y299 w100 h100 gTokenGet12, %A_WorkingDir%\resources\chat.jpg
	}
if Choice14 = 1
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice14 = 2
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\cics.jpg
	}
if Choice14 = 3
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice14 = 4
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\sap.jpg
	}
if Choice14 = 5
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice14 = 6
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice14 = 7
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\snow.jpg
	}
if Choice14 = 8
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice14 = 9
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice14 = 10
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice14 = 11
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice14 = 12
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\status.jpg
	}
if Choice14 = 13
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice14 = 14
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\callback.jpg
	}
if Choice14 = 15
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\external.jpg
	}
if Choice14 = 16
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice14 = 17
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\lost.jpg
	}
if Choice14 = 18
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\euu.jpg
	}
if Choice14 = 19
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\local.jpg
	}
if Choice14 = 20
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\answer.jpg
	}
if Choice14 = 21
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\closed.jpg
	}
if Choice14 = 22
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\building157.jpg
	}
if Choice14 = 23
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice14 = 24
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice14 = 25
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\told.jpg
	}
if Choice14 = 26
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice14 = 27
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice14 = 28
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice14 = 29
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\loa.jpg
	}
if Choice14 = 30
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice14 = 31
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice14 = 32
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\friday.jpg
	}
if Choice14 = 33
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\500.jpg
	}
if Choice14 = 34
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\why.jpg
	}
if Choice14 = 35
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice14 = 36
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\africa.jpg
	}
if Choice14 = 37
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\noq.jpg
	}
if Choice14 = 38
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\restart.jpg
	}
if Choice14 = 39
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\p11.jpg
	}
if Choice14 = 40
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\actived.jpg
	}
if Choice14 = 41
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice14 = 42
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice14 = 43
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice14 = 44
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\receive.jpg
	}
if Choice14 = 45
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice14 = 46
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\important.jpg
	}
if Choice14 = 47
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice14 = 48
	{
	Gui, Add, Picture, x342 y299 w100 h100 gTokenGet14, %A_WorkingDir%\resources\chat.jpg
	}
if Choice15 = 1
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice15 = 2
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\cics.jpg
	}
if Choice15 = 3
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice15 = 4
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\sap.jpg
	}
if Choice15 = 5
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice15 = 6
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice15 = 7
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\snow.jpg
	}
if Choice15 = 8
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice15 = 9
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice15 = 10
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice15 = 11
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice15 = 12
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\status.jpg
	}
if Choice15 = 13
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice15 = 14
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\callback.jpg
	}
if Choice15 = 15
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\external.jpg
	}
if Choice15 = 16
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice15 = 17
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\lost.jpg
	}
if Choice15 = 18
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\euu.jpg
	}
if Choice15 = 19
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\local.jpg
	}
if Choice15 = 20
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\answer.jpg
	}
if Choice15 = 21
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\closed.jpg
	}
if Choice15 = 22
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\building157.jpg
	}
if Choice15 = 23
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice15 = 24
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice15 = 25
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\told.jpg
	}
if Choice15 = 26
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice15 = 27
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice15 = 28
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice15 = 29
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\loa.jpg
	}
if Choice15 = 30
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice15 = 31
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice15 = 32
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\friday.jpg
	}
if Choice15 = 33
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\500.jpg
	}
if Choice15 = 34
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\why.jpg
	}
if Choice15 = 35
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice15 = 36
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\africa.jpg
	}
if Choice15 = 37
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\noq.jpg
	}
if Choice15 = 38
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\restart.jpg
	}
if Choice15 = 39
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\p11.jpg
	}
if Choice15 = 40
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\actived.jpg
	}
if Choice15 = 41
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice15 = 42
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice15 = 43
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice15 = 44
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\receive.jpg
	}
if Choice15 = 45
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice15 = 46
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\important.jpg
	}
if Choice15 = 47
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice15 = 48
	{
	Gui, Add, Picture, x452 y299 w100 h100 gTokenGet15, %A_WorkingDir%\resources\chat.jpg
	}
if Choice16 = 1
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice16 = 2
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\cics.jpg
	}
if Choice16 = 3
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice16 = 4
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\sap.jpg
	}
if Choice16 = 5
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice16 = 6
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice16 = 7
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\snow.jpg
	}
if Choice16 = 8
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice16 = 9
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice16 = 10
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice16 = 11
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice16 = 12
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\status.jpg
	}
if Choice16 = 13
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice16 = 14
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\callback.jpg
	}
if Choice16 = 15
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\external.jpg
	}
if Choice16 = 16
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice16 = 17
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\lost.jpg
	}
if Choice16 = 18
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\euu.jpg
	}
if Choice16 = 19
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\local.jpg
	}
if Choice16 = 20
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\answer.jpg
	}
if Choice16 = 21
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\closed.jpg
	}
if Choice16 = 22
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\building157.jpg
	}
if Choice16 = 23
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice16 = 24
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice16 = 25
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\told.jpg
	}
if Choice16 = 26
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice16 = 27
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice16 = 28
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice16 = 29
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\loa.jpg
	}
if Choice16 = 30
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice16 = 31
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice16 = 32
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\friday.jpg
	}
if Choice16 = 33
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\500.jpg
	}
if Choice16 = 34
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\why.jpg
	}
if Choice16 = 35
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice16 = 36
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\africa.jpg
	}
if Choice16 = 37
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\noq.jpg
	}
if Choice16 = 38
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\restart.jpg
	}
if Choice16 = 39
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\p11.jpg
	}
if Choice16 = 40
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\actived.jpg
	}
if Choice16 = 41
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice16 = 42
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice16 = 43
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice16 = 44
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\receive.jpg
	}
if Choice16 = 45
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice16 = 46
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\important.jpg
	}
if Choice16 = 47
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice16 = 48
	{
	Gui, Add, Picture, x12 y409 w100 h100 gTokenGet16, %A_WorkingDir%\resources\chat.jpg
	}
if Choice17 = 1
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice17 = 2
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\cics.jpg
	}
if Choice17 = 3
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice17 = 4
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\sap.jpg
	}
if Choice17 = 5
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice17 = 6
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice17 = 7
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\snow.jpg
	}
if Choice17 = 8
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice17 = 9
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice17 = 10
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice17 = 11
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice17 = 12
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\status.jpg
	}
if Choice17 = 13
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice17 = 14
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\callback.jpg
	}
if Choice17 = 15
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\external.jpg
	}
if Choice17 = 16
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice17 = 17
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\lost.jpg
	}
if Choice17 = 18
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\euu.jpg
	}
if Choice17 = 19
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\local.jpg
	}
if Choice17 = 20
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\answer.jpg
	}
if Choice17 = 21
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\closed.jpg
	}
if Choice17 = 22
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\building157.jpg
	}
if Choice17 = 23
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice17 = 24
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice17 = 25
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\told.jpg
	}
if Choice17 = 26
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice17 = 27
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice17 = 28
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice17 = 29
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\loa.jpg
	}
if Choice17 = 30
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice17 = 31
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice17 = 32
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\friday.jpg
	}
if Choice17 = 33
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\500.jpg
	}
if Choice17 = 34
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\why.jpg
	}
if Choice17 = 35
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice17 = 36
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\africa.jpg
	}
if Choice17 = 37
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\noq.jpg
	}
if Choice17 = 38
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\restart.jpg
	}
if Choice17 = 39
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\p11.jpg
	}
if Choice17 = 40
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\actived.jpg
	}
if Choice17 = 41
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice17 = 42
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice17 = 43
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice17 = 44
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\receive.jpg
	}
if Choice17 = 45
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice17 = 46
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\important.jpg
	}
if Choice17 = 47
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice17 = 48
	{
	Gui, Add, Picture, x122 y409 w100 h100 gTokenGet17, %A_WorkingDir%\resources\chat.jpg
	}
if Choice18 = 1
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice18 = 2
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\cics.jpg
	}
if Choice18 = 3
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice18 = 4
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\sap.jpg
	}
if Choice18 = 5
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice18 = 6
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice18 = 7
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\snow.jpg
	}
if Choice18 = 8
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice18 = 9
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice18 = 10
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice18 = 11
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice18 = 12
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\status.jpg
	}
if Choice18 = 13
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice18 = 14
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\callback.jpg
	}
if Choice18 = 15
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\external.jpg
	}
if Choice18 = 16
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice18 = 17
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\lost.jpg
	}
if Choice18 = 18
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\euu.jpg
	}
if Choice18 = 19
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\local.jpg
	}
if Choice18 = 20
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\answer.jpg
	}
if Choice18 = 21
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\closed.jpg
	}
if Choice18 = 22
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\building157.jpg
	}
if Choice18 = 23
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice18 = 24
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice18 = 25
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\told.jpg
	}
if Choice18 = 26
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice18 = 27
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice18 = 28
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice18 = 29
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\loa.jpg
	}
if Choice18 = 30
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice18 = 31
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice18 = 32
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\friday.jpg
	}
if Choice18 = 33
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\500.jpg
	}
if Choice18 = 34
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\why.jpg
	}
if Choice18 = 35
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice18 = 36
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\africa.jpg
	}
if Choice18 = 37
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\noq.jpg
	}
if Choice18 = 38
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\restart.jpg
	}
if Choice18 = 39
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\p11.jpg
	}
if Choice18 = 40
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\actived.jpg
	}
if Choice18 = 41
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice18 = 42
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice18 = 43
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice18 = 44
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\receive.jpg
	}
if Choice18 = 45
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice18 = 46
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\important.jpg
	}
if Choice18 = 47
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice18 = 48
	{
	Gui, Add, Picture, x232 y409 w100 h100 gTokenGet18, %A_WorkingDir%\resources\chat.jpg
	}
if Choice19 = 1
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice19 = 2
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\cics.jpg
	}
if Choice19 = 3
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice19 = 4
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\sap.jpg
	}
if Choice19 = 5
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice19 = 6
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice19 = 7
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\snow.jpg
	}
if Choice19 = 8
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice19 = 9
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice19 = 10
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice19 = 11
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice19 = 12
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\status.jpg
	}
if Choice19 = 13
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice19 = 14
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\callback.jpg
	}
if Choice19 = 15
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\external.jpg
	}
if Choice19 = 16
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice19 = 17
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\lost.jpg
	}
if Choice19 = 18
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\euu.jpg
	}
if Choice19 = 19
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\local.jpg
	}
if Choice19 = 20
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\answer.jpg
	}
if Choice19 = 21
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\closed.jpg
	}
if Choice19 = 22
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\building157.jpg
	}
if Choice19 = 23
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice19 = 24
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice19 = 25
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\told.jpg
	}
if Choice19 = 26
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice19 = 27
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice19 = 28
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice19 = 29
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\loa.jpg
	}
if Choice19 = 30
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice19 = 31
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice19 = 32
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\friday.jpg
	}
if Choice19 = 33
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\500.jpg
	}
if Choice19 = 34
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\why.jpg
	}
if Choice19 = 35
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice19 = 36
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\africa.jpg
	}
if Choice19 = 37
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\noq.jpg
	}
if Choice19 = 38
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\restart.jpg
	}
if Choice19 = 39
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\p11.jpg
	}
if Choice19 = 40
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\actived.jpg
	}
if Choice19 = 41
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice19 = 42
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice19 = 43
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice19 = 44
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\receive.jpg
	}
if Choice19 = 45
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice19 = 46
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\important.jpg
	}
if Choice19= 47
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice19 = 48
	{
	Gui, Add, Picture, x342 y409 w100 h100 gTokenGet19, %A_WorkingDir%\resources\chat.jpg
	}
if Choice20 = 1
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice20 = 2
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\cics.jpg
	}
if Choice20 = 3
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice20 = 4
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\sap.jpg
	}
if Choice20 = 5
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice20 = 6
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice20 = 7
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\snow.jpg
	}
if Choice20 = 8
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice20 = 9
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice20 = 10
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice20 = 11
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice20 = 12
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\status.jpg
	}
if Choice20 = 13
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice20 = 14
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\callback.jpg
	}
if Choice20 = 15
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\external.jpg
	}
if Choice20 = 16
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice20 = 17
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\lost.jpg
	}
if Choice20 = 18
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\euu.jpg
	}
if Choice20 = 19
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\local.jpg
	}
if Choice20 = 20
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\answer.jpg
	}
if Choice20 = 21
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\closed.jpg
	}
if Choice20 = 22
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\building157.jpg
	}
if Choice20 = 23
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice20 = 24
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice20 = 25
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\told.jpg
	}
if Choice20 = 26
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice20 = 27
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice20 = 28
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice20 = 29
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\loa.jpg
	}
if Choice20 = 30
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice20 = 31
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice20 = 32
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\friday.jpg
	}
if Choice20 = 33
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\500.jpg
	}
if Choice20 = 34
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\why.jpg
	}
if Choice20 = 35
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice20 = 36
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\africa.jpg
	}
if Choice20 = 37
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\noq.jpg
	}
if Choice20 = 38
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\restart.jpg
	}
if Choice20 = 39
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\p11.jpg
	}
if Choice20 = 40
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\actived.jpg
	}
if Choice20 = 41
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice20 = 42
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice20 = 43
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice20 = 44
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\receive.jpg
	}
if Choice20 = 45
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice20 = 46
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\important.jpg
	}
if Choice20 = 47
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice20 = 48
	{
	Gui, Add, Picture, x452 y409 w100 h100 gTokenGet20, %A_WorkingDir%\resources\chat.jpg
	}
if Choice21 = 1
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice21 = 2
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\cics.jpg
	}
if Choice21 = 3
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice21 = 4
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\sap.jpg
	}
if Choice21 = 5
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice21 = 6
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice21 = 7
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\snow.jpg
	}
if Choice21 = 8
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice21 = 9
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice21 = 10
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice21 = 11
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice21 = 12
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\status.jpg
	}
if Choice21 = 13
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice21 = 14
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\callback.jpg
	}
if Choice21 = 15
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\external.jpg
	}
if Choice21 = 16
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice21 = 17
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\lost.jpg
	}
if Choice21 = 18
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\euu.jpg
	}
if Choice21 = 19
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\local.jpg
	}
if Choice21 = 20
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\answer.jpg
	}
if Choice21 = 21
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\closed.jpg
	}
if Choice21 = 22
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\building157.jpg
	}
if Choice21 = 23
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice21 = 24
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice21 = 25
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\told.jpg
	}
if Choice21 = 26
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice21 = 27
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice21 = 28
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice21 = 29
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\loa.jpg
	}
if Choice21 = 30
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice21 = 31
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice21 = 32
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\friday.jpg
	}
if Choice21 = 33
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\500.jpg
	}
if Choice21 = 34
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\why.jpg
	}
if Choice21 = 35
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice21 = 36
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\africa.jpg
	}
if Choice21 = 37
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\noq.jpg
	}
if Choice21 = 38
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\restart.jpg
	}
if Choice21 = 39
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\p11.jpg
	}
if Choice21 = 40
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\actived.jpg
	}
if Choice21 = 41
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice21 = 42
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice21 = 43
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice21 = 44
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\receive.jpg
	}
if Choice21 = 45
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice21 = 46
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\important.jpg
	}
if Choice21 = 47
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice21 = 48
	{
	Gui, Add, Picture, x12 y519 w100 h100 gTokenGet21, %A_WorkingDir%\resources\chat.jpg
	}
if Choice22 = 1
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice22 = 2
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\cics.jpg
	}
if Choice22 = 3
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice22 = 4
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\sap.jpg
	}
if Choice22 = 5
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice22 = 6
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice22 = 7
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\snow.jpg
	}
if Choice22 = 8
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice22 = 9
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice22 = 10
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice22 = 11
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice22 = 12
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\status.jpg
	}
if Choice22 = 13
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice22 = 14
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\callback.jpg
	}
if Choice22 = 15
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\external.jpg
	}
if Choice22 = 16
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice22 = 17
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\lost.jpg
	}
if Choice22 = 18
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\euu.jpg
	}
if Choice22 = 19
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\local.jpg
	}
if Choice22 = 20
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\answer.jpg
	}
if Choice22 = 21
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\closed.jpg
	}
if Choice22 = 22
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\building157.jpg
	}
if Choice22 = 23
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice22 = 24
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice22 = 25
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\told.jpg
	}
if Choice22 = 26
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice22 = 27
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice22 = 28
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice22 = 29
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\loa.jpg
	}
if Choice22 = 30
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice22 = 31
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice22 = 32
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\friday.jpg
	}
if Choice22 = 33
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\500.jpg
	}
if Choice22 = 34
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\why.jpg
	}
if Choice22 = 35
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice22 = 36
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\africa.jpg
	}
if Choice22 = 37
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\noq.jpg
	}
if Choice22 = 38
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\restart.jpg
	}
if Choice22 = 39
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\p11.jpg
	}
if Choice22 = 40
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\actived.jpg
	}
if Choice22 = 41
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice22 = 42
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice22 = 43
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice22 = 44
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\receive.jpg
	}
if Choice22 = 45
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice22 = 46
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\important.jpg
	}
if Choice22 = 47
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice22 = 48
	{
	Gui, Add, Picture, x122 y519 w100 h100 gTokenGet22, %A_WorkingDir%\resources\chat.jpg
	}
if Choice23 = 1
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice23 = 2
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\cics.jpg
	}
if Choice23 = 3
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice23 = 4
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\sap.jpg
	}
if Choice23 = 5
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice23 = 6
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice23 = 7
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\snow.jpg
	}
if Choice23 = 8
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice23 = 9
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice23 = 10
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice23 = 11
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice23 = 12
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\status.jpg
	}
if Choice23 = 13
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice23 = 14
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\callback.jpg
	}
if Choice23 = 15
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\external.jpg
	}
if Choice23 = 16
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice23 = 17
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\lost.jpg
	}
if Choice23 = 18
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\euu.jpg
	}
if Choice23 = 19
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\local.jpg
	}
if Choice23 = 20
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\answer.jpg
	}
if Choice23 = 21
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\closed.jpg
	}
if Choice23 = 22
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\building157.jpg
	}
if Choice23 = 23
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice23 = 24
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice23 = 25
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\told.jpg
	}
if Choice23 = 26
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice23 = 27
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice23 = 28
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice23 = 29
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\loa.jpg
	}
if Choice23 = 30
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice23 = 31
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice23 = 32
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\friday.jpg
	}
if Choice23 = 33
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\500.jpg
	}
if Choice23 = 34
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\why.jpg
	}
if Choice23 = 35
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice23 = 36
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\africa.jpg
	}
if Choice23 = 37
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\noq.jpg
	}
if Choice23 = 38
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\restart.jpg
	}
if Choice23 = 39
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\p11.jpg
	}
if Choice23 = 40
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\actived.jpg
	}
if Choice23 = 41
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice23 = 42
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice23 = 43
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice23 = 44
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\receive.jpg
	}
if Choice23 = 45
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice23 = 46
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\important.jpg
	}
if Choice23 = 47
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice23 = 48
	{
	Gui, Add, Picture, x232 y519 w100 h100 gTokenGet23, %A_WorkingDir%\resources\chat.jpg
	}
if Choice24 = 1
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice24 = 2
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\cics.jpg
	}
if Choice24 = 3
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice24 = 4
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\sap.jpg
	}
if Choice24 = 5
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice24 = 6
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice24 = 7
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\snow.jpg
	}
if Choice24 = 8
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice24 = 9
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice24 = 10
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice24 = 11
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice24 = 12
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\status.jpg
	}
if Choice24 = 13
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice24 = 14
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\callback.jpg
	}
if Choice24 = 15
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\external.jpg
	}
if Choice24 = 16
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice24 = 17
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\lost.jpg
	}
if Choice24 = 18
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\euu.jpg
	}
if Choice24 = 19
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\local.jpg
	}
if Choice24 = 20
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\answer.jpg
	}
if Choice24 = 21
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\closed.jpg
	}
if Choice24 = 22
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\building157.jpg
	}
if Choice24 = 23
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice24 = 24
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice24 = 25
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\told.jpg
	}
if Choice24 = 26
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice24 = 27
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice24 = 28
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice24 = 29
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\loa.jpg
	}
if Choice24 = 30
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice24 = 31
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice24 = 32
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\friday.jpg
	}
if Choice24 = 33
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\500.jpg
	}
if Choice24 = 34
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\why.jpg
	}
if Choice24 = 35
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice24 = 36
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\africa.jpg
	}
if Choice24 = 37
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\noq.jpg
	}
if Choice24 = 38
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\restart.jpg
	}
if Choice24 = 39
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\p11.jpg
	}
if Choice24 = 40
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\actived.jpg
	}
if Choice24 = 41
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice24 = 42
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice24 = 43
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice24 = 44
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\receive.jpg
	}
if Choice24 = 45
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice24 = 46
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\important.jpg
	}
if Choice24 = 47
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice24 = 48
	{
	Gui, Add, Picture, x342 y519 w100 h100 gTokenGet24, %A_WorkingDir%\resources\chat.jpg
	}
if Choice25 = 1
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\boxer.jpg
	}
if Choice25 = 2
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\cics.jpg
	}
if Choice25 = 3
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\bomgar.jpg
	}
if Choice25 = 4
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\sap.jpg
	}
if Choice25 = 5
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\EASR.jpg
	}
if Choice25 = 6
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\escalate.jpg
	}
if Choice25 = 7
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\snow.jpg
	}
if Choice25 = 8
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\autotime.jpg
	}
if Choice25 = 9
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\ticketnumber.jpg
	}
if Choice25 = 10
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\undel3.jpg
	}
if Choice25 = 11
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\undelbell.jpg
	}
if Choice25 = 12
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\status.jpg
	}
if Choice25 = 13
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\notsolved.jpg
	}
if Choice25 = 14
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\callback.jpg
	}
if Choice25 = 15
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\external.jpg
	}
if Choice25 = 16
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\ooo.jpg
	}
if Choice25 = 17
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\lost.jpg
	}
if Choice25 = 18
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\euu.jpg
	}
if Choice25 = 19
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\local.jpg
	}
if Choice25 = 20
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\answer.jpg
	}
if Choice25 = 21
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\closed.jpg
	}
if Choice25 = 22
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\building157.jpg
	}
if Choice25 = 23
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\vpn.jpg
	}
if Choice25 = 24
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\invincea.jpg
	}
if Choice25 = 25
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\told.jpg
	}
if Choice25 = 26
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\sharepoint.jpg
	}
if Choice25 = 27
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\driveshare.jpg
	}
if Choice25 = 28
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\rtw.jpg
	}
if Choice25 = 29
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\loa.jpg
	}
if Choice25 = 30
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\outlook.jpg
	}
if Choice25 = 31
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\outbound.jpg
	}
if Choice25 = 32
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\friday.jpg
	}
if Choice25 = 33
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\500.jpg
	}
if Choice25 = 34
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\why.jpg
	}
if Choice25 = 35
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\autoide.jpg
	}
if Choice25 = 36
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\africa.jpg
	}
if Choice25 = 37
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\noq.jpg
	}
if Choice25 = 38
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\restart.jpg
	}
if Choice25 = 39
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\p11.jpg
	}
if Choice25 = 40
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\actived.jpg
	}
if Choice25 = 41
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\accessd.jpg
	}
if Choice25 = 42
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\rsaadmin.jpg
	}
if Choice25 = 43
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\transfer.jpg
	}
if Choice25 = 44
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\receive.jpg
	}
if Choice25 = 45
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\quickescalation.jpg
	}
if Choice25 = 46
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\important.jpg
	}
if Choice25 = 47
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\snowemail.jpg
	}
if Choice25 = 48
	{
	Gui, Add, Picture, x452 y519 w100 h100 gTokenGet25, %A_WorkingDir%\resources\chat.jpg
	}
}
return

ButtonNew:
send ^{Tab}
return

TokenGet:
Gui, Add, Picture, x12 y81 w100 h100, %A_WorkingDir%\resources\token.png
return

TokenGet2:
Gui, Add, Picture, x122 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet3:
Gui, Add, Picture, x232 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet4:
Gui, Add, Picture, x342 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet5:
Gui, Add, Picture, x452 y79 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet6:
Gui, Add, Picture, x12 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet7:
Gui, Add, Picture, x122 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet8:
Gui, Add, Picture, x232 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet9:
Gui, Add, Picture, x342 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet10:
Gui, Add, Picture, x452 y189 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet11:
Gui, Add, Picture, x12 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet12:
Gui, Add, Picture, x122 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet14:
Gui, Add, Picture, x342 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet15:
Gui, Add, Picture, x452 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet16:
Gui, Add, Picture, x12 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet17:
Gui, Add, Picture, x122 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet18:
Gui, Add, Picture, x232 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet19:
Gui, Add, Picture, x342 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet20:
Gui, Add, Picture, x452 y409 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet21:
Gui, Add, Picture, x12 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet22:
Gui, Add, Picture, x122 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet23:
Gui, Add, Picture, x232 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet24:
Gui, Add, Picture, x342 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
return

TokenGet25:
Gui, Add, Picture, x452 y519 w100 h100, %A_WorkingDir%\resources\token.jpg
return

ClickFree:
Gui, Add, Picture, x232 y299 w100 h100, %A_WorkingDir%\resources\token.jpg
return

ButtonInfo:
MsgBox Version 1.0. No changes to the base software have been made.
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