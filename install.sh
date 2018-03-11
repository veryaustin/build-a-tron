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

# Install LastPass CLI/Mas for Command Line App Installs
brew install lastpass-cli
brew install mas

#  LastPass Sign In
echo -n "Enter your LastPass username and press [ENTER]"
read LastPassUsername
lpass login "$LastPassUsername"

# Get App Store Username & Password
IcloudUsername="$(lpass show iCloud --username)"
IcloudPassword="$(lpass show iCloud --password)"

# Sign Into App Store
mas signin $IcloudUsername $IcloudPassword

# Install Brewfile
brew bundle

# LastPass Sign Out
lpass logout

# Delete Setup Script
rm -- "$0"