#!/bin/bash
echo 'Symlinking dotfiles'

if [ -f ~/.bashrc ]
then
  echo -e "\n#custom bashrc"
  echo -e "source ~/.dotfiles/bashrc" >> ~/.bashrc
else
  ln -s ~/.dotfiles/bashrc ~/.bashrc
fi

ln -s ~/.dotfiles/ackrc ~/.ackrc
ln -s ~/.dotfiles/tmux.conf ~/.tmux.conf


echo 'Setting vim config'
git clone https://github.com/gmarik/vundle.git ~/.vim/bundle/vundle

ln -s ~/.dotfiles/vimrc ~/.vimrc
ln -s ~/.dotfiles/gvimrc ~/.gvimrc

vim +BundleInstall +qall
