; ahk default headers
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

;~ !u::goSub, set_upper_case
;~ !l::goSub, set_lower_case
;~ !t::goSub, set_title_case

+,::goSub, set_upper_case
+.::goSub, set_lower_case
+/::goSub, set_title_case



set_upper_case:
set_lower_case:
set_title_case:
revert_clipboard := clipboardAll
clipboard =
send ^{c}
clipWait, 0.3

if (a_thisLabel = "set_upper_case")
    stringUpper, clipboard, clipboard
else if (a_thisLabel = "set_lower_case")
    stringLower, clipboard, clipboard
else if (a_thisLabel = "set_title_case")
    stringLower, clipboard, clipboard, T

send ^{v}
sleep 50
clipboard := revert_clipboard
return


/*
[script info]
version     = 1.2
description = change the case of selected text
author      = davebrny
source      =
*/

