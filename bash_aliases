###############################################################################
# .bash aliases
###############################################################################
# Customization BALAJI 
###############################################################################
###############################################################################
# Yum related aliases
alias yumi='sudo yum install --disablerepo=rpm* --disablerepo=adobe*'
alias yumif='sudo yum install -y --disablerepo=rpm* --disablerepo=adobe*'
alias yums='sudo yum search --disablerepo=rpm* --disablerepo=adobe*'
alias yume='sudo yum erase --disablerepo=rpm* --disablerepo=adobe*'
alias yumc='sudo yum clean all'
alias yumu='sudo yum update'
alias yumkill='sudo pkill yum; sudo rm -rf /var/run/yum.pid'
alias dr=' --disablerepo=rpm*'
###############################################################################
# Emacs with no window option
alias gd='cd; cd Downloads'
alias en='emacs -nw'
alias e='emacs'
alias eq='emacs-23.3 -nw '
###############################################################################
###############################################################################
###############################################################################
# Misc aliases
alias netbeans='~/netbeans-7.1.2/bin/netbeans &'
alias x='exit'
alias d='date'
alias c='clear'
alias f='firefox &'
alias k='sudo kill -9'
alias ka='killall '
alias l='ls -ltrh'
alias paux='ps aux | grep '
alias s='slock'
alias v='vlc'
alias u='uptime'
alias i='ifconfig'
alias ki='read $PROCESS_NAME;sudo pidof $PROCESS_NAME | xargs sudo  kill -9'
alias rcntlm='killcntlm;cn'
alias wgetl='wget --no-proxy -c --limit-rate=100k '
alias ch='ping 192.168.0.1'
alias glg='git log --graph --oneline --all'
alias killp='sudo pidof $@ | sudo xargs kill -9'
###############################################################################
###############################################################################
