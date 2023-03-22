#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Warlock Ledge Skate
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide
F12::
{
  Send {3} ; Power Weapon Key
  Sleep 500
  Send {RButton down} ; Heavy Swing Key
  Sleep 100
  Send {RButton up} ; Heavy Swing Key
  Send {Space}
  Send {f} ; Super Key
  Sleep 100
  Send {Space}
  ExitApp
}
