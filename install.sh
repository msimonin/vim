mkdir -p ~/vim/autoload ~/vim/bundle; \
curl -Sso ~/vim/autoload/pathogen.vim \
https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

cd ~/vim
git submodule init
git submodule update

