#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance Force


:c*://class::
clipboard =
(
class App:

    '''Doc String'''

    '''Class Variables'''
    def __init__(self) -> None:
        pass

    def __repr__(self) -> str:
        pass
)
Send, ^v
return

:c*://dc::
clipboard =
(
from dataclasses import dataclass, field
from typing import Any, List

@dataclass
class xx:
    _: List = field(default_factory=lambda: [])
)
Send, ^v
return

:c*://defs::
clipboard =
(
def fn(self):

)
Send, ^v
return

:c*://ifname::
clipboard =
(
if __name__ == "__main__":
    ...

)
Send, ^v
return


