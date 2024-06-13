# Set the desired version number
VERSION="2.9.0"

# Remove the existing WP-CLI (if applicable)
sudo rm /usr/local/bin/wp

# Download the specific version of WP-CLI
curl -O https://github.com/wp-cli/wp-cli/releases/download/v$VERSION/wp-cli-$VERSION.phar

# Verify the Phar file
php wp-cli-$VERSION.phar --info

# Make the Phar file executable
chmod +x wp-cli-$VERSION.phar

# Move the Phar file to /usr/local/bin
sudo mv wp-cli-$VERSION.phar /usr/local/bin/wp

echo "wp cli version $VERSION installed"
