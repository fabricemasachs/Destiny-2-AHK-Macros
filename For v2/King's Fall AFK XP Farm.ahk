#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

Start := 0
JoinTheBot := "/join CPBot#6289"

; Creates an On-screen display (OSD) via transparent window.
MenuGui := Gui()
MenuGui.Opt("+AlwaysOnTop -Caption +ToolWindow")  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
MenuGui.BackColor := "000000"  ; Can be any RGB color (it will be made transparent below).
MenuGui.SetFont("s32")  ; Set a large font size (32-point).
MenuText := MenuGui.Add("Text", "cWhite", "XXXXX`n`nXXXXXXXXXX`nXXXXXXXXXX`nXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX")
; Make all pixels of this color transparent and make the text itself translucent (150):
WinSetTransColor(MenuGui.BackColor " 255", MenuGui)
SetTimer(UpdateOSD, 200)
UpdateOSD()  ; Make the first update immediate rather than waiting for the timer.

UpdateOSD(*)
{
  if Winactive("Destiny 2") {
    MenuGui.Show("x0 y0 NoActivate")  ; NoActivate avoids deactivating the currently active window.

    if (Start = 0) {
      ;ToolTip "The Macro is OFF and Destiny Window is active"
      MenuText.Text := "MENU`n`nF2: Close`nF4: Start`nF8: Join the Checkpoint Bot"
    } 
    else {
      ;ToolTip "The Macro is ON and Destiny Window is active"
      MenuText.Text := "MENU`n`nF2: Close`nF3: Pause"
    }
  }
  else {
    ;ToolTip "The Macro is Off, Menu is hidden and Destiny Window is not active"
    MenuGui.Hide
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

F2::
{
  ExitApp
}

F3::
{
  ;ToolTip "Reload the macro"
  Critical
  Reload
  Sleep 1000

  ;Sleep 1 ; Needed to avoid multiple scripts to open
  ;Reload
}

F4::
{
  Global Start := 1

  Loop
  {
    if Winactive("Destiny 2") {
      Send "{" . grenadeKey . "}"
      Sleep 1600
      Send "{" . moveForwardKey . "}"
      Sleep 1000
      Send "{" . moveBackwardKey . "}"
      Sleep 1000
    }
    else {
      ;ToolTip "Reload the macro"
      Critical
      Reload
      Sleep 1000

      ;Sleep 1 ; Needed to avoid multiple scripts to open
      ;Reload
    }
  }

}

F8::
{
  if Winactive("Destiny 2") {
    if (Start = 0) {
      Send "{Enter}"
      Sleep 100
      SendText JoinTheBot
      Sleep 100
      Send "{Enter}"
    }
  }
}