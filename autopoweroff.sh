#!/bin/sh

TIME=$(date +"%T")

echo "$(date) - Checking connected users on Plex..."
CONNECTED_USERS=$(curl http://${PLEX_HOSTNAME}:32400/status/sessions?X-Plex-Token=${PLEX_TOKEN}  -f -s | grep "<MediaContainer" | grep -o "\".*\"" | tr -d '"')

if [[ -z "$CONNECTED_USERS" ]]; then
  echo "$(date) - Cannot get number of connected users, do nothing..."
elif [[ $CONNECTED_USERS -eq 0 ]]; then
  echo "$(date) - 0 user is connected on Plex, host shutdown..."
  systemctl poweroff
elif [[ $CONNECTED_USERS -eq 1 ]]; then
  echo "$(date) - 1 user is connected on Plex, do nothing..."
elif [[ $CONNECTED_USERS -gt 1 ]]; then
  echo "$(date) - ${CONNECTED_USERS} users are connected on Plex, do nothing..."
fi

if [[ $TIME == $DEADLINE ]]; then
  echo "$(date) - Deadline reached, host shutdown with ${CONNECTED_USERS} user(s)..."
  systemctl poweroff
fi
