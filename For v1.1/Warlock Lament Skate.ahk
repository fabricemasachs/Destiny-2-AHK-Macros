#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

/*
Warlock Lament Skate
Subclass: Dawnblade
Super Ability: Well of Radiance
Aspects:
Movement Ability: Burst Glide
*/

F4::
{
  Send {%blockKey% down}
  Sleep 500
  Send {%jumpKey% down}
  Sleep 5
  Send {%jumpKey% up}
  sleep 20
  Send {%lightAttackKey%}
  Send {%blockKey% up}
  Sleep 10
  Send {%jumpKey% down}
  Sleep 5
  Send {%jumpKey% up}
  Sleep 10
  Send {%superKey%}
  
  ExitApp
}
