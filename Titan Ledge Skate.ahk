#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

;Titan Ledge Skate
;Subclass: Sentinel
;Super Ability: Ward of Dawn
;Aspects: 
;Movement Ability: 

F12::
{
  Send {%powerWeaponKey%}
  Sleep 500
  Send {%heavySwingKey% down}
  Sleep 10
  Send {%superKey% down}
  Sleep 100
  Send {%heavySwingKey% up}
  Sleep 25
  Send {%superKey% up}
  ExitApp
}
