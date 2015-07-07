# Load some scripts
source ~/.git-prompt.sh
source ~/.ansi-colors.sh

# PS1
function __prompt() {
    local EXIT="$?"
    local status=""
    if [ $EXIT != 0 ]; then
        status="${fg_Red}[${EXIT}] "
    fi
    PS1="${status}${fgb_Blu}\u${color_reset}@${fgb_Gre}\h${color_reset}:${fgb_Yel}\w${fgb_Cya}\$(__git_ps1)${color_reset} \$ "
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
