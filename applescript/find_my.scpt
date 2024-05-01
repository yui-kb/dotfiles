tell application "System Events"
    set findmyRunning to (name of processes) contains "FindMy"
end tell

if findmyRunning then
    tell application "FindMy"
        activate -- Brings the Find My app to the front
    end tell
else
    tell application "FindMy"
        activate -- Opens the Find My app
    end tell
end if
