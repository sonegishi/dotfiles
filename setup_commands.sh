#!/bin/zsh

# Move directory
cd

# Install Homebrew (brew)
echo Installing brew...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Installing brew cask...
brew tap caskroom/cask

# Install rbenv using brew
brew install rbenv ruby-build

# Set rbenv PATH on zshrc
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ‾~/.zshrc
source ‾~/.zshrc

# Install Ruby 2.5.1 and set it as global ruby version
echo Installing rbenv
rbenv install 2.5.1
rbenv global 2.5.1

# Install Rails
echo Installing Rails
gem install rails -v 5.2.0
rbenv rehash

# Install MySQL
echo Installing MySQL
brew update
brew install mysql

