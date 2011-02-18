tell application "Finder"
    set myWin to window 1
    set thePath to (quoted form of POSIX path of (target of myWin as alias))
end tell
tell application "iTerm" to activate
tell application "System Events"
    tell process "iTerm"
        click menu item "New Window" of menu "Shell" of menu bar 1
    end tell
end tell
tell application "iTerm"
    set theSess to current session of current terminal
    write theSess text "cd " & thePath
end tell
