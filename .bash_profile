# Homebrew
brew_prefix=$(brew --prefix)
if [ -f $brew_prefix/etc/bash_completion ]; then
  . $brew_prefix/etc/bash_completion
fi

export PATH="${brew_prefix}/opt/python/libexec/bin:/usr/local/sbin:${PATH}"

source $brew_prefix/opt/autoenv/activate.sh

if [ -f $(brew --prefix)/etc/brew-wrap ];then
  source $(brew --prefix)/etc/brew-wrap
fi

# Aliases
alias vi="/usr/local/bin/vim"
alias la="ls -larth"
alias tf="terraform"
alias azlogin='az login --username $AZURE_USERNAME --password $AZURE_PASSWORD --tenant $AZURE_TENANT > /dev/null'

mse() { 
  eval $(minishift docker-env)
}

# Functions
pbc() {
  cat $1 | pbcopy
}

# Variables
export VAGRANT_DEFAULT_PROVIDER=virtualbox
export PATH=${PATH}:${HOME}/bin
export CLICOLOR=1
export GOPATH=${HOME}/go
export LSCOLORS=gxfxcxdxbxegedabagacad

# Colors for the less pager
export LESS_TERMCAP_mb=$(printf '\e[01;31m') # enter blinking mode – red
export LESS_TERMCAP_md=$(printf '\e[01;33m') # enter double-bright mode – bold, yellow
export LESS_TERMCAP_me=$(printf '\e[0m') # turn off all appearance modes (mb, md, so, us)
export LESS_TERMCAP_se=$(printf '\e[0m') # leave standout mode
export LESS_TERMCAP_so=$(printf '\e[01;32m') # enter standout mode – green
export LESS_TERMCAP_ue=$(printf '\e[0m') # leave underline mode
export LESS_TERMCAP_us=$(printf '\e[04;36m') # enter underline mode – cyan

#AWSume alias to source the AWSume script
alias awsume=". awsume"

#Auto-Complete function for AWSume
_awsume() {
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts=$(awsumepy --rolesusers)
    COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
    return 0
}
complete -F _awsume awsume

# Molecule autocomplete
eval "$(_MOLECULE_COMPLETE=source molecule)"
