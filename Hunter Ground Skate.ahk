#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Hunter Ground Skate
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement Ability: Triple Jump
F12::
{
  Send {3} ; Power Weapon Key
  Sleep 600
  Send {Space}
  Sleep 60
  Send {LButton} ; Light Attack Key
  sleep 50
  Send {Space}
  Send {x} ; Air Move Key
  Sleep 75
  Send {Space}
  Send {Shift down} ; Sprint Key
  Sleep 100
  Send {Shift up} ; Sprint Key
  ExitApp
}
