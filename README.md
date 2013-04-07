dotfiles
========

## dotfile for vim

##### how to use

* git clone where you want
* make symlink from '~/.vim' to 'dotfiles/vim/vimfiles' 
* make symlink from '~/.vimrc' to 'dotfiles/vim/_vimrc'
* add vundle
```
git submodule add http://github.com/gmarik/vundle.git dotfiles/vimfiles/vundle
git commit -m 'add_vundle'
git push origin master
```
* Edit vundle directory path in _vimrc file(if you change directory)
* open any text file with vim, and do :BundleInstall
* set gitignore
```
echo .vim/bundle >> ~/.gitignore
echo .vim/vundle >> ~/.gitignore
```

That's it!
