#!/bin/sh

# Download laptop.local to $HOME
cd $HOME/
curl --remote-name https://raw.githubusercontent.com/veryaustin/build-a-tron/master/.laptop.local

# Clone Thoughtbot Laptop Script
curl --remote-name https://raw.githubusercontent.com/thoughtbot/laptop/master/mac

# Run thoughtbot laptop installer script
sh mac 2>&1 | tee ~/laptop.log
