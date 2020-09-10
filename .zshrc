# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export TERM=xterm
# if .secret_aliases is here, load it	
if [[ -a ~/.secret_aliases ]]
then
	source ~/.secret_aliases
fi

#make sure vundle is installed so we can use VIM plugins
if [[ ! (-a ~/.vim/bundle/Vundle.vim) ]]
then
        git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# make sure antigen is isntalled
if [[ ! ( -a ~/antigen.zsh) ]]
then 
curl -L git.io/antigen > ~/antigen.zsh
fi

source ~/antigen.zsh
antigen use oh-my-zsh
antigen bundle git
antigen bundle pip
antigen bundle python
antigen bundle django
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
alias ll='ls -alhFg'
alias la='ls -Ahg'
alias lsl="ls -lhFAg | less"

#this does a ls on entry into a directory. 
function elel(){
  emulate -L zsh
  ls -lhaFg
}
chpwd_functions=(${chpwd_functions[@]} 'elel')
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

