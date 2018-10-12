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

* [Exuberant Ctags] for indexing files for vim tab completion
* [Git] for version control
* [OpenSSL] for Transport Layer Security (TLS)
* [VIM] for document editing in the command line
* [Zsh] as your shell

Heroku tools:

* [Heroku Toolbelt] and [Parity] for interacting with the Heroku API

Image/Video Tools:

* [ImageMagick] for cropping and resizing images
* [Handbrake CLI] for converting video via CLI
* [ffmpeg] cross platform video conversion
* [mkvtoolnix] matroska tools
* [mp4v2] mp4 tools

Programming languages, package managers, and configuration:

* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [NVM] for managing and installing multiple versions of Node
* [Yarn] for managing JavaScript packages

Databases:

* [Postgres] for storing relational data
* [Redis] for storing key-value data

Brew Cask Applications:

* [Google Chrome] Browser
* [Blisk] Browser
* [Mozilla Firefox] Browser
* [Mozilla Firefox Developer Edition] Browser
* [Opera] Browser
* [Tor] Browser
* [Alfred] for application & file launching
* [Dropbox] for file storage
* [Google Backup & Sync] for file storage
* [Plex] media server for serving local media over the network
* [Balsamiq Mockups] for mocking up wireframes
* [Noun Project] for icon library
* [Skyfonts] for integrating Google Fonts into the system
* [Color Snapper] for selecting colors
* [Sketch] for designing layouts
* [Hyper] as my current Terminal alternative
* [iTerm] alternative terminal
* [MacVim] Vim client for mac
* [CodeKit] Sass, Less, Jade, Haml, Javascript compiler
* [VSCode] for editing code
* [Postman] for making API Requests
* [Paw] for making API Requests
* [Github Desktop] for a nice GUI for git
* [MAMP] for quickly running sites on apache
* [Docker] GUI for running/managing docker containers
* [Kitematic] GUI for running/managing docker containers
* [Transmit] for FTP/SFTP
* [VMWare Fusion] for running virtual machines
* [Virtual Box] for running virtual machines
* [Source Tree] for another nice GUI for git
* [Dash] for local code documentation
* [Mou] Native Mac markdown editor
* [Java] required for Android Dev
* [Postico] for a simple postgres GUI
* [Postgres] for simple postgres setup
* [Navicat For Postgresql] for another postgres GUI
* [Navicat For SQLite] for a SQLite GUI
* [Slack] for chatting with friends, co-workers & clients
* [Google Hangouts] for hanging out with Google
* [Skype] for using the Kleenex of video chat
* [Ghost App] for desktop administration & writing on the Ghost publishing platform
* [Pocketcasts] for listing to podcasts
* [Spotify] for jamming to music
* [Silverlight] for watching Netflix
* [Flash Player] because it won't die
* [Kindle] for reading Kindle books
* [GoPro Studio] for updating my GoPro
* [Clipgrab] for grabbing video clips
* [VLC] for viewing almost any video format
* [VLC Streamer] for streaming almost any video format
* [Audio Hi-Jack] for recording/routing internal audio
* [Loopback] for creating virtual internal I/O audio interfaces
* [Chrome Remote Desktop Host]: for remoting into workstations logged into chrome
* [iStat Menus] for keeping an eye on workstation resources
* [Crashplan] for backup. Better to be safe:)
* [Duet] for having the occasional iPad screen while traveling
* [Resolutionator] for quickly switching screen resolutions
* [Drobo Dashboard] for managing my Drobo
* [Carbon Copy Cloner] for duping the occasional directory/disk
* [Super Duper] for duping the occasional disk
* [Handbrake] for converting video into something usable
* [Transmission] for downloading linux distributions & other large files
* [Google Earth] for looking for places to travel
* [Screenflow] for recording my screen
* [GPG] for keeping prying eyes from reading what they shouldn't
* [1Password] for managing passwords
* [1Password CLI] for accessing 1Password via CLI
* [Tunnel Bear] for OpenVPN privacy on public networks
* [Veracrypt] for encrypting drives
* [Tripmode] for managing network traffic while tethered to mobile devices

Mac App Store Applications:

