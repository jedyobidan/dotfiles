# Load git branch prompt script
source ~/.git-prompt.sh

export PS1="\e[94m\u\e[0m@\e[92m\h\e[0m:\e[93m\w\e[96m\$(__git_ps1) \e[0m\$ "
