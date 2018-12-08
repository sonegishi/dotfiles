#!/bin/zsh

# Move directory
cd

# Install Homebrew (brew)
echo Installing brew...
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update

echo Installing brew cask...
brew tap caskroom/cask

# Install Ruby thru rbenv using brew
brew install rbenv
echo rbenv --version
echo 'eval "$(rbenv init -)"' >> ~/.zshrc
source ~/.zshrc
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash

echo Installing rbenv
rbenv install 2.5.1
rbenv global 2.5.1
ruby -v

## Install Rails and Bundler
echo Installing Rails
gem install rails
gem install bundler
rbenv rehash

# Install go thru goenv using brew
brew install goenv
echo goenv --version
echo 'eval "$(goenv init -)"' >> ~/.zshrc
source ~/.zshrc

goenv install 1.10.3
goenv global 1.10.3
goenv rehash
go version

# Install python thru pyenv using brew
brew install pyenv
echo pyenv --version
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc

pyenv install anaconda2-5.2.0
pyenv install anaconda3-5.2.0
pyenv rehash
pyenv global anaconda3-5.2.0
python --version

# Install MySQL
echo Installing MySQL
brew install mysql

# Install Java
brew cask install java
brew cask install adoptopenjdk

