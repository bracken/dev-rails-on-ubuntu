#!/bin/bash
#These values will need to be updated for the latest version of ruby gems
tar_url=http://rubyforge.org/frs/download.php/57643/rubygems-1.3.4.tgz
current_version=rubygems-1.3.4
tar_file=$current_version.tgz

echo "**Installing Ruby Gems"

echo "Downloading and unpacking $current_version"
wget $tar_url
tar -xzf $tar_file

cd $PROJECT_DIR/$current_version
echo "Installing Ruby Gems and creating symlink"
echo "sudo ruby setup.rb"
sudo ruby setup.rb
echo "sudo ln -s /usr/bin/gem1.8 /usr/bin/gem"
sudo ln -s /usr/bin/gem1.8 /usr/bin/gem

cd $PROJECT_DIR

echo "Removing Ruby Gems files"
rm -r $PROJECT_DIR/$current_version
rm $PROJECT_DIR/$tar_file
