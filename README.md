dotfiles
========

## dotfile for vim

##### how to use

* git clone where you want
* make symlink from '~/.vim' to 'dotfiles/vim/vimfiles' 
* make symlink from '~/.vimrc' to 'dotfiles/vim/_vimrc'
* add vundle

> git submodule add http://github.com/gmarik/vundle.git vim/vimfiles/vundle

* Edit vundle directory path in _vimrc file(if you change directory)
* open any text file with vim, and do :BundleInstall

That's it!

##### Ref
[dotfilesをgithubで管理し、Vundleを導入する](http://d.hatena.ne.jp/oovu70/20120324/p1)

Thanks!

