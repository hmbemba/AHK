#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


#IfWinActive
:*://arf::
SendRaw,
(
const myFunc = () =>{

}
)
Send,{up 2}
Sleep 200
Send,{right 12}
return

#IfWinActive
:*://aarf::
SendRaw,
(
() =>{

}
)
Send,{up 1}
return


#IfWinActive
:*://ael::
SendRaw,
(
addEventListener("click", () => {

}`)
)
Send,{up 1}
return


#IfWinActive
:*://fcol::
SendRaw,
(
display: flex;
flex-direction: column;
gap: 20px;
)
return

#IfWinActive
:*://frow::
SendRaw,
(
display: flex;
flex-direction: row;
gap: 20px;
)
return

#IfWinActive
:*://bsr::
SendRaw,
(
border: solid red;
)
return

#IfWinActive
:*://gebi::
SendRaw,
(
document.getElementById("");
)
Send, {left 3}
return

:c*://cra::npx create-react-app
return

:c*://map::
SendRaw,
(
{monsters.map((item) => {
            return (<>

              <div key={item.id}>{item.name}</div>

              </>)
        })}
)
return