﻿<#
.SYNOPSIS
    A simple keyboard app using the console beep command.
.DESCRIPTION
    Play-Piano is a PowerShell script that uses the console beep function with varying frequencies to create a crude piano.
    It is based on the example from Dr. Scripto seen here: https://devblogs.microsoft.com/scripting/weekend-scripter-use-hash-table-with-powershell-to-create-a-simple-piano/
.PARAMETERS
    None
.INPUT
    None - Play-Piano does not accept any piped input
.OUTPUT
    None - Play-Piano does not create any output
.LINKS
    https://devblogs.microsoft.com/scripting/weekend-scripter-use-hash-table-with-powershell-to-create-a-simple-piano/
#>

##STARTUP

##ASSIGN KEYS
[array]$piano=$NULL
$piano+=@{"Q"=290}
$piano+=@{"2"=300}
$piano+=@{"W"=330}
$piano+=@{"3"=345}
$piano+=@{"E"=360}
$piano+=@{"R"=390}
$piano+=@{"5"=405}
$piano+=@{"T"=440}
$piano+=@{"6"=460}
$piano+=@{"Y"=480}
$piano+=@{"7"=505}
$piano+=@{"U"=530}
$piano+=@{"I"=580}
$piano+=@{"9"=605}
$piano+=@{"O"=630}
$piano+=@{"0"=670}
$piano+=@{"P"=700}

##PLAY THE PIANO
function play {
DO {
    ##Get Input
    $Key=$HOST.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
    if ($Key.VirtualKeyCode -eq '27') { exit }
    $HOST.UI.RawUI.Flushinputbuffer()
    $Note=$piano.($Key.Character)
    if ($Null -eq $Note) { &play }

    ##Play Note
    [Console]::Beep($Note,200)

} Until ($false)
}
&play
