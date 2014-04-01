#!/usr/bin/env bash 

log="[-vim install-]"

date=$(date +'%s')
if [ -d ~/.vim ]; then
  echo "$log saving old .vim into ~/.vim$date" 
  mv ~/.vim ~/.vim$date
fi

if [ -f ~∕.vimrc]; then
  echo "$log saving old .vimrc into ~∕.vimrc$date"
  mv ~/.vimrc ~∕.vimrc$date
fi



echo "$log cloning the repository"
git clone https://github.com/msimonin/vim ~/.vim

echo "$log installing pathogen"
mkdir -p ~/.vim/autoload ~/.vim/bundle; 
curl -Sso ~/.vim/autoload/pathogen.vim \
https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

echo "$log installing vim plugins"
cd ~/.vim
git submodule init
git submodule update

cp ~/.vim/.vimrc ~/.

