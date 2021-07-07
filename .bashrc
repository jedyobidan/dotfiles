# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

# Load some scripts
source ~/.git-prompt.sh
source ~/.ansi-colors.sh
source ~/.grep.sh

declare -a __vcs_ps1
__vcs_ps1=('__git_ps1')

# PS1
function __prompt() {
    local EXIT="${1:-$?}"
    local status=""
    if [ $EXIT != 0 ]; then
        status="\[${fg_Red}\][${EXIT}]\n"
    fi
    local user="\[${fgb_Blu}\]\u"
    local at="\[${color_reset}\]@"
    local host="\[${fgb_Gre}\]\h"
    local colon="\[${color_reset}\]:"
    local path="\[${fgb_Yel}\]\W"
    local vcs="\[${fgb_Cya}\]$(__vcs)"
    local sigil="\[${color_reset}\]\$"
    PS1="${status}${user}${at}${host}${colon}${path}${vcs} ${sigil} "
}
export PROMPT_COMMAND=__prompt

function __prompt_suffix() {
    local suffix="$1"
    PS1="${PS1%\$ }${suffix} \[${color_reset}\]\$ "
}

function __vcs() {
    for i in "${!__vcs_ps1[@]}"; do
        ${__vcs_ps1[$i]}
    done
}

# Aliases
ls --color=auto &> /dev/null && alias ls='ls --color=auto -pF'
alias ll='ls -la'
alias ..='cd ..'
alias mkdir='mkdir -pv'
alias now='date +"%T"'
alias ping='ping -c 4'
alias vi='vim'
alias home='cd ~'
alias less='less -FX'
alias resource='source ~/.bashrc'
export EDITOR='vim'

export PATH="$PATH:$HOME/bin"

# Run extensions
if [ "$(ls -A ~/.bashrc.d/*.sh)" ]; then
    for script in ~/.bashrc.d/*.sh; do
        source $script
    done
fi
