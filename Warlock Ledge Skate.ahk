#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

;Warlock Ledge Skate
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide

F12::
{
  Send {%powerWeaponKey%}
  Sleep 500
  Send {%heavySwingKey% down}
  Sleep 100
  Send {%heavySwingKey% up}
  Send {%jumpKey%}
  Send {%superKey%}
  Sleep 100
  Send {%jumpKey%}
  ExitApp
}
