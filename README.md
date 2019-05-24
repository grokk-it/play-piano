# play-piano
PowerShell script that turns your keyboard into a (console beep) piano.

Originally created by Dr Scripto and published on The Scripting Guy (Ed Wilson)'s blog.
This version adds a couple refinements, namely:
 > It avoids the error created by unassigned keys by packing the playback into a function and restarting the function if an unused key is pressed.
 > 'esc' key exits the script.

Based on "Weekend Scripter: Use Hash Table with PowerShell to Create a Simple Piano" by Dr Scripto on 14SEP2013
https://devblogs.microsoft.com/scripting/weekend-scripter-use-hash-table-with-powershell-to-create-a-simple-piano/
