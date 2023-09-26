#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Hunter Ground Skate
Subclass: Revenant
Super Ability:
Aspects: Touch of Winter / Shatterdive
Movement Ability: Triple Jump
*/

F4::
{
  Send "{" . powerWeaponKey . "}"
  Sleep 600
  Send "{" . jumpKey . "}"
  Sleep 60
  Send "{" . lightAttackKey . "}"
  sleep 50
  Send "{" . jumpKey . "}"
  Send "{" . airMoveKey . "}"
  Sleep 75
  Send "{" . jumpKey . "}"
  Send "{" . sprintKey . " down}"
  Sleep 100
  Send "{" . sprintKey . " up}"
  
  ExitApp
}
