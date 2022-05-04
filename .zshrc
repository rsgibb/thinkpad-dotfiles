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
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/howler/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
bindkey "${terminfo[khome]}" beginning-of-line
bindkey "${terminfo[kend]}" end-of-line
bindkey "${terminfo[kdch1]}" delete-char

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
    ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
    eval "$(<~/.ssh-agent-thing)"
fi

