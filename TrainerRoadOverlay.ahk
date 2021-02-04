#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
; Uncomment the next line and include the path to any other script you want to run.
; #Include SomeFile.ahk
; WinSet, TransColor, Color , WinTitle, WinText, ExcludeTitle, ExcludeText

; The other colours to try are 0x252525 and 0x1D1D1D and 0x151515

#+t::
WinSet, TransColor, 0x151515 125 , A
Return
#+r::
WinSet, Transparent, OFF , A
Return

^!z:: ; Control+Alt+Z hotkey to show the color of the pixel located at the current position of the mouse cursor.
MouseGetPos, MouseX, MouseY
PixelGetColor, color, %MouseX%, %MouseY%
MsgBox The color at the current cursor position is %color%.
return

!+n::
	IfWinNotActive, ahk_exe notepad++.exe
	{
		WinActivate, ahk_exe notepad++.exe
	}
	else
		WinActivate, TrainerRoad
return

; Also WinActivate doesn't really activate the window, it just puts it on top without activating. I have to click to activate.
; This doesn't really work ^SPACE::  Winset, Alwaysontop, , A

!+a::
	IfWinNotActive, TrainerRoad
	{
		WinActivate, TrainerRoad
	}
	else
		WinActivate, RGT Screen
return

/*
This is the original code
!a::
	IfWinNotActive, TrainerRoad
	{
		WinGet, ID, ID, A
		WinActivate, TrainerRoad
	}
	else
		WinActivate, ahk_id%ID%
return
*/

/*
These are useful ids
TrainerRoad
ahk_class Chrome_WidgetWin_1
ahk_exe TrainerRoad.exe
ahk_pid 23776

RGT Screen
ahk_class UnityWndClass
ahk_exe RGTScreen.exe
ahk_pid 22272

*/
