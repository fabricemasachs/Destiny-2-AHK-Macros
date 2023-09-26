#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Hunter Ledge Skate
Subclass: Revenant
Super Ability:
Aspects: Touch of Winter / Shatterdive
Movement Ability: Triple Jump
*/

F4::
{
  Send "{" . powerWeaponKey . "}"
  Sleep 500
  Send "{" . heavySwingKey . " down}"
  Sleep 100
  Send "{" . heavySwingKey . " up}"
  Send "{" . jumpKey . "}"
  Sleep 10
  Send "{" . airMoveKey . "}"
  Sleep 300
  Send "{" . jumpKey . "}"

  ExitApp
}
