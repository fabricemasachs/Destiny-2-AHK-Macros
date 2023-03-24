#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

;Hunter Ledge Skate
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement Ability: Triple Jump
F12::
{
  Send {%powerWeaponKey%}
  Sleep 500
  Send {%heavySwingKey% down}
  Sleep 100
  Send {%heavySwingKey% up}
  Send {%jumpKey%}
  Sleep 10
  Send {%airMoveKey%}
  Sleep 300
  Send {%jumpKey%}
  ExitApp
}
