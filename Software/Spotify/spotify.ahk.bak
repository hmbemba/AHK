#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

; SpotifyGlobalKeys.ahk:
; AutoHotkey script to control Spotify with global keyboard shortcuts
; Author: James Teh <jamie@jantrid.net>
; Copyright 2017-2018 James Teh
; License: GNU General Public License version 2.0

DetectHiddenWindows, On

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

; Win+alt+p: Play/Pause
#!p::
{
	spotifyKey("{Space}")
	Return
}

; Win+alt+down: Next
#!Down::
{
	spotifyKey("^{Right}")
	Return
}

; Win+alt+up: Previous
#!Up::
{
	spotifyKey("^{Left}")
	Return
}

; Win+alt+right: Seek forward
#!Right::
{
	spotifyKey("+{Right}")
	Return
}

; Win+alt+left: Seek backward
#!Left::
{
	spotifyKey("+{Left}")
	Return
}

; shift+volumeUp: Volume up
+Volume_Up::
{
	spotifyKey("^{Up}")
	Return
}

; shift+volumeDown: Volume down
+Volume_Down::
{
	spotifyKey("^{Down}")
	Return
}

; Win+alt+o: Show Spotify
#!o::
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

!PrintScreen::
run "C:\Users\Harrison\AppData\Roaming\Spotify\Spotify.exe"
return
