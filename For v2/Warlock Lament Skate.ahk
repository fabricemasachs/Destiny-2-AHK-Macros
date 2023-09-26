#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
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
  Send "{" . blockKey . " down}"
  Sleep 500
  Send "{" . jumpKey . " down}"
  Sleep 5
  Send "{" . jumpKey . " up}"
  sleep 20
  Send "{" . lightAttackKey . "}"
  Send "{" . blockKey . " up}"
  Sleep 10
  Send "{" . jumpKey . " down}"
  Sleep 5
  Send "{" . jumpKey . " up}"
  Sleep 10
  Send "{" . superKey . "}"
  
  ExitApp
}
