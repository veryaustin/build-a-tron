#!/bin/sh

# Download laptop.local to $HOME
cd $HOME/
curl --remote-name https://raw.githubusercontent.com/veryaustin/build-a-tron/master/.laptop.local

# Clone thoughtbot Laptop Script
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

# Run thoughtbot laptop installer script
sh mac 2>&1 | tee ~/laptop.log

# Cleanup/Verify
brew doctor

# Clone thoughtbot dotfiles
git clone git://github.com/thoughtbot/dotfiles.git

# Clone Personal dotfiles
git clone git@github.com:veryaustin/dotfiles.git .

# Remove thoughtbot mac file
rm $HOME/mac

echo "Installation & Configuration Complete. Please see ~/laptop.log for errors."
