# colors
COLOR_NONE='\[\033[0m\]'
COLOR_BOLD='\[\033[1m\]'
COLOR_UNDER='\[\033[4m\]'

COLOR_BLACK='\[\033[30m\]'
COLOR_RED='\[\033[31m\]'
COLOR_GREEN='\[\033[32m\]'
COLOR_YELLOW='\[\033[33m\]'
COLOR_BLUE='\[\033[34m\]'
COLOR_MAGENTA='\[\033[35m\]'
COLOR_CYAN='\[\033[36m\]'
COLOR_WHITE='\[\033[37m\]'

COLOR_BLACK_BG='\[\033[40m\]'
COLOR_RED_BG='\[\033[41m\]'
COLOR_GREEN_BG='\[\033[42m\]'
COLOR_YELLOW_BG='\[\033[43m\]'
COLOR_BLUE_BG='\[\033[44m\]'
COLOR_MAGENTA_BG='\[\033[45m\]'
COLOR_CYAN_BG='\[\033[46m\]'
COLOR_WHITE_BG='\[\033[47m\]'

# some more ls aliases
alias ls='ls -G'
alias ll='ls -Al'
alias mkdir='mkdir -p'
alias which='type -a'
alias ..='cd ..'
alias cl='clear'
alias du='du -kh'
alias df='df -kTh'

# use Vim commands
set -o vi

# Erase duplicates in history
export HISTCONTROL=erasedups
# Store 10k history entries
export HISTSIZE=10000
# Append to the history file when exiting instead of overwriting it
shopt -s histappend

alias gf='git fetch'
alias gm='git merge'
alias gmom='git merge origin/master'
alias grom='git rebase origin/master'
alias grc='git rebase --continue'
alias grpo='git remote prune origin'
alias gru="git remote show | sed '/heroku/d' | xargs -I {} git remote update {} --prune; git submodule update"
alias gs="git status"
alias gdc="git diff --cached"
alias glx='git log --graph --all --decorate --pretty=format:"%C(magenta)%h %C(blue)%ai %C(green)%an %C(cyan)%s %C(yellow bold)%d"'
alias glxx='git log --graph --all --decorate'
alias hglog='hg sglog | less -R'
alias tmux='tmux -2'

function awklog {
  echo "awk ' /^$/ {flag=0} /Started.+$2/ {flag=1} flag { print }' $1"
  eval "awk ' /^$/ {flag=0} /Started.+$2/ {flag=1} flag { print }' $1"
}

function pgrep () {
  ps aux | grep $1 | grep -v 'grep'
}

#function pkill () {
#  kill -9 $(ps -Ao pid,comm | grep $1 | grep -v 'grep' | awk '{print $1'}) 2>&1
#}

export EDITOR=vim
