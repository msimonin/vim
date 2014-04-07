execute pathogen#infect()
syntax on
filetype plugin indent on

set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set mouse=a


let mapleader = ","

map <Leader>n :NERDTreeToggle<CR>
map <Leader>l :set invnumber<CR>


let g:neocomplcache_enable_at_startup = 1 

set t_Co=256
let g:solarized_termcolors=256
set background=dark
colorscheme solarized

autocmd BufNewFile,BufRead *.json set ft=javascript

au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
