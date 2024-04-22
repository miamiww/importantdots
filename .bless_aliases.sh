echo 'loading bless commands'

alias editApacheConf='vim /usr/local/etc/httpd/httpd.conf'
alias editVHosts='vim /usr/local/etc/httpd/extra/httpd-vhosts.conf'

alias restartApache='sudo apachectl -k restart'
alias stopApache='sudo apachectl stop; sudo httpd -k stop;brew services stop httpd';
alias watchApacheErrors='tail -f /usr/local/var/log/php-fpm.log'


blesshProd(){
	echo 'j7.p2Y8J)>qw'
	ssh ssh-214827-msimmer@blessberlin.com
}

alias checkApacheErrors='less /usr/local/log/httpd/error_log'
