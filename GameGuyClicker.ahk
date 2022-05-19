#SingleInstance,Force
#MaxThreadsPerHotkey,2
SetMouseDelay,-1
SetBatchLines,-1

MsgBox, Click the minus key on the Numpad to start/stop!

NumpadSub::
   if(!Go){
       Start_Time:=A_TickCount
       Click_Count:=0
   }
   Go:=!Go
   While(Go)
   {
       Click,
       Click_Count++
   }
   Total_Time :=(A_TickCount-Start_Time)/1000
   Tooltip,% "You clicked " Click_Count " times in " Total_Time " seconds."
return