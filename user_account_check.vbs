' MIT License
' 
' Copyright (c) 2025 LogicLoopHole
' 
' Permission is hereby granted, free of charge, to any person obtaining a copy
' of this software and associated documentation files (the "Software"), to deal
' in the Software without restriction, including without limitation the rights
' to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
' copies of the Software, and to permit persons to whom the Software is
' furnished to do so, subject to the following conditions:
' 
' The above copyright notice and this permission notice shall be included in all
' copies or substantial portions of the Software.
' 
' THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
' IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
' FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
' AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
' LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
' OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
' SOFTWARE.

' Create a Network object to get user information
Set objNetwork = CreateObject("WScript.Network")

' Get the current username and convert to lowercase for case-insensitive comparison
strUsername = LCase(objNetwork.UserName)

' Check if username does NOT start with "x" or "y-"
' Left() function extracts characters from the beginning of the string
' For "y-", we check the first 2 characters since it's a 2-character prefix
If Not (Left(strUsername, 1) = "x" Or Left(strUsername, 2) = "y-") Then
    
    ' Create Shell object to run system commands
    Set objShell = CreateObject("WScript.Shell")
    
    ' Execute shutdown command with these parameters:
    ' -r = restart (instead of shutdown)
    ' -t 30 = timeout of 30 seconds
    ' -c "message" = custom message to display to user
    ' 0 = window style (hidden)
    ' False = don't wait for process to complete
    objShell.Run "shutdown.exe -r -t 30 -c ""User Account Issue! - rebooting device in 30 seconds.""", 0, False
End If