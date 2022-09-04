; 7.26.22
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


#IfWinActive ahk_exe Obsidian.exe

!e::Send ^e



:*:#3::
SendRaw, ###
return



:*:#4::
SendRaw, ####
return



:*:#5::
SendRaw, #####
return



:*:#6::
SendRaw, ######
return


:*://py::
SendRaw,
(
``````python


)
Send, {up 1}
return


:*://sql::
SendRaw,
(
``````sql


)
Send, {up 1}
return


:*://css::
SendRaw,
(
``````css


)
Send, {up 1}
return


:*://scss::
SendRaw,
(
``````scss


)
Send, {up 1}
return



:*://html::
SendRaw,
(
``````html


)
Send, {up 1}
return



:*://js::
Send,
(
``````javascript

){up 1}{right 5}{Enter}

return


:*://ts::
Send,
(
``````ts

){up 1}{right 5}{Enter}

return


:*://xjs::
SendRaw,
(
``````jsx

)
return



:*:///::
SendRaw,
(
# Meta
## Tags


---
## Links


---

## Related Pages


---
# What it is

# How To
)
return

:c*://new15::
SendRaw,
(
## App.js

## App.scss

## Card.js

## Data.js

)
return