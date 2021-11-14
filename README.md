build-a-tron is a script that sets up a stock OS X machine into a new development machine, as well as installs additional applications I use day to day.

## Install

Clone repo to ~/Home directory:

```
git clone https://github.com/veryaustin/build-a-tron.git
```

Execute prep.sh:

```
sh prep.sh
```

After reboot, download & execute install.sh

```
sh install.sh
```

## What Does It Install?

### prep.sh

* Sets ComputerName, LocalHostName & HostName to "computertron"
* Installs Xcode Tools (From Secure External Storage)
* Props Xcode License Agreement
* Runs Apple Software Update & applies update
* Restarts Machine

### install.sh

* Copies SSH Keys, GPG Keys, Optional Applications, User/Application Preferences, Fonts, & Licenses from Secure External Storage if available
* Downloads dotfiles
* Install Oh-My-ZSH
* Install [Homebrew] for managing operating system libraries
* Install [1Password-CLI] for programatic credential lookup
* Install [Mas] for programatic install of Mac App Store software
* Authenticates against 1Password & Mac App store
* Installs applications in Brewfile
* Self deletes install.sh

### Brewfile

Unix tools:

* [Git] for version control
* [OpenSSL] for Transport Layer Security (TLS)
* [zsh] as your shell
* [z] tracks most-used directories to make cd smarter


Quicklook:

* [Quicklook Plugins] for viewing code, csv and additional documents via MacOS Quicklook

Image/Video Tools:

* [ImageMagick] for cropping and resizing images
* [Handbrake CLI] for converting video via CLI
* [ffmpeg] cross platform video conversion
* [mkvtoolnix] matroska tools
* [mp4v2] mp4 tools

Fonts:

* [font-fira-code] Font: Fira Code

Programming languages, package managers, and configuration:

* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [NVM] for managing and installing multiple versions of Node
* [Yarn] for managing JavaScript packages

Brew Cask Applications:

* [Google Chrome] Browser
* [Mozilla Firefox] Browser
* [Brave] Browser
* [Tor] Browser
* [Raycast] for application & file launching
* [Dropbox] for file storage
* [Google Drive] for file storage
* [Plex] media server for serving local media over the network
* [Skyfonts] for integrating Google Fonts into the system
* [Color Snapper] for selecting colors
* [Sketch] for designing layouts
* [Hyper] as my current Terminal alternative
* [iTerm] alternative terminal
* [CodeKit] Sass, Less, Jade, Haml, Javascript compiler
* [VSCode] for editing code
* [Tower] for git foo
* [Postman] for making API Requests
* [Github Desktop] for a nice GUI for git
* [MAMP] for quickly running sites on apache
* [Docker] GUI for running/managing docker containers
* [Kitematic] GUI for running/managing docker containers
* [Transmit] for FTP/SFTP
* [VMWare Fusion] for running virtual machines
* [Virtual Box] for running virtual machines
* [GraphQL Playground] for GraphQL GUI
* [Java] required for Android Dev
* [Table Plus] for another database GUI
* [Slack] for chatting with friends, co-workers & clients
* [Zoom] for remote meetings
* [Pocketcasts] for listing to podcasts
* [Spotify] for jamming to music
* [Clipgrab] for grabbing video clips
* [VLC] for viewing almost any video format
* [VLC Streamer] for streaming almost any video format
* [MuseScore] for writing down musical notes
* [Freedom] for getting focus in a distracted digital world. Focus!
* [Gas Mask] A GUI for managing hosts file
* [CheatSheet] View all shortcuts in active app
* [iStat Menus] for keeping an eye on workstation resources
* [Arq] for backup. Better to be safe:)
* [Resolutionator] for quickly switching screen resolutions
* [Rectangle] for managing windows
* [Carbon Copy Cloner] for duping directories/disks
* [Super Duper] for duping the occasional disk
* [Handbrake] for converting video into something usable
* [Transmission] for downloading linux distributions & other large files
* [CleanShot] for clean shot...screen shots!
* [PixelSnap] for measuring pixels on any app!
* [Rocket] for Mind-blowing emoji on the Mac
* [Screenflow] for recording my screen
* [GPG] for keeping prying eyes from reading what they shouldn't
* [1Password] for managing passwords
* [1Password CLI] for accessing 1Password via CLI
* [Authy] for two-factor authentication
* [Veracrypt] for encrypting drives
* [Tunnelblick] for OpenVPN Connections


Mac App Store Applications:
* [Fantastical] for managing my calendar
* [iHex] for viewing file contents in hex
* [CloudApp] for screenshots & filesharing
* [Forecast Bar] for answering the most important question: Is it nice outside?
* [Noizio] for providing ambient sound that is great for coding
* [Better Rename 9] for batch file renaming
* [The Unarchiver] for unzipping a variety of formats
* [Pocket] for saving articles for reading later
* [WiFi Explorer] for seeing all the WiFi in the area
* [Pages] for making pretty "Word" documents
* [Numbers] for making pretty "Spreadsheet" documents
* [Keynote] for making pretty "Presentation" documents
* [Tunesify] for converting audio files to various formats
* [Bear] for clipping articles and taking notes. More simple that Evernote
* [YubiKey Personalization Tool] for personalizing Yubikeys
* [Teracopy] for duping directories/disks


