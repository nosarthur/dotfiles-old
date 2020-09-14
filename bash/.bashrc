set -o vi
bind -m vi-insert 'Control-l: clear-screen'

export EDITOR=/usr/bin/vim

shopt -s autocd
shopt -s direxpand

alias ls="ls -hN --color=auto --group-directories-first"
alias ll="ls -lhtr"
alias ff='find . -name'
alias v="vim"
alias g='git'
alias t='task'
alias m='neomutt'
alias d='dict'

alias ipython="python3 -m IPython"
alias gita="python3 -m gita"

export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export CDPATH=.:~

# Enable tab completion
source ~/.git-completion.bash
source ~/.gita-completion.bash

# colors!
red="\[\033[01;31m\]"
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
export PS1="$red\A \u$green\$(__git_ps1)$blue \W $ $reset"

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'

# fe [FUZZY PATTERN] - Open the selected file with the default editor
#   - Bypass fuzzy finder if there's only one match (--select-1)
#   - Exit if there's no match (--exit-0)
fe() {
  IFS=$'\n' files=($(fzf-tmux --query="$1" --multi --select-1 --exit-0))
  [[ -n "$files" ]] && ${EDITOR:-vim} "${files[@]}"
}

# fd - cd to selected directory
fd() {
  local dir
  dir=$(find ${1:-.} -path '*/\.*' -prune \
                  -o -type d -print 2> /dev/null | fzf +m) &&
  cd "$dir"
}

source ~/.vim/bash/z.sh
unalias z 2> /dev/null
z() {
  [ $# -gt 0 ] && _z "$*" && return
  cd "$(_z -l 2>&1 | fzf --height 40% --nth 2.. --reverse --inline-info +s --tac --query "${*##-* }" | sed 's/^[0-9,.]* *//')"
}
