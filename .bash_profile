brew_prefix=$(brew --prefix)
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

# Aliases
alias vi="/usr/local/bin/vim"
alias la="ls -larth"
alias tf="terraform"

dme() {
  eval $(docker-machine env)
  }

# Functions
pbc() {
  cat $1 | pbcopy
}

# Variables
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PATH=${PATH}:${HOME}/bin
export CLICOLOR=1
export LSCOLORS=gxfxcxdxbxegedabagacad

# Colors for the less pager
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
export LESS_TERMCAP_md=$(printf '\e[01;33m') # enter double-bright mode – bold, yellow
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;32m') # enter standout mode – green
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan

source $brew_prefix/opt/autoenv/activate.sh

