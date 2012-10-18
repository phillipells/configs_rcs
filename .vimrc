syntax on

set smarttab
set ai "Auto-indent
set si "Smart-indent
set tabstop=8
set shiftwidth=4
set expandtab

set showmatch
set mat=2
set paste

set number
set ruler
set showcmd

set magic
set incsearch "Make search act like a browser
set hlsearch

set nocompatible
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set background=dark

" *.twig have jinja syntax
autocmd BufNewFile,BufRead *.twig set syntax=jinja

" *.html.twig have htmljinja syntax
autocmd BufNewFile,BufRead *.html.twig set syntax=htmljinja

" *.less have less syntax
autocmd BufNewFile,BufRead *.less set filetype=less
