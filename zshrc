# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export PATH="/usr/local/opt/python@2/bin:$PATH"
export PATH="$PATH:/usr/local/opt/python@2/bin:/Users/mvy/Projects/owl/bin:/usr/local/lib/python2.7/site-packages:/usr/texbin"
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# for twilio owl command
eval "$(pyenv init -)"
alias owl="SSH_AUTH_SOCK= owl"
export OWL="/Users/mvy/Projects/owl"
eval "$("$OWL/bin/owl" init -)"

# Path to your oh-my-zsh installation.
export ZSH="/Users/mvy/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="clean"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions history-substring-search)

source $ZSH/oh-my-zsh.sh

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

DEFAULT_USER="mvy"
# alias ohmyzsh="mate ~/.oh-my-zsh"

bindkey "[D" backward-word
bindkey "[C" forward-word
bindkey "^[a" beginning-of-line
bindkey "^[e" end-of-line
bindkey "^[^M" autosuggest-accept
bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward
#bindkey "\e\e[D": backward-word
#bindkey "\e\e[C": forward-word

source /Users/mvy/Projects/minhtrangvy/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)

bco () {
  git branch $1
  git checkout $1
}

# Run the reveal.js generator to convert .md files to .html files
# and one day hopefully .pdf files
generate () {
	cd '/Users/mvy/Documents/GA/Python 3/minhtrangvy.github.io'
	python3 '/Users/mvy/Documents/GA/Python 3/minhtrangvy.github.io/generator.py' html
	pushslides
}

# Push Python3 slides to Github Pages
pushslides () {
	cd '/Users/mvy/Documents/GA/Python 3/minhtrangvy.github.io'
	git add .
	git commit -am "changed slides"
	git push
}

# Just open all the frequently used GA folders
SLIDES_FOLDER='/Users/mvy/Documents/GA/Python 3/minhtrangvy.github.io'
COURSE_REPO='/Users/mvy/Documents/GA/Python 3/Python3'
PYTHON_PROGRAMMING='/Users/mvy/Documents/GA/Python 3/python-programming'
gastuff () {
	atom $SLIDES_FOLDER
	atom $COURSE_REPO
	atom $PYTHON_PROGRAMMING
	open $SLIDES_FOLDER
	open $COURSE_REPO
	open $PYTHON_PROGRAMMING
}

justpush () {
	git add .
	git commit -am "change"
	git push
}

alias proxy-service='cd ~/Projects/proxy-service'
export PATH="/usr/local/opt/php@5.6/bin:$PATH"
export PATH="/usr/local/opt/php@5.6/sbin:$PATH"
export PATH="/usr/local/opt/node@6/bin:$PATH"
