#!/usr/bin/env bash

# Start PHP Composer aliases
alias composer-reinstall='rm composer.lock && composer install'
# End   PHP Composer aliases
alias restfpm='sudo service php7.1-fpm restart'
alias inifpm='nn /etc/php/7.1/fpm/php.ini'
alias inicli='nn /etc/php/7.1/cli/php.ini'
alias phpcliext='ll /etc/php/7.1/cli/conf.d/'
#alias restapach='sudo service apache2 restart'
# XDebug
alias xdcli='mv /etc/php/7.1/cli/conf.d/20-xdebug.ini /etc/php/7.1/cli/conf.d/20-xdebug.ini_ 2> /dev/null || mv /etc/php/7.1/cli/conf.d/20-xdebug.ini_ /etc/php/7.1/cli/conf.d/20-xdebug.ini'
alias xdfpm='mv /etc/php/7.1/fpm/conf.d/20-xdebug.ini /etc/php/7.1/fpm/conf.d/20-xdebug.ini_ 2> /dev/null && restfpm || mv /etc/php/7.1/fpm/conf.d/20-xdebug.ini_ /etc/php/7.1/fpm/conf.d/20-xdebug.ini && restfpm'
alias xd='nn /etc/php/7.1/mods-available/xdebug.ini'
alias xstatfpm='ll /etc/php/7.1/fpm/conf.d/ | grep xdebug'
alias xdef='ll /etc/php/7.1/fpm/conf.d/ | grep xdebug'
alias xd='nn /etc/php/7.1/mods-available/xdebug.ini'
#alias nnblackf='nano /etc/php/7.1/mods-available/blackfire.ini'

#Other
#alias xdbrew='nn /home/ajax/.phpbrew/php/php-5.6.24/var/db/xdebug.ini'
#alias schema_check='ac doctrine:schema:update --dump-sql'
# rsync -aXS --progress --exclude='/*/.gvfs' /test/. /disk/test/.
#alias gsu='git submodule update'
#alias gsi='git submodule init'
#alias gsgl='git submodule foreach git pull origin'
#alias appconswatch='watch "ps -ajx | grep \"php app/console\""'

#PHP ZF2
#alias zf2cmodule='php /opt/tool/zftool create module'

#DAEMONS
#alias mtqu='php /var/www/milltrade.net/public/index.php metatrader-queue'
#alias mailerqu='php /var/www/milltrade.net/public/index.php mailer-queue'
#alias amqu='php /var/www/milltrade.net/public/index.php am-queue'
#alias partnersqu='php /var/www/milltrade.net/public/index.php partners-queue'
#alias calcspread='php /var/www/milltrade.net/public/index.php calculate-partners spread'
#alias ctraderspread='php /var/www/milltrade.net/public/index.php calculate-partners ctrader-spread'
