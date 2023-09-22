#!/bin/bash

# Get a list of all admin users
ADMIN_USERS=$(wp user list --role=administrator --field=user_login)

# Loop through the admin users and generate a unique password for each
for USER in $ADMIN_USERS
do
    # Generate a random strong password using wp_generate_password
    NEW_PASSWORD=$(wp eval "echo wp_generate_password(20, true, true);")

    # Update the user's password
    wp user update "$USER" --user_pass="$NEW_PASSWORD" --skip-email
    
    if [ $? -eq 0 ]; then
        echo "Password updated for user: $USER"
        echo "$USER, $NEW_PASSWORD" >> password_log.csv
    else
        echo "Failed to update password for user: $USER"
    fi
done
