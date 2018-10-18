# cd into a directory by name 
shopt -s autocd

# Aliases
alias ll="ls -al" # List all files in current directory in long list format
alias ls='ls -la'
alias ..='cd ..'
alias o="open ." # Open the current directory in Finder

# Git
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gac='git add -A && git commit'

# Git branch in prompt.
function parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# change command prompt
export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

# databases
alias start_postgres="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias stop_postgres="pg_ctl -D /usr/local/var/postgres stop -s -m fast"
alias pgup="start_postgres"
alias pgdown="stop_postgres"

alias start_mysql="mysql.server start"
alias stop_mysql="mysql.server stop"
alias mysqlup="start_mysql"
alias mysqldown="stop_mysql"


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
