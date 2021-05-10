# dotfiles


# plugins

I use vim-plug as manager

```
:source %
:PlugInstall
:CocInstall coc-pyright
:CocInstall coc-word
:CocInstall coc-json
```

# ctags and gotags

http://ctags.sourceforge.net

```
go get -u github.com/jstemmer/gotags
go get -u github.com/golang/lint/golint
go get -u github.com/kisielk/errcheck
go get -u golang.org/x/tools/cmd/goimports
pip install flake8
```

Then inside vim
```
:GoInstallBinaries
```

For [coc.nvim](https://github.com/neoclide/coc.nvim)
```
curl -sL install-node.now.sh/lts | bash
```

# link vimrc

First rename `dotfiles` as `.vim`

```
ln -s ~/dotfiles/vimrc ~/.vimrc
mv ~/dotfiles/bash/* ~/
```

