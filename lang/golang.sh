# Install go thru goenv using brew
brew install goenv

echo goenv --version
echo 'eval "$(goenv init -)"' >> ~/.zshrc

source ~/.zshrc

goenv install 1.10.3
goenv global 1.10.3
goenv rehash
go version
