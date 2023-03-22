#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Titan: Ledge Skate
;Subclass: Sentinel
;Super Ability: Ward of Dawn
;Aspects:
;Movement Ability:
F5::
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
  Return
}

;Hunter: Skate Flat Ground
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement bvility: Triple Jump
F6::
{
  Send {3} ; Power Weapon Key
  Sleep 600
  Send {Space}
  Sleep 60
  Send {LButton} ; Light Attack Key
  sleep 50
  Send {Space}
  Send {x} ; Air Move Key
  Sleep 75
  Send {Space}
  Send {Shift down} ; Sprint Key
  Sleep 100
  Send {Shift up} ; Sprint Key
  Return
}

;Hunter: Ledge Skate
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement bvility: Triple Jump
F7::
{
  Send {3} ; Power Weapon Key
  Sleep 500
  Send {RButton down} ; Heavy Swing Key
  Sleep 100
  Send {RButton up} ; Heavy Swing Key
  Send {Space}
  Sleep 10
  Send {x}
  Sleep 300
  Send {Space}
  Return
}

/*
;Hunter: Lament Skating
;Subclass: Revenant
;Super Ability:
;Aspects: Touch of Winter / Shatterdive
;Movement Ability: Triple Jump
F8::
{
  Send {c down}
  Sleep 500
  Send {Space down}
  Sleep 5
  Send {Space up}
  sleep 20
  Send {LButton} ; Light Attack Key
  Send {c up}
  Sleep 10
  Send {Space down}
  Sleep 5
  Send {Space up}
  Sleep 10
  Send {x}
  Return
}
*/

;Warlock: Skate Flat Ground
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide
F9::
{
  Send {3} ; Power Weapon Key
  Sleep 600
  Send {Space}
  Sleep 60
  Send {LButton} ; Light Attack Key
  Sleep 25
  Send {Space}
  Send {f} ; Super Key
  Sleep 50
  Send {Space}
  Sleep 100
  Send {Shift down} ; Sprint Key
  Sleep 100
  Send {Shift up} ; Sprint Key
  Return
}

;Warlock: Ledge Skate
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide
F10::
{
  Send {3} ; Power Weapon Key
  Sleep 500
  Send {RButton down} ; Heavy Swing Key
  Sleep 100
  Send {RButton up} ; Heavy Swing Key
  Send {Space}
  Send {f} ; Super Key
  Sleep 100
  Send {Space}
  Return
}

/*
;Warlock: Lament Skating
;Subclass: Dawnblade
;Super Ability: Well of Radiance
;Aspects:
;Movement Ability: Burst Glide
F11::
{
  Send {c down}
  Sleep 500
  Send {Space down}
  Sleep 5
  Send {Space up}
  sleep 20
  Send {LButton} ; Light Attack Key
  Send {c up}
  Sleep 10
  Send {Space down}
  Sleep 5
  Send {Space up}
  Sleep 10
  Send {f}
  Return
}
*/

F12::
{
  Loop
  {
    Click
    Sleep 2000
    Click
    Sleep 50
    Send {w}
    Sleep 50
    Send {s}
    Sleep 4000
  }

  ^p::
  {
    Pause
    Return
  }
}

^q::ExitApp
