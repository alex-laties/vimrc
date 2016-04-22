# .bash_profile
platform='unknown'
unamestr=`uname`
if [[ "$unamestr" == 'Linux' ]]; then
  platform='linux'
elif [[ "$unamestr" == 'Darwin' ]]; then
  platform='darwin'
fi

# only if archey is available
if [ -f `which archey` ]; then
  archey -c
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
  alias l="ls -al --color=auto"
  alias ls="ls --color=auto"
elif [[ $platform == 'darwin' ]]; then
  alias l="ls -alG"
  alias ls="ls -G"
fi

for i in `ls -a ~/ | grep profile$ | grep -v bash_profile`; do . $i; done
