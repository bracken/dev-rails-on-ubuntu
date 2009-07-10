#!/bin/bash

echo "**Installing rails gem"

# are there any very common rails gems that should be included here?
echo "sudo gem install $GEM_ARGS rails capistrano"
sudo gem install $GEM_ARGS rails capistrano

