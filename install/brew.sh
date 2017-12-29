#!/bin/bash

# Installs Homebrew and some of the common dependencies needed/desired for software development

# Ask for the administrator password upfront
sudo -v

# Check for Homebrew and install it if missing
if test ! $(which brew)
then
  echo "Installing Homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install the Homebrew packages I use on a day-to-day basis.
apps=(
    mongodb
    coreutils
    moreutils
    findutils
    ffmpeg
    git
    git-extras
    git-lfs
    hub
    gnu-sed
    grep
    openssh
    battery
    autojump
    imagemagick
    python
    source-highlight
    tree
    wget
    wifi-password
    bash-completion2
    zsh-completions
    brew-cask-completion
)

brew install "${apps[@]}"

# Remove outdated versions from the cellar
brew cleanup
