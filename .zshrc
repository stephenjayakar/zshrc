# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/$USER/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(
    git
    osx
    emacs
	wd
)

source $ZSH/oh-my-zsh.sh

# MacPorts Installer addition on 2017-10-26_at_14:55:31: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


# Setting PATH for Python 3.5
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.5/bin:${PATH}"
export PATH

export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:${PATH}"
export NVM_DIR=~/.nvm
source ~/.nvm/nvm.sh

alias ls='ls -GFh'
alias py3="python3"
alias pip="pip3"
alias d='devenv'
alias kp='kill $(lsof -t -i:$1)'
alias g='git'
alias stopwatch='~/programming/watch/watch.py'
alias gmm="g c master && g pl && g c - && g merge master"
alias jq="jq -R 'fromjson?'"

function acp {
    g a -u && g cm $1 && g p
}

function cgif {
	ffmpeg -i "$1" -vf scale=800:-1 -pix_fmt rgb24 -r 30 -f gif - | gifsicle --optimize=3 --delay=3 > "$1.gif"
}

export JAVA_HOME="/usr/local/opt/openjdk/bin/java"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="/usr/local/opt/openjdk/bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH=$(pyenv root)/shims:$PATH

# import plaid config if it exists
test -r "$HOME/.plaid_zshrc" && source "$HOME/.plaid_zshrc"

# .gitconfig aliases
# [alias]
# 	d = diff --color
# 	s = status
# 	p = push
# 	c = checkout
# 	a = add
# 	cm = commit -m
# 	pl = pull
# 	cl = clone
# 	r = rebase
# 	b = branch

export PATH="/usr/local/opt/ruby/bin:$PATH"
