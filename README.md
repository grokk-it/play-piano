# play-piano
PowerShell script that turns your keyboard into a (console beep) piano.

Keys & Notes: (frequency #'s in Hz)
```
  |300|345|   |405|460|505|   |605|670|     |frq|
  | 2 | 3 |   | 5 | 6 | 7 |   | 9 | 0 |     |key|
|290|330|360|390|440|480|530|580|630|700|
| Q | W | E | R | T | Y | U | I | O | P |
```

Originally created by Dr Scripto and published on The Scripting Guy (Ed Wilson)'s blog.
This version adds a couple refinements, namely:

* Avoids error created by unused keys by packing the playback into a function and restarting the function if an unused key is pressed.
* 'esc' key exits the script.

Future Improvements:
* Display keymap while playing.
* Fix note frequencies to better resemble an octave.
* Create octave up/down function.
* Make keys assignable by user.
* Allow tempo & note playback time to be set by user.
* Input pre-scripted note files via pipe or Get-Contents.
* Create, edit & save note files inside script.
* Use runspaces to activate the beep in parallel, allowing for playing of chords and notes in parallel (?)
* Audio distortion (?)
* Sustain functionality (?)
* MIDI controller input (?)
* MIDI output (?)

Based on "Weekend Scripter: Use Hash Table with PowerShell to Create a Simple Piano" by Dr Scripto on 14SEP2013
https://devblogs.microsoft.com/scripting/weekend-scripter-use-hash-table-with-powershell-to-create-a-simple-piano/
