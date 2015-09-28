#!/usr/bin/env bash
r=$(( $RANDOM % 4 ));

case "$r" in
"0")
    burl="http://s27.postimg.org/xeqcjrmur/bieber.jpg"
    ;;
"1")
    burl="http://s2.postimg.org/vlwmn5dqh/justin_bieber_wallpaper.jpg"
    ;;
"2")
    burl="http://s12.postimg.org/ocgvtmt8t/landscape_1426526635_justin_bieber_roast_1242.jpg"
    ;;
"3")
    burl="http://s9.postimg.org/a60yi78pr/o_JUSTIN_BIEBER_facebook.jpg"
    ;;
*)
    burl="http://s27.postimg.org/xeqcjrmur/bieber.jpg"
    ;;
esac

curl -s "${burl}" -o "/Users/$USER/Downloads/bieber.jpg"
sqlite3 ~/Library/Application\ Support/Dock/desktoppicture.db "update data set value = '/Users/$USER/Downloads/bieber.jpg'";
killall Dock;
osascript -e 'tell application "Finder" to set desktop picture to POSIX file "/Users/$USER/Downloads/bieber.jpg"'