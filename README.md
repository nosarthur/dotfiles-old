# dotfiles

To debug vim syntastic, add in .vimrc

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
pip install flake8
```

# plugins

I just changed from pathogen to vim-plug.

```
:source %
:PlugInstall
:CocInstall coc-python
```

Then inside vim
```
:GoInstallBinaries
```

Some non-essential plugins are

```
git clone https://github.com/majutsushi/tagbar.git
git clone https://github.com/scrooloose/nerdtree.git
```

For [coc.nvim](https://github.com/neoclide/coc.nvim)
```
curl -sL install-node.now.sh/lts | bash
```

# link vimrc

```
ln -s ~/dotfiles/vimrc ~/.vimrc
mv ~/dotfiles/bash/* ~/
```
