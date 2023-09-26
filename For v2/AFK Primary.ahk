#Requires AutoHotkey v2.0
#Include %A_ScriptDir%
#singleinstance force
#Include Binding.ahk

Start := 0

; Creates an On-screen display (OSD) via transparent window.
MenuGui := Gui()
MenuGui.Opt("+AlwaysOnTop -Caption +ToolWindow")  ; +ToolWindow avoids a taskbar button and an alt-tab menu item.
MenuGui.BackColor := "000000"  ; Can be any RGB color (it will be made transparent below).
MenuGui.SetFont("s32")  ; Set a large font size (32-point).
MenuText := MenuGui.Add("Text", "cWhite", "XXXXX`n`nXXXXXXXXXX`nXXXXXXXXXX")
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
      MenuText.Text := "MENU`n`nF2: Close`nF4: Start"
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
  Global Start := 1

  Loop
  {
    if Winactive("Destiny 2") {
      Send "{" . fireKey . " down}"
      Sleep 5000
      Send "{" . fireKey . " up}"
      Sleep 50
      Send "{" . moveForwardKey . "}"
      Sleep 50
      Send "{" . moveBackwardKey . "}"
      Sleep 50
      Send "{" . reloadKey . "}"
      Sleep 2000
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
