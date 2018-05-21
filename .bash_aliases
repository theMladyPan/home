#gitovkske aliasy
alias gis='git status'
alias gic='git commit'
alias gid='git add .'
alias gib='git checkout'
alias gill='git pull'
alias gish='git push'
alias gir='git rebase'
alias gim='git merge'

#kompresia/dekompresia
alias xz='xz --threads=0'
alias zabalit='xz --threads=0 -zkv'
alias rozbalit='xz --threads=0 -dkv'
alias pigz='pigz -k'
alias unpigz='unpigz -k'

#dockerovkske aliasy
alias cleandockers='docker ps -a|grep photo|tr -s " "|cut -d " " -f 1|xargs docker stop&&docker ps -a|grep photo|tr -s " "|cut -d " " -f 1|xargs docker rm'
alias bipidocker='/bin/bash $HOME/Photoneo/docker_shortcut.sh'

#bezne aliasy
alias watch='watch -d -n1'
alias ll='ls -lah'
alias suclean='sudo apt-get autoremove&&sudo apt-get autoclean'
alias netok='ping google.sk -c 3'
alias ..='cd ..'
alias suinstall='sudo apt-get install'
alias supurge='sudo apt-get purge'
alias lookfor='apt-cache search'
alias sunano='sudo nano'
alias cmodall='sudo chmod 777'
alias cmodex='sudo chmod +x'
alias supgrade='sudo apt-get update&&sudo apt-get upgrade -y&&sudo apt-get autoremove'
alias aliases='cat ~/.bash_aliases'
alias chalias='nano ~/.bash_aliases&&. ~/.bash_aliases'
alias fhdvnc='vncserver -geometry 1920x1080'
alias hdvnc='vncserver -geometry 1024x576'
alias pls='fc -e : -1|xargs /usr/bin/sudo'
alias toppage='top -b -n 1|cat'
alias df='df -h'

function md(){
	mkdir $1 && cd $1
}

function zalohaDisku(){
	sudo dd if=$1 bs=10M | pigz -v --fast > $2
}

alias temp='while true;do clear;cat /sys/class/thermal/thermal_zone0/temp;sleep 1;done'
alias power='while true;do clear;pwr_var=$(cat /sys/class/power_supply/BAT0/power_now);echo $(( $pwr_var / 1000000)) W;sleep 1;done'

alias linc='bash /home/stanke/.support_codes/inc.sh'
alias ldec='bash /home/stanke/.support_codes/dec.sh'
