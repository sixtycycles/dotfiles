# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM=xterm
source ~/dotfiles/antigen.zsh
	
if [[ -a ~/dotfiles/.secret_aliases ]]
then
	source ~/dotfiles/.secret_aliases
fi

# make sure antigen is isntalled
if [[ ! ( -a ~/dotfiles/antigen.zsh) ]]
then 
curl -L git.io/antigen > ~/dotfiles/antigen.zsh
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
antigen theme romkatv/powerlevel10k
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

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
