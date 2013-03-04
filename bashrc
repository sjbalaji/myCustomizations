###############################################################################
# .bashrc
###############################################################################
#default options below
###############################################################################
# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi
# User specific aliases and functions
###############################################################################
# Customization BALAJI 
###############################################################################
# Start ssh deamon
sudo /etc/init.d/sshd start
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
function mgrep() {
    grep -rni $1 . 
}
alias gd='cd; cd Downloads'
alias en='emacs -nw'
alias e='emacs'
#alias eq='emacs-23.3 -nw '
alias eq=' emacsclient -t '
#alias killp='pidof $@ | xargs kill -9'
alias ms="mgrep"
###############################################################################
# Set the wallpaper in dwm or xmonad 
#feh --bg-cente /home/balaji/Wallpapers/dual_screen_wallpaper_110.jpg
###############################################################################
# Matlab no window
###############################################################################
# Misc aliases
#alias netbeans='~/netbeans-7.1.2/bin/netbeans &'
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
alias work='ssh -X balaji@10.6.9.52'
alias vm='sshpass -p doslab123 ssh doslab@10.6.9.23 -X'
alias kq='pkill qemu'
alias kp='pidof @ | xargs kill -9 '
###############################################################################
###############################################################################
# SSH related aliases
###############################################################################
###############################################################################
# Kultted from trac >:)
# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
#[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# ... or force ignoredups and ignorespace
HISTCONTROL=ignoredups:ignorespace

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000
HISTFILESIZE=2000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

function realpath()
{
    f=$1

    if [ -d $f ]; then
        base=""
        dir=$f
    else
        base="/$(basename $f)"
        dir=$(dirname $f)
    fi

    dir=$(cd $dir && /bin/pwd)

    echo "$dir$base"
}

# Set prompt path to max 2 levels for best compromise of readability and usefulness
promptpath () {
    realpwd=$(realpath $PWD)
    realhome=$(realpath $HOME)

    # if we are in the home directory
    if echo $realpwd | grep -q "^$realhome"; then
        path=$(echo $realpwd | sed "s|^$realhome|\~|")
        if [ $path = "~" ] || [ $(dirname $path) = "~" ]; then
            echo $path
        else
            echo $(basename $(dirname $path))/$(basename $path)
        fi
        return
    fi

    path_dir=$(dirname $PWD)
    # if our parent dir is a top-level directory, don't mangle it
    if [ $(dirname $path_dir) = "/" ]; then
        echo $PWD
    else
        path_parent=$(basename $path_dir)
        path_base=$(basename $PWD)

        echo $path_parent/$path_base
    fi
}

# If this is an xterm set the title to user@host:dir
case "$TERM" in
    xterm*|rxvt*)
    PROMPT_COMMAND='echo -ne "\033]0;${USER}@${HOSTNAME}: ${PWD/$HOME/~}\007"'
    ;;
    *)
    ;;
esac
source /etc/git-completion.bash
source /etc/git-prompt.sh

if [ "$TERM" != "dumb" ]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    # Set a terminal prompt style (default is fancy color prompt)
    PS1="${debian_chroot:+($debian_chroot)}\u@\h\[\e[32;1m\]\[\e[37;1m\]\`if [ \$? = 0 ]; then echo \[\e[33m\] $(__git_ps1) $(promptpath) \[\e[0m\]; else echo \[\e[31m\] X\( $(promptpath) \[\e[0m\]; fi\`$ "
# PS1='${debian_chroot:+($debian_chroot)}\u@\h `if [ \$? = 0 ]; then echo \[\e[33m\] :\) $(promptpath)\$; else echo \[\e[31m\] X\ $(promptpath) (\[\e[0m\]; fi'
else
    alias ls="ls -F"
    alias ll='ls -alF'
    alias la='ls -A'
    alias l='ls -CF'
    PS1="${debian_chroot:+($debian_chroot)}\u@\h\[\e[32;1m\]\[\e[37;1m\]\`if [ \$? = 0 ]; then echo \[\e[33m\] :\) $(promptpath) \[\e[0m\]; else echo \[\e[31m\] X\( $(promptpath) \[\e[0m\]; fi\`$ "
#    PS1='${debian_chroot:+($debian_chroot)}\u@\h `if [ \$? = 0 ]; then echo \[\e[33m\] :\) $(promptpath)\$; else echo \[\e[31m\] X\ $(promptpath) (\[\e[0m\]; fi`'
fi

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

run_scripts()
{
    for script in $1/*; do
        [ -x "$script" ] || continue
        . $script
    done
}

run_scripts $HOME/.bashrc.d
##############################################################################
# For Hadoop :)
export JAVA_HOME=/media/oldfs/jdk1.6.0_31
export M2_HOME=/media/oldfs/apache-maven-3.0.3
export M2=$M2_HOME/bin
export STORM_HOME=/home/balaji/projects/storm/storm-0.7.0-SNAPSHOT
export SCALA_HOME=/home/balaji/projects/storm/scala-2.8.2.final
export PATH=/home/balaji/projects/storm/scala-2.8.2.final/bin:$JAVA_HOME/bin:$M2:$STORM_HOME/bin:$PATH:~/bin:~/scripts
export HADOOP_PREFIX_HOME=/home/balaji/YARN/hadoop-common/hadoop-dist/target/hadoop-0.24.0-SNAPSHOT
export mvn='/media/oldfs/apache-maven-3.0.3/bin/./mvn'
##############################################################################
# For cuda
# # * Please make sure your PATH includes /usr/local/cuda/bin
# # * Please make sure your LD_LIBRARY_PATH
# # *   for 32-bit Linux distributions includes /usr/local/cuda/lib
# # *   for 64-bit Linux distributions includes /usr/local/cuda/lib64:/usr/local/cuda/lib
# # * OR
# # *   for 32-bit Linux distributions add /usr/local/cuda/lib
# # *   for 64-bit Linux distributions add /usr/local/cuda/lib64 and /usr/local/cuda/lib
# # * to /etc/ld.so.conf and run ldconfig as root

# # * Please read the release notes in /usr/local/cuda/doc/

# # * To uninstall CUDA, delete /usr/local/cuda
# # * Installation Complete

export LD_LIBRARY_PATH=/usr/local/lib:/usr/lib64/:/usr/local/cuda/lib64:/usr/local/cuda/lib
export PATH=$PATH:$HADOOP_PREFIX_HOME/bin:/usr/local/cuda/bin
###############################################################################
PS1="\[\e[32;1m\]\[\e[37;1m\]\`if [ \$? = 0 ]; then echo \[\e[33m\] :\)  \[\e[0m\]; else echo \[\e[31m\] X\(\[\e[0m\]; fi\`\[\e[32;1m\] \[\e[32;1m\](\[\e[37;1m\]\h:\u\[\e[32;1m\])-(\[\e[37;1m\]\j\[\e[32;1m\])-(\[\e[37;1m\]\w\[\e[32;1m\])\n\[\e[0m\]"
PS1='${debian_chroot:+($debian_chroot)}\[\033[1;32m\]\u@\h\[\033[0m\] \[\033[36m\][\W]\[\033[0m\] \[\033[1;30m\]#\#\[\033[0m\] \[\033[33m\]$(__git_ps1 "«%s»")\[\033[0m\] →  '
###############################################################################
# Gem5 path variables
export M5_PATH=/media/oldfs/systemImages
###############################################################################
