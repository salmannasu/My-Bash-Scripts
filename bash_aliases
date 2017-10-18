## Add this file as bash_aliases in ~/.bash_rc
# You may need to add something like
# 
# MY_BASH_ALIASES="~/Documents/My_Scripts/bash_aliases"
# if [ -f ${MY_BASH_ALIASES} ]; then
#     . ${MY_BASH_ALIASES}
#         echo "Loaded : "${MY_BASH_ALIASES}
#         fi
#

alias composer='/home/ateeq-ahmed/Documents/composer/./composer.phar'
alias composer-dump='/home/ateeq-ahmed/Documents/composer/./composer.phar dump-autoload --optimize'
alias fix-pdf='cp ../Downloads/wkhtmltox/bin/wkhtmltopdf vendor/h4cc/wkhtmltopdf-amd64/bin/wkhtmltopdf-amd64'
alias unfix-pdf='git co -- vendor/h4cc/wkhtmltopdf-amd64/bin/wkhtmltopdf-amd64'
alias subl='/opt/sublime_text/sublime_text'
alias nginx_restart='sudo systemctl restart nginx-stack.service'
alias youtube-dl-mp3='youtube-dl -x --audio-quality 9 --audio-format mp3'
alias git_stat="git fetch origin && git status &&  git branch -vv | grep -E 'ahead|behind'"
alias rm_orig='for files in `find ./ -name *.orig`; do rm $files; done'
alias rm_temp='sudo rm -rf /tmp/* /var/tmp/*'
alias fetch_behind='git fetch origin && git_pull && git branch -v | grep -E "behind" | sed -r "s/[ *]\s(\S*).*().*/\1 \2/g" | while read line; do echo pulling $line; git fetch origin $line:$line ; done'
alias push_ahead='git fetch origin && git branch -v | grep -E "ahead" | sed -r "s/[ *]\s(\S*).*().*/\1 \2/g" | while read line; do echo pushing $line; git push origin $line ; done'
alias azher_halframework_mount='sshfs azher@halframework.azher:/Users/azher/sites/halframework -o nonempty /home/ateeq-ahmed/azher_halframework'
alias azher_halframework_wip_mount='sshfs azher@halframework.azher:/Users/azher/sites/halframework_wip -o nonempty /home/ateeq-ahmed/azher_halframework_wip'
alias azher_home_mount='sshfs azher@halframework.azher:/Users/azher -o nonempty /home/ateeq-ahmed/azher_Mac_home'
alias azher_halframework_unmount='fusermount -u /home/ateeq-ahmed/azher_halframework'
alias azher_halframework_wip_unmount='fusermount -u /home/ateeq-ahmed/azher_halframework_wip'
alias azher_home_unmount='fusermount -u /home/ateeq-ahmed/azher_Mac_home'
alias azher_halframework_xdebug='ssh -R 9000:localhost:9000 azher@halframework.azher'
alias zrehan_home_mount='sshfs zrehan@zrehan.pc:/home/zrehan -o nonempty /home/ateeq-ahmed/zrehan_home'
alias zrehan_home_unmount='fusermount -u /home/ateeq-ahmed/zrehan_home'
alias sudo-docker-compose="sudo docker-compose"
alias use_docker="sudo /opt/nginxstack-1.10.1-1/ctlscript.sh stop && sudo systemctl stop redis && curDir=`pwd` && echo ${curDir} && cd /home/ateeq-ahmed/halframework/dockerdir && start_docker && cd ${curDir} && echo ${curDir}"
alias use_stack="curDir=`pwd` && echo ${cirDir} && cd /home/ateeq-ahmed/halframework/dockerdir && stop_docker && cd ${curDir} && sudo /opt/nginxstack-1.10.1-1/ctlscript.sh start && sudo systemctl start redis"
alias start_docker="sudo-docker-compose up -d"
alias stop_docker="sudo-docker-compose down"
alias stop_docker="sudo-docker-compose down"

##
# From Home PC
#



alias youtube-dl-mp3='youtube-dl -x --audio-format mp3 --audio-quality 0'
alias ateeq-pc='ssh -X ateeq@ateeq-pc'
alias ateeq-rpi='ssh -X pi@ateeq-rpi'
alias sshfs-ateeq-pc='sshfs ateeq@ateeq-pc:/home/ateeq/ /run/media/ateeq-ahmed/ATEEQ-PC'
alias sshfs-ateeq-rpi='if [[ ! -d "/run/media/ateeq-ahmed/ATEEQ-RPI" ]]; then sudo mkdir -p /run/media/ateeq-ahmed/ATEEQ-RPI && sudo chown -R ateeq-ahmed:ateeq-ahmed /run/media/ateeq-ahmed/ATEEQ-RPI; else rm -rf /run/media/ateeq-ahmed/ATEEQ-RPI/*; fi && sshfs pi@ateeq-rpi:/home/pi/ /run/media/ateeq-ahmed/ATEEQ-RPI'
alias unsshfs-ateeq-rpi='fusermount -u /run/media/ateeq-ahmed/ATEEQ-RPI && if [[ -d  "/media/ateeq-ahmed/ATEEQ-RPI/*" ]]; then rm -rf /media/ateeq-ahmed/ATEEQ-RPI/*; fi'
alias composer-dump-home-lp='/home/ateeq-ahmed/Documents/work/./composer.phar dump-autoload'
alias gitkraken='/opt/GitKraken/gitkraken'
alias weka='java -jar /home/ateeq-ahmed/Downloads/weka-3-8-0/weka.jar'
alias hal='cd /home/ateeq-ahmed/Documents/work/halframework'

alias fix-pdf-home-lp='cp /home/ateeq-ahmed/Downloads/wkhtmltox/bin/wkhtmltopdf /home/ateeq-ahmed/Documents/work/halframework/vendor/h4cc/wkhtmltopdf-amd64/bin/wkhtmltopdf-amd64'
alias unfix-pdf-home-lp='git co -- vendor/h4cc/wkhtmltopdf-amd64/bin/wkhtmltopdf-amd64'
alias import_schema=' ls *.sql | while read line; do echo $line; line=`basename $line .sql`; echo "Backing Up ${line}!"; mysqldump -uroot $line > ${line}_`date +%Y-%m-%d:%H:%M:%S`_bak.sql ; echo "Done Backing Up!"; echo "Dropping Tables in $line"; mysqldump -uroot $line --add-drop-table | grep "DROP TABLE" | mysql -uroot $line ; echo "Done Dropping"; echo "Importing $line"; mysql -uroot $line < $line.sql; echo "Done importing $line"; done'
alias vga_card_status='sudo cat /sys/kernel/debug/vgaswitcheroo/switch'
alias use_amd='DRI_PRIME=1'
alias phpd='php -dxdebug.remote_autostart'

