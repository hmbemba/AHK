#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.
#SingleInstance Force

;https://www.autohotkey.com/boards/viewtopic.php?f=6&t=45116


class _App {

  getVersion(){
    return A_AhkVersion
  }

}


s := new _String("Hello world")
ahk := new _AHK()

me := new _ThisFile()
p := new _Path("C:\Users\hmbem\Desktop\test.mp4")

;me.printScriptFullPath()
Msgbox % s

;MsgBox % s.getSubStringOrError("ell"),

;MsgBox % ahk.getVersion(),