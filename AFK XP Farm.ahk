#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Warlock
;Subclass: Voidwalker
;Aspects:
;Weapon: Trinity Ghoul
;Exotic Armor: Sanguine Alchemy
;Mission: In The Deep
;Mission Location: The Moon
;Mission Type: Shadowkeep Campaign

F12::
{
  Loop
  {
    Click
    Sleep 2000
    Click
    Sleep 50
    Send {%moveForwardKey%}
    Sleep 50
    Send {%moveBackwardKey%}
    Sleep 4000
  }

  ^x::
  {
    ExitApp
  }
}
