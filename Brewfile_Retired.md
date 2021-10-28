---------------------------------------------
# Brewfile (Ruby Formatted)
---------------------------------------------

# Taps
tap "buo/cask-upgrade"
tap "caskroom/cask"
tap "caskroom/versions"
tap "ethereum/ethereum"

# Unix
brew "ctags"
brew "openssl"
brew "vim"
brew "z"

# Heroku
brew "heroku-toolbelt"

# Quicklook Plugins
brew "qlcolorcode"
brew "qlstephen"
brew "qlprettypatch"
brew "quicklook-csv"
brew "betterzipql"

# Databases
brew "postgres", restart_service: true
brew "redis", restart_service: true

# Homebrew Cask Installs
# Browsers
cask "blisk"
cask "caskroom/versions/firefox-developer-edition"
cask "opera"

# Productivity
cask "notion"

# Design
cask "balsamiq-mockups"
cask "iconjar"

# Development
cask "macvim"
cask "paw"
cask "sourcetree"
cask "dash"
cask "mou"

# Database
cask "postgres"
cask "postico"

# Communication
cask "rocket-chat"
cask "skype"

# Media/Entertainment
cask "openemu"
cask "gopro-studio"
cast "iina"

# Utilities
cask "tripmode"
cask "audio-hijack"
cask "loopback"
cask "soundsource"

# Mac App Store Installs
mas "Blackmagic Disk Speed Test", id: 425264550
mas "Video2GIF", id: 672062950
mas "Tweetbot", id: 557168941
mas "PageLayers", id: 437835477
mas "Trello", id: 1278508951


---------------------------------------------
# READEME DOCUMENTATION (Markdown Formatted)
---------------------------------------------

# Unix Tools:
<!-- * [Exuberant Ctags] for indexing files for vim tab completion -->
<!-- * [VIM] for document editing in the command line -->
<!-- * [z] for search for ZSH -->

# Heroku tools:
<!-- * [Heroku Toolbelt] and [Parity] for interacting with the Heroku API -->

# Databases:
<!-- * [Postgres] for storing relational data -->
<!-- * [Redis] for storing key-value data -->

# Brew Cask Applications:
<!-- * [Blisk] Browser -->
<!-- * [Mozilla Firefox Developer Edition] Browser -->
<!-- * [Opera] Browser -->
<!-- * [Balsamiq Mockups] for mocking up wireframes -->
<!-- * [MacVim] Vim client for mac -->
<!-- * [Paw] for making API Requests -->
<!-- * [Source Tree] for another nice GUI for git -->
<!-- * [Dash] for local code documentation -->
<!-- * [Mou] Native Mac markdown editor -->
<!-- * [Notion] for clipping articles and taking notes. Comparing with BearApp -->
<!-- * [Postico] for a simple postgres GUI
* [Postgres] for simple postgres setup -->
<!-- * [Rocket Chat] for chatting with friends using open-source team communication app -->
<!-- * [Skype] for using the Kleenex of video chat -->
<!-- * [OpenEmu] for old school gaming fun -->
<!-- * [GoPro Studio] for updating my GoPro -->
<!-- * [iINA] for streaming almost any video format -->
<!-- * [Audio Hi-Jack] for recording/routing internal audio -->
<!-- * [Loopback] for creating virtual internal I/O audio interfaces -->
<!-- * [Sound Source] for internal OS audio mixing -->
<!-- * [Tripmode] for managing network traffic while tethered to mobile devices -->

# Mac App Store Applications:
<!-- * [Blackmagic Disk Speed Test] for testing the read/write speed of disks -->
<!-- * [Video2GIF] for converting video to the most important file format for social..GIF! -->
<!-- * [Tweetbot] for keeping a close eye on the Twitterverse -->
<!-- * [PageLayers] for clipping websites and creating Photoshop layouts -->
<!-- * [Trello] for having a desktop client for Trello -->


--------------------------------------------------
# READEME DOCUMENTATION LINKS (Markdown Formatted)
--------------------------------------------------
<!-- [exuberant ctags]: http://ctags.sourceforge.net/ -->
<!-- [heroku toolbelt]: https://toolbelt.heroku.com/ -->
<!-- [heroku toolbelt]: https://toolbelt.heroku.com/ -->
<!-- [rbenv]: https://github.com/sstephenson/rbenv -->
<!-- [redis]: http://redis.io/ -->
<!-- [openssl]: https://www.openssl.org/ -->
<!-- [z]: https://github.com/rupa/z -->
<!-- [Blisk]: https://blisk.io/ -->
<!-- [Mozilla Firefox Developer Edition]: https://www.mozilla.org/en-US/firefox/developer/ -->
<!-- [Opera]: https://www.opera.com/ -->
<!-- [Balsamiq Mockups]: https://balsamiq.com/products/mockups/ -->
<!-- [Iconjar]: https://geticonjar.com -->
<!-- [Macvim]: https://github.com/b4winckler/macvim/releases -->
<!-- [Paw]: https://paw.cloud/ -->
<!-- [Source Tree]: https://www.sourcetreeapp.com/ -->
<!-- [Dash]: https://kapeli.com/dash -->
<!-- [Notion]: https://notion.so -->
<!-- [Postico]: https://eggerapps.at/postico/ -->
<!-- [Postgres App]: http://postgresapp.com/ -->
<!-- [Rocket Chat]: https://rocket.chat/ -->
<!-- [Skype]: http://skype.com/ -->
<!-- [GoPro Studio]: http://shop.gopro.com/softwareandapp/gopro-studio/GoPro-Studio.html -->
<!-- [iINA]: https://iina.io/ -->
<!-- [Audio Hi-Jack]: https://www.rogueamoeba.com/audiohijack/ -->
<!-- [Loopback]: https://www.rogueamoeba.com/loopback/ -->
<!-- [Sound Source]: https://rogueamoeba.com/soundsource/ -->
<!-- [Tripmode]: http://tripmode.ch/ -->
<!-- [Video2GIF]: https://itunes.apple.com/us/app/video2gif/id672062950?mt=12 -->
<!-- [Tweetbot]: https://tapbots.com/tweetbot/mac/ -->
<!-- [Pagelayers]: https://itunes.apple.com/us/app/page-layers-website-screenshots-with-layers/id437835477?mt=12 -->
<!-- [Trello]: https://itunes.apple.com/us/app/trello/id1278508951?mt=12 -->