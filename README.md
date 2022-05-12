Backup for my personal vim configs

Make sure to clone repoo to `.vim/` NOT `vim/`
make symbolic links in ~/ to .vimrc and .viminfo
symbolic links need to use absolute paths 

`ln -s ~/.vim/.vimrc ~/.vimrc; ln -s ~/.vim/.viminfo ~/.viminfo`

Run `:PlugInstall` after cloning.
