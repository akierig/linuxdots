" GUI
syntax enable
filetype on

" font
set encoding=utf-8

" tabs
set tabstop=1
set shiftwidth=1
set softtabstop=2
set noexpandtab

" plugins
call plug#begin('~/.vim/plugged')
	Plug 'dylanaraps/wal.vim'
colorscheme wal
call plug#end()

" clippy
set clipboard=unnamedplus
