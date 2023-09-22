#!/bin/bash

# Check if an email address is provided as an argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 <user_email>"
    exit 1
fi

# Get the email address from the command line argument
USER_EMAIL="$1"

# Generate a random strong password using wp_generate_password
NEW_PASSWORD=$(wp eval "echo wp_generate_password(20, true, true);")

# Update the user's password
wp user update "$USER_EMAIL" --user_pass="$NEW_PASSWORD" --skip-email

if [ $? -eq 0 ]; then
    echo "Password updated for user: $USER_EMAIL"
    echo "New Password: $NEW_PASSWORD"
else
    echo "Failed to update password for user: $USER_EMAIL"
fi
