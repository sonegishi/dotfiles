#!/usr/local/bin/zsh

# Install Homebrew (brew)
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install rbenv using brew
brew install rbenv ruby-build

# Set rbenv PATH on bash_profile
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile
source ~/.bash_profile

# Install Ruby 2.5.1 and set it as global ruby
rbenv install 2.5.1
rbenv global 2.5.1

# Check ruby version
ruby -v

# Install Rails
gem install rails -v 5.2.0
rbenv rehash

# Check rails version
rails -v
# Install MySQL
brew update
brew install mysql

# Check MySQL version
brew info mysql

# Install Sequel-Pro
brew cask install sequel-pro

# Install Docker
brew cask install docker

