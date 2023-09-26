#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Warlock Ground Skate
Subclass: Dawnblade
Super Ability: Well of Radiance
Aspects:
Movement Ability: Burst Glide
*/

F4::
{
  Send "{" . powerWeaponKey . "}"
  Sleep 600
  Send "{" . jumpKey . "}"
  Sleep 60
  Send "{" . lightAttackKey . "}"
  Sleep 25
  Send "{" . jumpKey . "}"
  Send "{" . superKey . "}"
  Sleep 50
  Send "{" . jumpKey . "}"
  Sleep 100
  Send "{" . sprintKey . " down}"
  Sleep 100
  Send "{" . sprintKey . " up}"

  ExitApp
}
