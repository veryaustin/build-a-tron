#!/bin/sh

# Set Hostname
sudo scutil --set ComputerName "proputertron"
sudo scutil --set LocalHostName "proputertron"
sudo scutil --set HostName "proputertron"
sudo dscacheutil -flushcache

# Install Xcode From Secure Storage
if [ -d "/Volumes/installer/xcode/" ]; then
	#tar -xvf /Volumes/installer/xcode/xcode.tar /Volumes/Macintosh\ HD/Applications
	sudo tar -xvf /Volumes/installer/xcode/xcode.tar -C /Applications/ && xcode-select --install
fi

# Xcode License Agreement
sudo xcodebuild -license accept

# Run Apple Software Update/Apply Them
sudo softwareupdate -i -a

# Restart
sudo shutdown -r now "Rebooting Now"
