# .bash_profile
platform='unknown'
unamestr=$(uname)
if [ -d "/mnt/c/Users" ]; then
  platform='windows'
elif [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='darwin'
fi
# we have to modify default coloring on windows
if [[ $platform == 'windows' ]]; then
  LS_COLORS="ow=01;36;40" && export LS_COLORS
  export WINDOWS10=1
fi

# only if archey is available
if [ -f "$(which archey 2>/dev/null)" ]; then
  archey -c -o
fi

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# PATH MODIFICATIONS
if [ -d /Library/Frameworks/Python.framework/Versions/3.4/bin ]; then
  PATH=/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}
fi
PATH=$PATH:$HOME/bin
export PATH

#JAVA
if [ -f /usr/libexec/java_home ]; then
  export JAVA_HOME=$(/usr/libexec/java_home)
fi

if [[ $platform == 'linux' ]]; then
  alias l="ls -F -al --color=auto"
  alias ls="ls -F --color=auto"
elif [[ $platform == 'darwin' ]]; then
  alias l="ls -alG"
  alias ls="ls -G"
  source /Library/Developer/CommandLineTools/usr/share/git-core/git-prompt.sh
fi

#share history across bash sessions
export HISTCONTROL=ignoredups:erasedups  # no duplicate entries
export HISTSIZE=100000                   # big big history
export HISTFILESIZE=100000               # big big history
shopt -s histappend                      # append to history, don't overwrite it

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

for i in `ls -a ~/ | grep profile$ | grep -v bash_profile`; do . $i; done
