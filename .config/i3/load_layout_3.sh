#!/bin/sh

# load layout for workspace 3
i3-msg "workspace 3; append_layout ~/.config/i3/workspace_3.json"

# open programs for workspace 3
(urxvt -cd ~/Projects &)

#(xdotool key "Super_L+Shift+3") 
#(tmux new -s session0 &)
