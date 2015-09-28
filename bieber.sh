#!/usr/bin/env bash
curl "http://s27.postimg.org/xeqcjrmur/bieber.jpg" -os "/Users/$USER/Downloads/bieber.jpg"
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '/Users/$USER/Downloads/bieber.jpg'";
killall Dock;
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/$USER/Downloads/bieber.jpg"'