[Quicklook Plugins]: https://www.quicklookplugins.com/
[homebrew]: http://brew.sh/
[imagemagick]: http://www.imagemagick.org/
[handbrake cli]: https://handbrake.fr/docs/en/latest/cli/cli-options.html
[ffmpeg]: https://www.ffmpeg.org/
[mkvtoolnix]: https://mkvtoolnix.download/
[mp4v2]: https://github.com/pcwalton/mp4v2
[font-fira-code]: https://github.com/tonsky/FiraCode
[node.js]: http://nodejs.org/
[npm]: https://www.npmjs.org/
[postgres]: http://www.postgresql.org/
[git]: https://git-scm.com
[vim]: https://www.vim.org
[yarn]: https://yarnpkg.com/en/
[zsh]: http://www.zsh.org/
[z]: https://github.com/rupa/z
[nvm]: https://github.com/creationix/nvm
[Google Chrome]: https://www.google.com/chrome/
[Mozilla Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Brave]: https://brave.com
[Tor]: https://www.torproject.org/projects/torbrowser.html
[Raycast]: https://raycast.com/
[Dropbox]: http://dropbox.com/
[Google Drive]: https://www.google.com/drive/download/
[Plex]: https://www.plex.tv/
[Skyfonts]: http://skyfonts.com/
[Color Snapper]: http://colorsnapper.com/
[Sketch]: https://www.sketchapp.com/
[Hyper]: https://hyper.is/
[iterm]: https://www.iterm2.com/
[Codekit]: https://incident57.com/codekit/
[VSCode]: https://code.visualstudio.com/
[Tower]: https://www.git-tower.com/
[Postman]: https://www.getpostman.com/
[Github Desktop]: https://desktop.github.com/
[MAMP]: https://www.mamp.info/en/
[Docker]: https://www.docker.com/
[Kitematic]: https://kitematic.com/
[Transmit]: https://panic.com/transmit/
[VMWare fusion]: https://www.vmware.com/products/fusion
[Virtual Box]: https://www.virtualbox.org/wiki/Downloads
[Mou]: http://25.io/mou/
[GraphQL Playground]: https://www.apollographql.com/docs/apollo-server/testing/graphql-playground/
[Java]: https://www.java.com/en/download/
[Table Plus]: https://tableplus.com
[Slack]: https://slack.com/
[Zoom]: https://zoom.us/
[Pocketcasts]: http://www.shiftyjelly.com/pocketcasts/
[Spotify]: http://www.spotify.com/
[OpenEmu]: http://openemu.org/
[ClipGrab]: https://clipgrab.org/
[VLC]: http://www.videolan.org/vlc/index.html
[VLC Streamer]: http://hobbyistsoftware.com/vlcstreamer
[MuseScore]: https://musescore.org
[Freedom]: https://http://freedom.to
[Gas Mask]: https://github.com/2ndalpha/gasmask
[Cheatsheet]: https://www.cheatsheetapp.com/CheatSheet/
[iStat Menus]: https://bjango.com/mac/istatmenus/
[Arq]: https://arqbackup.com
[Resolutionator]: http://manytricks.com/resolutionator/
[Rectangle]: https://rectangleapp.com/
[Carbon Copy Cloner]: https://bombich.com/
[Super Duper]: http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html
[Teracopy]: https://www.codesector.com/
[Handbrake]: https://handbrake.fr/
[Transmission]: http://www.transmissionbt.com/
[CleanShot]: https://cleanshot.com
[PixelSnap]: https://getpixelsnap.com/
[Rocket]: https://matthewpalmer.net/rocket/
[Screenflow]: http://www.telestream.net/screenflow/overview.htm
[GPG]: https://gpgtools.org/
[1Password]: https://1password.com/
[1Password-CLI]: https://support.1password.com/command-line/
[Authy]: https://authy.com
[Veracrypt]: https://veracrypt.codeplex.com/
[Tunnelblick]: https://www.tunnelblick.net/
[Fantastical]: https://flexibits.com/fantastical
[iHex]: https://itunes.apple.com/us/app/ihex-hex-editor/id909566003?mt=12
[CloudApp]: https://itunes.apple.com/us/app/cloudapp-capture-share-gifs-videos-screencasts/id417602904?mt=12
[Forecast Bar]: https://itunes.apple.com/us/app/forecast-bar-weather-radar-and-alerts/id982710545?mt=12
[Noizio]: https://itunes.apple.com/us/app/noizio/id928871589?mt=12
[Better Rename 9]: https://itunes.apple.com/us/app/better-rename-9/id414209656?mt=12
[The Unarchiver]: https://itunes.apple.com/us/app/the-unarchiver/id425424353?mt=12
[Pocket]: https://itunes.apple.com/us/app/pocket/id568494494?mt=12
[WiFi Explorer]: https://itunes.apple.com/us/app/wifi-explorer/id494803304?mt=12
[Pages]: https://itunes.apple.com/us/app/pages/id409201541?mt=12
[Numbers]: https://apps.apple.com/us/app/numbers/id409203825?mt=12
[Keynote]: https://apps.apple.com/us/app/keynote/id409183694?mt=12
[Tunesify]: https://itunes.apple.com/us/app/tunesify/id412675054?mt=12
[Bear]: https://itunes.apple.com/us/app/bear-beautiful-writing-app-for-notes-and-prose/id1091189122?mt=12
[Yubikey Personalization Tool]: https://itunes.apple.com/us/app/yubikey-personalization-tool/id638161122?mt=12