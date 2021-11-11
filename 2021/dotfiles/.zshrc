# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/vega/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  time          # Time stampts section
  user          # Username section
  host          # Hostname section
  dir           # Current directory section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  ruby          # Ruby section
  xcode         # Xcode section
  swift         # Swift section
  golang        # Go section
  docker        # Docker section
  venv          # virtualenv section
  pyenv         # Pyenv section
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  char          # Prompt character
)

SPACESHIP_PROMPT_SYMBOL="🚀"
SPACESHIP_PROMPT_SEPARATE_LINE=false
#SPACESHIP_DIR_COLOR="Indigo"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(common-aliases git aws docker golang httpie node npm nvm spring zsh-syntax-highlighting zsh-autosuggestions zsh-z zsh-sdkman)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


source "/Users/vega/.oh-my-zsh/custom/themes/spaceship.zsh-theme"

########
# FEDEX
########
function fdxu() {
	# mac network proxies
	networksetup -setwebproxy "Wi-fi" internet.proxy.fedex.com 3128 && networksetup -setsecurewebproxy "Wi-fi" internet.proxy.fedex.com 3128
	#networksetup -setwebproxy "USB 10/100/1000 LAN" internet.proxy.fedex.com 3128 && networksetup -setsecurewebproxy "USB 10/100/1000 LAN" internet.proxy.fedex.com 3128
	# yarn config
	yarn config set https-proxy http://internet.proxy.fedex.com:3128
	yarn config set proxy http://internet.proxy.fedex.com:3128
	# global env variables
	export http_proxy=http://internet.proxy.fedex.com:3128
	export https_proxy=http://internet.proxy.fedex.com:3128
	echo "\nHTTP & HTTPS proxies enabled"
}
function fdxd() {
	# mac network proxies
	networksetup -setwebproxystate "Wi-Fi" off && networksetup -setsecurewebproxystate "Wi-Fi" off
	#networksetup -setwebproxystate "USB 10/100/1000 LAN" off && networksetup -setsecurewebproxystate "USB 10/100/1000 LAN" off
	# yarn config
	yarn config delete https-proxy
	yarn config delete proxy
	# global env variables
	unset http_proxy
	unset https_proxy
	echo "\nHTTP & HTTPS proxies disabled"
}
function fdxs() {
	echo "\n> HTTPS Proxy";
	echo "* Wi-fi";
	networksetup -getsecurewebproxy "Wi-fi"
	#echo "\n* USB 10/100/1000 LAN";
	#networksetup -getsecurewebproxy "USB 10/100/1000 LAN"
	echo "\n> HTTP Proxy";
	echo "* Wi-fi";
	networksetup -getwebproxy "Wi-fi"
	#echo "\n* USB 10/100/1000 LAN";
	#networksetup -getwebproxy "USB 10/100/1000 LAN"
	echo "\n> http_proxy env => $(printenv http_proxy)"
	echo "> https_proxy env => $(printenv https_proxy)"
}


# JAVA
function java8Oracle() {
	sdk default java 8-oracle
	java -version
}
function java8() {
	sdk default java 8.0.275.hs-adpt
	java -version
}
function java11() {
	sdk default java 11.0.9.hs-adpt
	java -version
}
function java15() {
	sdk default java 15.0.2.hs-adpt
	java -version
}
function java16() {
	sdk default java 16.0.0.hs-adpt
	java -version
}


# NVM
export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm


#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/vega/.sdkman"
[[ -s "/Users/vega/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/vega/.sdkman/bin/sdkman-init.sh"


source $ZSH/oh-my-zsh.sh
