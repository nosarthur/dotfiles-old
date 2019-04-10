alias ls="ls --color=auto"
alias ll="ls -lhtr"
alias ff='find . -name'
alias vi="vim"

alias ipython="python3 -m IPython"
alias gita="python3 -m gita"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias go2src="cd $GOPATH/src/github.com/nosarthur"

# Enable tab completion
source ~/.git-completion.bash

# colors!
green="\[\033[0;32m\]"
blue="\[\033[0;34m\]"
purple="\[\033[0;37m\]"
reset="\[\033[0m\]"

# Change command prompt
source ~/.git-prompt.sh
export GIT_PS1_SHOWDIRTYSTATE=1
# '\u' adds the name of the current user to the prompt
# '\$(__git_ps1)' adds git-related stuff
# '\W' adds the name of the current directory
export PS1="\u$green\$(__git_ps1)$blue \W $ $reset"
