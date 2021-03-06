" Boilerplate Shiet
execute pathogen#infect()
set nocompatible
filetype off
filetype plugin indent on
syntax enable 
set relativenumber
set nohidden
set autoread
set autowrite
set autowriteall
autocmd InsertLeave * update
set showmode
set visualbell
set backspace=indent,eol,start
set encoding=utf-8
set nohlsearch
set history=1000
set undolevels=100
set tabstop=2 "4 spaces per tab character
set softtabstop=2 " 4 spaces per soft tab
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
set undodir=/tmp/undo
set undofile
set undolevels=1000
set undoreload=10000
set tags=tags;~

" THEMING
set background=dark
color flatcolor 
let g:flatcolor_asphaltbg = 0
set laststatus=2
set statusline=%t%m%=%l/%L%y
hi StatusLine ctermfg=73 ctermbg=255
autocmd VimEnter *
                        \ let &statusline=' -- %l/%L -- %{bufferline#refresh_status()}'
                        \ .bufferline#get_status_string()
augroup vimrc_autocmds
        autocmd BufEnter * highlight OverLength ctermbg=240
        autocmd BufEnter * match OverLength /\%75v.*/
augroup END

" CTRLP SETTINGS
let g:ctrlp_map = '<Leader>p'
let g:ctrlp_custom_ignore = { 'dir':'\.git$\|vendor$\|tmp$\|components$' }
let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
let g_ctrlp_root_markers = '.zshrc'
let g:ctrlp_user_command = 'ag %s --nocolor -g ""'

" CUSTOM SHORTCUTS
nnoremap <Leader>s :wq<CR> " save and quit
nnoremap <Leader>x :bdelete<CR> " delete the current buffer
nnoremap <Leader>q :q! " exit without saving 
nnoremap <Leader>a :bp<CR>
nnoremap <Leader>l :bn<CR>

" BUFFERLINE SETTINGS
let g:bufferline_echo=0

" INDENTLINE SETTINGS
let g:indentLine_color_term = 240 

" RAINBOW PARENTHESES SETTINGS
let g:rainbow_active=1
let g:rainbow_conf = {
                        \ 'ctermfgs': ['064', '033', '174', '139'],
                        \ 'parentheses': [['(',')'], ['\[','\]'], ['{','}']], 
                        \}

