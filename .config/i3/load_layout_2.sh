#!/bin/sh

# load layout for workspace 2
i3-msg "workspace 2; append_layout ~/.config/i3/workspace_2.json"

# open programs for workspace 2
(google-chrome-stable &)

