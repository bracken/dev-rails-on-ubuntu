#!/bin/bash

echo "**Installing sqlite"
echo "sudo apt-get install sqlite3 libsqlite3-dev libsqlite3-ruby"
sudo apt-get install sqlite3 libsqlite3-dev libsqlite3-ruby
echo "sudo gem install $GEM_ARGS sqlite3-ruby"
sudo gem install $GEM_ARGS sqlite3-ruby