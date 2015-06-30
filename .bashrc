# Load git branch prompt script
source ~/.git-prompt.sh

export PS1="\e[94m\u\e[0m@\e[92m\h\e[0m:\e[93m\w\e[96m\$(__git_ps1) \e[0m\$ "

# Aliases
alias ls='ls -Gp'
alias ll='ls -la'
alias ..='cd ..'
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias mkdir='mkdir -pv'
alias now='date + "%T"'
alias ping='ping -c 4'
alias rm='rm -I --preserve-root'

# Fix colors for Mac OS/iTerm
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"
