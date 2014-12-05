#!/bin/bash

su - vagrant <<ENDCOMMANDS
echo "Running as: `whoami`"
source ~/.bash_profile
cd /home/vagrant/collectd
bundle install
bundle exec omnibus build collectd --log-level=debug | tee -a build.log
echo "done now..."
ENDCOMMANDS
