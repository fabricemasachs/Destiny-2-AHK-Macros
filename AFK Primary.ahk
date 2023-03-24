#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Warlock
;Subclass: Voidwalker
;Aspects:
;Weapon: Auto Rifle
;Exotic Armor: Sanguine Alchemy
;Mission: In The Deep
;Mission Location: The Moon
;Mission Type: Shadowkeep Campaign

F12::
{
  Loop
  {
    Send {LButton down}
    Sleep 5000
    Send {LButton up}
    Sleep 50
    Send {%moveForwardKey%}
    Sleep 50
    Send {%moveForwardKey%}
    Sleep 50
    Send {%reloadKey%}
    Sleep 2000
  }

  ^x::
  {
    ExitApp
  }
}
