#!/usr/bin/env bash
#System
source /etc/profile.d/maxz/mouse.sh
# EXTEND
source /etc/profile.d/maxz/dev_aliases.sh
source /etc/profile.d/maxz/php_aliases.sh
source /etc/profile.d/maxz/symfony_aliases.sh
source /etc/profile.d/maxz/mage_aliases.sh
source /etc/profile.d/maxz/symfony_maxlayer.sh


# MAXZ aliases
alias maxzerrorlog='tail -f /var/log/nginx/maxz_error.log'

export JAVA_HOME=/home/ajax/opt/jdk1.8.0_144/bin/java
export PATH=$PATH:/home/ajax/opt/jdk1.8.0_144/bin
#source /home/ajax/.phpbrew/bashrc

