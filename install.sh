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

# Clone & Install Personal dotfiles
curl -LOk --remote-name https://github.com/veryaustin/dotfiles/archive/master.zip && unzip -j master.zip && rm master.zip
source ~/.zshrc.local

# Remove thoughtbot mac file
rm $HOME/mac
