#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
Coordmode, Mouse, Screen
SetNumLockState On

Morse(timeout = 250) {
   ;
   tout := timeout/1000
   key := RegExReplace(A_ThisHotKey,"[\*\~\$\#\+\!\^]")
   Loop {
      t := A_TickCount
      KeyWait %key%
      Pattern .= A_TickCount-t > timeout
      KeyWait %key%,DT%tout%
      If (ErrorLevel)
         Return Pattern
   }}

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
	;mouseMapperPath = "C:\Users\hmbem\Desktop\Scripts\AHK\Utility\Mouse_Mapper\Mouse_Mapper.ahk"
	FL_Launcher = "C:\Users\hmbem\Desktop\Scripts\Python\Apps\FL_VST_Launcher\main.pyw"
	vivaldiPath = "..."


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
	vivaldiPath = "..."



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
	vivaldiPath = "C:\Users\hmbem\AppData\Local\Vivaldi\Application\vivaldi.exe"
	spotifyPath = "C:\Users\hmbem\AppData\Local\Microsoft\WindowsApps\Spotify.exe"


}


^Numpad1::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #1
   }
   Else If (p = "00") ;tap twice
   {
      MouseMove, %leftScreenX%, %leftScreenY%
   }
   Else If (p = "1") ;hold
   {
      run %vivaldiPath%
   }
Return


^Numpad2::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #2
   }
   Else If (p = "00") ;tap twice
   {
      MouseMove, %middleScreenX%, %middleScreenY%
   }

   Else If (p = "000") ;tap 3x
   {
      run %oneCommanderPath%
   }
   ;~ Else If (p = "0") ;hold
   ;~ {
      ;~ run %vivaldiPath%
   ;~ }
return



^Numpad3::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #3
   }
   Else If (p = "00") ;tap twice
   {
      MouseMove, %rightScreenX%, %rightScreenY%
   }
Return

^Numpad4::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #4
   }
Return

#IfWinActive ahk_exe Obsidian.exe
^Numpad4::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #4
   }
   Else If (p = "00") ;tap twice
   {
      Send ^e
   }
Return

#IfWinActive
^Numpad5::
	p := Morse()
   If (p = "0") ; tap
   {
      Send #5
   }
Return

^Numpad6::
	p := Morse()
   If (p = "0") ; tap
   {
      Send ^!{Tab}
	; ctrl + alt + tab
	; open built in MS application picker
   }
Return

^Numpad7::
	p := Morse()
   If (p = "0") ; tap
   {
      	Send ^+t
	;ctrl + shift + t
	; reopens last closed tab or window
   }
Return

#IfWinActive ahk_exe vivaldi.exe
^Numpad8::
	p := Morse()
   If (p = "0") ; tap
   {
		Send !/
		;Alt + /
		; CLOSE VIVALDI TAB
   }
   Else If (p = "00") ;press 2x
   {
		Send !+c
		;Alt + Shift + c
		; CLOSE TABS TO THE RIGHT IN VIVALDI
   }

   Else If (p = "000") ;press 3x
   {
		Send !-
		;Alt + - (alt + minus)
		; CLOSE ALL OTHER TABS IN VIVALDI
   }
Return


;alt + num8
!^Numpad8::
	p := Morse()
   If (p = "0") ; tap
   {
	Send !{F4}
	; if vivaldi is open
	; alt + 8 key will close it
   }
Return


#IfWinActive
^Numpad8::
	p := Morse()
   If (p = "0") ; tap
   {
		Send !{F4}
		; if any window other than vivalid is open
		; one tap on the 8 key will close it
   }
Return

; opens terminal
^Numpad9::
!Space::
run, wt.exe
return


; Ctrl + Numpad0 is mapped to button #10 on the Mouse
^Numpad0::
	p := Morse()
   If (p = "0") ; tap
   {
		Send {XButton1}
		;MsgBox, pressed once
		; Back Button
   }
   Else If (p = "00") ;press 2x
   {
		run, %venusPath%
		;MsgBox, pressed twice
   }

   Else If (p = "000") ;press 3x
   {
		Run, powershell -NoExit -Command "code ."
   }
Return

; Ctrl + Shift + D is mapped to button #11 on the Mouse
#IfWinActive ahk_exe FL64.exe
^+D::
run, %FL_Launcher%
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




