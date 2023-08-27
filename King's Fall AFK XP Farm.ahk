#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

;Titan
;Subclass: Sunbreaker
;Aspects: Roaring Flame (only)
;Weapon: 
;Exotic Armor: Ashen Wake
;Mission: King's Fall Golg Maze
;Mission Location: Legends
;Mission Type: Raid
;Bot: /join CPBot#6289

F12::
{
  Loop
  {
    Send {%grenadeKey%}
    Sleep 1600
    Send {%moveForwardKey%}
    Sleep 1000
    Send {%moveBackwardKey%}
    Sleep 1000
  }
}

^x::
{
  ExitApp
}