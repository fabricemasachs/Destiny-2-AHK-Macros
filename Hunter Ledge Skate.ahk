#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Hunter Ledge Skate
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement Ability: Triple Jump
F12::
{
  Send {3} ; Power Weapon Key
  Sleep 500
  Send {RButton down} ; Heavy Swing Key
  Sleep 100
  Send {RButton up} ; Heavy Swing Key
  Send {Space}
  Sleep 10
  Send {x}
  Sleep 300
  Send {Space}
  ExitApp
  Return
}
