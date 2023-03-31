#!/bin/bash
#Cleans up linux

#Remove vimrv file
rm -f ~/.vimrc

#remove line source
sed -i '/source\/\.dotfiles\/bashrc_customs/d'~/.bashrc

#remove trash dir
rm -rf ~/".TRASH"
