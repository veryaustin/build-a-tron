#!/bin/sh

# Install Specialized Software From Secure Storage
if [ -d "/Volumes/installer/software/" ]; then
  cp -r /Volumes/installer/software/ /Applications
fi

# Install SSH Keys From Secure Storage
if [ -d "/Volumes/installer/keys/" ]; then
  cp -r /Volumes/installer/keys/ $HOME/.ssh
fi


# Cask Install
brew_tap 'caskroom/cask'
brew_install_or_upgrade 'brew-cask'

# Browsers
brew cask install google-chrome
brew cask install firefox

# Storage/Documents
brew cask install dropbox
brew cask install google-drive
brew cask install google-photos-backup
brew cask install evernote

# Development
brew cask install iterm2
brew cask install macvim
brew cask install codekit
brew cask install sublime-text
brew cask install boot2docker
brew cask install github-desktop
brew cask install mamp
brew cask install transmit
brew cask install vmware-fusion
brew cask install virtualbox
brew cask install sourcetree
brew cask install dash
brew cask install Caskroom/cask/java
brew install bash-completion
brew install nvm
source $(brew --prefix nvm)/nvm.sh

# Database
brew cask install postico
brew cask install navicat-for-sqlite
brew cask install navicat-for-postgresql
brew cask install adobe-illustrator-cc
brew cask install sketch

# Security
brew cask install yubico-authenticator
brew cask install yubikey-personalization-gui
brew cask install lastpass