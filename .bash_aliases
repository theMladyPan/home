#gitovkske aliasy
alias gis='git status'
alias gic='git commit'
alias gid='git add'
alias gout='git checkout'
alias gull='git pull'
alias gush='git push'
alias gir='git rebase'
alias gim='git merge'
alias gitch='git fetch'

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

function md(){
	mkdir $1 && cd $1
}

function zalohaDisku(){
	sudo dd if=$1 bs=10M | pigz -v --fast > $2
}
alias diskInfo='fdisk -lu'

alias stats='bash /home/stanke/.support_codes/stats.sh'
