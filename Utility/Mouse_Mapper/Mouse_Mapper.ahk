;7.29.22
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
Coordmode, Mouse, Screen


if (A_ComputerName == "LAPTOP-UAROB6VC")
{
	leftScreenX = 2800
	leftScreenY = 530

	middleScreenX = 900
	middleScreenY = 530

	rightScreenX = 4600
	rightScreenY = 530

	oneCommanderPath = "C:\Users\hmbem\Desktop\OneCommander\OneCommander.exe"
	venusPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UtechSmart\Venus wireless\Venus Wireless Gaming Mouse.lnk"
	mouseMapperPath = "C:\Users\hmbem\Desktop\Scripts\AHK\Utility\Mouse_Mapper\Mouse_Mapper.ahk"
	FL_Launcher = "C:\Users\hmbem\Desktop\Scripts\Python\Apps\FL_VST_Launcher\main.pyw"


}

if (A_ComputerName == "DESKTOP-I5FROLF")
{

	leftScreenX = 900
	leftScreenY = 530

	middleScreenX = 2800
	middleScreenY = 530

	rightScreenX = 4600
	rightScreenY = 200

	oneCommanderPath = "C:\Users\Harrison\Desktop\OneCommander\OneCommander.exe"
	venusPath = "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\UtechSmart\Venus wireless\Venus Wireless Gaming Mouse.lnk"
	FL_Launcher = "C:\Users\Harrison\Desktop\Scripts\Python\Apps\FL_VST_Launcher\main.pyw"


}

if (A_ComputerName == "TOWER2")
{

	leftScreenX = 900
	leftScreenY = 530

	middleScreenX = 2800
	middleScreenY = 530

	rightScreenX = 4600
	rightScreenY = 200

	oneCommanderPath = "C:\Users\hmbem\Desktop\OneCommander\OneCommander.exe"
	venusPath = "C:\Program Files (x86)\UtechSmart\Venus wireless\OemDrv.exe"
	FL_Launcher = "C:\Users\hmbem\Desktop\Scripts\Python\Apps\FL_VST_Launcher\main.pyw"


}



^Numpad1::
SetTimer, TMButton, -500
NMB++ ;counts the MButton clicks
Return
TMButton:
IF NMB = 1
	Send #1
Else
    ;~ MouseMove, 900,530
	MouseMove, %leftScreenX%, %leftScreenY%
NMB =
Return


^Numpad2::
SetTimer, TMButton2, -500
NMB++ ;counts the MButton clicks
Return
TMButton2:
IF NMB = 1
	Send #2
IF NMB = 2
    MouseMove, %middleScreenX%, %middleScreenY%
IF NMB = 3
	run %oneCommanderPath%

NMB =
Return


^Numpad3::
SetTimer, TMButton3, -500
NMB++ ;counts the MButton clicks
Return
TMButton3:
IF NMB = 1
	Send #3
Else
    MouseMove, %rightScreenX%, %rightScreenY%
NMB =
Return

^Numpad4::
SetTimer, TMButton4, -500
NMB++ ;counts the MButton clicks
Return
TMButton4:
IF NMB = 1
	Send #4
	; win + 4

NMB =
Return

#IfWinActive ahk_exe Obsidian.exe
^Numpad4::
SetTimer, TMButton42, -500
NMB++ ;counts the MButton clicks
Return
TMButton42:
IF NMB = 1
	Send #4
IF NMB = 2
    Send ^e

NMB =
Return

#IfWinActive
^Numpad5::
SetTimer, TMButton5, -500
NMB++ ;counts the MButton clicks
Return
TMButton5:
IF NMB = 1
	Send #5
	; win + 5

NMB =
Return

^Numpad6::
SetTimer, TMButton6, -500
NMB++ ;counts the MButton clicks
Return
TMButton6:
IF NMB = 1
	Send ^!{Tab}
	; ctrl + alt + tab
	; open application picker

NMB =
Return

^Numpad7::
SetTimer, TMButton7, -500
NMB++ ;counts the MButton clicks
Return
TMButton7:
IF NMB = 1
	Send ^+t
	;ctrl + shift + t
	; reopens last closed tab or window


NMB =
Return

#IfWinActive ahk_exe vivaldi.exe
^Numpad8::
SetTimer, TMButton8, -500
NMB++ ;counts the MButton clicks
Return
TMButton8:
IF NMB = 1
	Send !/
	;Alt + /
	; CLOSE VIVALDI TAB
IF NMB = 2
    Send !+c
	;Alt + Shift + c
	; CLOSE TABS TO THE RIGHT IN VIVALDI
IF NMB = 3
	Send !-
	;Alt + - (alt + minus)
	; CLOSE ALL OTHER TABS IN VIVALDI

NMB =
Return


!^Numpad8::
SetTimer, TMButton8Shift2, -500
NMB++ ;counts the MButton clicks
Return
TMButton8Shift2:
IF NMB = 1
	Send !{F4}
	; if vivaldi is open
	; alt + 8 key will close it

NMB =
Return


#IfWinActive
^Numpad8::
SetTimer, TMButton8Shift, -500
NMB++ ;counts the MButton clicks
Return
TMButton8Shift:
IF NMB = 1
	Send !{F4}
	; if any window other than vivalid is open
	; one tap on the 8 key will close it

NMB =
Return

;9 is alt + space which opens terminal
!Space::
run, wt.exe
return



; Ctrl + Numpad0 is mapped to button #10 on the Mouse
^Numpad0::
SetTimer, TMButton10, -500
NMB++ ;counts the MButton clicks
Return
TMButton10:
IF NMB = 1
	Send {XButton1}
	;MsgBox, pressed once
	; Back Button
IF NMB = 2
    run, %venusPath%
	;MsgBox, pressed twice
IF NMB = 3
    ;MsgBox, pressed thrice
	Run, powershell -NoExit -Command "code ."
NMB =
Return

; Ctrl + Shift + D is mapped to button #11 on the Mouse
#IfWinActive ahk_exe FL64.exe
^+D::
run, %FL_Launcher% ;"C:\Users\hmbem\Desktop\Scripts\Python\Apps\FL_VST_Launcher\main.pyw"

Return



#IfWinActive


!1::
MouseMove, 	leftScreenX, leftScreenY
Return

!2::
MouseMove, middleScreenX,middleScreenY
Return

!3::
MouseMove, rightScreenX, rightScreenY
Return


