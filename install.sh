#!/bin/sh

# Variables
SECURE_STORAGE="/Volumes/installer"

# Statement Variables
COPY_SUCCESS="successfully copied"
COPY_ERROR="Secure storage not available"

# Copy Function args($1 = Description, $2 = Source, $3 = Destination)
copy_assets() {
  if [ -d "$2" ]; then
    sudo cp -R "$2" "$3"
      echo "$1 ${COPY_SUCCESS}"
    else
      echo ${COPY_ERROR}
  fi
} 

# //--- Optional Installation From Secure Storage ---//

# Copy SSH Keys From Secure Storage
copy_assets "SSH keys" "$SECURE_STORAGE/keys/" "$HOME/.ssh/"

# Copy GPG Keys From Secure Storage
copy_assets "GPG keys" "$SECURE_STORAGE/gpg/.gnupg/" "$HOME/.gnupg"

# Optional Install of Preferences (Un-Comment Out)

# Copy User Preferences
# copy_assets "User preferences" "$SECURE_STORAGE/preferences/user_preferences/" "$HOME/Library/Preferences/"

# Copy Global Preferences
# copy_assets "Global preferences" "$SECURE_STORAGE/preferences/global_preferences/" "/Library/Preferences"

# Copy Application Support
# copy_assets "Application support" "$SECURE_STORAGE/application_support/" "$HOME/Library/Application Support/"

# Copy Fonts
copy_assets "Fonts" "$SECURE_STORAGE/fonts/" "$HOME/Library/Fonts/"

# Download Dotfiles
curl -LO http://github.com/veryaustin/dotfiles/archive/master.zip && unzip -jo master.zip && rm master.zip

# Check/Make Homebrew Directory
HOMEBREW_DIR="/usr/local"

if [ -d "$HOMEBREW_DIR" ]; then
  if ! [ -r "$HOMEBREW_DIR" ]; then
    sudo chown -R "$LOGNAME:admin" /usr/local
  fi
else
  sudo mkdir "$HOMEBREW_DIR"
  sudo chflags norestricted "$HOMEBREW_DIR"
  sudo chown -R "$LOGNAME:admin" "$HOMEBREW_DIR"
fi

# Install Oh-My-Zsh
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# Change Shell to ZSH
update_shell() {
 local shell_dir;
 shell_dir="$(which zsh)"
 
 echo "Changeing your shell to zsh ..."
  if ! grep "$shell_dir" /etc/shells > /dev/null 2>&1 ; then
   echo "Adding '$shell_dir' to /etc/shells"
   sudo sh -c "echo $shell_path >> /etc/shells"
  fi
  chsh -s /usr/local/bin/zsh
}

case "$SHELL" in
  */zsh)
    if [ "$(which zsh)" != '/usr/local/bin/zsh' ] ; then
      update_shell
    fi
    ;;
  *)
    update_shell
    ;;
esac

# Install Homebrew
if ! command -v brew >/dev/null; then
  echo "Now installig homebrew..."
    curl -fsS \
      'https://raw.githubusercontent.com/Homebrew/install/master/install' | ruby
fi

if brew list | grep -Fq brew-cask; then
  echo "Uninstalling old Homebrew-Cask..."
  brew uninstall --force brew-cask
fi

echo "Updated Homebrew..."
brew update

# Install Homebrew Fonts
brew tap homebrew/cask-fonts
brew install font-fira-code

# Install 1Password CLI/Mas for Command Line App Installs
brew install jq
brew install 1password-cli
brew install mas

# 1Password Sign In
echo -n "Enter your 1Password email address and press [ENTER]: "

read OnePassUsername
OnePassDomain="my.1password.com"
eval $(op signin "$OnePassDomain" "$OnePassUsername")

# Get App Store Username & Password
appStoreUsername=$(op get item iCloud | jq '.details.fields[] | select(.designation=="username").value')
appStorePassword=$(op get item iCloud | jq '.details.fields[] | select(.designation=="password").value')

echo $appStoreUsername
echo $appStorePassword

# Sign Into App Store
# FIX: Mas signin is broken as of Hi Sierra. See https://github.com/mas-cli/mas/issues/164
mas signin $appStoreUsername $appStorePassword

# Install Brewfile
brew bundle

# 1Password Sign Out
op signout

# Delete Prep And Install Script
rm $HOME/prep.sh
rm -- "$0"