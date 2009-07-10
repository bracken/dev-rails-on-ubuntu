#!/bin/bash

# settings and defaults
export PROJECT_DIR=`dirname "$0"`
cd $PROJECT_DIR
export PROJECT_DIR=`pwd`

export GEM_ARGS="--no-rdoc --no-ri"
export MYSQL=1

#process command line args
for var in "$@"
do
  if [ "$var" = "-h" -o "$var" = "--help" ]; then
    echo "Usage:"
    echo "dev-rails-on-ubuntu [-rdoc-ri] [-no-mysql] [-h,--help]"
    echo "-h,--help	Show this help"
	echo "-rdoc-ri	By default gems are installed without documentation ('--no-rdoc --no-ri'),"
	echo "		this option enables documentation"
	echo "-no-mysql	This flag disables the MySql install"
    exit 1
  fi
  if [ "$var" = "-rdoc-ri" ]; then
    export GEM_ARGS=""
  fi
  if [ "$var" = "-no-mysql" ]; then
    export MYSQL=0
  fi
done

sudo apt-get update

#Compiling tools/ruby core packages/ssl 
sudo apt-get install build-essential ruby ruby-dev ri rdoc openssl libssl-dev libopenssl-ruby

#Latest ruby gems and rdoc
$PROJECT_DIR/scripts/ruby_gems.sh

#rails
$PROJECT_DIR/scripts/rails.sh

#testing frameworks
$PROJECT_DIR/scripts/testing.sh

#Irb and irb settings file
$PROJECT_DIR/scripts/irb.sh

#Some common database packages sqlite/mysql
$PROJECT_DIR/scripts/sqlite.sh
if [ "$MYSQL" = 1 ]; then
  $PROJECT_DIR/scripts/mysql.sh
else
  echo "skipping mysql install"
fi

#git
$PROJECT_DIR/scripts/git.sh

#Common command line aliases
$PROJECT_DIR/scripts/aliases.sh

