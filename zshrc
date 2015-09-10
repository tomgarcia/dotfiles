HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

setopt appendhistory autocd nomatch notify nobeep
setopt HIST_FIND_NO_DUPS
setopt INC_APPEND_HISTORY
setopt HIST_IGNORE_DUPS
unsetopt extendedglob
bindkey -e
zstyle :compinstall filename '/home/thomas/.zshrc'

autoload -Uz compinit promptinit
compinit
promptinit
prompt redhat
PROMPT='[%n@%M %~]%(!.#.$) '

export PAGER='vimpager'
export EDITOR='vim'
export TERM="screen-256color"

alias tmux="tmux -2"
alias grep='grep --color=auto'
alias df='df -h'
alias du='du -h'
alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -la'
alias lh='ll -h'
alias vi='vim -p'
alias nv='nvim -p'
alias top='htop'
for c in tar mv cp rm chmod chown rename;
do
    alias $c="$c -v"
done
alias less=$PAGER
