""""""""""""""""""""""""""""""
" vimrc
""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')

" fzf
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" vim lsp setting
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'

" color scheme
Plug 'chriskempson/base16-vim'

" Customize status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
""""""""""""""""""""""""""""""
set nocompatible
set backspace=indent,eol,start
set encoding=utf-8
set helplang=ja,en
set number
set expandtab
set hlsearch
set ignorecase
set incsearch
set smartcase
set laststatus=2
syntax on
set autoindent
filetype plugin indent on
set showcmd
set background=dark
set wildmenu
set ruler
set showmatch
set clipboard+=unnamed

" line number color
highlight lineNr term=underline ctermfg=11 guifg=Grey

" setting color scheme
let base16colorspace=256  " Access colors present in 256 colorspace
set termguicolors
"colorscheme base16-default-dark

" setting status bar
let g:airline_theme='luna'

" Emacs Move
imap <C-a>  <Home>
imap <C-e>  <End>
imap <C-b>  <Left>
imap <C-f>  <Right>
imap <C-n>  <Down>
imap <C-p>  <UP>

" Tab completion
function! s:check_back_space() abort
  let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
    endfunction

    inoremap <silent><expr> <Tab>
          \ pumvisible() ? "\<C-n>" :
                \ <SID>check_back_space() ? "\<Tab>" :
                      \ coc#refresh()

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
