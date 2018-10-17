shopt -s autocd


# Git branch in prompt.
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
# change command prompt
export PS1="\u \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

function mkcd()
{
	mkdir $1 && cd $1
}


# ----------------------
# Aliases
# ----------------------
alias ll="ls -al" # List all files in current directory in long list format
alias ls='ls -la'
alias ..='cd ..'
alias o="open ." # Open the current directory in Finder

# ----------------------
# Git Aliases
# ----------------------
alias ga='git add'
alias gaa='git add .'
alias gaaa='git add -A'
alias gc='git commit'
alias gcm='git commit -m'
alias gac='git add -A && git commit'