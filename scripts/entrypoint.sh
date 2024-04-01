#!/bin/bash

# Set the user ID based on the environment variable
USER_ID=${USER_ID:-1000}

# Create a user with the specified ID
USER_NAME="appuser"
adduser --disabled-password --gecos '' --uid "$USER_ID" "$USER_NAME"

test -d /logs || mkdir /logs
chown "$USER_NAME" /logs
chown "$USER_NAME" /library

# Run the script as the created user
chmod a+x /opt/scan-calibre.sh
echo "starting scan."
su "$USER_NAME" -c "/opt/scan-calibre.sh"
