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

### Brew Packages and Applications

#### Taps
-  [aws/tap](https://github.com/aws/homebrew-tap): AWS command line tools and libraries.
-  [hashicorp/tap](https://github.com/hashicorp/homebrew-tap): HashiCorp tools like Terraform.
-  [homebrew/bundle](https://github.com/Homebrew/homebrew-bundle): Manage Homebrew dependencies for your projects.
-  [homebrew/cask-fonts](https://github.com/Homebrew/homebrew-cask-fonts): Fonts for Cask.
-  [homebrew/cask-versions](https://github.com/Homebrew/homebrew-cask-versions): Alternate versions of Cask.
-  [homebrew/services](https://github.com/Homebrew/homebrew-services): Manage background services with macOS.
-  [koekeishiya/formulae](https://github.com/koekeishiya/homebrew-formulae): Homebrew formulae for koekeishiya.
-  [localstack/tap](https://github.com/localstack/localstack): Local AWS cloud stack for testing.

#### Brew Packages
-  [abseil](https://abseil.io): C++ library that provides common data structures and utilities.
-  [brotli](https://github.com/google/brotli): Compression algorithm for web content.
-  [highway](https://github.com/GoogleHighway): A high-performance C++ library for linear algebra.
-  [jpeg-turbo](https://libjpeg-turbo.org): A JPEG image codec that uses SIMD instructions.
-  [xz](https://tukaani.org/xz/): Lossless data compression tool.
-  [libtiff](http://www.simplesystems.org/libtiff/): Library for reading and writing TIFF files.
-  [little-cms2](http://www.littlecms.com/): Color management engine.
-  [openexr](https://openexr.com): High dynamic range image file format.
-  [webp](https://developers.google.com/speed/webp): Image format for lossy and lossless compression.
-  [jpeg-xl](https://jpegxl.info): Next-generation image codec.
-  [aom](https://aomedia.org): AV1 video codec.
-  [apr](https://apr.apache.org): Apache Portable Runtime.
-  [ca-certificates](https://curl.se/docs/caextract.html): SSL certificates for secure connections.
-  [openssl@3](https://www.openssl.org): Cryptography and SSL/TLS toolkit.
-  [apr-util](https://apr.apache.org): Utility library for APR.
-  [assimp](https://assimp.sourceforge.net): Open Asset Import Library for 3D model formats.
-  [autoconf](https://www.gnu.org/software/autoconf/): Tool for producing shell scripts that automatically configure software source code.
-  [automake](https://www.gnu.org/software/automake/): Tool for automatically generating Makefile.in files.
-  [c-ares](https://c-ares.haxx.se): Asynchronous DNS request resolution library.
-  [libnghttp2](https://nghttp2.org): HTTP/2 C library.
-  [libuv](https://libuv.org): Multi-platform support library with a focus on asynchronous I/O.
-  [node](https://nodejs.org): JavaScript runtime built on Chrome's V8 engine.
-  [aws-amplify](https://aws.amazon.com/amplify/): Framework for building cloud-enabled applications.
-  [libyaml](https://pyyaml.org/wiki/PyYAML): YAML parser and emitter for C.
-  [readline](https://tiswww.case.edu/php/chet/readline/rltop.html): Library for command-line editing.
-  [sqlite](https://www.sqlite.org): C library that provides a lightweight, disk-based database.
-  [aws-elasticbeanstalk](https://aws.amazon.com/elasticbeanstalk/): Service for deploying and scaling web applications.
-  [pycparser](https://github.com/elixir-lang/elixir): C parser in Python.
-  [cffi](https://cffi.readthedocs.io): Foreign Function Interface for Python.
-  [cryptography](https://cryptography.io): Python library for cryptography.
-  [aws-sam-cli](https://aws.amazon.com/serverless/sam/): CLI tool for AWS Serverless applications.
-  [awscli](https://aws.amazon.com/cli/): Command Line Interface for AWS.
-  [bdw-gc](https://www.hboehm.info/gc/): Garbage collector for C and C++.
-  [bison](https://www.gnu.org/software/bison/): Parser generator.
-  [boost](https://www.boost.org): Collection of C++ libraries.
-  [brew-cask-completion](https://github.com/Homebrew/brew-cask-completion): Bash completion for Homebrew Cask.
-  [freetype](https://www.freetype.org): Font rendering engine.
-  [gettext](https://www.gnu.org/software/gettext/): Tools for internationalization.
-  [glib](https://glib.freedesktop.org): Low-level core library that forms the basis for projects such as GTK and GNOME.
-  [xorgproto](https://www.x.org/wiki/): X.Org protocol headers.
-  [libxcb](https://xcb.freedesktop.org): X protocol C-language Binding.
-  [libx11](https://www.x.org/wiki/): X11 client-side library.
-  [cairo](https://cairographics.org): 2D graphics library.
-  [cfn-lint](https://github.com/aws-cloudformation/cfn-lint): Linter for CloudFormation templates.
-  [chruby](https://github.com/postmodern/chruby): Change Ruby version.
-  [cjson](https://github.com/DaveGamble/cJSON): Lightweight JSON parser in C.
-  [cmake](https://cmake.org): Cross-platform build system generator.
-  [cmocka](https://cmocka.org): Unit testing framework for C.
-  [libssh2](https://www.libssh2.org): Library for SSH2 protocol.
-  [rtmpdump](https://rtmpdump.mplayerhq.hu): Tool for downloading RTMP streams.
-  [curl](https://curl.se): Command line tool for transferring data with URLs.
-  [unixodbc](http://www.unixodbc.org): Open Source ODBC for Linux.
-  [freetds](http://www.freetds.org): Open Source implementation of the Tabular Data Stream protocol.
-  [libavif](https://libavif.org): AVIF image format library.
-  [gd](https://libgd.github.io): Graphics library for dynamic image creation.
-  [gmp](https://gmplib.org): GNU Multiple Precision Arithmetic Library.
-  [krb5](https://web.mit.edu/kerberos/): Network authentication protocol.
-  [libzip](https://libzip.org): Library for reading, creating, and modifying zip archives.
-  [oniguruma](https://github.com/kkos/oniguruma): Regular expressions library.
-  [openldap](https://www.openldap.org): Open-source implementation of the Lightweight Directory Access Protocol.
-  [php](https://www.php.net): General-purpose scripting language.
-  [composer](https://getcomposer.org): Dependency manager for PHP.
-  [coreutils](https://www.gnu.org/software/coreutils/): Basic file, shell, and text manipulation utilities.
-  [dav1d](https://code.videolan.org/videolan/dav1d): AV1 decoder.
-  [dbus](https://www.freedesktop.org/wiki/Software/dbus/): Message bus system for inter-process communication.
-  [docker-completion](https://github.com/docker/cli): Bash completion for Docker.
-  [docker](https://www.docker.com): Platform for developing, shipping, and running applications in containers.
-  [docutils](https://docutils.sourceforge.io): Text processing system for converting plaintext documentation into useful formats.
-  [double-conversion](https://github.com/google/double-conversion): Fast conversion between strings and numbers.
-  [frei0r](https://frei0r.dyne.org): Minimalistic plugin API for video effects.
-  [libevent](http://libevent.org): Event notification library.
-  [nettle](https://www.lysator.liu.se/~nisse/nettle/): Low-level cryptographic library.
-  [p11-kit](https://p11-glue.github.io/p11-kit/): Library for managing PKCS#11 modules.
-  [unbound](https://www.nlnetlabs.nl/unbound/): Validating, recursive, and caching DNS resolver.
-  [gnutls](https://www.gnupg.org/related_software/gnutls/index.html): Secure communications library implementing SSL and TLS.
-  [harfbuzz](https://harfbuzz.github.io): OpenType text shaping engine.
-  [openjpeg](https://www.openjpeg.org): JPEG 2000 codec.
-  [leptonica](http://leptonica.com): Image processing and image analysis library.
-  [libarchive](https://www.libarchive.org): Library for reading and writing streaming archive formats.
-  [libass](https://github.com/libass/libass): Subtitle renderer for ASS/SSA subtitles.
-  [mbedtls](https://tls.mbed.org): Lightweight implementation of TLS and SSL.
-  [librist](https://github.com/Haivision/Librist): Library for reliable streaming.
-  [mpg123](http://mpg123.de): Command-line MP3 player.
-  [opus](https://opus-codec.org): Audio codec for interactive speech and music transmission.
-  [libsndfile](http://www.mega-nerd.com/libsndfile/): Library for reading and writing files containing sampled sound.
-  [libvpx](https://www.vpxcodec.org): VP8 and VP9 codec library.
-  [pango](https://pango.gnome.org): Library for laying out and rendering text.
-  [rav1e](https://rav1e.rs): AV1 encoder.
-  [rubberband](https://breakfastquay.com/rubberband/): Time-stretching and pitch-shifting library.
-  [sdl2](https://www.libsdl.org): Simple DirectMedia Layer for multimedia applications.
-  [speex](https://www.speex.org): Audio compression format for speech.
-  [srt](https://www.srtalliance.org): Secure Reliable Transport protocol.
-  [svt-av1](https://svt-av1.github.io): Scalable Video Technology for AV1.
-  [tesseract](https://github.com/tesseract-ocr/tesseract): Optical character recognition engine.
-  [x264](https://www.videolan.org/developers/x264.html): Free software library for encoding video streams into the H.264/MPEG-4 AVC format.
-  [zeromq](https://zeromq.org): High-performance asynchronous messaging library.
-  [zimg](https://zimg.zhaozhu.org): Image scaling library.
-  [ffmpeg](https://ffmpeg.org): Multimedia framework for handling video, audio, and other multimedia files.
-  [ffmpeg@4](https://ffmpeg.org): Version 4 of the FFmpeg multimedia framework.
-  [fmt](https://fmt.dev): Formatting library for C++.
-  [gdbm](https://www.gnu.org/software/gdbm/): GNU database manager.
-  [jbig2dec](https://jbig2dec.sourceforge.net): Decoder for JBIG2 image files.
-  [libidn](https://www.gnu.org/software/libidn/): Implementation of the Stringprep and Punycode specifications.
-  [ghostscript](https://www.ghostscript.com): Interpreter for PostScript and PDF.
-  [git](https://git-scm.com): Version control system.
-  [git-lfs](https://git-lfs.github.com): Git extension for versioning large files.
-  [gnu-getopt](https://www.gnu.org/software/libc/manual/html_node/Getopt.html): Command-line option parser.
-  [libgpg-error](https://gnupg.org/software/libgpg-error/index.html): Library for error codes for GnuPG components.
-  [libgcrypt](https://gnupg.org/software/libgcrypt/index.html): General-purpose cryptographic library.
-  [libksba](https://www.gnupg.org/software/libksba/index.html): X.509 and CMS library.
-  [gnupg](https://gnupg.org): Complete and free implementation of the OpenPGP standard.
-  [go](https://golang.org): Programming language designed for simplicity and efficiency.
-  [gobject-introspection](https://gi.readthedocs.io/en/latest/): Middleware for interfacing with C libraries.
-  [handbrake](https://handbrake.fr): Open-source video transcoder.
-  [httpd](https://httpd.apache.org): Apache HTTP Server.
-  [httpie](https://httpie.org): Command-line HTTP client with a user-friendly interface.
-  [jasper](https://www.ece.uvic.ca/~mdadams/jasper/): JPEG-2000 codec.
-  [libde265](https://libde265.org): HEVC/H.265 video codec library.
-  [shared-mime-info](https://freedesktop.org/wiki/Specifications/shared-mime-info/): Database of MIME types.
-  [libheif](https://github.com/strukturag/libheif): Library for reading and writing HEIF files.
-  [libomp](https://www.openmp.org): OpenMP library for parallel programming.
-  [libraw](https://www.libraw.org): Library for reading RAW files from digital cameras.
-  [imagemagick](https://imagemagick.org): Software suite for displaying, converting, and editing image files.
-  [jpeg](http://www.ijg.org): Independent JPEG Group's JPEG software.
-  [jq](https://stedolan.github.io/jq/): Command-line JSON processor.
-  [kubernetes-cli](https://kubernetes.io/docs/reference/kubectl/overview/): Command-line interface for Kubernetes.
-  [libffi](https://sourceware.org/libffi/): Foreign Function Interface library.
-  [libmng](http://libmng.sourceforge.net): Library for reading MNG files.
-  [shaderc](https://shaderc.googlesource.com/shaderc/): Shader compilation library.
-  [vulkan-headers](https://github.com/KhronosGroup/Vulkan-Headers): Vulkan API headers.
-  [vulkan-loader](https://github.com/KhronosGroup/Vulkan-Loader): Vulkan API loader.
-  [libpthread-stubs](https://sourceware.org/libc/manual/html_node/Pthread-Stubs.html): Stub library for pthread.
-  [z3](https://z3prover.github.io): The Z3 theorem prover.
-  [luajit](https://luajit.org): Just-in-time compiler for Lua.
-  [luajit-openresty](https://openresty.org/en/): LuaJIT for OpenResty.
-  [mas](https://github.com/mas-cli/mas): Mac App Store command line interface.
-  [md4c](https://github.com/MartinRosenau/md4c): Markdown parser in C.
-  [minikube](https://minikube.sigs.k8s.io/docs/): Tool for running Kubernetes locally.
-  [nlohmann-json](https://github.com/nlohmann/json): JSON library for C++.
-  [pugixml](https://pugixml.org): Light-weight, simple, and fast XML parser for C++.
-  [qt](https://www.qt.io): Framework for cross-platform application development.
-  [utf8cpp](https://github.com/nemtrif/utfcpp): UTF-8 codec for C++.
-  [mkvtoolnix](https://mkvtoolnix.download): Set of tools to create, alter, and inspect Matroska files.
-  [mp4v2](https://github.com/Matroska-Org/mp4v2): Library for reading and writing MP4 files.
-  [mujs](https://mujs.com): Lightweight JavaScript interpreter.
-  [vapoursynth](http://www.vapoursynth.com): Video processing framework.
-  [yt-dlp](https://github.com/yt-dlp/yt-dlp): YouTube video downloader.
-  [mpv](https://mpv.io): Media player based on MPlayer and mplayer2.
-  [nvm](https://github.com/nvm-sh/nvm): Node Version Manager.
-  [openssl@1.1](https://www.openssl.org): Version 1.1 of the OpenSSL toolkit.
-  [pkcs11-helper](https://github.com/OpenSC/pkcs11-helper): Helper library for PKCS#11.
-  [openvpn](https://openvpn.net): Open-source VPN software.
-  [pipx](https://pipxproject.github.io/pipx/): Tool for installing and running Python applications in isolated environments.
-  [protobuf](https://developers.google.com/protocol-buffers): Google's data interchange format.
-  [pyenv](https://github.com/pyenv/pyenv): Simple Python version management.
-  [python-distlib](https://pypi.org/project/distlib/): Library for Python package distribution.
-  [python-jinja](https://jinja.palletsprojects.com): Templating engine for Python.
-  [python-mutagen](https://mutagen.readthedocs.io): Python module for handling audio metadata.
-  [python-packaging](https://packaging.python.org): Utilities for packaging Python projects.
-  [python@3.10](https://www.python.org): Python programming language version 3.10.
-  [tcl-tk](https://www.tcl.tk): Tool Command Language and Tk GUI toolkit.
-  [python-tk@3.10](https://www.python.org): Tkinter for Python 3.10.
-  [python-typing-extensions](https://typing-extensions.readthedocs.io): Backports of typing features.
-  [python@3.11](https://www.python.org): Python programming language version 3.11.
-  [python@3.9](https://www.python.org): Python programming language version 3.9.
-  [pyyaml](https://pyyaml.org): YAML parser and emitter for Python.
-  [rclone](https://rclone.org): Command line program to manage files on cloud storage.
-  [ruby-install](https://github.com/postmodern/ruby-install): Install Ruby versions.
-  [rust](https://www.rust-lang.org): Systems programming language.
-  [serverless](https://www.serverless.com): Framework for building serverless applications.
-  [six](https://pypi.org/project/six/): Python 2 and 3 compatibility library.
-  [sqsmover](https://github.com/awslabs/sqsmover): Tool to move messages between SQS queues.
-  [swift-protobuf](https://github.com/google/swift-protobuf): Protocol Buffers for Swift.
-  [swiftlint](https://github.com/realm/SwiftLint): Tool to enforce Swift style and conventions.
-  [transmission-cli](https://transmissionbt.com): Command line interface for the Transmission BitTorrent client.
-  [virtualenv](https://virtualenv.pypa.io): Tool to create isolated Python environments.
-  [wget](https://www.gnu.org/software/wget/): Command-line utility for downloading files from the web.
-  [youtube-dl](https://youtube-dl.org): Command-line program to download videos from YouTube and other sites.
-  [z](https://github.com/rupa/z): Jump to directories quickly.
-  [zlib](https://zlib.net): Compression library.
-  [zsh](https://www.zsh.org): Shell designed for interactive use.

#### Cask Applications
-  [1password](https://1password.com): Password manager.
-  [1password-cli](https://developer.1password.com/docs/cli): Command-line interface for 1Password.
-  [android-studio](https://developer.android.com/studio): IDE for Android development.
-  [atom](https://atom.io): Text editor.
-  [audacity](https://www.audacityteam.org): Audio editing software.
-  [audio-hijack](https://rogueamoeba.com/audiohijack/): Audio recording software for macOS.
-  [authy](https://authy.com): Two-factor authentication app.
-  [blender](https://www.blender.org): 3D creation suite.
-  [brave-browser](https://brave.com): Privacy-focused web browser.
-  [calibre](https://calibre-ebook.com): E-book management software.
-  [carbon-copy-cloner](https://bombich.com): Backup software for macOS.
-  [cleanshot](https://cleanshot.com): Screenshot tool for macOS.
-  [clipgrab](https://clipgrab.org): Download videos from various sites.
-  [codekit](https://codekitapp.com): Web development tool for compiling languages.
-  [discord](https://discord.com): VoIP application for gamers.
-  [docker](https://www.docker.com): Container platform.
-  [dropbox](https://www.dropbox.com): File storage and sharing service.
-  [dropshare](https://dropshareapp.com): File sharing application.
-  [figma](https://www.figma.com): Interface design tool.
-  [firefox](https://www.mozilla.org/en-US/firefox/new/): Open-source web browser.
-  [gas-mask](https://github.com/2ndalpha/gas-mask): Hosts file manager for macOS.
-  [gitkraken](https://www.gitkraken.com): Git client.
-  [google-drive](https://www.google.com/drive/): Cloud storage service.
-  [google-earth-pro](https://www.google.com/earth/versions/#earth-pro): 3D Earth mapping tool.
-  [graphql-playground](https://www.graphqlbin.com): Interactive GraphQL IDE.
-  [izip](https://www.izip.com): File compression tool.
-  [kitematic](https://kitematic.com): GUI for Docker.
-  [loom](https://www.loom.com): Video messaging tool.
-  [loopback](https://rogueamoeba.com/loopback/): Audio routing software.
-  [macfuse](https://osxfuse.github.io): Filesystem for macOS.
-  [mamp](https://www.mamp.info): Local server environment for PHP.
-  [microsoft-edge](https://www.microsoft.com/en-us/edge): Web browser from Microsoft.
-  [notion](https://www.notion.so): All-in-one workspace for notes and tasks.
-  [pixelsnap](https://getpixelsnap.com): Screenshot tool for designers.
-  [pocket-casts](https://www.pocketcasts.com): Podcast player.
-  [postman](https://www.postman.com): API development environment.
-  [raycast](https://www.raycast.com): Productivity tool for macOS.
-  [rsyncosx](https://github.com/rsyncOSX/RsyncOSX): Rsync GUI for macOS.
-  [runjs](https://runjs.co): JavaScript playground.
-  [signal](https://signal.org): Encrypted messaging app.
-  [sketch](https://www.sketch.com): Design toolkit for digital products.
-  [skyfonts](https://skyfonts.com): Font manager.
-  [slack](https://slack.com): Team collaboration tool.
-  [soundsource](https://rogueamoeba.com/soundsource/): Audio control tool.
-  [spotify](https://www.spotify.com): Music streaming service.
-  [superduper](https://www.shirt-pocket.com/SuperDuper/SuperDuperDescription.html): Backup tool for macOS.
-  [tableplus](https://tableplus.com): Database management tool.
-  [the-unarchiver](https://theunarchiver.com): File extraction tool.
-  [thinkorswim](https://www.thinkorswim.com): Trading platform.
-  [tor-browser](https://www.torproject.org/download/): Privacy-focused web browser.
-  [tower](https://www.git-tower.com): Git client for macOS.
-  [transmit](https://panic.com/transmit/): FTP client for macOS.
-  [tunnelblick](https://tunnelblick.net): Open-source VPN client for macOS.
-  [utm](https://mac.getutm.app): Virtualization tool for macOS.
-  [veracrypt](https://www.veracrypt.fr): Disk encryption software.
-  [visual-studio-code](https://code.visualstudio.com): Source-code editor developed by Microsoft.
-  [vlc](https://www.videolan.org): Open-source media player.
-  [vmware-fusion](https://www.vmware.com/products/fusion.html): Virtualization software for macOS.
-  [warp](https://www.warp.dev): Command line interface for building applications.
-  [webpquicklook](https://github.com/aboullaite/webpquicklook): Quick Look plugin for WebP images.
-  [whatsapp](https://www.whatsapp.com): Messaging application.
-  [zoom](https://zoom.us): Video conferencing tool.

#### Mac App Store Applications (MAS)
-  [1Password for Safari](https://apps.apple.com/app/1password-for-safari/id1569813296): Password manager for Safari.
-  [Bear](https://apps.apple.com/app/bear/id1091189122): Writing app for notes and prose.
-  [Better Rename 9](https://apps.apple.com/app/better-rename-9/id414209656): Tool for renaming files.
-  [Compressor](https://apps.apple.com/app/compressor/id424390742): Video transcoding application.
-  [Dark Noise](https://apps.apple.com/app/dark-noise/id1465439395): Ambient noise generator.
-  [Deliveries](https://apps.apple.com/app/deliveries/id290986013): Package tracking application.
-  [Final Cut Pro](https://apps.apple.com/app/final-cut-pro/id424389933): Professional video editing software.
-  [Forecast Bar](https://apps.apple.com/app/forecast-bar/id982710545): Weather application.
-  [GarageBand](https://apps.apple.com/app/garageband/id682658836): Digital audio workstation.
-  [Goodnotes](https://apps.apple.com/app/goodnotes/id1444383602): Note-taking application.
-  [Harvest](https://apps.apple.com/app/harvest/id506189836): Time tracking and invoicing tool.
-  [Hidden Bar](https://apps.apple.com/app/hidden-bar/id1452453066): Menu bar manager.
-  [iMovie](https://apps.apple.com/app/imovie/id408981434): Video editing software.
-  [Keynote](https://apps.apple.com/app/keynote/id409183694): Presentation software.
-  [Kindle](https://apps.apple.com/app/kindle/id302584613): E-book reader.
-  [Logic Pro](https://apps.apple.com/app/logic-pro/id634148309): Professional music production software.
-  [Microsoft Remote Desktop](https://apps.apple.com/app/microsoft-remote-desktop/id1295203466): Remote desktop client.
-  [Motion](https://apps.apple.com/app/motion/id434290957): Motion graphics software.
-  [Notability](https://apps.apple.com/app/notability/id360593530): Note-taking application.
-  [Numbers](https://apps.apple.com/app/numbers/id409203825): Spreadsheet software.
-  [Pages](https://apps.apple.com/app/pages/id409201541): Word processing software.
-  [Pine Player](https://apps.apple.com/app/pine-player/id1112075769): Music player.
-  [Pixelmator Pro](https://apps.apple.com/app/pixelmator-pro/id1289583905): Image editing software.
-  [Playgrounds](https://apps.apple.com/app/playgrounds/id1496833156): Interactive coding environment for Swift.
-  [Portal](https://apps.apple.com/app/portal/id1436994560): File transfer application.
-  [Prime Video](https://apps.apple.com/app/prime-video/id545519333): Streaming service from Amazon.
-  [RadarScope](https://apps.apple.com/app/radarscope/id288419283): Weather radar application.
-  [Remote Desktop](https://apps.apple.com/app/remote-desktop/id409907375): Remote desktop access.
-  [TeraCopy](https://apps.apple.com/app/teracopy/id1378806557): File transfer utility.
-  [Todoist](https://apps.apple.com/app/todoist/id585829637): Task management application.
-  [Windows App](https://apps.apple.com/app/windows-app/id1295203466): Windows application for macOS.
-  [Xcode](https://apps.apple.com/app/xcode/id497799835): IDE for macOS and iOS development.
-  [YubiKey Personalization Tool](https://apps.apple.com/app/yubikey-personalization-tool/id638161122): Tool for configuring YubiKeys.

#### VSCode Extensions
-  [aaron-bond.better-comments](https://marketplace.visualstudio.com/items?itemName=aaron-bond.better-comments): Improve your code comments.
-  [akamud.vscode-theme-onedark](https://marketplace.visualstudio.com/items?itemName=akamud.vscode-theme-onedark): One Dark theme for VSCode.
-  [alefragnani.project-manager](https://marketplace.visualstudio.com/items?itemName=alefragnani.project-manager): Project manager for VSCode.
-  [andischerer.theme-atom-one-dark](https://marketplace.visualstudio.com/items?itemName=andischerer.theme-atom-one-dark): Atom One Dark theme.
-  [anseki.vscode-color](https://marketplace.visualstudio.com/items?itemName=anseki.vscode-color): Color picker for VSCode.
-  [aswinkumar863.smarty-template-support](https://marketplace.visualstudio.com/items?itemName=aswinkumar863.smarty-template-support): Smarty template support.
-  [atlassian.atlascode](https://marketplace.visualstudio.com/items?itemName=atlassian.atlascode): Atlassian integration for VSCode.
-  [atomiks.moonlight](https://marketplace.visualstudio.com/items?itemName=atomiks.moonlight): Moonlight theme for VSCode.
-  [bigous.vscode-multi-line-tricks](https://marketplace.visualstudio.com/items?itemName=bigous.vscode-multi-line-tricks): Multi-line editing enhancements.
-  [bradlc.vscode-tailwindcss](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss): Tailwind CSS IntelliSense.
-  [bubersson.theme-hop-light](https://marketplace.visualstudio.com/items?itemName=bubersson.theme-hop-light): Light theme for VSCode.
-  [burkeholland.simple-react-snippets](https://marketplace.visualstudio.com/items?itemName=burkeholland.simple-react-snippets): React snippets for VSCode.
-  [capaj.vscode-exports-autocomplete](https://marketplace.visualstudio.com/items?itemName=capaj.vscode-exports-autocomplete): Autocomplete for module exports.
-  [christian-kohler.npm-intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.npm-intellisense): NPM package autocomplete.
-  [christian-kohler.path-intellisense](https://marketplace.visualstudio.com/items?itemName=christian-kohler.path-intellisense): Path autocomplete.
-  [chrmarti.regex](https://marketplace.visualstudio.com/items?itemName=chrmarti.regex): Regular expression support.
-  [codeium.codeium](https://marketplace.visualstudio.com/items?itemName=codeium.codeium): AI-powered code completion.
-  [codezombiech.gitignore](https://marketplace.visualstudio.com/items?itemName=codezombiech.gitignore): Git ignore file support.
-  [codium.codium](https://marketplace.visualstudio.com/items?itemName=codium.codium): Open-source alternative to VSCode.
-  [craigmaslowski.erb](https://marketplace.visualstudio.com/items?itemName=craigmaslowski.erb): ERB template support.
-  [cssho.vscode-svgviewer](https://marketplace.visualstudio.com/items?itemName=cssho.vscode-svgviewer): SVG viewer for VSCode.
-  [cyriacduchatenet.monterey-dark-theme](https://marketplace.visualstudio.com/items?itemName=cyriacduchatenet.monterey-dark-theme): Monterey dark theme for VSCode.
-  [danielthielking.aws-cloudformation-yaml](https://marketplace.visualstudio.com/items?itemName=danielthielking.aws-cloudformation-yaml): CloudFormation YAML support.
-  [dbaeumer.jshint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.jshint): JSHint support for VSCode.
-  [dbaeumer.vscode-eslint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint): ESLint support for VSCode.
-  [deinsoftware.vitest-snippets](https://marketplace.visualstudio.com/items?itemName=deinsoftware.vitest-snippets): Vitest snippets for VSCode.
-  [docsmsft.docs-visual-areas](https://marketplace.visualstudio.com/items?itemName=docsmsft.docs-visual-areas): Documentation tools for VSCode.
-  [dotjoshjohnson.xml](https://marketplace.visualstudio.com/items?itemName=dotjoshjohnson.xml): XML tools for VSCode.
-  [drcika.apc-extension](https://marketplace.visualstudio.com/items?itemName=drcika.apc-extension): APC extension for VSCode.
-  [dsznajder.es7-react-js-snippets](https://marketplace.visualstudio.com/items?itemName=dsznajder.es7-react-js-snippets): ES7 React/Redux snippets.
-  [dunstontc.dark-plus-syntax](https://marketplace.visualstudio.com/items?itemName=dunstontc.dark-plus-syntax): Dark Plus syntax theme.
-  [eamodio.gitlens](https://marketplace.visualstudio.com/items?itemName=eamodio.gitlens): Git supercharged for VSCode.
-  [earshinov.permute-lines](https://marketplace.visualstudio.com/items?itemName=earshinov.permute-lines): Line permutation tool.
-  [editorconfig.editorconfig](https://marketplace.visualstudio.com/items?itemName=editorconfig.editorconfig): EditorConfig support for VSCode.
-  [eg2.vscode-npm-script](https://marketplace.visualstudio.com/items?itemName=eg2.vscode-npm-script): NPM script runner for VSCode.
-  [eliverlara.andromeda](https://marketplace.visualstudio.com/items?itemName=eliverlara.andromeda): Andromeda theme for VSCode.
-  [emmanuelbeziat.vscode-great-icons](https://marketplace.visualstudio.com/items?itemName=emmanuelbeziat.vscode-great-icons): Icon pack for VSCode.
-  [equinusocio.vsc-community-material-theme](https://marketplace.visualstudio.com/items?itemName=equinusocio.vsc-community-material-theme): Material theme for VSCode.
-  [equinusocio.vsc-material-theme](https://marketplace.visualstudio.com/items?itemName=equinusocio.vsc-material-theme): Material theme for VSCode.
-  [equinusocio.vsc-material-theme-icons](https://marketplace.visualstudio.com/items?itemName=equinusocio.vsc-material-theme-icons): Material theme icons for VSCode.
-  [esbenp.prettier-vscode](https://marketplace.visualstudio.com/items?itemName=esbenp.prettier-vscode): Prettier code formatter.
-  [eserozvataf.one-dark-pro-monokai-darker](https://marketplace.visualstudio.com/items?itemName=eserozvataf.one-dark-pro-monokai-darker): One Dark Pro Monokai Darker theme.
-  [figma.figma-vscode-extension](https://marketplace.visualstudio.com/items?itemName=figma.figma-vscode-extension): Figma integration for VSCode.
-  [formulahendry.auto-close-tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-close-tag): Auto-close HTML tags.
-  [formulahendry.auto-rename-tag](https://marketplace.visualstudio.com/items?itemName=formulahendry.auto-rename-tag): Auto-rename HTML tags.
-  [framer.framer-syntax](https://marketplace.visualstudio.com/items?itemName=framer.framer-syntax): Framer syntax highlighting.
-  [gerane.theme-monokai-best](https://marketplace.visualstudio.com/items?itemName=gerane.theme-monokai-best): Monokai theme for VSCode.
-  [ghgofort.neon-vommit](https://marketplace.visualstudio.com/items?itemName=ghgofort.neon-vommit): Neon Vommit theme for VSCode.
-  [github.copilot](https://marketplace.visualstudio.com/items?itemName=github.copilot): AI-powered code completion from GitHub.
-  [github.copilot-chat](https://marketplace.visualstudio.com/items?itemName=github.copilot-chat): Chat interface for GitHub Copilot.
-  [github.github-vscode-theme](https://marketplace.visualstudio.com/items?itemName=github.github-vscode-theme): GitHub theme for VSCode.
-  [github.vscode-github-actions](https://marketplace.visualstudio.com/items?itemName=github.vscode-github-actions): GitHub Actions support.
-  [glenn2223.live-sass](https://marketplace.visualstudio.com/items?itemName=glenn2223.live-sass): Live Sass compiler.
-  [gokulkrishh.night-mode](https://marketplace.visualstudio.com/items?itemName=gokulkrishh.night-mode): Night mode for VSCode.
-  [golang.go](https://marketplace.visualstudio.com/items?itemName=golang.go): Go language support for VSCode.
-  [graphql.vscode-graphql](https://marketplace.visualstudio.com/items?itemName=graphql.vscode-graphql): GraphQL support for VSCode.
-  [graphql.vscode-graphql-execution](https://marketplace.visualstudio.com/items?itemName=graphql.vscode-graphql-execution): GraphQL execution support.
-  [graphql.vscode-graphql-syntax](https://marketplace.visualstudio.com/items?itemName=graphql.vscode-graphql-syntax): GraphQL syntax highlighting.
-  [hashicorp.terraform](https://marketplace.visualstudio.com/items?itemName=hashicorp.terraform): Terraform support for VSCode.
-  [hkh12.pitch-black](https://marketplace.visualstudio.com/items?itemName=hkh12.pitch-black): Pitch Black theme for VSCode.
-  [htmlhint.vscode-htmlhint](https://marketplace.visualstudio.com/items?itemName=htmlhint.vscode-htmlhint): HTML linting for VSCode.
-  [humao.rest-client](https://marketplace.visualstudio.com/items?itemName=humao.rest-client): REST client for VSCode.
-  [jaimeolivares.yuml](https://marketplace.visualstudio.com/items?itemName=jaimeolivares.yuml): YUML support for VSCode.
-  [jakewilson.vscode-cdnjs](https://marketplace.visualstudio.com/items?itemName=jakewilson.vscode-cdnjs): CDNJS support for VSCode.
-  [jkjustjoshing.vscode-text-pastry](https://marketplace.visualstudio.com/items?itemName=jkjustjoshing.vscode-text-pastry): Text pastry for VSCode.
-  [jock.svg](https://marketplace.visualstudio.com/items?itemName=jock.svg): SVG support for VSCode.
-  [joelday.docthis](https://marketplace.visualstudio.com/items?itemName=joelday.docthis): Generate documentation for functions.
-  [johnlindquist.kit-extension](https://marketplace.visualstudio.com/items?itemName=johnlindquist.kit-extension): Kit extension for VSCode.
-  [jolaleye.horizon-theme-vscode](https://marketplace.visualstudio.com/items?itemName=jolaleye.horizon-theme-vscode): Horizon theme for VSCode.
-  [jpoissonnier.vscode-styled-components](https://marketplace.visualstudio.com/items?itemName=jpoissonnier.vscode-styled-components): Styled-components support for VSCode.
-  [kaleidoscope-app.vscode-ksdiff](https://marketplace.visualstudio.com/items?itemName=kaleidoscope-app.vscode-ksdiff): KSDiff support for VSCode.
-  [kevinrose.vsc-python-indent](https://marketplace.visualstudio.com/items?itemName=kevinrose.vsc-python-indent): Python indent support for VSCode.
-  [mgmcdermott.vscode-language-babel](https://marketplace.visualstudio.com/items?itemName=mgmcdermott.vscode-language-babel): Babel language support for VSCode.
-  [mightbesimon.emoji-icons](https://marketplace.visualstudio.com/items?itemName=mightbesimon.emoji-icons): Emoji icons for VSCode.
-  [mkaufman.htmlhint](https://marketplace.visualstudio.com/items?itemName=mkaufman.htmlhint): HTML hinting for VSCode.
-  [mrmlnc.vscode-apache](https://marketplace.visualstudio.com/items?itemName=mrmlnc.vscode-apache): Apache support for VSCode.
-  [ms-azuretools.vscode-docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker): Docker support for VSCode.
-  [ms-python.debugpy](https://marketplace.visualstudio.com/items?itemName=ms-python.debugpy): Debugger for Python.
-  [ms-python.isort](https://marketplace.visualstudio.com/items?itemName=ms-python.isort): Python import sorting.
-  [ms-python.python](https://marketplace.visualstudio.com/items?itemName=ms-python.python): Python support for VSCode.
-  [ms-python.vscode-pylance](https://marketplace.visualstudio.com/items?itemName=ms-python.vscode-pylance): Fast language support for Python.
-  [ms-toolsai.jupyter](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter): Jupyter support for VSCode.
-  [ms-toolsai.jupyter-keymap](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.jupyter-keymap): Jupyter keymap for VSCode.
-  [ms-toolsai.vscode-jupyter-cell-tags](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.vscode-jupyter-cell-tags): Jupyter cell tags support.
-  [ms-toolsai.vscode-jupyter-slideshow](https://marketplace.visualstudio.com/items?itemName=ms-toolsai.vscode-jupyter-slideshow): Jupyter slideshow support.
-  [ms-vscode.vscode-typescript-next](https://marketplace.visualstudio.com/items?itemName=ms-vscode.vscode-typescript-next): TypeScript support for VSCode.
-  [ms-vsliveshare.vsliveshare](https://marketplace.visualstudio.com/items?itemName=ms-vsliveshare.vsliveshare): Live Share support for collaborative coding.
-  [oderwat.indent-rainbow](https://marketplace.visualstudio.com/items?itemName=oderwat.indent-rainbow): Rainbow indentations for better readability.
-  [ohansemmanuel.css-grid-snippets](https://marketplace.visualstudio.com/items?itemName=ohansemmanuel.css-grid-snippets): CSS Grid snippets for VSCode.
-  [orta.vscode-jest](https://marketplace.visualstudio.com/items?itemName=orta.vscode-jest): Jest support for VSCode.
-  [pkief.material-icon-theme](https://marketplace.visualstudio.com/items?itemName=pkief.material-icon-theme): Material icon theme for VSCode.
-  [pnp.polacode](https://marketplace.visualstudio.com/items?itemName=pnp.polacode): Screenshot tool for code.
-  [postman.postman-for-vscode](https://marketplace.visualstudio.com/items?itemName=postman.postman-for-vscode): Postman integration for VSCode.
-  [prisma.prisma](https://marketplace.visualstudio.com/items?itemName=prisma.prisma): Prisma support for VSCode.
-  [qub.qub-xml-vscode](https://marketplace.visualstudio.com/items?itemName=qub.qub-xml-vscode): XML support for VSCode.
-  [quicktype.quicktype](https://marketplace.visualstudio.com/items?itemName=quicktype.quicktype): Generate types from JSON.
-  [qwtel.sqlite-viewer](https://marketplace.visualstudio.com/items?itemName=qwtel.sqlite-viewer): SQLite viewer for VSCode.
-  [ravasthi.rpa-eslint-snippets](https://marketplace.visualstudio.com/items?itemName=ravasthi.rpa-eslint-snippets): RPA ESLint snippets for VSCode.
-  [redhat.vscode-yaml](https://marketplace.visualstudio.com/items?itemName=redhat.vscode-yaml): YAML support for VSCode.
-  [rendinjast.amoled-black](https://marketplace.visualstudio.com/items?itemName=rendinjast.amoled-black): AMOLED black theme for VSCode.
-  [richie5um2.vscode-sort-json](https://marketplace.visualstudio.com/items?itemName=richie5um2.vscode-sort-json): Sort JSON files in VSCode.
-  [rifi2k.format-html-in-php](https://marketplace.visualstudio.com/items?itemName=rifi2k.format-html-in-php): Format HTML in PHP files.
-  [ritwickdey.liveserver](https://marketplace.visualstudio.com/items?itemName=ritwickdey.liveserver): Live server for static and dynamic pages.
-  [rvest.vs-code-prettier-eslint](https://marketplace.visualstudio.com/items?itemName=rvest.vs-code-prettier-eslint): Prettier and ESLint integration for VSCode.
-  [shopify.ruby-lsp](https://marketplace.visualstudio.com/items?itemName=shopify.ruby-lsp): Ruby language server support.
-  [silvenon.mdx](https://marketplace.visualstudio.com/items?itemName=silvenon.mdx): MDX support for VSCode.
-  [sirtori.indenticator](https://marketplace.visualstudio.com/items?itemName=sirtori.indenticator): Indentation guide for VSCode.
-  [sleistner.vscode-fileutils](https://marketplace.visualstudio.com/items?itemName=sleistner.vscode-fileutils): File utilities for VSCode.
-  [spoonscen.es6-mocha-snippets](https://marketplace.visualstudio.com/items?itemName=spoonscen.es6-mocha-snippets): Mocha snippets for ES6.
-  [streetsidesoftware.code-spell-checker](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker): Spell checker for code.
-  [supermaven.supermaven](https://marketplace.visualstudio.com/items?itemName=supermaven.supermaven): Maven support for VSCode.
-  [syntaxfm.syntaxfm](https://marketplace.visualstudio.com/items?itemName=syntaxfm.syntaxfm): Syntax FM podcast integration.
-  [sysoev.vscode-open-in-github](https://marketplace.visualstudio.com/items?itemName=sysoev.vscode-open-in-github): Open files in GitHub directly.
-  [techer.open-in-browser](https://marketplace.visualstudio.com/items?itemName=techer.open-in-browser): Open files in the browser.
-  [tonka3000.raycast](https://marketplace.visualstudio.com/items?itemName=tonka3000.raycast): Raycast integration for VSCode.
-  [tyriar.sort-lines](https://marketplace.visualstudio.com/items?itemName=tyriar.sort-lines): Sort lines in VSCode.
-  [uber.baseweb](https://marketplace.visualstudio.com/items?itemName=uber.baseweb): Base Web integration for VSCode.
-  [unifiedjs.vscode-mdx](https://marketplace.visualstudio.com/items?itemName=unifiedjs.vscode-mdx): MDX support for VSCode.
-  [viktorqvarfordt.vscode-pitch-black-theme](https://marketplace.visualstudio.com/items?itemName=viktorqvarfordt.vscode-pitch-black-theme): Pitch Black theme for VSCode.
-  [visualstudioexptteam.intellicode-api-usage-examples](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.intellicode-api-usage-examples): IntelliCode API usage examples.
-  [visualstudioexptteam.vscodeintellicode](https://marketplace.visualstudio.com/items?itemName=visualstudioexptteam.vscodeintellicode): AI-assisted code completion.
-  [vittorioromeo.expand-selection-to-scope](https://marketplace.visualstudio.com/items?itemName=vittorioromeo.expand-selection-to-scope): Expand selection to scope.
-  [vscode-icons-team.vscode-icons](https://marketplace.visualstudio.com/items?itemName=vscode-icons-team.vscode-icons): Icon pack for VSCode.
-  [wallabyjs.quokka-vscode](https://marketplace.visualstudio.com/items?itemName=wallabyjs.quokka-vscode): Quokka.js support for VSCode.
-  [wayou.vscode-todo-highlight](https://marketplace.visualstudio.com/items?itemName=wayou.vscode-todo-highlight): Highlight TODO comments.
-  [wix.vscode-import-cost](https://marketplace.visualstudio.com/items?itemName=wix.vscode-import-cost): Show the size of imported packages.
-  [wmaurer.change-case](https://marketplace.visualstudio.com/items?itemName=wmaurer.change-case): Change case of selected text.
-  [yzane.markdown-pdf](https://marketplace.visualstudio.com/items?itemName=yzane.markdown-pdf): Export Markdown to PDF.
-  [zhuangtongfa.material-theme](https://marketplace.visualstudio.com/items?itemName=zhuangtongfa.material-theme): Material theme for VSCode.
-  [zignd.html-css-class-completion](https://marketplace.visualstudio.com/items?itemName=zignd.html-css-class-completion): HTML/CSS class name completion.
