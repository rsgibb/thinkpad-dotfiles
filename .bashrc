#
# ~/.bashrc
#

if ! pgrep -u "$USER" ssh-agent > /dev/null; then
  ssh-agent > ~/.ssh-agent-thing
fi
if [[ ! "$SSH_AUTH_SOCK" ]]; then
  eval "$(<~/.ssh-agent-thing)"
fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '
alias cfg='/usr/bin/git --git-dir=$HOME/.dotfiles.git/ --work-tree=$HOME'
alias lazycfg='lazygit --git-dir=$HOME/.cfg/ --work-tree=$HOME'
export PATH=$PATH:~/.bin
export WINEARCH=win32

alias vim="nvim"
alias ogvim="vim"
#alias ls="lsd"
alias ls="exa --icons"
alias fzo='handlr open "$(fzf)"'
alias free='free -htw --si'

if [ "$XDG_SESSION_TYPE" == "wayland" ]; then
    export GDK_BACKEND=wayland
    export MOZ_ENABLE_WAYLAND=1
fi

export TERMINAL=/usr/bin/alacritty
export EDITOR=/usr/bin/nvim
export TERM=xterm-256color

function sudoedit() {
    SUDO_COMMAND="sudoedit $@" command sudoedit "$@"
}

export FZF_DEFAULT_OPTS='--ansi --preview "bat --color=always --style=header,grid --line-range :300 {}"'
