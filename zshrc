HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd beep nomatch notify
unsetopt extendedglob
bindkey -e
zstyle :compinstall filename '/home/thomas/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat
PROMPT='[%n@%M %~]%(!.#.$) '

source antigen/antigen.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

antigen bundle sindresorhus/pure
antigen bundle Tarrasch/zsh-bd

export PAGER='vimpager'
export EDITOR='vim'
export TERM="screen-256color"

alias tmux="tmux -2"
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias vi='vim'
alias less=$PAGER

#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux
