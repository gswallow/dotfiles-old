if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

alias dme="eval $(docker-machine env)"
alias vi="/usr/local/bin/vim"
