#!/usr/bin/env bash
##############################################################################################################################################
#### 
#### Set of helpful aliases for php development 
#### Linux ajax-system 3.19.0-32-generic #37~14.04.1-Ubuntu SMP Thu Oct 22 09:41:40 UTC 2015 x86_64 x86_64 x86_64 GNU/Linux 
####
##############################################################################################################################################

# Start Linux aliases.sh
alias nn='nano'
alias sn='sudo nano'

# CPU MEMORY
alias top_use_mem='ps axo rss,comm,pid | awk '"'"'{ proc_list[$2]++; proc_list[$2 "," 1] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc "," 1],proc); }}'"'"' | sort -n | tail -n 20 | sort -rn | awk '"'"'{$1/=1024;printf "%.0fMB\t",$1}{print $2}'"'"''
#список процессов, наиболее активно использующих память, в мегабайтах (MB)
alias top_processes='ps axo rss,comm,pid | awk '"'"'{ proc_list[$2] += $1; } END { for (proc in proc_list) { printf("%d\t%s\n", proc_list[proc],proc); }}'"'"' | sort -n | tail -n 10 | sort -rn | awk '"'"'{$1/=1024;printf "%.0fMB\t",$1}{print $2}'"'"''

#NGINX
alias restnginx='sudo /etc/init.d/nginx restart'

alias jettyrest='sudo service jetty restart'
alias restpostgres='sudo service postgresql restart'
alias dnsreset='sudo /etc/init.d/nscd restart'
#TAR
alias targz='tar -czvf'
alias untargz='tar -xzvf'
alias tarbz='tar -cjvf'
alias untarbz='tar -xjvf'

#BASH
alias makelocal='sh make_local.sh'
alias mountimg='mount -r -o loop' # mountimg file.img /mnt
alias hosts='nn /etc/hosts'
#LOGSxy
alias logmysql='tail -F /var/log/mysql/mysql.log'
alias logernginx='tail -F /var/log/nginx/error.log'

alias logmongu='tail -F /var/log/mongodb/mongodb.log'
alias nginxerrorlog='tail -f /etc/nginx/logs/error.log'

#alias logcliphp='tail -F /var/log/cli_php_errors.log'
#alias logfpmphp='tail -F /var/log/fpm_php_errors.log'
#alias logpostgres='sudo tail -f /var/lib/postgresql/9.3/main/pg_log/postgresql.log'

#MYSQL
alias startmysql='sudo service mysql start'
alias restmysql='sudo service mysql restart'
alias stopmysql='sudo service mysql stop'
alias confmysql='nn /etc/mysql/my.cnf'

# End   Linux aliases.sh

# Start Ajax aliases

#AJAX
alias countphp='wc -l `find . -iname "*.php"`'
alias xclip="xclip -selection -c"
alias idrsapub="cat ~/.ssh/id_rsa.pub | xclip -sel clip"

## HG
#alias hgs='hg branches'
#alias hgb='hg branch'
#alias hgp='hg pull'
#alias hgh='hg push'
#alias hgm='hg merge'
#
##SVN
#alias svn-ignore='svn status | awk "/^?/{print $2}"'
#alias svn-st='svn status'
#alias svn-list='svn log -r HEAD:BASE -l'


#End   Ajax aliases
