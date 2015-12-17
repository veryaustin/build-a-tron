#!/bin/sh

# Install Specialized Software From Secure Storage
if [ -d "/Volumes/installer/software/" ]; then
  cp -r /Volumes/installer/software/ /Applications
fi

# Install SSH Keys From Secure Storage
if [ -d "/Volumes/installer/keys/" ]; then
  cp -r /Volumes/installer/keys/ $HOME/.ssh
fi
