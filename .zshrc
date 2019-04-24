export TERM=xterm
#lynx homepage
export WWW_HOME=https://duckduckgo.com
#source ~/.bin/tmuxinator.zsh
source ~/dotfiles/antigen.zsh
	
if [[ -a ~/dotfiles/.secret_aliases ]]
then
	source ~/dotfiles/.secret_aliases
fi

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle django
antigen bundle docker
antigen bundle osx
antigen bundle virtualenv
antigen bundle robbyrussell/oh-my-zsh plugins/extract
antigen bundle ansible
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle powershell
antigen theme eastwood
antigen apply

if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
 else
   export EDITOR='vim'
 fi

export SSH_KEY_PATH="~/.ssh/rsa_id"
   export CLICOLOR=1
   export LSCOLORS=ExFxBxDxCxegedabagacad

#aliases stuff
alias ll='ls -alh'
alias la='ls -Ah'
alias l='ls -CF'
alias lsl="ls -lhA | less"

#this does a ls on entry into a directory. 
function elel(){
  emulate -L zsh
  ls -lha
}
chpwd_functions=(${chpwd_functions[@]} 'elel')


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

