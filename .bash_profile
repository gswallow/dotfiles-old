if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias dme="eval $(docker-machine env)"
alias vi="/usr/local/bin/vim"

export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PATH=${PATH}:${HOME}/bin

source $(brew --prefix autoenv)/activate.sh
