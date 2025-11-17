#!/usr/bin/env bash

APP_ID="$1"
COMMAND="$2"

focus() {
  # Running → focus it using sway criteria
  # Try focusing by app_id, then by class
  swaymsg "[app_id=\"$APP_ID\"] focus" ||
    swaymsg "[class=\"$APP_ID\"] focus"
}
focus_wait() {
  # For applications that are slow to start, we try every 0.1s until their
  # window is open.
  for i in {1..30}; do
    if focus; then
      break
    fi
    sleep 0.1
  done
}

# Check if process is running
if ! pgrep -x "$APP_ID" >/dev/null 2>&1; then
  # Not running → launch it
  $COMMAND &
fi

focus_wait
