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

#get vundle
git submodule init

#backup existing .vim
if [ -d "$VIM_HOME" ]; then
    mkdir -P $BACKUP_DIR 
    mv -r $VIM_HOME $BACKUPDIR
fi

#create new .vim
mkdir -P ~/.vim/bundle/

#install vundle
cp Vundle.vim "$VIM_HOME"/bundle/Vundle.vim

#backup existing .vimrc
if [ -f $VIMRC ]; then
    mkdir -P $BACKUP_DIR
    mv $VIMRC $BACKUP_DIR
fi

#install awsome .vimrc
cp vimrc $VIMRC

#install plugins with vundle
vim +PluginInstall +qall

#tell user to install YCM
#TODO: do this in the script
echo Please foolow the instructions at
echo https://github.com/Valloric/YouCompleteMe#ubuntu-linux-x64-super-quick-installation
