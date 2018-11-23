# in case i want to use this somewhere else, we're putting it on there.
export ZSH="/Users/rod/.oh-my-zsh"
ZSH_THEME="eastwood"
CASE_SENSITIVE="true"
# HYPHEN_INSENSITIVE="true"
COMPLETION_WAITING_DOTS="true"
# HIST_STAMPS="mm/dd/yyyy"

plugins=(
  git
  osx
  django
  virtualenv
  git
  docker
  zsh-syntax-highlighting 
  vi-mode
)

source $ZSH/oh-my-zsh.sh

# Preferred editor for local and remote sessions
 if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi
export SSH_KEY_PATH="~/.ssh/rsa_id"
alias ll='ls -lah'
