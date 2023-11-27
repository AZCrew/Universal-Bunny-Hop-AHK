#NoEnv
#Persistent

DllCall("timeBeginPeriod", UInt, 1)

; Set the process priority to REALTIME_PRIORITY_CLASS
Process, Priority, , R

SetTitleMatchMode, 2  
SetTitleMatchMode, Fast ; Faster matching
TICK_64_MS := 15.6
exit_key := "End"
activation_key := "xButton1"

While !GetKeyState(exit_key, "P") 
{
    If GetKeyState(activation_key, "P") 
    {
        MouseClick, WheelDown  ; Simulate mouse wheel down
        Sleep, % (TICK_64_MS * 1) ; Sleep for a specific time
        
        
        

        MouseClick, WheelDown ; Simulate mouse wheel down
        While GetKeyState(activation_key, "P")
        {
            MouseClick, WheelDown
            Sleep, % (TICK_64_MS * 2)
        }
    }
    else
    {
        Sleep, 1
    }
}

DllCall("timeEndPeriod", UInt, 1)
ExitApp
