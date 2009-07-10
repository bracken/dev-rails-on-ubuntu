#!/bin/bash

echo "**Installing rails mysql"
echo "sudo apt-get install mysql-server libmysql-ruby libmysql-ruby1.8 libmysqlclient15off mysql-client-5.0 libmysqlclient-dev mysql-common mysql-server-5.0 mysql-server-core-5.0"
sudo apt-get install mysql-server mysql-client libmysql-ruby libmysql-ruby1.8 libmysqlclient15-dev
echo "sudo gem install $GEM_ARGS mysql"
sudo gem install $GEM_ARGS mysql