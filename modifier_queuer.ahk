
; To change the keys used, replace the letters to the left of "::", eg "F9::". 
; To disable the timeout, remove the lines containing: "if (ErrorLevel = "Timeout") Break"
; This is a AutoHotkey V1 script.

F10::Tab
Global Keys := []


F9::
CaptureKey()
    For each, Key in Keys {
	Send {Ctrl down}{%key%}{Ctrl Up}
    }
Keys := []
Return

F8::
CaptureKey()
    For each, Key in keys {
	Send {Shift down}{%key%}{Shift Up}
    }
Keys := []
Return

F7::
CaptureKey()
    For each, Key in Keys {
	Send {Alt down}{%key%}{Alt Up}
    }
Keys := []
Return

CaptureKey() {
    Loop {
	    Input, key, I L1 T2
	    Keys[A_Index] := key   
	    Break
	    if (ErrorLevel = "Timeout") 
	      Break
    }
    Return 
}
