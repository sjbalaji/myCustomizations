zstyle ':completion:*:*:git:*' script ~/.zsh/git-completion.zsh
fpath=(~/.zsh $fpath)
source /etc/git-completion.bash
source /etc/git-prompt.sh
source ~/.zsh/zsh-git-prompt/zshrc.sh
# an example prompt
autoload -U colors && colors
PROMPT='%{%F{red}%}%n%{%f%}@%{%F{blue}%}%m %{%F{yellow}%}%~%b$(git_super_status) %# '
GIT_PROMPT_EXECUTABLE="haskell"

alias eq=' emacsclient -t '
alias l='ls -ltrh'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls="ls -F"
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias testserver="ssh -i /Users/balaji/keys/dhilkey2_dsa.pem ubuntu@54.235.246.5"
alias releaseserver="ssh -i /Users/balaji/keys/dhilkey2_dsa.pem ubuntu@54.227.252.7"
