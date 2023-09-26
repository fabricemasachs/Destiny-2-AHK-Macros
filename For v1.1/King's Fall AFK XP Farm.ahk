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
Gui, Add, Text, vMyText cWhite, MENU`n`nF2: Close`nF4: Start`nF8: Join the Checkpoint Bot
; Make all pixels of this color transparent and make the text itself translucent (255):
WinSet, TransColor, %CustomColor% 255
SetTimer, UpdateOSD, 200
Gosub, UpdateOSD  ; Make the first update immediate rather than waiting for the timer.

UpdateOSD:
{
  if Winactive("Destiny 2") {
    Gui, Show, x0 y0 NoActivate  ; NoActivate avoids deactivating the currently active window.

    if (Start = 0) {
      GuiControl,, Mytext, MENU`n`nF2: Close`nF4: Start`nF8: Join the Checkpoint Bot
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
Titan
Subclass: Sunbreaker
Aspects: Roaring Flame (only)
Weapon: 
Exotic Armor: Ashen Wake
Mission: King's Fall Golg Maze
Mission Location: Legends
Mission Type: Raid
Bot: /join CPBot#6289
*/ 

F4::
{
  Start = 1

  Loop
  {
    if Winactive("Destiny 2") {
      Send {%grenadeKey%}
      Sleep 1600
      Send {%moveForwardKey%}
      Sleep 1000
      Send {%moveBackwardKey%}
      Sleep 1000
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

F8::
{
  if Winactive("Destiny 2") {
    if (Start = 0) {
      Send {Enter}
      Sleep 100
      SendRaw /join CPBot#6289
      Sleep 100
      Send {Enter}
    }
  }
}