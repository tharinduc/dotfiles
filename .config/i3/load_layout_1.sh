#!/bin/sh

# load layout for workspace 1
i3-msg "workspace 1; append_layout ~/.config/i3/workspace_1.json"

# open programs for workspace 1
(urxvt &)
(urxvt &)

# load layout for workspace 2
#i3-msg "workspace 2; append_layout ~/.config/i3/workspace_2.json"
#
## open programs for workspace 2
#(google-chrome-stable)

# load layout for workspace 3
#i3-msg "workspace 3; append_layout ~/.config/i3/workspace_3.json"
#
## open programs for workspace 3
#(urxvt)
#(xdotool key "Super_L+Shift+3") 
#-e tmux new -s session0 &)
