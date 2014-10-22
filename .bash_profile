# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH

#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

alias cs="collins-shell"

alias ls="ls --color=auto"

alias l="ls -al --color=auto"

. ~/.profile
. ~/.go_profile
. ~/.git_profile
. ~/.scala_profile
