#!/bin/bash
VIM_HOME=~/.vim
VIMRC=~/.vimrc
BACKUP_DIR=~/vim-backup

#check if vim is installed
vim --version > /dev/null
if [ $? -ne 0 ]; then
    echo "vim is not installed"
    exit
fi

#backup existing .vim
if [ -d "$VIM_HOME" ]; then
    mkdir -p $BACKUP_DIR 
    mv $VIM_HOME ${BACKUP_DIR}/.vim
fi

#create new .vim
mkdir -p ~/.vim/bundle/

#get vundle
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#get the theme so vim wont break
git clone https://github.com/tomasr/molokai ~/.vim/bundle/molokai

#backup existing .vimrc
if [ -f $VIMRC ]; then
    mkdir -p $BACKUP_DIR
    mv $VIMRC ${BACKUP_DIR}/.vimrc
fi

#install awsome .vimrc
cp vimrc $VIMRC

#install plugins with vundle
vim +PluginInstall +qall

#tell user to install YCM
#TODO: do this in the script
echo
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
echo % Please foolow the instructions at                                                   %
echo % https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation %
echo %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
