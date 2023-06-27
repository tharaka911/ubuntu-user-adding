#!/bin/bash

# Prompt for the username
read -p "Enter the username for the new user: " NEW_USERNAME

# Create the new user
sudo adduser "$NEW_USERNAME"

# Add the new user to the sudo group
sudo usermod -aG sudo "$NEW_USERNAME"

echo "New user '$NEW_USERNAME' created and added to the sudo group."
