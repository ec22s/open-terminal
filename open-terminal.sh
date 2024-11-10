#!/usr/bin/env osascript

tell application "Finder" to set myDir to POSIX path of (insertion location as alias)
tell application "Terminal"
  if not (exists window 1) then reopen
  activate
  if busy of window 1 then
    tell application "System Events" to keystroke "t" using command down
  end if
  do script "cd " & quoted form of myDir in window 1
end tell
