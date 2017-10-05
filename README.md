build-a-tron is a script that sets up a stock OS X machine into a development machine, as well as installs additional applications I use day to day. Special thanks to thoughtbot for their [laptop][lappy] script that handles the initial installation of the development environment.

[lappy]: https://github.com/thoughtbot/laptop

Requirements
--------------
build-a-tron supports the following operating systems:

*  macOS Mavericks (10.9)
*  macOS Yosemite (10.10)
*  macOS El Capitan (10.11)
*  macOS Sierra (10.12)

Install
------
Clone repo to Home directory:
```
git clone https://github.com/veryaustin/build-a-tron.git 
```

Execute prep.local:
```
sh prep.local
```

After reboot, download & execute install.local
```
sh install.local
```

What Does It Install?
---------------------
### prep.local

* Sets ComputerName, LocalHostName & HostName to "Computertron"
* Installs Xcode Tools (From Secure External Storage)
* Runs Apple Software Update & applies update
* Restarts Machine

### install.local

* Downloads build-a-tron laptop configuration
* Downloads thoughtbot [laptop][lappy] application
* thoughtbot laptop script sets up the following (pulled from thoughtbot documentation):
macOS tools:
* [Homebrew] for managing operating system libraries.

Unix tools:
* [Exuberant Ctags] for indexing files for vim tab completion
* [Git] for version control
* [OpenSSL] for Transport Layer Security (TLS)
* [RCM] for managing company and personal dotfiles
* [The Silver Searcher] for finding things in files
* [Tmux] for saving project state and switching between projects
* [Watchman] for watching for filesystem events
* [Zsh] as your shell

[Exuberant Ctags]: http://ctags.sourceforge.net/
[Git]: https://git-scm.com/
[OpenSSL]: https://www.openssl.org/
[RCM]: https://github.com/thoughtbot/rcm
[The Silver Searcher]: https://github.com/ggreer/the_silver_searcher
[Tmux]: http://tmux.github.io/
[Watchman]: https://facebook.github.io/watchman/
[Zsh]: http://www.zsh.org/

Heroku tools:

* [Heroku Toolbelt] and [Parity] for interacting with the Heroku API

[Heroku Toolbelt]: https://toolbelt.heroku.com/
[Parity]: https://github.com/thoughtbot/parity

GitHub tools:

* [Hub] for interacting with the GitHub API

[Hub]: http://hub.github.com/

Image tools:

* [ImageMagick] for cropping and resizing images

Testing tools:

* [Qt 5] for headless JavaScript testing via [Capybara Webkit]

Programming languages, package managers, and configuration:
* [Bundler] for managing Ruby libraries
* [Node.js] and [NPM], for running apps and installing JavaScript packages
* [Rbenv] for managing versions of Ruby
* [Ruby Build] for installing Rubies
* [Ruby] stable for writing general-purpose code
* [Yarn] for managing JavaScript packages

Databases:
* [Postgres] for storing relational data
* [Redis] for storing key-value data

