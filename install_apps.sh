#!/bin/sh

# Install Homebrew
echo "Installing brew..."
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo "Installing brew cask..."
brew tap homebrew/cask

# Development
brew install --cask iterm2
brew install --cask docker
brew install --cask postman
brew install node
brew install yarn
brew install nvm
brew install awscli
brew install --cask visual-studio-code
brew install --cask github

# Utilities
brew install --cask vlc

# Browsers
brew install --cask google-chrome
brew install --cask firefox

# Communication
brew install --cask slack
brew install --cask whatsapp
brew install --cask zoomus

# Entertainment
brew install --cask spotify

# Internet Speed Test
brew tap teamookla/speedtest
brew install speedtest --force

# Learn more about this later
# https://taskwarrior.org/docs/
brew install task

brew install htop
brew install tree

brew install mas
