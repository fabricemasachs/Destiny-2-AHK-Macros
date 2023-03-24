#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

;Hunter Ground Skate
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement Ability: Triple Jump
F12::
{
  Send {%powerWeaponKey%}
  Sleep 600
  Send {%jumpKey%}
  Sleep 60
  Send {%lightAttackKey%}
  sleep 50
  Send {%jumpKey%}
  Send {%airMoveKey%}
  Sleep 75
  Send {%jumpKey%}
  Send {%sprintKey% down}
  Sleep 100
  Send {%sprintKey% up}
  ExitApp
}
