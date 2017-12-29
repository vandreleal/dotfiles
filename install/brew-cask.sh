#!/bin/bash

# Install Caskroom
brew tap caskroom/cask
brew tap caskroom/versions

# Install packages
apps=(
    atom
    dash
    deluge
    discord
    diskwave
    dropbox
    duet
    evernote
    filezilla
    firefoxdeveloperedition
    flux
    freac
    gimp
    gitkraken
    google-backup-and-sync
    google-chrome
    imagealpha
    imageoptim
    iterm2
    libreoffice
    macdown
    magicprefs
    openemu
    sequel-pro
    skype
    slack
    sourcetree
    spectacle
    spotify
    steam
    visual-studio-code
    vox
    vlc
    texworks
    the-unarchiver
    tunnelblick
    wine-stable
    xact
)

brew cask install "${apps[@]}"

# Quick Look Plugins (https://github.com/sindresorhus/quick-look-plugins)
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv qlimagesize webpquicklook suspicious-package