* build-a-tron laptop configuration sets up the following Desktop applications:
  * Brew Cask Applications
    * [Google Chrome] Browser
    * [Blisk] Browser
    * [Mozilla Firefox] Browser
    * [Tor] Browser
    * [Alfred] for application & file launching
    * [Dropbox] for file storage
    * [Google Backup & Sync] for file storage
    * [Plex] media server for serving local media over the network
    * [Evernote] for note taking/resource clipping
    * [Balsamiq Mockups] for mocking up wireframes
    * [Noun Project] for icon library
    * [Skyfonts] for integrating Google Fonts into the system
    * [Color Snapper] for selecting colors
    * [Adobe Illustrator] for the AI files
    * [Sketch] for designing layouts
    * [Hyper] as my current Terminal alternative
    * [iTerm] alternative terminal
    * [MacVim] Vim client for mac
    * [CodeKit] Sass, Less, Jade, Haml, Javascript compiler
    * [VSCode] for editing code
    * [Atom] for editing code
    * [Postman] for making API Requests
    * [Paw] for making API Requests
    * [Github Desktop] for a nice GUI for git
    * [MAMP] for quickly running sites on apache
    * [Kitematic] GUI for running docker containers
    * [Transmit] for FTP/SFTP
    * [VMWare Fusion] for running virtual machines
    * [Virtual Box] for running virtual machines
    * [Source Tree] for another nice GUI for git
    * [Dash] for local code documentation
    * [Java] for the occasional app that needs it
    * [Elasticsearch] for running elasticsearch of all things
    * [Mou] Native Mac markdown editor
    * [NVM] Node Version Manager
    * [Postgres App] for a simple standalone Postgres server
    * [Postico] for a simple postgres GUI
    * [Navicat For SQLite] for a SQLite GUI
    * [Navicat For Postgresql] for another postgres GUI
    * [Slack] for chatting with friends, co-workers & clients
    * [Adium] for jabber chat
    * [Google Hangouts] for hanging out with Google
    * [Skype] for using the Kleenex of video chat
    * [Join Me] for adhoc meetings and troubleshooting sessions
    * [Ghost App] for desktop administration & writing on the Ghost publishing platform
    * [Pocketcasts] for listing to podcasts
    * [Spotify] for jamming to music
    * [Silverlight] for watching Netflix
    * [Flash Player] because it won't die
    * [Flux] for turning down the blue light
    * [Kindle] for reading Kindle books
    * [GoPro Studio] for updating my GoPro
    * [Clipgrab] for grabbing video clips
    * [VLC] for viewing almost any video format
    * [VLC Streamer] for streaming almost any video format
    * [Audio Hi-Jack] for recording/routing internal audio
    * [Loopback] for creating virtual internal I/O audio interfaces
    * [Chrome Remote Desktop Host]: for remoting into workstations logged into chrome
    * [Hazel] for automating & keeping my workstation clean
    * [iStat Menus] for keeping an eye on workstation resources
    * [Fantastical] for quick viewing/scheduling meetings/appointments
    * [Duet] for having the occasional iPad screen while traveling
    * [Resolutionator] for quickly switching screen resolutions
    * [Drobo Dashboard] for managing my Drobo
    * [Carbon Copy Cloner] for duping the occasional directory/disk
    * [Super Duper] for duping the occasional disk
    * [Handbrake] for converting video into something usable
    * [Transmission] for downloading linux distributions & other large files
    * [Google Earth] for looking for places to travel
    * [The Unarchiver] for unziping most compressed files
    * [Screenflow] for recording my screen
    * [GPG] for keeping prying eyes from reading what they shouldn't
    * [LastPass] for managing passwords
    * [Tunnel Bear] for OpenVPN privacy on public networks
    * [Veracrypt] for encrypting drives
    * [Tripmode] for managing network traffic while tethered to mobile devices
  
  * Mac App Store Applications:
    * [Day One Classic] for note/taking & journaling.
    * [Blackmagic Disk Speed Test] for testing the read/write speed of disks
    * [Fantastical] for managing my calendar
    * [iHex] for viewing file contents in hex
    * [CloudApp] for screenshots & filesharing
    * [Forecast Bar] for answering the most important question: Is it nice outsite?
    * [Noizio] for providing ambient sound that is great for coding
    * [Better Rename 9] for batch file renaming
    * [Magnet] for managing windows on your machine
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
    * [FocusList] for clipping articles and taking notes. More simple thatn Evernote
    * [LastPass App] for managing passwords
    * [YubiKey Personalization Tool] for personalizing Yubikeys
    * [Trello] for having a desktop client for Trello
  
  * Specialized Software:
    * If secure storage USB key is mounted, copy specialized applications, keys & additional software licenses
* Clone & install thoughtbot dotfiles repo
* Clone & install personal dotfiles from repo & configures them to be used
* Removes thoughtbot mac file



