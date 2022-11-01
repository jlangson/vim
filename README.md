Backup for my personal vim configs

Make sure to clone repo to `.vim/` NOT `vim/`
make symbolic links in ~/ to .vimrc and .viminfo
symbolic links need to use absolute paths 

# Linux

`ln -s ~/.vim/.vimrc ~/.vimrc; ln -s ~/.vim/.viminfo ~/.viminfo`

Run `:PlugInstall` after cloning.

# Windows instructions

use `mklink` for symbolic links. Run `cmd` in admin mode. `cd` to $HOME (found by vim's `:echo $HOME`). `mklink _viminfo .vim\_vimfo` and `mklink _vimrc .vim\_vimrc`
