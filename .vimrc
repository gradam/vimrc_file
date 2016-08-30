" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'

" Add all plugins here
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Bundle 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'cohlin/vim-colorschemes'
Plugin 'kien/ctrlp.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'


" All plugins must be added before the following line
call vundle#end()
filetype plugin indent on

let python_highlight_all=1
syntax on
" 4 Spaces instead of tabs
set tabstop=8 
set softtabstop=0 
set expandtab 
set shiftwidth=4 
set smarttab
" No buckup filesi
set nobackup
set nowritebackup
set noswapfile
" Enable folding
set foldmethod=indent
set foldlevel=99
" Enable folding with spacebar
nnoremap <space> za
" UTF8 support
set encoding=utf-8

" line numbers
set nu

" syntastic settigns
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_wq = 0

" SimplyFold show docstring for folded code
let g:SimpylFold_docstring_preview=1

silent! colorscheme py-darcula

" vim-airline
set laststatus=2

" Show/hide line numbers 
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

