# Blinkenlights
Activity "LEDs" for computer

First version in bash. Please edit file blinker.sh to correct drives like sda, sdb etc. Correct names you can ged with "lsblk" command and stats ar in /proc/diskstats

You ca monitor "activity" for any drive which have stats there.

Best to see activity is open new terminal and use screen command like "screen -S blinkenlights" then become root ( sudo su ) and run my scrim. I prefer ruuning it with command "eatmydata ionice -c 3 nice -19 bash blinkenlights.sh" and then resize terminal to see just "LEDs" as you can see with provided "screenshot"

tested on Lubuntu 18 kernel 4.15.0-118-generic

# TODO
- rewrite to python
- add external HW for real LEDs
