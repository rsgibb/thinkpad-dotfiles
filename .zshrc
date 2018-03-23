autoload -Uz promptinit
promptinit
prompt redhat

alias ls='ls --color=auto'
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
export PATH=$PATH:~/.bin
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/howler/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
