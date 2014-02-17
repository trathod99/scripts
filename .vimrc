" Boilerplate Shit
execute pathogen#infect()
set nocompatible
filetype off
filetype plugin indent on
syntax enable 
set relativenumber
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
set autochdir
set cursorline 
set wildmenu
set lazyredraw
set showmatch

" THEMING
color seoul256
set laststatus=2
set statusline=%t%m%=%l/%L%y
hi StatusLine ctermfg=73 ctermbg=255
autocmd VimEnter *
                        \ let &statusline=' -- %l/%L --%{bufferline#refresh_status()}'
                        \ .bufferline#get_status_string()
" CTRLP SETTINGS
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_custom_ignore = { 'dir':'\.git$\|vendor$\|tmp$' }
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" CUSTOM SHORTCUTS
nnoremap <Leader>s :wq<CR> " save and quit
nnoremap <Leader>x :bdelete<CR> " delete the current buffer
nnoremap <Leader>q :q! " exit without saving 
nnoremap <Leader>b :earlier 30s<CR> "go back 30 seconds
nnoremap <Leader>f :later 30s<CR> " go forward 30 seconds

" GUNDO SETTINGS
nnoremap <Leader>u :GundoToggle<CR>
let g:gundo_preview_height=25

" BUFFERLINE SETTINGS
let g:bufferline_echo=0

" INDENTLINE SETTINGS
let g:indentLine_color_term = 240 

" RAINBOW PARENTHESES SETTINGS
let g:rainbow_active=1
let g:rainbow_conf = {
                        \ 'ctermfgs': ['065', '073', '174', '139'],
                        \ 'parentheses': [['(',')'], ['\[','\]'], ['{','}']], 
                        \}

" GITGUTTER SETTINGS
hi GitGutterAdd ctermfg=073
hi GitGutterChange ctermfg=065
hi GitGutterDelete ctermfg=139

" AG.vim SETTINGS
nnoremap <Leader>A :Ag <cword><CR>
