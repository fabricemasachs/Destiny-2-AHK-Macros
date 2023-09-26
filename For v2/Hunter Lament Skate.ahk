#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

/*
Hunter Lament Skate
Subclass: Revenant
Super Ability:
Aspects: Touch of Winter / Shatterdive
Movement Ability: Triple Jump
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
  Send "{" . airMoveKey . "}"

  ExitApp
}
