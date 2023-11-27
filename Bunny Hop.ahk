*~$Space::
Loop
{
	if !GetKeyState("Space", "P")
		break
	Send, {Blind}{SPACE}
	Sleep 1
}
return