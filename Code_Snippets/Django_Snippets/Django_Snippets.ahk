#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


:r0c://for::
SendRaw,
(
{`% for i in list `%}
{`% empty `%}
{`% endfor `%}

)
return

:c*://post::
SendRaw,
(
 hx-post="{`% url '' `%}"
 hx-trigger="click"
 hx-target="#element"
 hx-swap="outerHTML"
 hx-vals='{"Delete":"{{task.title}}"}'
)
return

:c*://get::
SendRaw,
(
 hx-get="{`% url '' `%}"
 hx-trigger="click"
 hx-target="#element"
 hx-swap="outerHTML"
 hx-vals='{"Delete":"{{task.title}}"}'
)
return

:c*://forkey::
SendRaw,
(
{`% for key, value in .items `%},
    <li>{{key}} -- {{value}}</li>,
{`% empty `%},
    <h1>EMPTY</h1>,
{`% endfor `%}
)
return

:r0c*://url::
SendRaw,
(
{`% url '' `%}
)
return

:c*://incl::
SendRaw,
(
{`% include '.html' with var='value' `%}
)
return

:c*://if::
SendRaw,
(
{`% if  `%},
// statements,
{`% else `%},
// statements,
{`% endif `%}
)
return

:c*://form::
SendRaw,
(
<form  method="post">
	{`% csrf_token `%}
	{{ form }}

</form>
)
return





