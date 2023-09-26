#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Titan Ledge Skate
Subclass: Sentinel
Super Ability: Ward of Dawn
Aspects: 
Movement Ability: 
*/

F4::
{
  Send "{" . powerWeaponKey . "}"
  Sleep 500
  Send "{" . heavySwingKey . " down}"
  Sleep 10
  Send "{" . superKey . " down}"
  Sleep 100
  Send "{" . heavySwingKey . " up}"
  Sleep 25
  Send "{" . superKey . " up}"

  ExitApp
}
