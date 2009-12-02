#!/bin/bash

echo "**Installing Irb"

sudo apt-get install irb --assume-yes

#copy config file if it doesn't exist
# irbrc file from Duane Johnson: http://blog.inquirylabs.com/2007/08/29/enhancing-the-irb-experience/
if [ -e ~/.irbrc ]; then
  echo "Not copying .irbrc settings because a settings file already exists."
else
  echo "Copying .irbrc settings file to ~/.irbrc, and installing gem: wirble"
  echo "cp $PROJECT_DIR/files/irbrc ~/.irbrc"
  cp $PROJECT_DIR/files/irbrc ~/.irbrc
  echo "sudo gem install $GEM_ARGS wirble"
  sudo gem install $GEM_ARGS wirble
fi
