brew_prefix=$(brew --prefix)
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# Aliases
alias dme="eval $(docker-machine env)"
alias vi="/usr/local/bin/vim"

# Functions
pbc() {
  cat $1 | pbcopy
}

# Variables
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PATH=${PATH}:${HOME}/bin
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

source $brew_prefix/opt/autoenv/activate.sh
