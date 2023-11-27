*~$Space:: 
Sleep 100 
Loop 
{ 
GetKeyState, SpaceState, Space, P 
If SpaceState = U 
break 
Sleep 5 
Send, {Blind}{Space} 
}