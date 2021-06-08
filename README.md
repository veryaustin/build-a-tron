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
* [zsh] as your shell
* [z] for search for ZSH


Heroku tools:

* [Heroku Toolbelt] and [Parity] for interacting with the Heroku API

Quicklook:

* [Quicklook Plugins] for viewing code, csv and additional documents via MacOS Quicklook

Image/Video Tools:

* [ImageMagick] for cropping and resizing images
* [Handbrake CLI] for converting video via CLI
* [ffmpeg] cross platform video conversion
* [mkvtoolnix] matroska tools
* [mp4v2] mp4 tools

Fonts
* [font-fira-code] Font: Fira Code

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
* [Brave] Browser
* [Opera] Browser
* [Tor] Browser
* [Raycast] for application & file launching
* [Dropbox] for file storage
* [Google Backup & Sync] for file storage
* [Plex] media server for serving local media over the network
* [Balsamiq Mockups] for mocking up wireframes
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
* [GraphQL Playground] for GraphQL GUI
* [Notion] for clipping articles and taking notes. Comparing with BearApp
* [Java] required for Android Dev
* [Postico] for a simple postgres GUI
* [Postgres] for simple postgres setup
* [Table Plus] for another database GUI
* [Slack] for chatting with friends, co-workers & clients
* [Rocket Chat] for chatting with friends using open-source team communication app
* [Skype] for using the Kleenex of video chat
* [Zoom] for remote meetings
* [Pocketcasts] for listing to podcasts
* [Spotify] for jamming to music
* [OpenEmu] for old school gaming fun
* [GoPro Studio] for updating my GoPro
* [Clipgrab] for grabbing video clips
* [VLC] for viewing almost any video format
* [VLC Streamer] for streaming almost any video format
* [iINA] for streaming almost any video format
* [Audio Hi-Jack] for recording/routing internal audio
* [Loopback] for creating virtual internal I/O audio interfaces
* [Sound Source] for internal OS audio mixing
* [MuseScore] for writing down musical notes
* [Freedom] for getting focus in a distracted digital world. Focus!
* [Gas Mask] A GUI for managing hosts file
* [Rectangle] for managing windows
* [iStat Menus] for keeping an eye on workstation resources
* [Arq] for backup. Better to be safe:)
* [Resolutionator] for quickly switching screen resolutions
* [Carbon Copy Cloner] for duping directories/disks
* [Super Duper] for duping the occasional disk
* [Handbrake] for converting video into something usable
* [Transmission] for downloading linux distributions & other large files
* [CleanShot] for clean shot...screen shots!
* [Screenflow] for recording my screen
* [GPG] for keeping prying eyes from reading what they shouldn't
* [1Password] for managing passwords
* [1Password CLI] for accessing 1Password via CLI
* [Authy] for two-factor authentication
* [Veracrypt] for encrypting drives
* [Tripmode] for managing network traffic while tethered to mobile devices

Mac App Store Applications:

* [Blackmagic Disk Speed Test] for testing the read/write speed of disks
* [Fantastical] for managing my calendar
* [iHex] for viewing file contents in hex
* [CloudApp] for screenshots & filesharing
* [Forecast Bar] for answering the most important question: Is it nice outside?
* [Noizio] for providing ambient sound that is great for coding
* [Better Rename 9] for batch file renaming
* [Video2GIF] for converting video to the most important file format for social..GIF!
* [The Unarchiver] for unzipping a variety of formats
* [Pocket] for saving articles for reading later
* [Tweetbot] for keeping a close eye on the Twitterverse
* [WiFi Explorer] for seeing all the WiFi in the area
* [Pages] for making pretty "Word" documents
* [Tunesify] for converting audio files to various formats
* [PageLayers] for clipping websites and creating Photoshop layouts
* [Bear] for clipping articles and taking notes. More simple that Evernote
* [YubiKey Personalization Tool] for personalizing Yubikeys
* [Trello] for having a desktop client for Trello
* [Teracopy] for duping directories/disks

[exuberant ctags]: http://ctags.sourceforge.net/
[heroku toolbelt]: https://toolbelt.heroku.com/
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
[heroku toolbelt]: https://toolbelt.heroku.com/
[rbenv]: https://github.com/sstephenson/rbenv
[yarn]: https://yarnpkg.com/en/
[redis]: http://redis.io/
[openssl]: https://www.openssl.org/
[zsh]: http://www.zsh.org/
[z]: https://github.com/rupa/z
[nvm]: https://github.com/creationix/nvm


