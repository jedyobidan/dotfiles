# Load some scripts
source ~/.git-prompt.sh
source ~/.ansi-colors.sh
source ~/.grep.sh

# PS1
function __prompt() {
    local EXIT="${1:-$?}"
    local status=""
    if [ $EXIT != 0 ]; then
        status="${fg_Red}[${EXIT}] "
    fi
    PS1="${status}${fgb_Blu}\u${color_reset}@${fgb_Gre}\h${color_reset}:${fgb_Yel}\w${fgb_Cya}\$(__git_ps1)${color_reset} \$ "
}
export PROMPT_COMMAND=__prompt

function __prompt_suffix() {
    local suffix="$1"
    PS1="${PS1%\$ }${suffix} ${color_reset}\$ "
}

# Aliases
ls --color=auto &> /dev/null && alias ls='ls --color=auto -pF' ||
alias ll='ls -la'
alias ..='cd ..'
alias grep='jgrep'
alias mkdir='mkdir -pv'
alias now='date +"%T"'
alias ping='ping -c 4'
alias rm='rm -I --preserve-root'
alias vi='vim'
alias home='cd ~'

# Fix colors for Mac OS/iTerm
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Run extensions
if [ -d ~/bashrc.d ]; then
    for script in ~/bashrc.d/*.sh; do
        source $script
    done
fi
