#!/usr/local/bin/zsh

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
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.zshrc
source ~/.zshrc

echo Installing rbenv
rbenv install 2.5.1
rbenv global 2.5.1

# Install Rails
echo Installing Rails
gem install rails
rbenv rehash

# Install go using goenv
brew install goenv

echo 'export GOENV_ROOT=$HOME/.goenv' >> ~/.zshrc
echo 'export PATH=$GOENV_ROOT/bin:$PATH' >> ~/.zshrc

eval "$(goenv init -)"

goenv install 1.10.3
goenv global 1.10.3
goenv rehash

echo 'export GOPATH=$HOME/go' >> ~/.zshrc
echo 'export PATH=$PATH:$GOPATH/bin' >> ~/.zshrc
source ~./.zshrc

# Install MySQL
echo Installing MySQL
brew update
brew install mysql

