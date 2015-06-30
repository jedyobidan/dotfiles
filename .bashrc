# Load git branch prompt script
source ~/.git-prompt.sh

# PS1
function __prompt() {
    local EXIT="$?"
    local status=""
    if [ $EXIT != 0 ]; then
        status="\e[31m[${EXIT}] "
    fi
    PS1="${status}\e[94m\u\e[39m@\e[92m\h\e[39m:\e[93m\w\e[96m\$(__git_ps1)\e[0m \$ "
}
export PROMPT_COMMAND=__prompt

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
