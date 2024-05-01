tell application "System Events"
    set osrsRunning to (name of processes) contains "RuneLite"
end tell

if osrsRunning then
    tell application "RuneLite"
        activate -- Brings the osrs app to the front
    end tell
else
    tell application "Runelite"
        activate -- Opens the osrs app
    end tell
end if