[Bundler]: http://bundler.io/
[Exuberant Ctags]: http://ctags.sourceforge.net/
[Foreman]: https://github.com/ddollar/foreman
[hub]: http://hub.github.com/
[Heroku Toolbelt]: https://toolbelt.heroku.com/
[Homebrew]: http://brew.sh/
[ImageMagick]: http://www.imagemagick.org/
[Node.js]: http://nodejs.org/
[NPM]: https://www.npmjs.org/
[Postgres]: http://www.postgresql.org/
[Qt 5]: http://qt-project.org/
[Git]: https://git-scm.com
[Hub]: http://hub.github.com/
[Heroku Toolbelt]: https://toolbelt.heroku.com/
[Parity]: https://github.com/thoughtbot/parity/
[Rbenv]: https://github.com/sstephenson/rbenv
[Yarn]: https://yarnpkg.com/en/
[RCM]: https://github.com/thoughtbot/rcm
[Redis]: http://redis.io/
[Ruby Build]: https://github.com/sstephenson/ruby-build
[Ruby]: https://www.ruby-lang.org/en
[Capybara Webkit]: https://github.com/thoughtbot/capybara-webki
[The Silver Searcher]: https://github.com/ggreer/the_silver_searcher
[Tmux]: http://tmux.sourceforge.net/
[OpenSSL]: https://www.openssl.org/
[RCM]: https://github.com/thoughtbot/rcm
[Watchman]: https://facebook.github.io/watchman/
[Zsh]: http://www.zsh.org/
[Google Chrome]: https://www.google.com/chrome/
[Blisk]: https://blisk.io/
[Mozilla Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Tor]: https://www.torproject.org/projects/torbrowser.html
[Alfred]: https://www.alfredapp.com/
[Dropbox]: http://dropbox.com/
[Google Backup & Sync]: https://www.google.com/drive/download/
[Plex]: https://www.plex.tv/
[Evernote]: http://www.evernote.com
[Balsamiq Mockups]: https://balsamiq.com/products/mockups/
[Noun Project]: https://thenounproject.com/
[Skyfonts]: http://skyfonts.com/
[Color Snapper]: http://colorsnapper.com/
[Adobe Illustrator]: http://www.adobe.com/products/illustrator.html
[Sketch]: https://www.sketchapp.com/
[Hyper]: https://hyper.is/
[iTerm]: https://www.iterm2.com/
[MacVim]: https://github.com/b4winckler/macvim/releases
[CodeKit]: https://incident57.com/codekit/
[VSCode]: https://code.visualstudio.com/
[Atom]: http://www.atom.io/
[Postman]: https://www.getpostman.com/
[Paw]: https://paw.cloud/
[Github Desktop]: https://desktop.github.com/
[MAMP]: https://www.mamp.info/en/
[Kitematic]: https://kitematic.com/
[Transmit]: https://panic.com/transmit/
[VMWare Fusion]: https://www.vmware.com/products/fusion
[Virtual Box]: https://www.virtualbox.org/wiki/Downloads
[Source Tree]: https://www.sourcetreeapp.com/
[Dash]: https://kapeli.com/dash
[Java]: https://www.java.com/en/download/
[Elasticsearch]: https://www.elastic.co/
[Mou]: http://25.io/mou/
[NVM]: https://github.com/creationix/nvm
[Postgres App]: http://postgresapp.com/
[Postico]: https://eggerapps.at/postico/
[Navicat For SQLite]: http://www.navicat.com/products/navicat-for-sqlite/
[Navicat For Postgresql]: http://www.navicat.com/products/navicat-for-postgresql/
[Slack]: https://slack.com/
[Adium]: https://adium.im/
[Google Hangouts]: http://hangouts.google.com/
[Skype]: http://skype.com/
[Join Me]: http://join.me/
[Ghost App]: https://ghost.org/downloads/
[Pocketcasts]: http://www.shiftyjelly.com/pocketcasts/
[Spotify]: http://www.spotify.com/
[Silverlight]: https://www.microsoft.com/silverlight/
[Flash Player]: https://get.adobe.com/flashplayer/
[Music Manager]: https://play.google.com/music/listen?u=0#/manager/
[Kindle]: https://itunes.apple.com/us/app/kindle/id405399194?mt=12
[GoPro Studio]: http://shop.gopro.com/softwareandapp/gopro-studio/GoPro-Studio.html
[Clipgrab]: https://clipgrab.org/
[VLC]: http://www.videolan.org/vlc/index.html
[VLC Streamer]: http://hobbyistsoftware.com/vlcstreamer
[Chrome Remote Desktop Host]: https://chrome.google.com/webstore/detail/chrome-remote-desktop/gbchcmhmhahfdphkhkmpfmihenigjmpp?hl=en
[Hazel]: https://www.noodlesoft.com/hazel.php
[iStat Menus]: https://bjango.com/mac/istatmenus/
[Fantastical]: https://flexibits.com/fantastical
[CrashPlan]: http://www.code42.com/crashplan/
[Duet]: http://www.duetdisplay.com/
[Resolutionator]: http://manytricks.com/resolutionator/
[Drobo Dashboard]: http://www.drobo.com/
[Carbon Copy Cloner]: https://bombich.com/
[Super Duper]: http://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html
[Handbrake]: https://handbrake.fr/
[Transmission]: http://www.transmissionbt.com/
[Google Earth]: https://www.google.com/earth/
[The Unarchiver]: http://unarchiver.c3.cx/
[Screenflow]: http://www.telestream.net/screenflow/overview.htm
[GPG]: https://gpgtools.org/
[LastPass]: https://lastpass.com/
[Tunnel Bear]: https://www.tunnelbear.com/
[Flux]: https://justgetflux.com/
[Tripmode]: http://tripmode.ch/
[Audio Hi-Jack]: https://www.rogueamoeba.com/audiohijack/
[Loopback]: https://www.rogueamoeba.com/loopback/
[Veracrypt]: https://veracrypt.codeplex.com/
[Tunnel Bear]: https://www.tunnelbear.com/