[Google Chrome]: https://www.google.com/chrome/
[Blisk]: https://blisk.io/
[Mozilla Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Mozilla Firefox Developer Edition]: https://www.mozilla.org/en-US/firefox/developer/
[Brave]: https://brave.com
[Opera]: https://www.opera.com/
[Tor]: https://www.torproject.org/projects/torbrowser.html
[Raycast]: https://raycast.com/
[Dropbox]: http://dropbox.com/
[Google Backup & Sync]: https://www.google.com/drive/download/
[Plex]: https://www.plex.tv/
[Balsamiq Mockups]: https://balsamiq.com/products/mockups/
[Skyfonts]: http://skyfonts.com/
[Color Snapper]: http://colorsnapper.com/
[Sketch]: https://www.sketchapp.com/
[Iconjar]: https://geticonjar.com
[Hyper]: https://hyper.is/
[iterm]: https://www.iterm2.com/
[Macvim]: https://github.com/b4winckler/macvim/releases
[Codekit]: https://incident57.com/codekit/
[VSCode]: https://code.visualstudio.com/
[Postman]: https://www.getpostman.com/
[Paw]: https://paw.cloud/
[Github Desktop]: https://desktop.github.com/
[MAMP]: https://www.mamp.info/en/
[Docker]: https://www.docker.com/
[Kitematic]: https://kitematic.com/
[Transmit]: https://panic.com/transmit/
[VMWare fusion]: https://www.vmware.com/products/fusion
[Virtual Box]: https://www.virtualbox.org/wiki/Downloads
[Source Tree]: https://www.sourcetreeapp.com/
[Dash]: https://kapeli.com/dash
[Mou]: http://25.io/mou/
[GraphQL Playground]: https://www.apollographql.com/docs/apollo-server/testing/graphql-playground/
[Notion]: https://notion.so
[Java]: https://www.java.com/en/download/
[Postico]: https://eggerapps.at/postico/
[Postgres App]: http://postgresapp.com/
[Table Plus]: https://tableplus.com
[Slack]: https://slack.com/
[Rocket Chat]: https://rocket.chat/
[Skype]: http://skype.com/
[Zoom]: https://zoom.us/
[Pocketcasts]: http://www.shiftyjelly.com/pocketcasts/
[Spotify]: http://www.spotify.com/
[OpenEmu]: http://openemu.org/
[GoPro Studio]: http://shop.gopro.com/softwareandapp/gopro-studio/GoPro-Studio.html
[ClipGrab]: https://clipgrab.org/
[VLC]: http://www.videolan.org/vlc/index.html
[VLC Streamer]: http://hobbyistsoftware.com/vlcstreamer
[iINA]: https://iina.io/
[Audio Hi-Jack]: https://www.rogueamoeba.com/audiohijack/
[Loopback]: https://www.rogueamoeba.com/loopback/
[Sound Source]: https://rogueamoeba.com/soundsource/
[MuseScore]: https://musescore.org
[Freedom]: https://http://freedom.to
[Gas Mask]: https://github.com/2ndalpha/gasmask
[iStat Menus]: https://bjango.com/mac/istatmenus/
[Arq]: https://arqbackup.com
[Resolutionator]: http://manytricks.com/resolutionator/
[Carbon Copy Cloner]: https://bombich.com/
[Super Duper]: http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html
[Teracopy]: https://www.codesector.com/
[Handbrake]: https://handbrake.fr/
[Transmission]: http://www.transmissionbt.com/
[CleanShot]: https://cleanshot.com
[Screenflow]: http://www.telestream.net/screenflow/overview.htm
[Rectangle]: https://rectangleapp.com/
[GPG]: https://gpgtools.org/
[1Password]: https://1password.com/
[1Password-CLI]: https://support.1password.com/command-line/
[Authy]: https://authy.com
[Tripmode]: http://tripmode.ch/
[Veracrypt]: https://veracrypt.codeplex.com/
[Fantastical]: https://flexibits.com/fantastical
[iHex]: https://itunes.apple.com/us/app/ihex-hex-editor/id909566003?mt=12
[CloudApp]: https://itunes.apple.com/us/app/cloudapp-capture-share-gifs-videos-screencasts/id417602904?mt=12
[Forecast Bar]: https://itunes.apple.com/us/app/forecast-bar-weather-radar-and-alerts/id982710545?mt=12
[Noizio]: https://itunes.apple.com/us/app/noizio/id928871589?mt=12
[Better Rename 9]: https://itunes.apple.com/us/app/better-rename-9/id414209656?mt=12
[Video2GIF]: https://itunes.apple.com/us/app/video2gif/id672062950?mt=12
[The Unarchiver]: https://itunes.apple.com/us/app/the-unarchiver/id425424353?mt=12
[Pocket]: https://itunes.apple.com/us/app/pocket/id568494494?mt=12
[Tweetbot]: https://tapbots.com/tweetbot/mac/
[WiFi Explorer]: https://itunes.apple.com/us/app/wifi-explorer/id494803304?mt=12
[Pages]: https://itunes.apple.com/us/app/pages/id409201541?mt=12
[Tunesify]: https://itunes.apple.com/us/app/tunesify/id412675054?mt=12
[Pagelayers]: https://itunes.apple.com/us/app/page-layers-website-screenshots-with-layers/id437835477?mt=12
[Bear]: https://itunes.apple.com/us/app/bear-beautiful-writing-app-for-notes-and-prose/id1091189122?mt=12
[Yubikey Personalization Tool]: https://itunes.apple.com/us/app/yubikey-personalization-tool/id638161122?mt=12
[Trello]: https://itunes.apple.com/us/app/trello/id1278508951?mt=12
