#!/bin/bash
############################
# .make.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles_old             # old dotfiles backup directory
files="bashrc vimrc tmux.conf zshrc zpreztorc gitignore"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done

# adding ~/.gitignore globally to ignore vim temp files
echo "adding global gitignore"
git config --global core.excludesfile ~/.gitignore

# symlinking original zprezto dot files
echo "Now symlinking original zshrc and zpreztorc files in ~/.zprezto/runcoms to dotfiles directory"
# zprezto runcoms dir
zpruncoms=~/.zprezto/runcoms
mkdir -p $zpruncoms/dotfiles_old
#backup old files
mv -f ~/.zprezto/runcoms/zpreztorc ~/.zprezto/runcoms/zshrc ~$zpruncoms/dotfiles_old
ln -s ~/dotfiles/zpreztorc ~/dotfiles/zshrc $zpruncoms
echo "done"
