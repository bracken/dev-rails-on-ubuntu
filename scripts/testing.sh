#!/bin/bash

echo "**Installing testing gems: rspec, cucumber"
echo "sudo gem install $GEM_ARGS rspec rspec-rails cucumber"
sudo gem install $GEM_ARGS rspec rspec-rails cucumber
