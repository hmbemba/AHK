#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force
DetectHiddenWindows, On

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

; Get the HWND of the Spotify main window.
getSpotifyHwnd() {
	WinGet, spotifyHwnd, ID, ahk_exe Spotify.exe
	Return spotifyHwnd
}

; Send a key to Spotify.
spotifyKey(key) {
	spotifyHwnd := getSpotifyHwnd()
	; Chromium ignores keys when it isn't focused.
	; Focus the document window without bringing the app to the foreground.
	ControlFocus, Chrome_RenderWidgetHostHWND1, ahk_id %spotifyHwnd%
	ControlSend, , %key%, ahk_id %spotifyHwnd%
	Return
}


playPause()
{
	spotifyKey("{Space}")
	Return
}


nextSong()
{
	spotifyKey("^{Right}")
	Return
}


prevSong()
{
	spotifyKey("^{Left}")
	Return
}

showHide()
{
	spotifyHwnd := getSpotifyHwnd()
	WinGet, style, Style, ahk_id %spotifyHwnd%
	if (style & 0x10000000) { ; WS_VISIBLE
		WinHide, ahk_id %spotifyHwnd%
	} Else {
		WinShow, ahk_id %spotifyHwnd%
		WinActivate, ahk_id %spotifyHwnd%
	}
	Return
}

openSpotify()
{
	run "C:\Users\hmbem\AppData\Local\Microsoft\WindowsApps\Spotify.exe"
	return
}

PrintScreen::
	p := Morse()
	If (p = "1") ; tap
   {
      openSpotify()
	  ;MsgBox hold once
	  return

   }
	If (p = "10") ; tap
   {
      playPause()
	  ;MsgBox hold once tap
	  return

   }
   If (p = "0") ; tap
   {
      showHide()
	  ;MsgBox once
	  return

   }
	If (p = "00") ; tap
   {
      nextSong()
	  ;MsgBox twice
	  return
   }

	If (p = "000") ; tap
   {
      prevSong()
	  ;MsgBox thrice
	  return
   }
Return

