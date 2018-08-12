To debug, add in .vimrc 

```
let g:syntastic_debug=3
```

and `:mes` in vim

# ctags and gotags

http://ctags.sourceforge.net

```
go get -u github.com/jstemmer/gotags
go get -u github.com/golang/lint/golint
go get -u github.com/kisielk/errcheck
go get -u golang.org/x/tools/cmd/goimports
```

# plugins

All plugins need to be placed in the `bundle` folder.

```
git clone https://github.com/fatih/vim-go.git
git clone --depth=1 https://github.com/vim-syntastic/syntastic.git
pip install flake8
```
Then inside vim
```
:GoInstallBinaries 
```

# non-essential plugins

```
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/scrooloose/nerdtree.git
```
# link vimrc

ln -s ~/.vim/vimrc ~/.vimrc

# git diff/merge tools

```
git config --global diff.tool vimdiff
git config --global merge.tool vimdiff
git config --global difftool.prompt false
```
