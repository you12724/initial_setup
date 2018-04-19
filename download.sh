#!/bin/bash

#
# Install homebrew.
#
echo " --------- Homebrew ----------"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade --all --cleanup
brew -v
echo " ------------ END ------------"

#
# Install git
#
echo " ------------ Git ------------"
brew install git
git --version
echo " ------------ END ------------"

#
# Install ruby
#
echo " ------------ Ruby ------------"
brew install rbenv ruby-build
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi' >> ~/.bash_profile

rbenv install $(rbenv install -l | grep -v - | tail -1)
rbenv global $(rbenv install -l | grep -v - | tail -1)
gem install bundler
rbenv rehash
echo " ------------ END ------------"

#
# Install mysql
#
echo " ------------ Mysql ----------"
brew install mysql
echo " ------------ END ------------"

#
# Install node
#
echo " ------------ Node -----------"
brew install nvm
echo 'export NVM_DIR="$HOME/.nvm"' >> ~/.bash_profile
echo '. "/usr/local/opt/nvm/nvm.sh"' >> ~/.bash_profile
nvm install node
echo " ------------ END ------------"

#
# Install golang
#
echo " ---------- Golang -----------"
brew install go
echo 'export PATH=$PATH:/usr/local/opt/go/libexec/bin' >> ~/.bash_profile
mkdir -p ~/Developments/golang/{src,bin,pkg}
echo 'export GOPATH="$HOME/Developments/golang"' >> ~/.bash_profile
go get -u golang.org/x/tools/cmd/goimports
go get -u golang.org/x/tools/cmd/gorename
go get -u github.com/sqs/goreturns
go get -u github.com/nsf/gocode
go get -u github.com/alecthomas/gometalinter
go get -u github.com/zmb3/gogetdoc
go get -u github.com/zmb3/goaddimport
go get -u github.com/rogpeppe/godef
go get -u golang.org/x/tools/cmd/guru
go get -u github.com/fatih/gomodifytags
go get -u github.com/tpng/gopkgs
echo " ------------ END ------------"
