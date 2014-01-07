" Boilerplate Shit
execute pathogen#infect()
set nocompatible
filetype off
filetype plugin indent on
syntax enable 
set number
set hidden
set autoread
set showmode
set visualbell
set backspace=indent,eol,start
set encoding=utf-8
set history=1000
set undolevels=100
set tabstop=4 "4 spaces per tab character
set softtabstop=4 " 4 spaces per soft tab
set expandtab " use soft tabs
set smarttab
set autoindent "match indents
set smartindent "intelligent indents
set nobackup
set nowritebackup
set noswapfile
set autoread "load a file when it was been loaded from the disk
set ignorecase " ignore case in
set smartcase " If there are uppercase letters, become case-sensitive.
set hlsearch " highlight matches
set gdefault " use the `g` flag by default.
let mapleader = " " " use SPACE as leader key
set nowrap
set t_Co=256
" THEMING
set background=dark
if !has('gui_running')
        let g:solarized_termcolors=&t_Co
endif
colorscheme solarized

" STATUS LINE
set laststatus=2
set statusline=%t%m%=%l/%L%y
hi StatusLine ctermfg=033 ctermbg=255

" NETRW SETTINGS
let g:netrw_liststyle=3
let g:netrw_browse_split=4

" CTRLP SETTINGS
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_custom_ignore = { 'dir':'\.git$\|vendor$\|tmp$' }

" CUSTOM SHORTCUTS
nnoremap <Leader>s :wq<CR>
nnoremap <Leader>e :E<CR>
nnoremap <Leader>x :bdelete<CR> 
nnoremap <Leader>q :q! 

" GUNDO SETTINGS
nnoremap <Leader>u :GundoToggle<CR>
let g:gundo_preview_height=25

