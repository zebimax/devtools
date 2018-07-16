#!/usr/bin/env bash
#SYMFONY
alias dev_clear='bin/console cache:clear'
alias prod_clear='bin/console cache:clear --env prod'
alias clearnd='bin/console cache:clear --no-debug'
alias assetic='bin/console assetic:dump'
alias assets='bin/console assets:install'

alias rmappcache='rm -rf var/cache/*'
alias rmappcache-dev='rm -rf var/cache/dev/*'
alias rmappcache-prod='rm -rf var/cache/prod/*'
alias rmappcache-test='rm -rf var/cache/test/*'

alias rmvendors='rm -rf vendor/*'
alias rmapplogs='rm -rf var/logs/*'

alias bc='bin/console'
#alias params='cat app/config/parameters.yml'
