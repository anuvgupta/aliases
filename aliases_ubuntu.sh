# aliases - ubuntu

# sudo
alias sudo='sudo ' # enables sudo for all aliases

# shell reload
alias pr="source ~/.profile && clear && echo \"~/.profile reloaded\" && pwd;" # reload profile config
alias br="source ~/.bash_profile && clear && echo \"~/.bash_profile reloaded\" && pwd;"
alias zr="source ~/.zprofile && clear && echo \"~/.zprofile reloaded\" && pwd;"

# aliases help
aliases() {
    echo
    cat ~/aliases_ubuntu.txt
    echo
    echo
}
_aliases() {
    echo
    cat ~/aliases_ubuntu.sh
    echo
    echo
}

# tail
alias tf='tail -f'

# ip
alias ipi='ipint' # internal ip
alias ipint='hostname -I'
alias ifl='ifloc' # internal ip + ifconfig info
alias ifloc='ifconfig | grep "inet " | grep -v 127.0.0.1'
alias ipe='ipext' # external ip (alt: 'curl ipinfo.io/ip')
alias ipext='curl http://ipecho.net/plain; echo'

# clear
alias c="clear; pwd;"
alias cl="clear; l;"
alias cll="clear; ll;"

# cd/ls
alias l='pwd; ls -a' # list files
alias ll='pwd; ls -lSrah' # list all files + details, sort by size
alias lt='pwd; ls -ltrah' # list all files + details, sort by time
alias l.='pwd;ls -d .*' # list hidden files
alias ..='cd ..;pwd;' # up one
alias ...='cd ../../;pwd;' # up two
alias ....='cd ../../../;pwd;' # up three

# mkdir/rm
alias mkd='mkdir -p' # create parent dirs
alias mkcd='mkcd_temp(){ mkdir -p "$1"; cd "$1"; pwd; }; mkcd_temp' # create and enter directory
# alias rm='rm -iv'

# web server
alias http='python3 -m http.server' # simple python http server

# process
alias psa='ps -A' # list all processes
alias psg='ps -A | grep' # search process list
alias pg='pgrep' # search PIDs by process name
alias k='kill'
alias k9='kill -9'
alias ka='killall'

# ports
alias pl='lsof -i -P -n | grep LISTEN' # list listening ports
alias po='lsof -i -P -n | grep -v LISTEN' # list open ports
alias p='ports_temp(){ if [ "$1" = "" ]; then lsof -i -P -n; else lsof -P -n -i ":$1"; fi; }; ports_temp' # list all ports or services on given port

# date/time
alias d='date +%F'
alias t='date +"%T"'
alias now='t'