[Day One Classic]: http://dayoneapp.com/
[Blackmagic Disk Speed Test]: https://itunes.apple.com/us/app/blackmagic-disk-speed-test/id425264550?mt=12
[Fantastical]: https://flexibits.com/fantastical
[iHex]: https://itunes.apple.com/us/app/ihex-hex-editor/id909566003?mt=12
[CloudApp]: https://itunes.apple.com/us/app/cloudapp-capture-share-gifs-videos-screencasts/id417602904?mt=12
[Forecast Bar]: https://itunes.apple.com/us/app/forecast-bar-weather-radar-and-alerts/id982710545?mt=12
[Noizio]: https://itunes.apple.com/us/app/noizio/id928871589?mt=12
[Better Rename 9]: https://itunes.apple.com/us/app/better-rename-9/id414209656?mt=12
[Magnet]: https://itunes.apple.com/us/app/magnet/id441258766?mt=12
[Video2GIF]: https://itunes.apple.com/us/app/video2gif/id672062950?mt=12
[The Unarchiver]: https://itunes.apple.com/us/app/the-unarchiver/id425424353?mt=12
[Pocket]: https://itunes.apple.com/us/app/pocket/id568494494?mt=12
[Tweetbot]: https://tapbots.com/tweetbot/mac/
[WiFi Explorer]: https://itunes.apple.com/us/app/wifi-explorer/id494803304?mt=12
[Byword]: https://itunes.apple.com/us/app/byword/id420212497?mt=12
[Pages]: https://itunes.apple.com/us/app/pages/id409201541?mt=12
[Helium]: https://itunes.apple.com/us/app/helium/id1054607607?mt=12
[Tunesify]: https://itunes.apple.com/us/app/tunesify/id412675054?mt=12
[Audiobook Builder]: https://itunes.apple.com/us/app/audiobook-builder/id406226796?mt=12
[PageLayers]: https://itunes.apple.com/us/app/page-layers-website-screenshots-with-layers/id437835477?mt=12
[Bear]: https://itunes.apple.com/us/app/bear-beautiful-writing-app-for-notes-and-prose/id1091189122?mt=12
[FocusList]: https://itunes.apple.com/us/app/focuslist-focus-timer-and-daily-planner/id1086877679?mt=12
[LastPass App]: https://itunes.apple.com/us/app/lastpass-password-manager-and-secure-vault/id926036361?mt=12
[YubiKey Personalization Tool]: https://itunes.apple.com/us/app/yubikey-personalization-tool/id638161122?mt=12
[Trello]: https://itunes.apple.com/us/app/trello/id1278508951?mt=12
