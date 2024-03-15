tell application "System Events"
    set discordRunning to (name of processes) contains "Discord"
end tell

if discordRunning then
    tell application "Discord"
        activate -- Brings the Discord app to the front
    end tell
else
    tell application "Discord"
        activate -- Opens the Discord app
    end tell
end if

