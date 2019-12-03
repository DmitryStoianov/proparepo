#!/bin/bash
# script aimed to reload page in chromium on raspbrerry pi
# it's simply sends 'ctrl+F5' to the page
# xdotool should be installed
export DISPLAY=":0"
WID=$(xdotool search --onlyvisible --class chromium|head -1)
xdotool windowactivate ${WID}
xdotool key ctrl+F5
