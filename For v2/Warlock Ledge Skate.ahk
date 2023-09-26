#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Warlock Ledge Skate
Subclass: Dawnblade
Super Ability: Well of Radiance
Aspects:
Movement Ability: Burst Glide
*/

F4::
{
  Send "{" . powerWeaponKey . "}"
  Sleep 500
  Send "{" . heavySwingKey . " down}"
  Sleep 100
  Send "{" . heavySwingKey . " up}"
  Send "{" . jumpKey . "}"
  Send "{" . superKey . "}"
  Sleep 100
  Send "{" . jumpKey . "}"

  ExitApp
}
