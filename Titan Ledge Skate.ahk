#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Titan Ledge Skate
;Subclass: Sentinel
;Super Ability: Ward of Dawn
;Aspects:
;Movement Ability:
F12::
{
  Send {3} ; Power Weapon Key
  Sleep 500
  Send {RButton down} ; Heavy Swing Key
  Sleep 10
  Send {f down} ; Super Key
  sleep 100
  Send {RButton up} ; Heavy Swing Key
  sleep 25
  Send {f up} ; Super Key
  ExitApp
  Return
}
