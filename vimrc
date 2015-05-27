set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'motemen/git-vim'
Plugin 'scrooloose/nerdtree'
Plugin 'scrooloose/syntastic'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'tomasr/molokai'
Plugin 'Valloric/YouCompleteMe'
"Plugin 'a.vim'

call vundle#end()            " required
filetype plugin indent on    " required


autocmd Filetype gitcommit setlocal spell textwidth=72
syntax on

colorscheme molokai
set laststatus=2
set sw=4 sts=4 et
set nu
set showmatch
set path=.,/usr/include,,**
map <C-e> <esc>:wall <bar> make <bar> cw<CR><CR><CR>
let g:ycm_autoclose_preview_window_after_completion = 1 
let g:ycm_autoclose_preview_window_after_insertion = 1

let g:airline#extensions#tabline#enabled = 1
"let g:airline#extensions#tabline#left_sep = ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
