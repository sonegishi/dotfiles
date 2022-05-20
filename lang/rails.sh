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
