#!/bin/bash

#
# Install web apps.
#
echo " ----- Install web apps ------"
brew tap caskroom/versions
brew cask install java8
brew cask install android-studio
brew cask install atom
apm install --packages-file atom-packages.txt
apm update
brew cask install docker
brew cask install google-chrome
brew cask install iterm2
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install mysqlworkbench
brew cask install bettertouchtool
brew cask install vivaldi
brew cask install postman
brew cask install slate
brew cask install flux
