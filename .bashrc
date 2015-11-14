# Load some scripts
source ~/.git-prompt.sh
source ~/.ansi-colors.sh
source ~/.grep.sh

# PS1
function __prompt() {
    local EXIT="${1:-$?}"
    local status=""
    if [ $EXIT != 0 ]; then
        status="\[${fg_Red}\][${EXIT}] "
    fi
    local user="\[${fgb_Blu}\]\u"
    local at="\[${color_reset}\]@"
    local host="\[${fgb_Gre}\]\h"
    local colon="\[${color_reset}\]:"
    local path="\[${fgb_Yel}\]\w"
    local git="\[${fgb_Cya}\]\$(__git_ps1)"
    local sigil="\[${color_reset}\]\$"
    PS1="${status}${user}${at}${host}${colon}${path}${git} ${sigil} "
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
alias less='less -FX'

# Fix colors for Mac OS/iTerm
export LSCOLORS="ExGxBxDxCxEgEdxbxgxcxd"

# Run extensions
if [ -d ~/bashrc.d ]; then
    for script in ~/bashrc.d/*.sh; do
        source $script
    done
fi
