#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Warlock Ground Skate
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide
F12::
{
  Send {3} ; Power Weapon Key
  Sleep 600
  Send {Space}
  Sleep 60
  Send {LButton} ; Light Attack Key
  Sleep 25
  Send {Space}
  Send {f} ; Super Key
  Sleep 50
  Send {Space}
  Sleep 100
  Send {Shift down} ; Sprint Key
  Sleep 100
  Send {Shift up} ; Sprint Key
  ExitApp
}
