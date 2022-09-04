#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


isValidFolderPathOrError(path){
    try  ; Attempts to execute code.
{
    if (FileExist(path) != "D"){
	  throw
    }
}
catch e  ; Handles the first error/exception raised by the block above.
{
    MsgBox,
	(LTRIM

	ERROR!

	"%path%"

	is NOT a valid path!

	This app %A_ScriptName% will now exit
	)
    Exit
}


  }

isValidFilePathOrError(path){
    try  ; Attempts to execute code.
{
    if (FileExist(path) != "A"){
	  throw
    }
}
catch e  ; Handles the first error/exception raised by the block above.
{
    MsgBox,
	(LTRIM

	ERROR!

	"%path%"

	is NOT a valid File path!

	This app %A_ScriptName% will now exit
	)
    Exit
}


  }

if (A_ComputerName == "DESKTOP-I5FROLF")
{

run C:\Users\Harrison\Desktop\Scripts\AHK\Utility\mouseJumper\mouseJumper.ahk
run C:\Users\Harrison\Desktop\Scripts\AHK\Utility\AutoCorrect Scripts\My Autocorrect\autoDictionary.ahk
run C:\Users\Harrison\Desktop\Scripts\AHK\Utility\AutoCorrect Scripts\Official AHK Autocorrect\autoCorrect.ahk
run C:\Users\Harrison\Desktop\Scripts\AHK\Software\FL Shortcuts\FL VST LAUNCHER.ahk
run C:\Users\Harrison\Desktop\Scripts\AHK\Software\Obsidian\Obsidian_Scripts.ahk
run C:\Users\Harrison\Desktop\Scripts\AHK\Powershell Shortcuts\PS.ahk


}



if (A_ComputerName == "LAPTOP-UAROB6VC")
{

;Push the "USERPROFILE" env var in to variable "var"
EnvGet, var, UserProfile

; Get the various paths
scriptsPath = %var%\Desktop\Scripts
ahkPath = %var%\Desktop\Scripts\AHK
utilityPath = %ahkPath%\Utility
autoCorrectScripts = %utilityPath%\AutoCorrect_Scripts
softwarePath =  %ahkPath%\Software
codeSnippetsPath =  %ahkPath%\Code_Snippets

;Validate that the folder paths exist AND are folders
folders :=[ scriptsPath, ahkPath, utilityPath, softwarePath, codeSnippetsPath, autoCorrectScripts]
for i, path in folders
	isValidFolderPathOrError(path)

obsidian = %softwarePath%\Obsidian\Obsidian.ahk
myDict = %autoCorrectScripts%\AHK_My_Dictionary\AHK_My_Dictionary.ahk
ahkDict = %autoCorrectScripts%\AHK_Official_Dictionary\AHK_Official_Dictionary.ahk
Mouse_Mapper = %utilityPath%\Mouse_Mapper\Mouse_Mapper.ahk
powershell = %utilityPath%\Powershell_AHK_Script\Powershell_AHK_Script.ahk

;Validate that the script paths exist AND are files
scripts :=[ obsidian, myDict, ahkDict, Mouse_Mapper, powershell ]
for i, path in scripts
	isValidFilePathOrError(path)

;Run the scripts
for i, path in scripts
	run %path%
}
