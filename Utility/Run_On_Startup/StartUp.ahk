#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force

laptop(){
	MsgBox laptop funcs

}

desktop(){
	MsgBox desktop funcs

}



Class StartUp{

	static Registry := { }

	register(computerNameEnvVariable, ByRef callback){
		this.Registry[computerNameEnvVariable] := Func(callback)

	}

	start(){

		this.Registry[A_ComputerName].call()

	}

}


StartUp.register("LAPTOP-UAROB6VC", "laptop")
StartUp.register("DESKTOP-I5FROLF", "desktop")
StartUp.start()

