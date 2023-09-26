#Include %A_ScriptDir%
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
#singleinstance force
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#Include Binding.ahk

Start = 0

CustomColor := "000000"  ; Can be any RGB color (it will be made transparent below).
Gui +LastFound +AlwaysOnTop -Caption +ToolWindow  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
Gui, Color, %CustomColor%
Gui, Font, s32  ; Set a large font size (32-point).
;Gui, Add, Text, vMyText cWhite, XXXXX YYYYY ; XX & YY serve to auto-size the window.
Gui, Add, Text, vMyText cWhite, MENU`n`nF2: Close`nF4: Start
; Make all pixels of this color transparent and make the text itself translucent (255):
WinSet, TransColor, %CustomColor% 255
SetTimer, UpdateOSD, 200
Gosub, UpdateOSD  ; Make the first update immediate rather than waiting for the timer.

UpdateOSD:
{
  if Winactive("Destiny 2") {
    Gui, Show, x0 y0 NoActivate  ; NoActivate avoids deactivating the currently active window.

    if (Start = 0) {
      GuiControl,, Mytext, MENU`n`nF2: Close`nF4: Start
    } 
    else {
      GuiControl,, Mytext, MENU`n`nF2: Close`nF3: Pause
    }
  }
  else {
    Gui, Hide
  }
}

/*
Warlock
Subclass: Voidwalker
Aspects:
Weapon: Auto Rifle
Exotic Armor: Sanguine Alchemy
Mission: In The Deep
Mission Location: The Moon
Mission Type: Shadowkeep Campaign
*/

F4::
{
  Start = 1

  Loop
  {
    if Winactive("Destiny 2") {
      Send {%fireKey% down}
      Sleep 5000
      Send {%fireKey% up}
      Sleep 50
      Send {%moveForwardKey%}
      Sleep 50
      Send {%moveBackwardKey%}
      Sleep 50
      Send {%reloadKey%}
      Sleep 2000
    }
    else {
      Sleep 1 ; Needed to avoid multiple scripts to open
      Reload
    }
  }
}

F3::
{
  Sleep 1
  Reload
}

F2::
{
  ExitApp
}