* [Day One Classic] for note/taking & journaling.
* [Blackmagic Disk Speed Test] for testing the read/write speed of disks
* [Fantastical] for managing my calendar
* [iHex] for viewing file contents in hex
* [CloudApp] for screenshots & filesharing
* [Forecast Bar] for answering the most important question: Is it nice outside?
* [Noizio] for providing ambient sound that is great for coding
* [Better Rename 9] for batch file renaming* [Magnet] for managing windows on your machine
* [Video2GIF] for converting video to the most important file format for social..GIF!
* [The Unarchiver] for unzipping a variety of formats
* [Pocket] for saving articles for reading later
* [Tweetbot] for keeping a close eye on the Twitterverse
* [WiFi Explorer] for seeing all the WiFi in the area
* [Byword] for simple clean Markdown editing
* [Pages] for making pretty "Word" documents
* [Helium] for watching YouTube videos all the time
* [Tunesify] for converting audio files to various formats
* [Audiobook Builder]: for cutting/editing and publishing audio books
* [PageLayers] for clipping websites and creating Photoshop layouts
* [Bear] for clipping articles and taking notes. More simple thatn Evernote
* [YubiKey Personalization Tool] for personalizing Yubikeys
* [Trello] for having a desktop client for Trello

[exuberant ctags]: http://ctags.sourceforge.net/
[heroku toolbelt]: https://toolbelt.heroku.com/
[homebrew]: http://brew.sh/
[imagemagick]: http://www.imagemagick.org/
[handbrake cli]: https://handbrake.fr/docs/en/latest/cli/cli-options.html
[ffmpeg]: https://www.ffmpeg.org/
[mkvtoolnix]: https://mkvtoolnix.download/
[mp4v2]: https://github.com/pcwalton/mp4v2
[node.js]: http://nodejs.org/
[npm]: https://www.npmjs.org/
[postgres]: http://www.postgresql.org/
[git]: https://git-scm.com
[vim]: https://www.vim.org
[heroku toolbelt]: https://toolbelt.heroku.com/
[rbenv]: https://github.com/sstephenson/rbenv
[yarn]: https://yarnpkg.com/en/
[redis]: http://redis.io/
[openssl]: https://www.openssl.org/
[zsh]: http://www.zsh.org/

[nvm]: https://github.com/creationix/nvm


