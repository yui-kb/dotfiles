tell application "System Events"
    set mailRunning to (name of processes) contains "Mail"
end tell

if mailRunning then
    tell application "Mail"
        activate -- Brings the Mail app to the front
    end tell
else
    tell application "Mail"
        activate -- Opens the Mail app
    end tell
end if

