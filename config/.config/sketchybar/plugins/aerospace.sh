#!/usr/bin/env bash

MONITOR_ID=$2
WORKSPACE_ID=$1
PARSED_NAME="space.$MONITOR_ID.$WORKSPACE_ID"
FOCUSED_WORKSPACE="$(aerospace list-workspaces --focused)"
FOCUSED_MON="$(aerospace list-monitors --focused --format '%{monitor-appkit-nsscreen-screens-id}')"

###

if [ $FOCUSED_MON = $MONITOR_ID ]; then
  if [ $WORKSPACE_ID = $FOCUSED_WORKSPACE ]; then
    sketchybar --set $PARSED_NAME background.drawing=on label.highlight=on
  else
    sketchybar --set $PARSED_NAME background.drawing=off label.highlight=off
  fi
else
  PARSED_MON=$((MONITOR_ID == 1 ? 2 : 1))
  VISIBLE_WORKSPACE="$(aerospace list-workspaces --monitor $PARSED_MON --visible)"
  if [ $WORKSPACE_ID = $VISIBLE_WORKSPACE ]; then
    sketchybar --set $PARSED_NAME background.drawing=on label.highlight=on
  else
    sketchybar --set $PARSED_NAME background.drawing=off label.highlight=off
  fi
fi