[google chrome]: https://www.google.com/chrome/
[blisk]: https://blisk.io/
[mozilla firefox]: https://www.mozilla.org/en-US/firefox/new/
[mozilla firefox developer edition]: https://www.mozilla.org/en-US/firefox/developer/
[opera]: https://www.opera.com/
[tor]: https://www.torproject.org/projects/torbrowser.html
[alfred]: https://www.alfredapp.com/
[dropbox]: http://dropbox.com/
[google backup & sync]: https://www.google.com/drive/download/
[plex]: https://www.plex.tv/
[balsamiq mockups]: https://balsamiq.com/products/mockups/
[noun project]: https://thenounproject.com/
[skyfonts]: http://skyfonts.com/
[color snapper]: http://colorsnapper.com/
[sketch]: https://www.sketchapp.com/
[hyper]: https://hyper.is/
[iterm]: https://www.iterm2.com/
[macvim]: https://github.com/b4winckler/macvim/releases
[codekit]: https://incident57.com/codekit/
[vscode]: https://code.visualstudio.com/
[postman]: https://www.getpostman.com/
[paw]: https://paw.cloud/
[github desktop]: https://desktop.github.com/
[mamp]: https://www.mamp.info/en/
[docker]: https://www.docker.com/
[kitematic]: https://kitematic.com/
[transmit]: https://panic.com/transmit/
[vmware fusion]: https://www.vmware.com/products/fusion
[virtual box]: https://www.virtualbox.org/wiki/Downloads
[source tree]: https://www.sourcetreeapp.com/
[dash]: https://kapeli.com/dash
[mou]: http://25.io/mou/
[java]: https://www.java.com/en/download/
[postico]: https://eggerapps.at/postico/
[postgres app]: http://postgresapp.com/
[navicat for postgresql]: http://www.navicat.com/products/navicat-for-postgresql/
[navicat for sqlite]: http://www.navicat.com/products/navicat-for-sqlite/
[slack]: https://slack.com/
[google hangouts]: http://hangouts.google.com/
[skype]: http://skype.com/
[ghost app]: https://ghost.org/downloads/
[pocketcasts]: http://www.shiftyjelly.com/pocketcasts/
[spotify]: http://www.spotify.com/
[silverlight]: https://www.microsoft.com/silverlight/
[flash player]: https://get.adobe.com/flashplayer/
[kindle]: https://itunes.apple.com/us/app/kindle/id405399194?mt=12
[gopro studio]: http://shop.gopro.com/softwareandapp/gopro-studio/GoPro-Studio.html
[clipgrab]: https://clipgrab.org/
[vlc]: http://www.videolan.org/vlc/index.html
[vlc streamer]: http://hobbyistsoftware.com/vlcstreamer
[audio hi-jack]: https://www.rogueamoeba.com/audiohijack/
[loopback]: https://www.rogueamoeba.com/loopback/
[chrome remote desktop host]: https://chrome.google.com/webstore/detail/chrome-remote-desktop/gbchcmhmhahfdphkhkmpfmihenigjmpp?hl=en
[istat menus]: https://bjango.com/mac/istatmenus/
[crashplan]: http://www.code42.com/crashplan/
[duet]: http://www.duetdisplay.com/
[resolutionator]: http://manytricks.com/resolutionator/
[drobo dashboard]: http://www.drobo.com/
[carbon copy cloner]: https://bombich.com/
[super duper]: http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html
[handbrake]: https://handbrake.fr/
[transmission]: http://www.transmissionbt.com/
[google earth]: https://www.google.com/earth/
[screenflow]: http://www.telestream.net/screenflow/overview.htm
[gpg]: https://gpgtools.org/
[1password]: https://1password.com/
[1password-cli]: https://support.1password.com/command-line/
[tunnel bear]: https://www.tunnelbear.com/
[tripmode]: http://tripmode.ch/
[veracrypt]: https://veracrypt.codeplex.com/
[day one classic]: http://dayoneapp.com/
[blackmagic disk speed test]: https://itunes.apple.com/us/app/blackmagic-disk-speed-test/id425264550?mt=12
[fantastical]: https://flexibits.com/fantastical
[ihex]: https://itunes.apple.com/us/app/ihex-hex-editor/id909566003?mt=12
[cloudapp]: https://itunes.apple.com/us/app/cloudapp-capture-share-gifs-videos-screencasts/id417602904?mt=12
[forecast bar]: https://itunes.apple.com/us/app/forecast-bar-weather-radar-and-alerts/id982710545?mt=12
[noizio]: https://itunes.apple.com/us/app/noizio/id928871589?mt=12
[better rename 9]: https://itunes.apple.com/us/app/better-rename-9/id414209656?mt=12
[magnet]: https://itunes.apple.com/us/app/magnet/id441258766?mt=12
[video2gif]: https://itunes.apple.com/us/app/video2gif/id672062950?mt=12
[the unarchiver]: https://itunes.apple.com/us/app/the-unarchiver/id425424353?mt=12
[pocket]: https://itunes.apple.com/us/app/pocket/id568494494?mt=12
[tweetbot]: https://tapbots.com/tweetbot/mac/
[wifi explorer]: https://itunes.apple.com/us/app/wifi-explorer/id494803304?mt=12
[byword]: https://itunes.apple.com/us/app/byword/id420212497?mt=12
[pages]: https://itunes.apple.com/us/app/pages/id409201541?mt=12
[helium]: https://itunes.apple.com/us/app/helium/id1054607607?mt=12
[tunesify]: https://itunes.apple.com/us/app/tunesify/id412675054?mt=12
[audiobook builder]: https://itunes.apple.com/us/app/audiobook-builder/id406226796?mt=12
[pagelayers]: https://itunes.apple.com/us/app/page-layers-website-screenshots-with-layers/id437835477?mt=12
[bear]: https://itunes.apple.com/us/app/bear-beautiful-writing-app-for-notes-and-prose/id1091189122?mt=12
[yubikey personalization tool]: https://itunes.apple.com/us/app/yubikey-personalization-tool/id638161122?mt=12
[trello]: https://itunes.apple.com/us/app/trello/id1278508951?mt=12
