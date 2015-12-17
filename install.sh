#!/bin/sh

# Download laptop.local to $HOME
cd $HOME/
curl --remote-name https://github.com/veryaustin/build-a-tron/.laptop.local

# Clone Thoughtbot Laptop Script
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

# Run thoughtbot laptop installer script
less mac
sh mac 2>&1 | tee ~/laptop.log
