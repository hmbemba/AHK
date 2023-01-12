; ahk default headers
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


+m::
    Convert_Inv()
RETURN

Convert_Inv()
{
    ; save original contents of clipboard
    Clip_Save:= ClipboardAll

    ; empty clipboard
    Clipboard:= ""

    ; copy highlighted text to clipboard
    Send ^c{delete}

    ; clear variable that will hold output string
    Inv_Char_Out:= ""

    ; loop for each character in the clipboard
    Loop % Strlen(Clipboard)
    {
        ; isolate the character
        Inv_Char:= Substr(Clipboard, A_Index, 1)

        ; if upper case
        if Inv_Char is upper
        {
            ; convert to lower case
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) + 32)
        }
        ; if lower case
        else if Inv_Char is lower
        {
            ; convert to upper case
           Inv_Char_Out:= Inv_Char_Out Chr(Asc(Inv_Char) - 32)
        }
        else
        {
            ; copy character to output var unchanged
           Inv_Char_Out:= Inv_Char_Out Inv_Char
        }
    }
    ; send desired text
    Send %Inv_Char_Out%
    Len:= Strlen(Inv_Char_Out)

    ; highlight desired text
    Send +{left %Len%}

    ; restore original clipboard
    Clipboard:= Clip_Save
}

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

