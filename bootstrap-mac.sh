#!/bin/bash

[ "$UID" -eq 0 ] || exec sudo bash "$0" "$@"

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install Homebrew cask
brew tap caskroom/cask

# Install Mac App store CLI
brew install mas
brew install wget

mas signin apple@b-reel.com
mas signin eric.heaton@mac.com


# ======================================================
# Mac App Store (MAS) Apps
# ======================================================

# - 1Password
    mas install 443987910
# - Bear
    mas install 1091189122
# - The Clock
    mas install 488764545
# - Converto
    mas install 576421334
# - Divvy
    mas install 413857545
# - Icon Slate
    mas install 439697913
# - iPhoto
    mas install 408981381
# - MediaInfo
    mas install 510620098
# - Reeder
    mas install 880001334
# - Slack
    mas install 803453959
# - Textual 5
    mas install 896450579
# - Tweetbot
    mas install 557168941
# - XCode
    mas install 497799835

# - Omnigraffle
    mas install 1142578753

# - Markoff
    mas install 1084713122
# - Dash
    mas install 449589707
# - Marked 2
    mas install 890031187
# - Better Rename 9
    mas install 414209656

# Run the upgrade to ensure we're on the latest of
# all of the above
mas upgrade

# ======================================================
# Apps to install via. Brew Cask
# ======================================================

# - Adobe Creative Cloud
    brew cask install adobe-creative-cloud
# - Charles
    brew cask install charles
# - CloudApp
    brew cask install cloudapp
# - DiskMaker X?
    brew cask install diskmaker-x
# - Kaelidoscope
    brew cask install kaleidoscope
# - GitTower
    brew cask install tower
# - Paw
    brew cask install paw
# - phpStorm
    brew cask install phpstorm
# - Sip
    brew cask install sip
# - Sublime Text
    brew cask install sublime-text
# - Sequel Pro
    brew cask install sequel-pro
# - Quicksilver
    brew cask install quicksilver
# - Insomnia
    brew cask install insomnia
# - Choosey
    brew cask install choosey
# - VLC
    brew cask install vlc
# - Spotify
    brew cask install spotify
# - Microsoft Office
    brew cask install Microsoft-office

# - Quicklook Plugins
    brew cask install qlmarkdown
    brew cask install qlcolorcode
    brew cask install qlstephen
    brew cask install quicklook-json
    brew cask install quicklook-csv
    brew cask install qlimagesize
    brew cask install webpquicklook
    brew cask install qlvideo

# ======================================================
# Command Line Apps
# ======================================================

# - httpie
    brew install httpie
# - GIT
    brew install git
# - BRP (WIP)
# brew install brp
# - NodeJS / NPM
    brew install node
    brew install optipng
    brew install gifsicle

    brew install automake autoconf libtool libpng

# ======================================================
# System Preferences
# ======================================================

# Set the screenshots folder
mkdir -p ~/Documents/Screenshots
defaults write com.apple.screencapture location ~/Documents/Screenshots
killall SystemUIServer

# Hide all items on the desktop
defaults write com.apple.finder CreateDesktop false
killall Finder

# Disable Gatekeeper
sudo spctl --master-disable

# Don't open iTunes when iPHone is connected
defaults -currentHost write com.apple.ImageCapture disableHotPlug -bool YES

# - Install SSH keys