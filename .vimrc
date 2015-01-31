set nocompatible              " be iMproved, required
set nu
set cc=80
filetype plugin on
filetype off                  " required

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
if has("autocmd")
    autocmd FileType javascript setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python setlocal ts=4 sts=4 sw=4 expandtab
    autocmd FileType python setlocal completeopt-=preview
endif
" setet the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'
Plugin 'terryma/vim-multiple-cursors'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'
Plugin 'scrooloose/syntastic'
Plugin 'bronson/vim-trailing-whitespace'

Plugin 'bling/vim-airline'
Plugin 'kien/rainbow_parentheses.vim'

Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'

Plugin 'marijnh/tern_for_vim'
Plugin 'pep8'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Syntastic begin
" Python
let g:syntastic_python_checkers = ['pyflakes']

"let mapleader = ","
syntax enable
set background=dark
colorscheme solarized

nmap <F8> :TagbarToggle<CR>
nmap <F2> :NERDTreeToggle<CR>
set t_Co=16

let g:jedi#completions_command = "<C-N>"
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(pyc)$',
    \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
    \ }

let NERDTreeIgnore=['.git$[[dir]]', '.pyc$[[file]]']
let g:airline#extensions#tabline#enabled = 1
