#!/bin/zsh

# Move directory
cd

# Install Homebrew (brew)
echo Installing brew...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo Installing brew cask...
brew tap caskroom/cask

# Install yarn
brew install yarn

# Install MySQL
echo Installing MySQL
brew install mysql

# Install Java
brew install java
brew install adoptopenjdk
