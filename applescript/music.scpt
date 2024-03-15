tell application "System Events"
    set musicAppRunning to (name of processes) contains "Music"
end tell

if musicAppRunning then
    tell application "Music"
        activate -- Brings the Music app to the front
    end tell
else
    tell application "Music"
        activate -- Opens the Music app
    end tell
end if

