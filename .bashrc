#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
export PATH=$PATH:~/.bin
export WINEARCH=win32

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export GDK_BACKEND=wayland
    export MOZ_ENABLE_WAYLAND=1
fi
