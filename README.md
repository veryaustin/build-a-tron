build-a-tron
===================
build-a-tron is a script that sets up a stock OS X machine into a development machine, as well as installs additional applications I use day to day. Special thanks to thoughtbot for their [laptop][lappy] script that handles the initial installation of the development environment.

[lappy]: https://github.com/thoughtbot/laptop

Requirements
--------------
build-a-tron supports the following operating systems:

*  OS X Mavericks (10.9)
*  OS X Yosemite (10.10)

build-a-tron requires Xcode 7.2 or above to install and can be downloaded from the [Mac App Store][appstore] After installing Xcode, make sure launch it and accept the license requirements & finish installing components.

[appstore]: https://itunes.apple.com/us/app/Xcode/id497799835?mt=12

Install
------
Download & execute prep.local:
```
curl --remote-name https://raw.githubusercontent.com/veryaustin/build-a-tron/master/prep.local
sh prep.local
```

After reboot, download & execute install.local
```
curl --remote-name https://raw.githubusercontent.com/veryaustin/build-a-tron/master/install.local
sh install.local
```

What Does It Install?
---------------------
###prep.local

* Sets ComputerName, LocalHostName & HostName to "Computertron"
* Installs Xcode Commandline Tools
* Runs Apple Software Update & applies update
* Restarts Machine

###install.local

* Downloads build-a-tron laptop configuration
* Downloads thoughtbot [laptop][lappy] application
* thoughtbot laptop script sets up the following (pulled from thoughtbot documentation):
  * [Bundler] for managing Ruby libraries
  * [Exuberant Ctags] for indexing files for vim tab completion
  * [Foreman] for managing web processes
  * [hub] for interacting with the GitHub API
  * [Heroku Toolbelt] for interacting with the Heroku API
  * [Homebrew] for managing operating system libraries
  * [ImageMagick] for cropping and resizing images
  * [Node.js] and [NPM], for running apps and installing JavaScript packages
  * [Postgres] for storing relational data
  * [Qt] for headless JavaScript testing via Capybara Webkit
  * [Rbenv] for managing versions of Ruby
  * [RCM] for managing company and personal dotfiles
  * [Redis] for storing key-value data
  * [Ruby Build] for installing Rubies
  * [Ruby] stable for writing general-purpose code
  * [The Silver Searcher] for finding things in files
  * [Tmux] for saving project state and switching between projects
  * [Zsh] as your shell

* build-a-tron laptop configuration sets up the following:
  * [Google Chrome] Browser
  * [Blisk] Browser
  * [Mozilla Firefox] Browser
  * [Tor] Browser
  * [Alfred] for application & file launching
  * [Dropbox] for file storage
  * [Google Drive] for file storage
  * [Google Photos] for photo backup
  * [Plex] media server for serving local media over the network
  * [Evernote] for note taking/resource clipping
  * [Balsamiq Mockups] for mocking up wireframes
  * [Ember] for clipping design elements
  * [Noun Project] for icon library
  * [Skyfonts] for integrating Google Fonts into the system
  * [Color Snapper] for selecting colors
  * [Adobe Illustrator] for the AI files
  * [Sketch] for designing layouts
  * [iTerm] Terminal alternative
  * [MacVim] Vim client for mac
  * [CodeKit] Sass, Less, Jade, Haml, Javascript compiler
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
  * [Chrome Remote Desktop Host]: for remoting into workstations logged into chrome
  * [Hazel]: for automating & keeping my workstation clean
  * [iStat Menus] for keeping an eye on workstation resources
  * [Fantastical] for quick viewing/scheduling meetings/appointments
  * [CrashPlan] for keeping my data backed up
  * [Duet]: for having the occasional iPad screen while traveling
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
  * [A Better Finder Rename] for batch renaming files
  * [Yubico Authenticator] for Authenticating with a Yubikey
  * [Yubico Yubikey Personalization GUI]: for personalizing a Yubikey
  * [LastPass] for managing passwords
  * [Tripmode] for managing network traffic while tethered to mobile devices
  * Specialized Software:
    * If secure storage USB key is mounted, copy specialized application, SSH keys & Alfred License
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
[Qt]: http://qt-project.org/
[Rbenv]: https://github.com/sstephenson/rbenv
[RCM]: https://github.com/thoughtbot/rcm
[Redis]: http://redis.io/
[Ruby Build]: https://github.com/sstephenson/ruby-build
[Ruby]: https://www.ruby-lang.org/en/
[The Silver Searcher]: https://github.com/ggreer/the_silver_searcher
[Tmux]: http://tmux.sourceforge.net/
[Zsh]: http://www.zsh.org/

[Google Chrome]: https://www.google.com/chrome/
[Blisk]: https://blisk.io/
[Mozilla Firefox]: https://www.mozilla.org/en-US/firefox/new/
[Tor]: https://www.torproject.org/projects/torbrowser.html
[Alfred]: https://www.alfredapp.com/
[Dropbox]: http://dropbox.com/
[Google Drive]: http://drive.google.com/
[Google Photos]: http://photos.google.com
[Plex]: https://www.plex.tv/
[Evernote]: http://www.evernote.com
[Balsamiq Mockups]: https://balsamiq.com/products/mockups/
[Ember]: http://realmacsoftware.com/ember/
[Noun Project]: https://thenounproject.com/
[Skyfonts]: http://skyfonts.com/
[Color Snapper]: http://colorsnapper.com/
[Adobe Illustrator]: http://www.adobe.com/products/illustrator.html
[Sketch]: https://www.sketchapp.com/
[iTerm]: https://www.iterm2.com/
[MacVim]: https://github.com/b4winckler/macvim/releases
[CodeKit]: https://incident57.com/codekit/
[Atom]: http://www.atom.io/
[Postman]: https://www.getpostman.com/
[Paw]: https://paw.cloud/
[Github Desktop]: https://desktop.github.com/
[MAMP]: https://www.mamp.info/en/
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
[A Better Finder Rename]: http://www.publicspace.net/ABetterFinderRename/
[Yubico Authenticator]: https://developers.yubico.com/yubioath-desktop/
[Yubico Yubikey Personalization GUI]: https://www.yubico.com/products/services-software/personalization-tools/use/
[LastPass]: https://lastpass.com/
[Flux]: https://justgetflux.com/
[Tripmode]: http://tripmode.ch/
