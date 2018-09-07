!#bin/bash
set -e -v
#create a directory for bundle
mkdir ~/.vim/bundle
cd ~/.vim/bundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
