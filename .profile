alias cssa='collins-shell asset set_attribute'
export EDITOR=vim
GREEN="\[$(tput setaf 29)\]"
PINK="\[$(tput setaf 205)\]"
RESET="\[$(tput sgr0)\]"
TEAL="\[$(tput setaf 117)\]"
GREY="\[$(tput setaf 250)\]"
export PS1="${TEAL}===============\n${GREEN}\T ${PINK}[\$(__git_ps1 "%s")\$]${RESET} \h@\w\n${GREY}\u ~> ${RESET}"
