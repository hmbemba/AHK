;0=tap the key
;1=hold down the key
;hold down q or tap q in the desired sequence to send commands:
#SingleInstance Force
Morse(timeout = 250) {
   ;
   tout := timeout/1000
   key := RegExReplace(A_ThisHotKey,"[\*\~\$\#\+\!\^]")
   Loop {
      t := A_TickCount
      KeyWait %key%
      Pattern .= A_TickCount-t > timeout
      KeyWait %key%,DT%tout%
      If (ErrorLevel)
         Return Pattern
   }}


;ENTER YOUR KEYS/BUTTONS BELOW:
;-----------------------------------------------------------------------------------------------------------------------------

q::
   p := Morse()
   If (p = "0") ; tap
   {
      msgbox, tap
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "1") ;hold
   {
      msgbox, hold
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "00") ;tap, tap
   {
      msgbox, tap, tap
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "001") ;tap, tap, hold
   {
      msgbox, tap, tap, hold
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "101") ;hold, tap, hold
   {
      msgbox, hold, tap, hold
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "010") ;tap, hold, tap
   {
      msgbox, tap, hold, tap
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else If (p = "00000") ;tap, tap, tap, tap, tap
   {
      msgbox, tap, tap, tap, tap, tap
   }
   ;-----------------------------------------------------------------------------------------------------------------------------
   Else
      Return
Return
;-----------------------------------------------------------------------------------------------------------------------------