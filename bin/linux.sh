#!bin/bash
#This script sets up the Linux enviorment 

#Append any output from echo statements to a file called linuxsetup.log
exec >> linuxsetup.log 2>&1

#Check if the os is linux
if [[$(uname) != "Linux" ]]; then
	echo "ERROR: This script only works on Linux systems."
	exit 1
fi

#Create Trash dir in home
mkdir -p~/".TRASH"

#If the vimrc exist change to bup_vimrc
if [[ -f~/.vimrc ]]; then
	mv ~/.vimrc ~/.bup_vimrc
	echo "The current vimrc was changed to .bup_vimrc"
fi

#Overite etc vimrc in home vimrc
cp /etc/vimrc ~/.vimrc

#Add statement source dotfiles bashrc.customs
echo "source /dotfiles/etc/bashrc.custom" >> ~/.bashrc
